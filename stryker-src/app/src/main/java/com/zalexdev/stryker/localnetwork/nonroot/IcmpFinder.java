package com.zalexdev.stryker.localnetwork.nonroot;

import com.zalexdev.stryker.logger.Logger;

import java.net.InetAddress;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class IcmpFinder extends DiscoveryResolver {

    private static final int TTL = 64;
    private static final long AWAIT_SLICE_MS = 100L;

    private final AtomicInteger probes = new AtomicInteger();
    private final List<Thread> workers = new CopyOnWriteArrayList<>();

    public IcmpFinder(NetworkContext net, Logger log) {
        super(net, log);
    }

    @Override
    public String tag() {
        return "icmp";
    }

    @Override
    public void start() {
        running = true;
    }

    @Override
    public void stop() {
        running = false;
        try {
            for (Thread t : workers) {
                if (t != null) t.interrupt();
            }
        } catch (Exception ignored) {
        }
        try {
            workers.clear();
        } catch (Exception ignored) {
        }
    }

    public void sweep() {
        CountDownLatch latch = null;
        try {
            if (net == null || net.range == null) return;
            int total = net.range.size();
            if (total <= 0) return;

            int chunks = Math.min(ScanConfig.SWEEP_THREADS, total);
            if (chunks < 1) chunks = 1;
            int per = (total + chunks - 1) / chunks;
            if (per < 1) per = 1;

            latch = new CountDownLatch(chunks);
            for (int c = 0; c < chunks; c++) {
                int from = c * per;
                int to = Math.min(from + per, total);
                if (from >= total) {
                    latch.countDown();
                    continue;
                }
                Thread worker = spawn(from, to, latch, c);
                if (worker == null) {
                    latch.countDown();
                    continue;
                }
                workers.add(worker);
                try {
                    worker.start();
                } catch (Exception e) {
                    workers.remove(worker);
                    latch.countDown();
                }
            }

            while (running) {
                if (latch.await(AWAIT_SLICE_MS, TimeUnit.MILLISECONDS)) break;
            }
            if (!running) {
                for (Thread t : workers) {
                    if (t != null) t.interrupt();
                }
                latch.await(ScanConfig.RESOLVER_JOIN_MS, TimeUnit.MILLISECONDS);
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } catch (Exception e) {
            warn("sweep failed: " + e);
        } catch (Throwable t) {
            warn("sweep aborted");
        } finally {
            try {
                workers.clear();
            } catch (Exception ignored) {
            }
        }
    }

    public int probed() {
        return probes.get();
    }

    public void resetProbed() {
        try {
            probes.set(0);
        } catch (Exception ignored) {
        }
    }

    private Thread spawn(final int from, final int to, final CountDownLatch latch, int index) {
        try {
            Thread t = new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        for (int i = from; i < to; i++) {
                            if (!running) break;
                            String ip = null;
                            try {
                                ip = net.range.at(i);
                            } catch (Exception ignored) {
                            }
                            probe(ip);
                            probes.incrementAndGet();
                        }
                    } catch (Exception ignored) {
                    } catch (Throwable ignored) {
                    } finally {
                        latch.countDown();
                    }
                }
            }, "icmp-sweep-" + index);
            t.setDaemon(true);
            return t;
        } catch (Exception e) {
            return null;
        }
    }

    private void probe(String ip) {
        if (ip == null || ip.isEmpty()) return;
        try {
            if (net.localIp != null && net.localIp.equals(ip)) {
                mark(ip);
                return;
            }
            InetAddress addr = InetAddress.getByName(ip);
            if (addr == null) return;
            boolean alive;
            if (net.iface != null) {
                alive = addr.isReachable(net.iface, TTL, ScanConfig.ICMP_TIMEOUT_MS);
            } else {
                alive = addr.isReachable(ScanConfig.ICMP_TIMEOUT_MS);
            }
            if (alive) mark(ip);
        } catch (Exception ignored) {
        } catch (Throwable ignored) {
        }
    }
}
