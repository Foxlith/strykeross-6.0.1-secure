package com.zalexdev.stryker.engine;

import com.zalexdev.stryker.R;

import java.util.List;
import java.util.Locale;

public final class VmBootStage {

    private VmBootStage() {
    }

    public static final int START = 0;
    public static final int KERNEL = 1;
    public static final int ROOTFS = 2;
    public static final int SERVICES = 3;
    public static final int AGENT = 4;
    public static final int READY = 5;

    private static final int SCAN_TAIL = 60;

    public static int detect(List<String> lines) {
        if (lines == null || lines.isEmpty()) return START;
        int best = START;
        int from = Math.max(0, lines.size() - SCAN_TAIL);
        for (int i = lines.size() - 1; i >= from; i--) {
            String raw = lines.get(i);
            if (raw == null) continue;
            String l = raw.toLowerCase(Locale.ROOT);
            if (l.contains("root@") || l.contains("stryker-agentd") || l.contains("login:")) return AGENT;
            if (best < SERVICES && (l.contains("systemd") || l.contains("openrc")
                    || l.contains("starting ") || l.contains("udhcpc") || l.contains("dhcp"))) {
                best = SERVICES;
            }
            if (best < ROOTFS && (l.contains("ext4-fs") || l.contains("mounted filesystem")
                    || l.contains("vfs: mounted root") || l.contains("switching root")
                    || l.contains("freeing unused kernel"))) {
                best = ROOTFS;
            }
            if (best < KERNEL && (l.contains("linux version") || l.contains("booting linux")
                    || l.contains("kernel"))) {
                best = KERNEL;
            }
        }
        return best;
    }

    public static float fraction(int stage) {
        switch (stage) {
            case KERNEL: return 0.25f;
            case ROOTFS: return 0.5f;
            case SERVICES: return 0.72f;
            case AGENT: return 0.88f;
            case READY: return 1f;
            default: return 0.08f;
        }
    }

    public static int labelRes(int stage) {
        switch (stage) {
            case KERNEL: return R.string.vm_boot_stage_kernel;
            case ROOTFS: return R.string.vm_boot_stage_rootfs;
            case SERVICES: return R.string.vm_boot_stage_services;
            case AGENT: return R.string.vm_boot_stage_agent;
            case READY: return R.string.vm_boot_stage_ready;
            default: return R.string.vm_boot_stage_start;
        }
    }
}
