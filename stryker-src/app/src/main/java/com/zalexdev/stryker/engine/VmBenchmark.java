package com.zalexdev.stryker.engine;

import android.content.Context;

import com.zalexdev.stryker.utils.Core;

import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

public final class VmBenchmark {

    public static final String REASON_BOOT = "boot failed";
    public static final String REASON_TIMEOUT = "timed out";
    public static final String REASON_SLOW = "shell too slow";
    public static final String REASON_NO_MARKER = "no marker";

    private static final int CHUNKS = 24;
    private static final long PROBE_START_ITERS = 20_000L;
    private static final long PROBE_MAX_ITERS = 1_280_000L;
    private static final long PROBE_MIN_MS = 500L;
    private static final long PROBE_BUDGET_MS = 30_000L;
    private static final long CORES_BUDGET_MS = 15_000L;
    private static final long SAMPLE_BUDGET_MS = 90_000L;
    private static final long SWEEP_BUDGET_MS = 360_000L;
    private static final long CANDIDATE_MIN_BUDGET_MS = 25_000L;
    private static final long TARGET_SINGLE_MS = 4_000L;
    private static final long MIN_TOTAL_WORK = 4_800L;
    private static final long MAX_TOTAL_WORK = 40_000_000L;
    private static final long STOP_WAIT_MS = 15_000L;
    private static final int READ_SLICE_MS = 2_000;
    private static final int MAX_WORKERS = 32;

    private static final String MARK_PROBE = "__PROBE_DONE__";
    private static final String MARK_WORK = "__BENCH_DONE__";
    private static final String CORES_HEAD = "__CORES__";
    private static final String CORES_TAIL = "__CORES_END__";

    private static final String CORES_SCRIPT =
            "n=$(nproc 2>/dev/null); "
            + "case \"$n\" in ''|*[!0-9]*) n=$(grep -c '^processor' /proc/cpuinfo 2>/dev/null);; esac; "
            + "case \"$n\" in ''|*[!0-9]*) n=0;; esac; "
            + "printf '\\n" + CORES_HEAD + "%s" + CORES_TAIL + "\\n' \"$n\"";

    private VmBenchmark() {}

    public interface Listener {
        void onProgress(String message, int percent);
        void onDone(Result result);
        void onError(String message);
    }

    public static final class Sample {
        public final int cpus;
        public final long scoreMs;
        public final String reason;
        Sample(int cpus, long scoreMs) { this(cpus, scoreMs, null); }
        Sample(int cpus, long scoreMs, String reason) {
            this.cpus = cpus; this.scoreMs = scoreMs; this.reason = reason;
        }
        public boolean ok() { return scoreMs >= 0; }
    }

    public static final class Result {
        public final int bestCpus;
        public final int ramMb;
        public final boolean kvm;
        public final List<Sample> samples;
        public final String summary;
        public final long totalWork;
        public final long opsPerSec;
        Result(int bestCpus, int ramMb, boolean kvm, List<Sample> samples, String summary,
               long totalWork, long opsPerSec) {
            this.bestCpus = bestCpus; this.ramMb = ramMb; this.kvm = kvm;
            this.samples = samples; this.summary = summary;
            this.totalWork = totalWork; this.opsPerSec = opsPerSec;
        }
    }

