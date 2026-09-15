package com.zalexdev.stryker.localnetwork.nonroot;

import com.zalexdev.stryker.logger.Logger;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public abstract class DiscoveryResolver {

    protected final NetworkContext net;
    protected final Logger log;
    protected volatile boolean running;

    private final Set<String> answered =
            Collections.newSetFromMap(new ConcurrentHashMap<String, Boolean>());

    protected DiscoveryResolver(NetworkContext net, Logger log) {
        this.net = net;
        this.log = log;
    }

    public abstract String tag();

    public abstract void start();

    public abstract void stop();

    public Set<String> answered() {
        return answered;
    }

    public boolean isRunning() {
        return running;
    }

    protected void mark(String ip) {
        if (ip == null || ip.isEmpty()) return;
        if (net != null && !net.inRange(ip)) return;
        answered.add(ip);
    }

    protected void note(String message) {
        if (log != null) log.writeLine("[" + tag() + "] " + message, 2);
    }

    protected void warn(String message) {
        if (log != null) log.writeLine("[" + tag() + "] " + message, 3);
    }

    protected static void sleep(long ms) {
        try {
            Thread.sleep(ms);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    protected static void join(Thread thread, long ms) {
        if (thread == null) return;
        try {
            thread.interrupt();
            thread.join(ms);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
