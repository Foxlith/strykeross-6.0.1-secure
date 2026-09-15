package com.zalexdev.stryker.localnetwork.nonroot;

import android.util.Log;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class Neighbours {

    private static final String TAG = "Neighbours";

    private static volatile boolean loaded;
    private static volatile boolean available = true;
    private static volatile int lastError;

    private Neighbours() {
    }

    private static native int nativeDump(List<String> sink);

    private static synchronized void load() {
        if (loaded) return;
        loaded = true;
        try {
            System.loadLibrary("protected");
        } catch (Throwable t) {
            available = false;
            Log.w(TAG, "native library unavailable: " + t.getMessage());
        }
    }

    public static boolean isAvailable() {
        load();
        return available;
    }

    public static int lastError() {
        return lastError;
    }

    public static Map<String, String> dump() {
        Map<String, String> out = new LinkedHashMap<>();
        load();
        if (!available) return out;
        List<String> lines = new ArrayList<>();
        int rc;
        try {
            rc = nativeDump(lines);
        } catch (Throwable t) {
            available = false;
            Log.w(TAG, "netlink dump failed: " + t.getMessage());
            return out;
        }
        lastError = rc;
        if (rc < 0) {
            Log.w(TAG, "netlink RTM_GETNEIGH refused, errno " + (-rc));
            return out;
        }
        for (String line : lines) {
            if (line == null) continue;
            int sp = line.indexOf(' ');
            if (sp <= 0) continue;
            String ip = line.substring(0, sp).trim();
            String mac = Node.normalizeMac(line.substring(sp + 1).trim());
            if (mac == null || ip.isEmpty()) continue;
            if (mac.equals("00:00:00:00:00:00")) continue;
            out.put(ip, mac);
        }
        return out;
    }
}