    public static void autotune(Context ctx, RootlessEngine engine, Core core, Listener l) {
        if (!engine.isInstalled()) { l.onError("VM is not installed"); return; }

        final boolean hadCpus = core.contains(VmSpecs.K_CPUS);
        final int prevCpus = core.getInt(VmSpecs.K_CPUS, 0);
        final boolean hadRam = core.contains(VmSpecs.K_RAM);
        final int prevRam = core.getInt(VmSpecs.K_RAM, 0);

        engine.setAutoFallback(false);
        try {
            boolean kvm = VmSpecs.kvmAvailable();
            int ramMb = VmSpecs.recommendedRamMb(ctx);
            List<Integer> candidates = candidates(VmSpecs.deviceCores());
            long sweepDeadline = System.currentTimeMillis() + SWEEP_BUDGET_MS;

            core.putInt(VmSpecs.K_RAM, ramMb);

            List<Sample> samples = new ArrayList<>();
            long totalWork = 0L;
            double opsPerSec = 0d;
            int n = candidates.size();

            for (int i = 0; i < n; i++) {
                checkInterrupted();
                int cpus = candidates.get(i);
                int base = 8 + (int) ((i / (float) n) * 82);

                if (sweepDeadline - System.currentTimeMillis() < CANDIDATE_MIN_BUDGET_MS) {
                    samples.add(new Sample(cpus, -1, REASON_TIMEOUT));
                    continue;
                }

                l.onProgress("Booting " + cpus + " vCPU · " + ramMb + " MB…", base);
                core.putInt(VmSpecs.K_CPUS, cpus);
                engine.stopAndWait(STOP_WAIT_MS);
                if (!engine.startBlocking(null)) {
                    samples.add(new Sample(cpus, -1, REASON_BOOT));
                    l.onProgress(cpus + " vCPU: " + REASON_BOOT, base + 4);
                    continue;
                }
                checkInterrupted();

                if (totalWork <= 0L) {
                    l.onProgress("Calibrating guest shell…", base + 2);
                    Calibration cal = calibrate(sweepDeadline);
                    if (cal.reason != null) {
                        samples.add(new Sample(cpus, -1, cal.reason));
                        l.onProgress(cpus + " vCPU: " + cal.reason, base + 4);
                        continue;
                    }
                    totalWork = cal.totalWork;
                    opsPerSec = cal.opsPerSec;
                    l.onProgress(String.format(Locale.US, "Calibrated: %,d ops · %,d ops/s",
                            totalWork, (long) opsPerSec), base + 4);
                }

                long sampleDeadline = Math.min(System.currentTimeMillis() + SAMPLE_BUDGET_MS, sweepDeadline);
                int guestCores = guestCores(cpus, sampleDeadline);
                l.onProgress("Testing " + cpus + " vCPU on " + guestCores
                        + (guestCores == 1 ? " guest core…" : " guest cores…"), base + 6);

                Sample s = measure(cpus, guestCores, totalWork, sampleDeadline);
                samples.add(s);
                l.onProgress(cpus + " vCPU → " + (s.ok() ? s.scoreMs + " ms" : "failed (" + s.reason + ")"),
                        base + 8);
            }

            Sample best = null;
            for (Sample s : samples) {
                if (!s.ok()) continue;
                if (best == null || s.scoreMs < best.scoreMs) best = s;
            }

            if (best == null) {
                restore(engine, core, hadCpus, prevCpus, hadRam, prevRam, l);
                l.onError("no profile completed — " + reasons(samples));
                return;
            }

            l.onProgress("Applying best profile: " + best.cpus + " vCPU…", 95);
            core.putInt(VmSpecs.K_CPUS, best.cpus);
            core.putInt(VmSpecs.K_RAM, ramMb);
            engine.stopAndWait(STOP_WAIT_MS);
            engine.startBlocking(null);

            l.onDone(new Result(best.cpus, ramMb, kvm, samples,
                    summary(samples, best.cpus, totalWork, opsPerSec), totalWork, (long) opsPerSec));

        } catch (InterruptedException ie) {
            restore(engine, core, hadCpus, prevCpus, hadRam, prevRam, l);
            Thread.currentThread().interrupt();
            l.onError("cancelled — previous profile restored");
        } catch (Throwable t) {
            restore(engine, core, hadCpus, prevCpus, hadRam, prevRam, l);
            l.onError(t.getMessage() == null ? t.toString() : t.getMessage());
        } finally {
            engine.setAutoFallback(true);
        }
    }

    static List<Integer> candidates(int cores) {
        LinkedHashSet<Integer> set = new LinkedHashSet<>();
        set.add(VmSpecs.clamp(2, 1, cores));
        set.add(VmSpecs.clamp(VmSpecs.recommendedCpus(), 1, cores));
        set.add(cores);
        List<Integer> list = new ArrayList<>(set);
        java.util.Collections.sort(list);
        while (list.size() > 3) list.remove(1);
        return list;
    }

