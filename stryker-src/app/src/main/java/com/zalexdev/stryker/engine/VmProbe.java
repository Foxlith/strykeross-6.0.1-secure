package com.zalexdev.stryker.engine;

import android.content.Context;
import android.util.Log;

import com.zalexdev.stryker.utils.Core;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class VmProbe {

    private VmProbe() {
    }

    private static final String TAG = "VmProbe";
    private static final long PROBE_FILE_BYTES = 1024L * 1024L;
    private static final long ALIVE_GRACE_MS = 1800L;
    private static final long HARD_TIMEOUT_MS = 6000L;

    public static final class Result {
        public final boolean supported;
        public final String detail;

        Result(boolean supported, String detail) {
            this.supported = supported;
            this.detail = detail == null ? "" : detail;
        }
    }

    public static Result probeCpu(Context ctx, String cpuModel) {
        if (ctx == null) return new Result(false, "no context");
        if (cpuModel == null || cpuModel.isEmpty()) return new Result(false, "empty cpu model");
        File qemu = RootlessPaths.qemuBin(ctx);
        if (!qemu.exists()) return new Result(false, "engine not installed");

        List<String> cmd = new ArrayList<>();
        cmd.add(qemu.getAbsolutePath());
        cmd.add("-M");
        cmd.add("virt,gic-version=3");
        cmd.add("-accel");
        cmd.add("tcg,thread=single,tb-size=32");
        cmd.add("-cpu");
        cmd.add(cpuModel);
        cmd.add("-m");
        cmd.add("128");
        cmd.add("-display");
        cmd.add("none");
        cmd.add("-nodefaults");
        cmd.add("-no-user-config");
        cmd.add("-S");

        Result r = run(ctx, qemu, cmd, "QEMU accepted -cpu " + cpuModel, "QEMU refused -cpu " + cpuModel);
        if (!r.supported) return r;
        String lower = r.detail.toLowerCase(Locale.ROOT);
        if (lower.contains("not found") || lower.contains("invalid parameter")
                || lower.contains("cannot enable") || lower.contains("does not support")) {
            return new Result(false, r.detail);
        }
        return r;
    }

    public static Result probeAio(Context ctx, String aio) {
        if (ctx == null) return new Result(false, "no context");
        if (!"io_uring".equals(aio)) return new Result(true, "threads is always available");
        File qemu = RootlessPaths.qemuBin(ctx);
        if (!qemu.exists()) return new Result(false, "engine not installed");
        File probeFile = null;
        try {
            probeFile = createProbeFile(ctx);
            if (probeFile == null) return new Result(false, "no writable probe file");

            List<String> cmd = new ArrayList<>();
            cmd.add(qemu.getAbsolutePath());
            cmd.add("-M");
            cmd.add("none");
            cmd.add("-display");
            cmd.add("none");
            cmd.add("-nodefaults");
            cmd.add("-no-user-config");
            cmd.add("-drive");
            cmd.add("file=" + probeFile.getAbsolutePath()
                    + ",if=none,id=aioprobe,format=raw,cache=writeback,aio=" + aio);

            Result r = run(ctx, qemu, cmd, "QEMU accepted aio=" + aio, "QEMU refused aio=" + aio);
            if (!r.supported) return r;
            String lower = r.detail.toLowerCase(Locale.ROOT);
            if (lower.contains("not supported") || lower.contains("invalid parameter")
                    || lower.contains("failed to") || lower.contains("io_uring")) {
                return new Result(false, r.detail);
            }
            return r;
        } catch (Throwable t) {
            Log.w(TAG, "probe failed", t);
            return new Result(false, t.getMessage() == null ? t.toString() : t.getMessage());
        } finally {
            if (probeFile != null) {
                //noinspection ResultOfMethodCallIgnored
                probeFile.delete();
            }
        }
    }

    private static Result run(Context ctx, File qemu, List<String> cmd, String okDetail, String failDetail) {
        Process process = null;
        try {
            ProcessBuilder pb = new ProcessBuilder(cmd);
            pb.directory(RootlessPaths.base(ctx));
            pb.environment().put("LD_LIBRARY_PATH",
                    RootlessPaths.base(ctx).getAbsolutePath() + ":/system/lib64:/vendor/lib64");
            pb.redirectErrorStream(true);
            try {
                //noinspection ResultOfMethodCallIgnored
                qemu.setExecutable(true, false);
            } catch (Exception ignored) {
            }
            process = pb.start();

            final Process running = process;
            final StringBuilder output = new StringBuilder();
            Thread reader = new Thread(() -> {
                try (BufferedReader br = new BufferedReader(
                        new InputStreamReader(running.getInputStream(), StandardCharsets.UTF_8))) {
                    String line;
                    while ((line = br.readLine()) != null) {
                        synchronized (output) {
                            if (output.length() < 4096) output.append(line).append('\n');
                        }
                    }
                } catch (Exception ignored) {
                }
            }, "vm-probe-reader");
            reader.setDaemon(true);
            reader.start();

            long deadline = System.currentTimeMillis() + HARD_TIMEOUT_MS;
            long aliveAt = System.currentTimeMillis() + ALIVE_GRACE_MS;
            Integer exit = null;
            while (System.currentTimeMillis() < deadline) {
                exit = exitOf(process);
                if (exit != null) break;
                if (System.currentTimeMillis() >= aliveAt) break;
                sleep(120);
            }

            String text;
            synchronized (output) {
                text = output.toString();
            }

            if (exit != null && exit != 0) {
                return new Result(false, firstProblem(text, failDetail
                        + " (exit " + exit + ")"));
            }
            return new Result(true, firstProblem(text, okDetail));
        } catch (Throwable t) {
            Log.w(TAG, "probe failed", t);
            return new Result(false, t.getMessage() == null ? t.toString() : t.getMessage());
        } finally {
            if (process != null) {
                try {
                    process.destroy();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    public static boolean ensureCpuProfileVerified(Context ctx, Core core) {
        if (core == null || ctx == null) return true;
        if (VmSpecs.safeBoot(core)) return true;
        String model = VmSpecs.cpuModel(core);
        if (model.equals(core.getString(VmSpecs.K_CPU_OK))) return true;
        Result r = probeCpu(ctx, model);
        if (r.supported) {
            core.putString(VmSpecs.K_CPU_OK, model);
            core.putBoolean(VmSpecs.K_CPU_LEGACY, false);
            return true;
        }
        core.putBoolean(VmSpecs.K_CPU_LEGACY, true);
        core.putString(VmSpecs.K_CPU_OK, VmSpecs.cpuModel(core));
        GuestExec.logToStore("QEMU refused -cpu " + model + " (" + r.detail
                + ") — falling back to the compatible CPU profile");
        return false;
    }

    public static boolean ensureIoUringVerified(Context ctx, Core core, boolean force) {
        if (core == null) return false;
        int state = VmSpecs.ioUringState(core);
        if (!force && state != 0) return state > 0;
        Result r = probeAio(ctx, "io_uring");
        VmSpecs.setIoUringState(core, r.supported);
        GuestExec.logToStore("aio=io_uring probe: " + (r.supported ? "supported" : "unsupported")
                + " (" + r.detail + ")");
        return r.supported;
    }

    private static File createProbeFile(Context ctx) {
        try {
            File base = RootlessPaths.base(ctx);
            if (!base.isDirectory() && !base.mkdirs()) return null;
            File f = new File(base, ".aio-probe.img");
            try (RandomAccessFile raf = new RandomAccessFile(f, "rw")) {
                raf.setLength(PROBE_FILE_BYTES);
            }
            return f;
        } catch (Throwable t) {
            return null;
        }
    }

    private static String firstProblem(String text, String fallback) {
        if (text == null || text.trim().isEmpty()) return fallback;
        for (String line : text.split("\n")) {
            String l = line.trim();
            if (l.isEmpty()) continue;
            return l.length() > 160 ? l.substring(0, 160) : l;
        }
        return fallback;
    }

    private static Integer exitOf(Process p) {
        try {
            return p.exitValue();
        } catch (IllegalThreadStateException e) {
            return null;
        }
    }

    private static void sleep(long ms) {
        try {
            Thread.sleep(ms);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
