package com.zalexdev.stryker.engine;

import android.content.Context;

public final class VmStatsCollector {

    public static final long SAMPLE_INTERVAL_MS = 5000L;
    public static final long WINDOW_MS = 24L * 60L * 60L * 1000L;
    private static final int CAPACITY = (int) (WINDOW_MS / SAMPLE_INTERVAL_MS);

    private static volatile VmStatsCollector instance;

    public static final class Series {
        public final float[] cpu;
        public final float[] ramFraction;
        public final int[] ramMb;
        public final long spanMs;
        public final int samples;
        public final float lastCpu;
        public final int lastRamMb;
        public final int peakRamMb;
        public final boolean running;
        public final boolean blocked;

        Series(float[] cpu, float[] ramFraction, int[] ramMb, long spanMs, int samples,
               float lastCpu, int lastRamMb, int peakRamMb, boolean running, boolean blocked) {
            this.cpu = cpu;
            this.ramFraction = ramFraction;
            this.ramMb = ramMb;
            this.spanMs = spanMs;
            this.samples = samples;
            this.lastCpu = lastCpu;
            this.lastRamMb = lastRamMb;
            this.peakRamMb = peakRamMb;
            this.running = running;
            this.blocked = blocked;
        }
    }

    private final VmStats stats;
    private final float[] cpu = new float[CAPACITY];
    private final int[] ram = new int[CAPACITY];
    private final long[] time = new long[CAPACITY];

    private int head;
    private int count;
    private volatile boolean alive;
    private volatile Thread worker;
    private volatile float lastCpu = -1f;
    private volatile int lastRam = -1;
    private volatile boolean lastRunning;
    private volatile boolean lastBlocked;

    private VmStatsCollector(Context ctx) {
        this.stats = new VmStats(ctx);
    }

    public static VmStatsCollector get(Context ctx) {
        if (instance == null) {
            synchronized (VmStatsCollector.class) {
                if (instance == null) instance = new VmStatsCollector(ctx);
            }
        }
        return instance;
    }

    public static VmStatsCollector peek() {
        return instance;
    }

    public synchronized void start() {
        if (alive && worker != null && worker.isAlive()) return;
        alive = true;
        Thread t = new Thread(this::loop, "vm-stats-collector");
        t.setDaemon(true);
        t.setPriority(Thread.MIN_PRIORITY + 1);
        worker = t;
        t.start();
    }

    public synchronized void stop() {
        alive = false;
        Thread t = worker;
        worker = null;
        if (t != null) t.interrupt();
    }

    public boolean isCollecting() {
        return alive;
    }

    private void loop() {
        while (alive) {
            try {
                VmStats.Sample s = stats.sample();
                record(s);
            } catch (Throwable ignored) {
            }
            try {
                Thread.sleep(SAMPLE_INTERVAL_MS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    private synchronized void record(VmStats.Sample s) {
        float c = s == null ? -1f : s.vmCpuPercent;
        int r = s == null || s.vmRssBytes <= 0 ? -1 : (int) (s.vmRssBytes / (1024L * 1024L));
        cpu[head] = c;
        ram[head] = r;
        time[head] = System.currentTimeMillis();
        head = (head + 1) % CAPACITY;
        if (count < CAPACITY) count++;
        lastCpu = c;
        lastRam = r;
        lastRunning = s != null && s.running;
        lastBlocked = s != null && s.blocked;
    }

    public synchronized Series snapshot(int buckets) {
        int want = buckets < 8 ? 8 : buckets;
        float[] outCpu = new float[want];
        float[] outRamFraction = new float[want];
        int[] outRam = new int[want];
        for (int i = 0; i < want; i++) {
            outCpu[i] = -1f;
            outRamFraction[i] = -1f;
            outRam[i] = -1;
        }
        if (count == 0) {
            return new Series(outCpu, outRamFraction, outRam, 0L, 0, lastCpu, lastRam, 0,
                    lastRunning, lastBlocked);
        }

        int start = (head - count + CAPACITY) % CAPACITY;
        long first = time[start];
        long last = time[(head - 1 + CAPACITY) % CAPACITY];

        int peak = 0;
        for (int i = 0; i < count; i++) {
            int idx = (start + i) % CAPACITY;
            if (ram[idx] > peak) peak = ram[idx];
        }
        int scale = peak > 0 ? peak : 1;

        for (int b = 0; b < want; b++) {
            int from = (int) ((long) b * count / want);
            int to = (int) ((long) (b + 1) * count / want);
            if (to <= from) to = from + 1;
            if (to > count) to = count;
            float cpuSum = 0f;
            int cpuN = 0;
            long ramSum = 0L;
            int ramN = 0;
            for (int i = from; i < to; i++) {
                int idx = (start + i) % CAPACITY;
                if (cpu[idx] >= 0f) {
                    cpuSum += cpu[idx];
                    cpuN++;
                }
                if (ram[idx] >= 0) {
                    ramSum += ram[idx];
                    ramN++;
                }
            }
            if (cpuN > 0) outCpu[b] = cpuSum / cpuN;
            if (ramN > 0) {
                int avg = (int) (ramSum / ramN);
                outRam[b] = avg;
                outRamFraction[b] = Math.min(1f, avg / (float) scale);
            }
        }
        return new Series(outCpu, outRamFraction, outRam, Math.max(0L, last - first), count,
                lastCpu, lastRam, peak, lastRunning, lastBlocked);
    }
}