    private static final class Calibration {
        final long totalWork;
        final double opsPerSec;
        final String reason;
        Calibration(long totalWork, double opsPerSec, String reason) {
            this.totalWork = totalWork; this.opsPerSec = opsPerSec; this.reason = reason;
        }
        static Calibration failed(String reason) { return new Calibration(0, 0, reason); }
    }

    private static Calibration calibrate(long sweepDeadline) throws InterruptedException {
        long iters = PROBE_START_ITERS;
        long elapsed;
        while (true) {
            checkInterrupted();
            long deadline = Math.min(System.currentTimeMillis() + PROBE_BUDGET_MS, sweepDeadline);
            Exec e = runGuest(probeScript(iters), MARK_PROBE, deadline);
            if (e.timedOut) return Calibration.failed(REASON_SLOW);
            if (e.unreachable) return Calibration.failed(REASON_BOOT);
            if (!e.markerSeen) return Calibration.failed(REASON_NO_MARKER);
            elapsed = Math.max(1L, e.elapsedMs);
            if (elapsed >= PROBE_MIN_MS || iters >= PROBE_MAX_ITERS) break;
            iters *= 4L;
        }
        double opsPerSec = iters * 1000d / elapsed;
        long total = (long) (opsPerSec * (TARGET_SINGLE_MS / 1000d));
        if (total < MIN_TOTAL_WORK) return Calibration.failed(REASON_SLOW);
        if (total > MAX_TOTAL_WORK) total = MAX_TOTAL_WORK;
        long step = Math.max(50L, total / CHUNKS);
        return new Calibration(step * CHUNKS, opsPerSec, null);
    }

    private static Sample measure(int cpus, int workers, long totalWork, long deadline)
            throws InterruptedException {
        long step = Math.max(50L, totalWork / CHUNKS);
        Exec e = runGuest(workloadScript(workers, step), MARK_WORK, deadline);
        if (e.markerSeen) return new Sample(cpus, e.elapsedMs, null);
        if (e.timedOut) return new Sample(cpus, -1, REASON_TIMEOUT);
        if (e.unreachable) return new Sample(cpus, -1, REASON_BOOT);
        return new Sample(cpus, -1, REASON_NO_MARKER);
    }

    private static int guestCores(int fallback, long sampleDeadline) throws InterruptedException {
        long deadline = Math.min(System.currentTimeMillis() + CORES_BUDGET_MS, sampleDeadline);
        Exec e = runGuest(CORES_SCRIPT, CORES_TAIL, deadline);
        int n = parseCores(e.text);
        if (n < 1) n = fallback;
        return VmSpecs.clamp(n, 1, MAX_WORKERS);
    }

    static int parseCores(String text) {
        if (text == null) return 0;
        int at = text.indexOf(CORES_HEAD);
        if (at < 0) return 0;
        int i = at + CORES_HEAD.length();
        int value = 0, digits = 0;
        while (i < text.length() && text.charAt(i) >= '0' && text.charAt(i) <= '9' && digits < 4) {
            value = value * 10 + (text.charAt(i) - '0');
            i++; digits++;
        }
        return digits == 0 ? 0 : value;
    }

    private static String probeScript(long iters) {
        return "i=0; while [ $i -lt " + iters + " ]; do i=$((i+1)); done; "
                + "printf '\\n" + MARK_PROBE + "\\n'";
    }

    private static String workloadScript(int workers, long step) {
        int[] chunks = splitChunks(CHUNKS, workers);
        StringBuilder sb = new StringBuilder();
        sb.append("w(){ c=0; while [ $c -lt $1 ]; do i=0; while [ $i -lt ").append(step)
          .append(" ]; do i=$((i+1)); done; printf '.'; c=$((c+1)); done; }; ");
        for (int c : chunks) {
            if (c > 0) sb.append("w ").append(c).append(" & ");
        }
        sb.append("wait; printf '\\n").append(MARK_WORK).append("\\n'");
        return sb.toString();
    }

    static int[] splitChunks(int chunks, int workers) {
        if (workers < 1) workers = 1;
        int[] out = new int[workers];
        int each = chunks / workers, rest = chunks % workers;
        for (int i = 0; i < workers; i++) out[i] = each + (i < rest ? 1 : 0);
        return out;
    }

