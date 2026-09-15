package com.zalexdev.stryker.localnetwork.nonroot;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.PowerManager;

public final class ScanLocks {

    private static final String TAG = "stryker:lan-scan";

    private WifiManager.MulticastLock multicast;
    private WifiManager.WifiLock wifiLock;
    private PowerManager.WakeLock wakeLock;

    public void acquire(Context ctx) {
        if (ctx == null) return;
        Context app = ctx.getApplicationContext();
        try {
            WifiManager wm = (WifiManager) app.getSystemService(Context.WIFI_SERVICE);
            if (wm != null) {
                multicast = wm.createMulticastLock(TAG);
                multicast.setReferenceCounted(false);
                multicast.acquire();
                wifiLock = wm.createWifiLock(WifiManager.WIFI_MODE_FULL_HIGH_PERF, TAG);
                wifiLock.setReferenceCounted(false);
                wifiLock.acquire();
            }
        } catch (Exception ignored) {
        }
        try {
            PowerManager pm = (PowerManager) app.getSystemService(Context.POWER_SERVICE);
            if (pm != null) {
                wakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, TAG);
                wakeLock.setReferenceCounted(false);
                wakeLock.acquire(10 * 60 * 1000L);
            }
        } catch (Exception ignored) {
        }
    }

    public void release() {
        try {
            if (multicast != null && multicast.isHeld()) multicast.release();
        } catch (Exception ignored) {
        }
        try {
            if (wifiLock != null && wifiLock.isHeld()) wifiLock.release();
        } catch (Exception ignored) {
        }
        try {
            if (wakeLock != null && wakeLock.isHeld()) wakeLock.release();
        } catch (Exception ignored) {
        }
        multicast = null;
        wifiLock = null;
        wakeLock = null;
    }
}
