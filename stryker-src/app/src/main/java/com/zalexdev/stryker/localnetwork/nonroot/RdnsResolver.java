package com.zalexdev.stryker.localnetwork.nonroot;

import com.zalexdev.stryker.logger.Logger;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class RdnsResolver extends DiscoveryResolver {

    private static final int QUEUE_CAP = 4096;
    private static final int BUFFER_SIZE = 1500;
    private static final long POLL_MS = 200L;

    private final Map<String, String> results = new ConcurrentHashMap<>();
    private final Map<String, String> pending = new ConcurrentHashMap<>();
    private final Set<String> seen =
            Collections.newSetFromMap(new ConcurrentHashMap<String, Boolean>());
    private final LinkedBlockingQueue<String> queue = new LinkedBlockingQueue<>(QUEUE_CAP);
    private final AtomicInteger ids = new AtomicInteger(1);

    private volatile DatagramSocket socket;
    private volatile InetAddress server;
    private volatile boolean fallback;
    private volatile Thread worker;

    public RdnsResolver(NetworkContext net, Logger log) {
        super(net, log);
    }

    @Override
    public String tag() {
        return Node.SRC_RDNS;
    }

    @Override
    public void start() {
        try {
            if (running) return;
            running = true;
            String host = pickServer();
            if (!host.isEmpty()) {
                try {
                    InetAddress target = InetAddress.getByName(host);
                    DatagramSocket s = new DatagramSocket();
                    s.setSoTimeout(ScanConfig.RDNS_TIMEOUT_MS);
                    server = target;
                    socket = s;
                } catch (Exception e) {
                    closeSocket();
                    server = null;
                    warn("raw socket unavailable: " + e);
                }
            }
            fallback = socket == null || server == null;
            note(fallback ? "fallback mode, no dns server" : "server " + host);
            Thread t = new Thread(new Runnable() {
                @Override
                public void run() {
                    loop();
                }
            }, "stryker-rdns");
            t.setDaemon(true);
            worker = t;
            t.start();
        } catch (Exception e) {
            warn("start failed: " + e);
        }
    }

    @Override
    public void stop() {
        try {
            running = false;
            closeSocket();
            Thread t = worker;
            worker = null;
            join(t, ScanConfig.RESOLVER_JOIN_MS);
            queue.clear();
            pending.clear();
        } catch (Exception ignored) {
        }
    }

    public void enqueue(String ip) {
        try {
            if (ip == null) return;
            String value = ip.trim();
            if (value.isEmpty()) return;
            if (!IpRange.isIpv4(value)) return;
            if (net != null && net.range != null && !net.inRange(value)) return;
            if (!seen.add(value)) return;
            if (!queue.offer(value)) seen.remove(value);
        } catch (Exception ignored) {
        }
    }

    public Map<String, String> results() {
        return results;
    }

    public int queued() {
        return queue.size();
    }

    private String pickServer() {
        if (net == null) return "";
        String primary = net.dns1 == null ? "" : net.dns1.trim();
        if (!primary.isEmpty()) return primary;
        String gw = net.gateway == null ? "" : net.gateway.trim();
        return gw;
    }

    private void loop() {
        while (running && !Thread.currentThread().isInterrupted()) {
            String ip;
            try {
                ip = queue.poll(POLL_MS, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                break;
            } catch (Exception e) {
                break;
            }
            if (ip == null) continue;
            try {
                if (fallback) resolveFallback(ip);
                else resolveRaw(ip);
            } catch (Exception ignored) {
            }
        }
    }

    private void resolveRaw(String ip) {
        String name = DnsCodec.reverseName(ip);
        String key = key(name);
        long lastSend = 0L;
        for (int attempt = 0; attempt < ScanConfig.RDNS_ATTEMPTS; attempt++) {
            if (!running) return;
            if (results.containsKey(ip)) return;
            DatagramSocket s = socket;
            InetAddress target = server;
            if (s == null || s.isClosed() || target == null) return;
            if (lastSend > 0L) {
                long wait = ScanConfig.RDNS_MIN_INTERVAL_MS - (System.currentTimeMillis() - lastSend);
                if (wait > 0) sleep(wait);
                if (!running) return;
            }
            try {
                int id = ids.getAndIncrement() & 0xFFFF;
                byte[] payload = DnsCodec.query(id, DnsCodec.FLAG_RD, name, DnsCodec.TYPE_PTR);
                pending.put(key, ip);
                s.send(new DatagramPacket(payload, payload.length, target, ScanConfig.DNS_PORT));
                lastSend = System.currentTimeMillis();
            } catch (Exception e) {
                return;
            }
            if (drain(ip)) return;
        }
    }

    private boolean drain(String ip) {
        byte[] buffer = new byte[BUFFER_SIZE];
        while (running) {
            DatagramSocket s = socket;
            if (s == null || s.isClosed()) return true;
            DatagramPacket packet = new DatagramPacket(buffer, buffer.length);
            try {
                s.receive(packet);
            } catch (SocketTimeoutException e) {
                return false;
            } catch (Exception e) {
                return true;
            }
            DnsCodec.Message msg;
            try {
                msg = DnsCodec.parse(packet.getData(), packet.getLength());
            } catch (Exception e) {
                continue;
            }
            if (msg == null || !msg.response) continue;
            String owner = ownerOf(msg);
            if (owner == null) continue;
            if (msg.rcode != 0) {
                pending.remove(key(DnsCodec.reverseName(owner)));
                if (owner.equals(ip)) return true;
                continue;
            }
            boolean stored = store(owner, msg);
            if (stored && owner.equals(ip)) return true;
        }
        return true;
    }

    private String ownerOf(DnsCodec.Message msg) {
        for (DnsCodec.Question q : msg.questions) {
            String owner = pending.get(key(q.name));
            if (owner != null) return owner;
        }
        for (DnsCodec.Record r : msg.answers) {
            if (r.type != DnsCodec.TYPE_PTR) continue;
            String owner = pending.get(key(r.name));
            if (owner != null) return owner;
        }
        return null;
    }

    private boolean store(String ip, DnsCodec.Message msg) {
        for (DnsCodec.Record r : msg.answers) {
            if (r.type != DnsCodec.TYPE_PTR) continue;
            String host = DnsCodec.stripTrailingDot(r.target);
            if (host.isEmpty() || host.equalsIgnoreCase(ip)) return false;
            results.put(ip, host);
            pending.remove(key(DnsCodec.reverseName(ip)));
            note(ip + " -> " + host);
            return true;
        }
        return false;
    }

    private void resolveFallback(String ip) {
        try {
            String host = InetAddress.getByName(ip).getCanonicalHostName();
            String value = DnsCodec.stripTrailingDot(host);
            if (value.isEmpty() || value.equalsIgnoreCase(ip)) return;
            results.put(ip, value);
            note(ip + " -> " + value);
        } catch (Exception ignored) {
        }
    }

    private void closeSocket() {
        DatagramSocket s = socket;
        socket = null;
        try {
            if (s != null && !s.isClosed()) s.close();
        } catch (Exception ignored) {
        }
    }

    private static String key(String name) {
        return DnsCodec.stripTrailingDot(name).toLowerCase(Locale.ROOT);
    }
}