    private static final class Exec {
        final String text;
        final long elapsedMs;
        final boolean markerSeen;
        final boolean timedOut;
        final boolean unreachable;
        Exec(String text, long elapsedMs, boolean markerSeen, boolean timedOut, boolean unreachable) {
            this.text = text; this.elapsedMs = elapsedMs; this.markerSeen = markerSeen;
            this.timedOut = timedOut; this.unreachable = unreachable;
        }
    }

    private static Exec runGuest(String script, String marker, long deadline) throws InterruptedException {
        long t0 = System.currentTimeMillis();
        StringBuilder buf = new StringBuilder();
        boolean markerSeen = false, timedOut = false, unreachable = false;
        GuestExec.Session session = null;
        try {
            session = GuestExec.open(script);
            session.socket.setSoTimeout(READ_SLICE_MS);
            char[] chunk = new char[1024];
            while (true) {
                checkInterrupted();
                if (System.currentTimeMillis() >= deadline) { timedOut = true; break; }
                int read;
                try {
                    read = session.reader.read(chunk);
                } catch (SocketTimeoutException te) {
                    continue;
                }
                if (read < 0) break;
                if (read > 0) buf.append(chunk, 0, read);
                if (buf.indexOf(marker) >= 0) { markerSeen = true; break; }
                if (buf.indexOf(GuestExec.Session.SENTINEL) >= 0) break;
                if (buf.length() > 32768) buf.delete(0, buf.length() - 4096);
            }
        } catch (IOException io) {
            unreachable = true;
        } finally {
            if (session != null) session.close();
        }
        return new Exec(buf.toString(), System.currentTimeMillis() - t0, markerSeen, timedOut, unreachable);
    }

    private static void restore(RootlessEngine engine, Core core, boolean hadCpus, int prevCpus,
                                boolean hadRam, int prevRam, Listener l) {
        try {
            if (hadCpus) core.putInt(VmSpecs.K_CPUS, prevCpus); else core.remove(VmSpecs.K_CPUS);
            if (hadRam) core.putInt(VmSpecs.K_RAM, prevRam); else core.remove(VmSpecs.K_RAM);
        } catch (Throwable ignored) {}
        try {
            if (!engine.isRunning()) return;
            l.onProgress("Restoring previous VM profile…", 98);
            engine.stopAndWait(STOP_WAIT_MS);
            engine.startBlocking(null);
        } catch (Throwable ignored) {}
    }

    private static void checkInterrupted() throws InterruptedException {
        if (Thread.currentThread().isInterrupted()) throw new InterruptedException("benchmark cancelled");
    }

    private static String reasons(List<Sample> samples) {
        StringBuilder sb = new StringBuilder();
        for (Sample s : samples) {
            if (sb.length() > 0) sb.append(", ");
            sb.append(s.cpus).append(" vCPU: ").append(s.reason == null ? "unknown" : s.reason);
        }
        return sb.length() == 0 ? "no candidates to test" : sb.toString();
    }

    private static String summary(List<Sample> samples, int bestCpus, long totalWork, double opsPerSec) {
        StringBuilder sb = new StringBuilder();
        for (Sample s : samples) {
            sb.append(s.cpus == bestCpus && s.ok() ? "★ " : "  ")
              .append(s.cpus).append(" vCPU → ");
            if (s.ok()) sb.append(s.scoreMs).append(" ms");
            else sb.append("failed (").append(s.reason == null ? "unknown" : s.reason).append(')');
            sb.append('\n');
        }
        if (totalWork > 0) {
            sb.append('\n').append(String.format(Locale.US,
                    "Workload: %,d shell ops in %d slices · guest shell %,d ops/s",
                    totalWork, CHUNKS, (long) opsPerSec));
        }
        return sb.toString().trim();
    }

    public static String recommendation(Context ctx) {
        return String.format(Locale.US, "%d vCPU · %d MB · %s",
                VmSpecs.recommendedCpus(), VmSpecs.recommendedRamMb(ctx),
                VmSpecs.kvmAvailable() ? "KVM" : "TCG");
    }
}
