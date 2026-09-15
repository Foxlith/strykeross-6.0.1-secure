package com.zalexdev.stryker.settings;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;

import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.zalexdev.stryker.R;
import com.zalexdev.stryker.engine.RootlessEngine;
import com.zalexdev.stryker.engine.RootlessService;
import com.zalexdev.stryker.engine.VmBenchmark;
import com.zalexdev.stryker.engine.VmSpecs;
import com.zalexdev.stryker.utils.Core;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class VmSettingsFragment extends Fragment {

    private Activity activity;
    private Context context;
    private Core core;
    private RootlessEngine engine;

    private TextView deviceCaps, diskValue, diskSub, cpuValue, ramValue, cacheValue, aioValue,
            recommendSub, pauthValue;
    private SwitchMaterial mttcg, norng, noshare, iothread, fastboot;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle b) {
        activity = getActivity();
        context = getContext();
        core = new Core(context);
        engine = core.rootless();
        return inflater.inflate(R.layout.settings_vm, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View v, @Nullable Bundle savedInstanceState) {
        deviceCaps = v.findViewById(R.id.vm_device_caps);
        diskValue = v.findViewById(R.id.vm_disk_value);
        diskSub = v.findViewById(R.id.vm_disk_sub);
        cpuValue = v.findViewById(R.id.vm_cpu_value);
        ramValue = v.findViewById(R.id.vm_ram_value);
        cacheValue = v.findViewById(R.id.vm_cache_value);
        aioValue = v.findViewById(R.id.vm_aio_value);
        recommendSub = v.findViewById(R.id.vm_recommend_sub);
        pauthValue = v.findViewById(R.id.vm_pauth_value);
        mttcg = v.findViewById(R.id.vm_mttcg_switch);
        norng = v.findViewById(R.id.vm_norng_switch);
        noshare = v.findViewById(R.id.vm_noshare_switch);
        iothread = v.findViewById(R.id.vm_iothread_switch);
        fastboot = v.findViewById(R.id.vm_fastboot_switch);

        v.findViewById(R.id.vm_disk_row).setOnClickListener(x -> showDiskInfo());
        v.findViewById(R.id.vm_cpu_row).setOnClickListener(x -> showCpuDialog());
        v.findViewById(R.id.vm_ram_row).setOnClickListener(x -> showRamDialog());
        v.findViewById(R.id.vm_recommend_row).setOnClickListener(x -> applyRecommended());
        v.findViewById(R.id.vm_benchmark_row).setOnClickListener(x -> confirmBenchmark());
        v.findViewById(R.id.vm_cache_row).setOnClickListener(x -> showCacheDialog());
        v.findViewById(R.id.vm_aio_row).setOnClickListener(x -> showAioDialog());
        v.findViewById(R.id.vm_pauth_row).setOnClickListener(x -> showPauthDialog());

        v.findViewById(R.id.vm_mttcg_row).setOnClickListener(x -> mttcg.setChecked(!mttcg.isChecked()));
        v.findViewById(R.id.vm_norng_row).setOnClickListener(x -> norng.setChecked(!norng.isChecked()));
        v.findViewById(R.id.vm_noshare_row).setOnClickListener(x -> noshare.setChecked(!noshare.isChecked()));
        v.findViewById(R.id.vm_iothread_row).setOnClickListener(x -> iothread.setChecked(!iothread.isChecked()));
        v.findViewById(R.id.vm_fastboot_row).setOnClickListener(x -> fastboot.setChecked(!fastboot.isChecked()));

        mttcg.setChecked(VmSpecs.mttcg(core));
        norng.setChecked(core.getBoolean(VmSpecs.K_NO_RNG));
        noshare.setChecked(core.getBoolean(VmSpecs.K_NO_SHARE));
        iothread.setChecked(!core.getBoolean(VmSpecs.K_NO_IOTHREAD));
        fastboot.setChecked(!core.getBoolean(VmSpecs.K_NO_FASTBOOT));
        mttcg.setOnCheckedChangeListener((b, on) -> core.putBoolean(VmSpecs.K_MTTCG, on));
        norng.setOnCheckedChangeListener((b, on) -> core.putBoolean(VmSpecs.K_NO_RNG, on));
        noshare.setOnCheckedChangeListener((b, on) -> core.putBoolean(VmSpecs.K_NO_SHARE, on));
        iothread.setOnCheckedChangeListener((b, on) -> core.putBoolean(VmSpecs.K_NO_IOTHREAD, !on));
        fastboot.setOnCheckedChangeListener((b, on) -> core.putBoolean(VmSpecs.K_NO_FASTBOOT, !on));

        v.findViewById(R.id.vm_apply_restart).setOnClickListener(x -> restartVm());

        refresh();
    }

    @SuppressLint("SetTextI18n")
    private void refresh() {
        int cores = VmSpecs.deviceCores();
        int devRam = VmSpecs.deviceRamMb(context);
        deviceCaps.setText(cores + " cores · " + devRam + " MB RAM · "
                + VmSpecs.humanBytes(VmSpecs.internalFreeBytes(context)) + " free · "
                + (VmSpecs.kvmAvailable() ? "KVM" : "TCG")
                + (VmSpecs.safeBoot(core) ? " · SAFE PROFILE" : ""));

        diskValue.setText(getString(R.string.vm_disk_auto));
        diskSub.setText("Uses " + VmSpecs.humanBytes(VmSpecs.diskAllocatedBytes(context))
                + " now · grows into " + VmSpecs.humanBytes(VmSpecs.internalFreeBytes(context))
                + " free");
        cpuValue.setText(String.valueOf(VmSpecs.effectiveCpus(context, core)));
        ramValue.setText(VmSpecs.effectiveRamMb(context, core) + " MB");
        cacheValue.setText(VmSpecs.cacheMode(core));
        aioValue.setText(VmSpecs.requestedAioMode(core) + " · " + aioVerdict());
        pauthValue.setText(VmSpecs.pauthMode(core));
        recommendSub.setText(VmBenchmark.recommendation(context));
    }

    private String aioVerdict() {
        if (!"io_uring".equals(VmSpecs.requestedAioMode(core))) return getString(R.string.vm_aio_sub_verified);
        int state = VmSpecs.ioUringState(core);
        if (state > 0) return getString(R.string.vm_aio_sub_verified);
        if (state < 0) return getString(R.string.vm_aio_sub_unsupported);
        return getString(R.string.vm_aio_sub_untested);
    }


    private void showDiskInfo() {
        new MaterialAlertDialogBuilder(context)
                .setTitle(R.string.vm_disk_title)
                .setMessage(getString(R.string.vm_disk_auto_msg,
                        VmSpecs.humanBytes(VmSpecs.diskAllocatedBytes(context)),
                        VmSpecs.humanBytes(VmSpecs.currentDiskBytes(context)),
                        VmSpecs.humanBytes(VmSpecs.internalFreeBytes(context))))
                .setPositiveButton(android.R.string.ok, null)
                .show();
    }

    private void confirmGrow(int targetGb) {
        new MaterialAlertDialogBuilder(context)
                .setTitle(R.string.vm_disk_title)
                .setMessage(getString(R.string.vm_disk_grow_confirm, targetGb))
                .setPositiveButton(android.R.string.ok, (d, w) -> growDisk(targetGb))
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private void growDisk(int targetGb) {
        AlertDialog progress = progressDialog(getString(R.string.vm_disk_growing));
        long targetBytes = targetGb * VmSpecs.GB;
        new Thread(() -> {
            RootlessEngine.ResizeResult r = engine.resizeDisk(targetBytes);
            ui(() -> {
                dismiss(progress);
                if (r == RootlessEngine.ResizeResult.OK) {
                    toast(getString(R.string.vm_disk_grown, targetGb));
                    refresh();
                    RootlessService.start(context);
                    return;
                }
                if (r != RootlessEngine.ResizeResult.ALREADY_THAT_SIZE) {
                    toast(getString(R.string.vm_disk_grow_failed, r.name()));
                }
                refresh();
            });
        }, "vm-grow-disk").start();
    }


    private void showCpuDialog() {
        int cores = VmSpecs.deviceCores();
        String[] labels = new String[cores];
        for (int i = 0; i < cores; i++) labels[i] = (i + 1) + (i + 1 == VmSpecs.recommendedCpus() ? "  ★" : "");
        int cur = VmSpecs.effectiveCpus(context, core);
        singleChoice(R.string.vm_cpu_dialog_title, labels, cur - 1, which -> {
            core.putInt(VmSpecs.K_CPUS, which + 1);
            refresh();
        });
    }

    private void showRamDialog() {
        int max = VmSpecs.maxRamMb(context);
        final List<Integer> opts = new ArrayList<>();
        for (int mb : new int[]{512, 1024, 1536, 2048, 3072, 4096, 6144, 8192}) {
            if (mb <= max) opts.add(mb);
        }
        if (opts.isEmpty()) opts.add(VmSpecs.MIN_RAM_MB);
        int cur = VmSpecs.effectiveRamMb(context, core);
        int rec = VmSpecs.recommendedRamMb(context);
        String[] labels = new String[opts.size()];
        int sel = 0;
        for (int i = 0; i < opts.size(); i++) {
            labels[i] = opts.get(i) + " MB" + (opts.get(i) == rec ? "  ★" : "");
            if (opts.get(i) == cur) sel = i;
        }
        singleChoice(R.string.vm_ram_dialog_title, labels, sel, which -> {
            core.putInt(VmSpecs.K_RAM, opts.get(which));
            refresh();
        });
    }


    private void applyRecommended() {
        core.putInt(VmSpecs.K_CPUS, VmSpecs.recommendedCpus());
        core.putInt(VmSpecs.K_RAM, VmSpecs.recommendedRamMb(context));
        refresh();
        toast(getString(R.string.vm_recommend_applied));
    }

    private void confirmBenchmark() {
        new MaterialAlertDialogBuilder(context)
                .setTitle(R.string.vm_benchmark_title)
                .setMessage(R.string.vm_benchmark_reboot_warn)
                .setPositiveButton(android.R.string.ok, (d, w) -> runBenchmark())
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private void runBenchmark() {
        final AlertDialog progress = progressDialog(getString(R.string.vm_benchmark_running));
        final TextView body = progress.findViewById(android.R.id.text1);
        new Thread(() -> VmBenchmark.autotune(context, engine, core, new VmBenchmark.Listener() {
            @Override public void onProgress(String message, int percent) {
                ui(() -> { if (body != null) body.setText(message); });
            }
            @Override public void onDone(VmBenchmark.Result result) {
                ui(() -> {
                    dismiss(progress);
                    refresh();
                    new MaterialAlertDialogBuilder(context)
                            .setTitle(getString(R.string.vm_benchmark_done, result.bestCpus, result.ramMb))
                            .setMessage(result.summary)
                            .setPositiveButton(android.R.string.ok, null)
                            .show();
                });
            }
            @Override public void onError(String message) {
                ui(() -> { dismiss(progress); toast(getString(R.string.vm_benchmark_failed, message)); });
            }
        }), "vm-benchmark").start();
    }


    private void showCacheDialog() {
        final String[] modes = {"writeback", "unsafe", "writethrough", "none"};
        String[] labels = {
                "writeback — balanced (default)",
                "unsafe — fastest, risky",
                "writethrough — safe, slower",
                "none — direct, bypass host cache"};
        int sel = indexOf(modes, VmSpecs.cacheMode(core));
        singleChoice(R.string.vm_cache_dialog_title, labels, sel, which -> {
            core.putString(VmSpecs.K_CACHE, modes[which]);
            refresh();
        });
    }

    private void showPauthDialog() {
        final String[] modes = {"off", "impdef", "qarma"};
        String[] labels = {
                getString(R.string.vm_pauth_off),
                getString(R.string.vm_pauth_impdef),
                getString(R.string.vm_pauth_qarma)};
        int sel = indexOf(modes, VmSpecs.pauthMode(core));
        singleChoice(R.string.vm_pauth_dialog_title, labels, sel, which -> {
            core.putString(VmSpecs.K_PAUTH, modes[which]);
            core.putBoolean(VmSpecs.K_CPU_LEGACY, false);
            core.remove(VmSpecs.K_CPU_OK);
            refresh();
        });
    }

    private void showAioDialog() {
        final String[] modes = {"threads", "io_uring"};
        String[] labels = {"threads — compatible (default)", "io_uring — faster if supported"};
        int sel = indexOf(modes, VmSpecs.requestedAioMode(core));
        singleChoice(R.string.vm_aio_dialog_title, labels, sel, which -> {
            if (which == 0) {
                core.putString(VmSpecs.K_AIO, modes[0]);
                refresh();
                return;
            }
            probeAndApplyIoUring();
        });
    }

    private void probeAndApplyIoUring() {
        AlertDialog progress = progressDialog(getString(R.string.vm_aio_probing));
        new Thread(() -> {
            com.zalexdev.stryker.engine.VmProbe.Result r =
                    com.zalexdev.stryker.engine.VmProbe.probeAio(context, "io_uring");
            VmSpecs.setIoUringState(core, r.supported);
            if (r.supported) {
                core.putString(VmSpecs.K_AIO, "io_uring");
            } else {
                core.putString(VmSpecs.K_AIO, "threads");
            }
            ui(() -> {
                dismiss(progress);
                toast(r.supported
                        ? getString(R.string.vm_aio_supported)
                        : getString(R.string.vm_aio_unsupported, r.detail));
                refresh();
            });
        }, "vm-aio-probe").start();
    }


    private void restartVm() {
        VmSpecs.setSafeBoot(core, false);
        toast(getString(R.string.vm_restarting));
        new Thread(() -> {
            try {
                engine.stopAndWait(20_000);
            } catch (Throwable ignored) {
            }
            RootlessService.start(context);
        }, "vm-restart").start();
    }


    private interface Pick { void on(int which); }

    private void choiceWithMessage(String title, String message, String[] labels, int selected,
                                   Pick pick) {
        LinearLayout root = new LinearLayout(context);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(24), dp(8), dp(24), 0);

        if (message != null && !message.isEmpty()) {
            TextView body = new TextView(context);
            body.setText(message);
            body.setTextSize(14);
            try {
                body.setTextColor(androidx.core.content.ContextCompat.getColor(context, R.color.grey));
            } catch (Exception ignored) {
            }
            root.addView(body);
        }

        final android.widget.RadioGroup group = new android.widget.RadioGroup(context);
        group.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams gp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        gp.topMargin = dp(12);
        group.setLayoutParams(gp);
        for (int i = 0; i < labels.length; i++) {
            android.widget.RadioButton rb = new android.widget.RadioButton(context);
            rb.setId(i + 1);
            rb.setText(labels[i]);
            rb.setTextSize(15);
            rb.setPadding(dp(8), dp(10), 0, dp(10));
            group.addView(rb);
        }
        int initial = selected < 0 || selected >= labels.length ? 0 : selected;
        group.check(initial + 1);
        root.addView(group);

        android.widget.ScrollView scroll = new android.widget.ScrollView(context);
        scroll.addView(root);

        new MaterialAlertDialogBuilder(context)
                .setTitle(title)
                .setView(scroll)
                .setPositiveButton(android.R.string.ok, (d, w) -> {
                    int id = group.getCheckedRadioButtonId();
                    if (id > 0 && pick != null) pick.on(id - 1);
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private void singleChoice(int titleRes, String[] labels, int selected, Pick pick) {
        final int[] choice = {selected < 0 ? 0 : selected};
        new MaterialAlertDialogBuilder(context)
                .setTitle(titleRes)
                .setSingleChoiceItems(labels, choice[0], (d, which) -> choice[0] = which)
                .setPositiveButton(android.R.string.ok, (d, w) -> pick.on(choice[0]))
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private static int indexOf(String[] arr, String v) {
        for (int i = 0; i < arr.length; i++) if (arr[i].equals(v)) return i;
        return 0;
    }

    private AlertDialog progressDialog(String message) {
        LinearLayout row = new LinearLayout(context);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        int pad = dp(24);
        row.setPadding(pad, pad, pad, pad);
        ProgressBar bar = new ProgressBar(context);
        LinearLayout.LayoutParams bp = new LinearLayout.LayoutParams(dp(28), dp(28));
        bp.setMarginEnd(dp(18));
        row.addView(bar, bp);
        TextView tv = new TextView(context);
        tv.setId(android.R.id.text1);
        tv.setText(message);
        tv.setTextSize(15);
        row.addView(tv);

        AlertDialog d = new MaterialAlertDialogBuilder(context)
                .setView(row)
                .setCancelable(false)
                .create();
        if (d.getWindow() != null) d.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        d.show();
        return d;
    }

    private int dp(int v) {
        return Math.round(v * getResources().getDisplayMetrics().density);
    }

    private void dismiss(AlertDialog d) {
        try { if (d != null && d.isShowing()) d.dismiss(); } catch (Exception ignored) {}
    }

    private void toast(String msg) {
        if (core != null && activity != null) core.toaster(activity, msg);
    }

    private void ui(Runnable r) {
        if (activity != null && isAdded()) activity.runOnUiThread(r);
    }
}
