package com.zalexdev.stryker.localnetwork.nonroot;

import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public final class TcpConnectScanner {

    private TcpConnectScanner() {
    }

    public interface Sink {
        void onOpen(String ip, int port);

        void onProgress(int done, int total);
    }

    private static final int SELECT_WAIT_MS = 200;
    private static final int PROGRESS_EVERY_MS = 250;
    private static final int OPEN_ATTEMPTS = 3;
    private static final int OPEN_BACKOFF_MS = 50;
    private static final int BANNER_LIMIT = 200;
    private static final int MIN_INFLIGHT = 8;

    private static final int[] HTTP_PORTS = {
            80, 81, 591, 8000, 8008, 8080, 8081, 8088, 8888, 8443, 443
    };

    private static final class Pending {
        final String ip;
        final int port;
        final long deadline;

        Pending(String ip, int port, long deadline) {
            this.ip = ip;
            this.port = port;
            this.deadline = deadline;
        }
    }

    public static void scan(List<String> targets, int[] ports, int inflight, int timeoutMs, Sink sink,
                            AtomicBoolean cancel) {
        if (ports == null || ports.length == 0) return;
        if (targets == null || targets.isEmpty()) return;

        String[] hosts;
        try {
            hosts = targets.toArray(new String[0]);
        } catch (Throwable t) {
            return;
        }
        if (hosts.length == 0) return;

        long span = (long) hosts.length * (long) ports.length;
        if (span <= 0L) return;
        int total = span > (long) Integer.MAX_VALUE ? Integer.MAX_VALUE : (int) span;

        int cap = Math.max(MIN_INFLIGHT, inflight);
        int timeout = timeoutMs > 0 ? timeoutMs : ScanConfig.TCP_SCAN_TIMEOUT_MS;

        Selector selector;
        try {
            selector = Selector.open();
        } catch (Throwable t) {
            if (sink != null) {
                try {
                    sink.onProgress(0, total);
                } catch (Throwable ignored) {
                }
            }
            return;
        }

        int done = 0;
        int cursor = 0;
        int flying = 0;
        long lastProgress = 0L;

        try {
            while (true) {
                if (aborted(cancel)) break;

                while (cursor < total && flying < cap) {
                    if (aborted(cancel)) break;

                    int index = cursor++;
                    String ip = hosts[index % hosts.length];
                    int port = ports[index / hosts.length];

                    if (ip == null || ip.isEmpty() || port <= 0 || port > 65535) {
                        done++;
                    } else {
                        SocketChannel channel = openChannel(cancel);
                        if (channel == null) {
                            done++;
                        } else {
                            boolean immediate = false;
                            boolean failed = false;
                            try {
                                channel.configureBlocking(false);
                                immediate = channel.connect(new InetSocketAddress(ip, port));
                            } catch (Throwable t) {
                                failed = true;
                            }
                            if (failed) {
                                closeQuietly(channel);
                                done++;
                            } else if (immediate) {
                                closeQuietly(channel);
                                done++;
                                report(sink, ip, port);
                            } else {
                                boolean registered = false;
                                try {
                                    channel.register(selector, SelectionKey.OP_CONNECT,
                                            new Pending(ip, port, System.currentTimeMillis() + timeout));
                                    registered = true;
                                } catch (Throwable t) {
                                    registered = false;
                                }
                                if (registered) {
                                    flying++;
                                } else {
                                    closeQuietly(channel);
                                    done++;
                                }
                            }
                        }
                    }

                    long tick = System.currentTimeMillis();
                    if (sink != null && tick - lastProgress >= PROGRESS_EVERY_MS) {
                        lastProgress = tick;
                        try {
                            sink.onProgress(done, total);
                        } catch (Throwable ignored) {
                        }
                    }
                }

                if (aborted(cancel)) break;
                if (flying <= 0 && cursor >= total) break;
                if (flying <= 0) continue;

                try {
                    selector.select(SELECT_WAIT_MS);
                } catch (Throwable t) {
                    break;
                }
                if (aborted(cancel)) break;

                try {
                    Set<SelectionKey> selected = selector.selectedKeys();
                    Iterator<SelectionKey> it = selected.iterator();
                    while (it.hasNext()) {
                        SelectionKey key = it.next();
                        it.remove();
                        Pending pending = null;
                        try {
                            Object attachment = key.attachment();
                            if (attachment instanceof Pending) pending = (Pending) attachment;
                        } catch (Throwable ignored) {
                        }
                        boolean connectable = false;
                        try {
                            connectable = key.isValid() && key.isConnectable();
                        } catch (Throwable ignored) {
                        }
                        boolean open = false;
                        if (connectable) {
                            try {
                                open = ((SocketChannel) key.channel()).finishConnect();
                            } catch (Throwable t) {
                                open = false;
                            }
                        }
                        try {
                            key.cancel();
                        } catch (Throwable ignored) {
                        }
                        closeQuietly(key.channel());
                        if (flying > 0) flying--;
                        done++;
                        if (open && pending != null) report(sink, pending.ip, pending.port);
                    }
                } catch (Throwable ignored) {
                }

                long now = System.currentTimeMillis();
                try {
                    SelectionKey[] live = selector.keys().toArray(new SelectionKey[0]);
                    for (SelectionKey key : live) {
                        if (key == null) continue;
                        boolean valid;
                        try {
                            valid = key.isValid();
                        } catch (Throwable t) {
                            valid = false;
                        }
                        if (!valid) continue;
                        Object attachment = key.attachment();
                        if (!(attachment instanceof Pending)) continue;
                        if (((Pending) attachment).deadline > now) continue;
                        try {
                            key.cancel();
                        } catch (Throwable ignored) {
                        }
                        closeQuietly(key.channel());
                        if (flying > 0) flying--;
                        done++;
                    }
                } catch (Throwable ignored) {
                }

                if (sink != null && now - lastProgress >= PROGRESS_EVERY_MS) {
                    lastProgress = now;
                    try {
                        sink.onProgress(done, total);
                    } catch (Throwable ignored) {
                    }
                }
            }
        } catch (Throwable ignored) {
        } finally {
            try {
                SelectionKey[] remaining = selector.keys().toArray(new SelectionKey[0]);
                for (SelectionKey key : remaining) {
                    if (key == null) continue;
                    try {
                        key.cancel();
                    } catch (Throwable ignored) {
                    }
                    closeQuietly(key.channel());
                }
            } catch (Throwable ignored) {
            }
            closeQuietly(selector);
            if (sink != null) {
                try {
                    sink.onProgress(done, total);
                } catch (Throwable ignored) {
                }
            }
        }
    }

    public static String grabBanner(String ip, int port, int connectTimeoutMs, int readMs, int maxBytes) {
        if (ip == null || ip.isEmpty() || port <= 0 || port > 65535) return "";
        int cap = maxBytes > 0 ? maxBytes : ScanConfig.BANNER_BYTES;
        if (cap > 65536) cap = 65536;
        int connectMs = connectTimeoutMs > 0 ? connectTimeoutMs : ScanConfig.TCP_PROBE_TIMEOUT_MS;
        int soMs = readMs > 0 ? readMs : ScanConfig.BANNER_READ_MS;

        Socket socket = null;
        try {
            socket = new Socket();
            socket.connect(new InetSocketAddress(ip, port), connectMs);
            socket.setSoTimeout(soMs);
            socket.setTcpNoDelay(true);

            byte[] buffer = new byte[cap];
            InputStream in = socket.getInputStream();
            int read = readUpTo(in, buffer, cap, 0);

            if (read <= 0 && isHttpPort(port)) {
                OutputStream out = socket.getOutputStream();
                out.write(("GET / HTTP/1.0\r\nHost: " + ip
                        + "\r\nUser-Agent: Stryker\r\nConnection: close\r\n\r\n")
                        .getBytes(StandardCharsets.ISO_8859_1));
                out.flush();
                read = readUpTo(in, buffer, cap, 0);
            }

            if (read <= 0) return "";
            return sanitise(new String(buffer, 0, read, StandardCharsets.ISO_8859_1));
        } catch (Throwable t) {
            return "";
        } finally {
            closeQuietly(socket);
        }
    }

    private static SocketChannel openChannel(AtomicBoolean cancel) {
        for (int attempt = 0; attempt < OPEN_ATTEMPTS; attempt++) {
            if (aborted(cancel)) return null;
            try {
                return SocketChannel.open();
            } catch (Throwable t) {
                if (attempt + 1 < OPEN_ATTEMPTS) pause(OPEN_BACKOFF_MS);
            }
        }
        return null;
    }

    private static int readUpTo(InputStream in, byte[] buffer, int cap, int start) {
        int total = start;
        try {
            while (total < cap) {
                int n = in.read(buffer, total, cap - total);
                if (n <= 0) break;
                total += n;
            }
        } catch (Throwable ignored) {
        }
        return total;
    }

    private static String sanitise(String raw) {
        if (raw == null || raw.isEmpty()) return "";
        StringBuilder sb = new StringBuilder(Math.min(raw.length(), BANNER_LIMIT));
        boolean gap = false;
        for (int i = 0; i < raw.length(); i++) {
            char c = raw.charAt(i);
            if (c < 0x20 || c > 0x7E) c = ' ';
            if (c == ' ') {
                gap = true;
                continue;
            }
            if (gap && sb.length() > 0) sb.append(' ');
            gap = false;
            sb.append(c);
            if (sb.length() >= BANNER_LIMIT) break;
        }
        String out = sb.toString().trim();
        if (out.length() > BANNER_LIMIT) out = out.substring(0, BANNER_LIMIT);
        return out;
    }

    private static boolean isHttpPort(int port) {
        for (int p : HTTP_PORTS) if (p == port) return true;
        return false;
    }

    private static void report(Sink sink, String ip, int port) {
        if (sink == null) return;
        try {
            sink.onOpen(ip, port);
        } catch (Throwable ignored) {
        }
    }

    private static boolean aborted(AtomicBoolean cancel) {
        try {
            if (cancel != null && cancel.get()) return true;
        } catch (Throwable ignored) {
        }
        return Thread.currentThread().isInterrupted();
    }

    private static void pause(long ms) {
        try {
            Thread.sleep(ms);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    private static void closeQuietly(Closeable target) {
        if (target == null) return;
        try {
            target.close();
        } catch (Throwable ignored) {
        }
    }
}
