package com.zalexdev.stryker.engine;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;

import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.StandardCharsets;

public final class VmStats {

    public static final class Sample {
        public int pid = -1;
        public boolean running;
        public boolean blocked;
        public float vmCpuPercent = -1f;
        public long vmRssBytes = -1L;
        public long totalRamBytes;
    }

    private static final String QEMU_MARK = "qemu-system";
    private static final long PID_RESCAN_MS = 2500L;
    private static final double MIN_DELTA_SEC = 0.15d;

    private final Context app;
    private final long pageSize;
    private final long clockTicks;
    private final int cores;

    private int pid = -1;
    private long lastPidScan;
    private long lastJiffies = -1L;
    private long lastSampleNs;
    private long totalRam;

    public VmStats(Context context) {
        this.app = context == null ? null : context.getApplicationContext();
        this.cores = Math.max(1, Runtime.getRuntime().availableProcessors());
        long page = 4096L;
        long hz = 100L;
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                page = Os.sysconf(OsConstants._SC_PAGESIZE);
                hz = Os.sysconf(OsConstants._SC_CLK_TCK);
            }
        } catch (Throwable ignored) {
        }
        this.pageSize = page <= 0 ? 4096L : page;
        this.clockTicks = hz <= 0 ? 100L : hz;
    }

    public Sample sample() {
        Sample s = new Sample();
        s.totalRamBytes = totalRam();
        s.pid = resolvePid();
        if (s.pid <= 0) {
            reset();
            return s;
        }
        s.running = true;

        long jiffies = readProcessJiffies(s.pid);
        long nowNs = System.nanoTime();
        if (jiffies < 0) {
            s.blocked = true;
            lastJiffies = -1L;
            lastSampleNs = 0L;
        } else {
            if (lastJiffies >= 0 && lastSampleNs > 0 && jiffies >= lastJiffies) {
                double deltaSec = (nowNs - lastSampleNs) / 1000000000d;
                if (deltaSec >= MIN_DELTA_SEC) {
                    double cpuSec = (jiffies - lastJiffies) / (double) clockTicks;
                    double percent = 100d * cpuSec / (deltaSec * cores);
                    s.vmCpuPercent = (float) Math.max(0d, Math.min(100d, percent));
                }
            }
            lastJiffies = jiffies;
            lastSampleNs = nowNs;
        }

        s.vmRssBytes = readRss(s.pid);
        if (s.vmRssBytes < 0) s.blocked = true;
        return s;
    }

    public void reset() {
        pid = -1;
        lastPidScan = 0L;
        lastJiffies = -1L;
        lastSampleNs = 0L;
    }

    private long totalRam() {
        if (totalRam > 0) return totalRam;
        try {
            ActivityManager am = app == null ? null
                    : (ActivityManager) app.getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return 0L;
            ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
            am.getMemoryInfo(mi);
            totalRam = mi.totalMem;
        } catch (Throwable ignored) {
        }
        return totalRam;
    }

    private int resolvePid() {
        if (pid > 0) {
            if (new File("/proc/" + pid).exists()) return pid;
            pid = -1;
            lastJiffies = -1L;
            lastSampleNs = 0L;
        }
        long now = System.currentTimeMillis();
        if (now - lastPidScan < PID_RESCAN_MS) return -1;
        lastPidScan = now;
        pid = scanForQemu();
        return pid;
    }

    private int scanForQemu() {
        try {
            String[] entries = new File("/proc").list();
            if (entries == null) return -1;
            for (String entry : entries) {
                int candidate;
                try {
                    candidate = Integer.parseInt(entry);
                } catch (NumberFormatException e) {
                    continue;
                }
                String cmd = readSmall("/proc/" + candidate + "/cmdline", 512);
                if (cmd == null || cmd.isEmpty()) continue;
                if (cmd.contains(QEMU_MARK)) return candidate;
            }
        } catch (Throwable ignored) {
        }
        return -1;
    }

    private long readProcessJiffies(int target) {
        String stat = readSmall("/proc/" + target + "/stat", 1024);
        if (stat == null) return -1L;
        int close = stat.lastIndexOf(')');
        if (close < 0 || close + 2 >= stat.length()) return -1L;
        String[] parts = stat.substring(close + 2).trim().split("\\s+");
        if (parts.length < 15) return -1L;
        try {
            return Long.parseLong(parts[11]) + Long.parseLong(parts[12]);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    private long readRss(int target) {
        String statm = readSmall("/proc/" + target + "/statm", 256);
        if (statm == null) return -1L;
        String[] parts = statm.trim().split("\\s+");
        if (parts.length < 2) return -1L;
        try {
            return Long.parseLong(parts[1]) * pageSize;
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    private static String readSmall(String path, int cap) {
        FileInputStream in = null;
        try {
            in = new FileInputStream(path);
            byte[] buffer = new byte[cap];
            int total = 0;
            while (total < cap) {
                int read = in.read(buffer, total, cap - total);
                if (read <= 0) break;
                total += read;
            }
            if (total <= 0) return null;
            for (int i = 0; i < total; i++) {
                if (buffer[i] == 0) buffer[i] = ' ';
            }
            return new String(buffer, 0, total, StandardCharsets.UTF_8);
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }
}
