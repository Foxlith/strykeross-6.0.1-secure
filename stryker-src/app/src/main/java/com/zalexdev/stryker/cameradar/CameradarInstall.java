package com.zalexdev.stryker.cameradar;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.zalexdev.stryker.R;
import com.zalexdev.stryker.appintro.install.LogAdapter;
import com.zalexdev.stryker.appintro.install.LogClassifier;
import com.zalexdev.stryker.appintro.install.LogLevel;
import com.zalexdev.stryker.appintro.install.LogLine;
import com.zalexdev.stryker.cameradar.install.CameradarInstallStage;
import com.zalexdev.stryker.install.InstallService;
import com.zalexdev.stryker.localnetwork.LocalMain;
import com.zalexdev.stryker.utils.Core;

import java.util.EnumMap;
import java.util.List;

public class CameradarInstall extends Fragment {

    private static final String TOOL = InstallService.TOOL_CAMERADAR;

    private Activity activity;
    private Context context;
    private Core core;
    private FragmentManager fragmentManager;

    private MaterialButton actionBtn;
    private LinearProgressIndicator statusProgress;
    private ProgressBar statusSpinner;
    private ImageView statusIcon;
    private TextView statusSubtitle;

    private TextView stagesHeader;
    private MaterialCardView stagesCard;
    private LinearLayout stagesContainer;

    private TextView logHeader;
    private RecyclerView logRecycler;
    private LogAdapter logAdapter;

    private final EnumMap<CameradarInstallStage, StageRow> stageRows =
            new EnumMap<>(CameradarInstallStage.class);

    private boolean receiverRegistered = false;
    private final BroadcastReceiver installReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context c, Intent i) {
            if (!TOOL.equals(i.getStringExtra(InstallService.EXTRA_TOOL))) return;
            String line = i.getStringExtra(InstallService.EXTRA_LINE);
            if (line != null) handleLine(line);
            String status = i.getStringExtra(InstallService.EXTRA_STATUS);
            if (status != null) onInstallStatus(status);
        }
    };

    public CameradarInstall() {
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_cameradar_install, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        context = getContext();
        activity = getActivity();
        core = new Core(context);
        fragmentManager = getParentFragmentManager();

        actionBtn = view.findViewById(R.id.cameradar_install_btn);
        statusProgress = view.findViewById(R.id.cameradar_status_progress);
        statusSpinner = view.findViewById(R.id.cameradar_status_spinner);
        statusIcon = view.findViewById(R.id.cameradar_status_icon);
        statusSubtitle = view.findViewById(R.id.cameradar_status_subtitle);
        stagesHeader = view.findViewById(R.id.cameradar_stages_header);
        stagesCard = view.findViewById(R.id.cameradar_stages_card);
        stagesContainer = view.findViewById(R.id.cameradar_stages_container);
        logHeader = view.findViewById(R.id.cameradar_log_header);
        logRecycler = view.findViewById(R.id.cameradar_log_recycler);

        logRecycler.setLayoutManager(new LinearLayoutManager(context));
        logAdapter = new LogAdapter(context);
        logRecycler.setAdapter(logAdapter);

        buildStageRows(LayoutInflater.from(context));

        actionBtn.setOnClickListener(v -> startInstall());

        registerInstallReceiver();

        String status = InstallService.reconcileStatus(context, core, TOOL);
        if (InstallService.STATUS_RUNNING.equals(status)
                || InstallService.STATUS_FAILED.equals(status)) {
            renderFromService(status);
        } else {
            new Thread(() -> {
                boolean already = core.isToolInstalled("cameradar");
                onUi(() -> {
                    if (already) {
                        core.putBoolean("cameradar", true);
                        openTool();
                    } else {
                        showIdle();
                    }
                });
            }, "cameradar-install-check").start();
        }
    }

    @Override
    public void onDestroyView() {
        if (receiverRegistered) {
            try { requireContext().unregisterReceiver(installReceiver); } catch (IllegalArgumentException ignored) {}
            receiverRegistered = false;
        }
        super.onDestroyView();
    }

    private void registerInstallReceiver() {
        IntentFilter filter = new IntentFilter(InstallService.ACTION_UPDATED);
        ContextCompat.registerReceiver(requireContext(), installReceiver, filter,
                ContextCompat.RECEIVER_NOT_EXPORTED);
        receiverRegistered = true;
    }

    private void openTool() {
        if (!isAdded()) return;
        fragmentManager.beginTransaction().replace(R.id.flContent, new LocalMain()).commit();
    }

    private void startInstall() {
        showRunningChrome();
        resetStages();
        logAdapter.clear();
        InstallService.start(context, TOOL);
    }

    private void renderFromService(String status) {
        logAdapter.clear();
        resetStages();
        List<String> log = InstallService.readLog(context, TOOL);
        for (String line : log) handleLine(line);
        onInstallStatus(status);
    }

    private void onInstallStatus(String status) {
        if (InstallService.STATUS_DONE.equals(status)) showDone();
        else if (InstallService.STATUS_FAILED.equals(status)) showFailed();
        else if (InstallService.STATUS_RUNNING.equals(status)) showRunningChrome();
    }

    private void showIdle() {
        actionBtn.setText(R.string.cameradar_btn_install);
        actionBtn.setOnClickListener(v -> startInstall());
        actionBtn.setVisibility(View.VISIBLE);
        statusSpinner.setVisibility(View.GONE);
        statusIcon.setVisibility(View.VISIBLE);
        statusProgress.setVisibility(View.GONE);
        statusSubtitle.setText(R.string.cameradar_status_idle);
    }

    @SuppressLint("SetTextI18n")
    private void showRunningChrome() {
        actionBtn.setVisibility(View.GONE);
        stagesHeader.setVisibility(View.VISIBLE);
        stagesCard.setVisibility(View.VISIBLE);
        logHeader.setVisibility(View.VISIBLE);
        logRecycler.setVisibility(View.VISIBLE);
        statusProgress.setVisibility(View.VISIBLE);
        statusSpinner.setVisibility(View.VISIBLE);
        statusIcon.setVisibility(View.GONE);
        statusSubtitle.setText(R.string.cameradar_status_running);
    }

    private void showDone() {
        core.putBoolean("cameradar", true);
        markStage(CameradarInstallStage.VERIFY, RowState.DONE);
        statusSpinner.setVisibility(View.GONE);
        statusIcon.setVisibility(View.VISIBLE);
        statusIcon.setImageResource(R.drawable.done);
        statusIcon.setColorFilter(ContextCompat.getColor(context, R.color.green), PorterDuff.Mode.SRC_IN);
        statusProgress.setVisibility(View.GONE);
        statusSubtitle.setText(R.string.cameradar_status_done);
        actionBtn.setText(R.string.cameradar_btn_open);
        actionBtn.setIconResource(R.drawable.shield);
        actionBtn.setOnClickListener(v -> openTool());
        actionBtn.setVisibility(View.VISIBLE);
    }

    private void showFailed() {
        statusSpinner.setVisibility(View.GONE);
        statusIcon.setVisibility(View.VISIBLE);
        statusIcon.setImageResource(R.drawable.error);
        statusIcon.setColorFilter(ContextCompat.getColor(context, R.color.red), PorterDuff.Mode.SRC_IN);
        statusProgress.setVisibility(View.GONE);
        statusSubtitle.setText(R.string.cameradar_status_failed);
        actionBtn.setText(R.string.cameradar_btn_retry);
        actionBtn.setIconResource(R.drawable.repeat);
        actionBtn.setOnClickListener(v -> startInstall());
        actionBtn.setVisibility(View.VISIBLE);
    }

    private void handleLine(String line) {
        if (line == null) return;
        if (line.contains("×")) {
            String marker = line.replace("×", "").trim();
            if (marker.startsWith("Refreshing package index")
                    || marker.startsWith("Installing dependencies")) {
                markStage(CameradarInstallStage.REFRESH, RowState.ACTIVE);
                updateSubtitle(marker);
            } else if (marker.startsWith("Resolving latest cameradar release")
                    || marker.startsWith("Downloading")
                    || marker.startsWith("Target ")) {
                markStage(CameradarInstallStage.REFRESH, RowState.DONE);
                markStage(CameradarInstallStage.DOWNLOAD, RowState.ACTIVE);
                updateSubtitle(marker);
            } else if (marker.startsWith("Unpacking binary")
                    || marker.startsWith("Checking dictionaries")) {
                markStage(CameradarInstallStage.DOWNLOAD, RowState.DONE);
                markStage(CameradarInstallStage.UNPACK, RowState.ACTIVE);
                updateSubtitle(marker);
            } else if (marker.startsWith("Verify cameradar")) {
                markStage(CameradarInstallStage.UNPACK, RowState.DONE);
                markStage(CameradarInstallStage.VERIFY, RowState.ACTIVE);
                updateSubtitle(marker);
            } else if (marker.startsWith("Could not resolve a release URL")) {
                markStage(CameradarInstallStage.DOWNLOAD, RowState.FAILED);
                updateSubtitle(marker);
            } else if (marker.startsWith("No binary inside the archive")
                    || marker.startsWith("cameradar is still missing")) {
                markStage(CameradarInstallStage.UNPACK, RowState.FAILED);
                updateSubtitle(marker);
            }
            appendLog(LogLevel.STEP, marker);
            return;
        }
        String content = LogClassifier.strip(line);
        if (!content.isEmpty()) appendLog(LogClassifier.classify(content), content);
    }

    private enum RowState { PENDING, ACTIVE, DONE, FAILED }

    private void buildStageRows(LayoutInflater inflater) {
        stagesContainer.removeAllViews();
        stageRows.clear();
        for (CameradarInstallStage stage : CameradarInstallStage.values()) {
            View row = inflater.inflate(R.layout.install_stage_row, stagesContainer, false);
            TextView title = row.findViewById(R.id.stage_title);
            ImageView icon = row.findViewById(R.id.stage_icon);
            ProgressBar spinner = row.findViewById(R.id.stage_spinner);
            FrameLayout indicator = row.findViewById(R.id.stage_indicator);
            title.setText(stage.titleRes);
            StageRow handles = new StageRow(title, icon, spinner, indicator);
            applyRowState(handles, RowState.PENDING);
            stageRows.put(stage, handles);
            stagesContainer.addView(row);
        }
    }

    private void resetStages() {
        onUi(() -> {
            for (StageRow row : stageRows.values()) applyRowState(row, RowState.PENDING);
        });
    }

    private void markStage(CameradarInstallStage stage, RowState newState) {
        onUi(() -> {
            StageRow row = stageRows.get(stage);
            if (row == null) return;
            if (row.state == RowState.DONE && newState == RowState.ACTIVE) return;
            applyRowState(row, newState);
        });
    }

    private void applyRowState(StageRow row, RowState state) {
        row.state = state;
        int color;
        switch (state) {
            case ACTIVE:
                color = ContextCompat.getColor(context, R.color.stryker_accent);
                row.spinner.setVisibility(View.VISIBLE);
                row.icon.setVisibility(View.GONE);
                row.title.setTypeface(null, Typeface.BOLD);
                break;
            case DONE:
                color = ContextCompat.getColor(context, R.color.green);
                row.spinner.setVisibility(View.GONE);
                row.icon.setVisibility(View.VISIBLE);
                row.icon.setImageResource(R.drawable.done);
                row.icon.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                row.title.setTypeface(null, Typeface.NORMAL);
                break;
            case FAILED:
                color = ContextCompat.getColor(context, R.color.red);
                row.spinner.setVisibility(View.GONE);
                row.icon.setVisibility(View.VISIBLE);
                row.icon.setImageResource(R.drawable.error);
                row.icon.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                row.title.setTypeface(null, Typeface.BOLD);
                break;
            case PENDING:
            default:
                color = ContextCompat.getColor(context, R.color.grey);
                row.spinner.setVisibility(View.GONE);
                row.icon.setVisibility(View.GONE);
                row.title.setTypeface(null, Typeface.NORMAL);
                break;
        }
        row.title.setTextColor(color);
        if (row.indicator.getBackground() != null) {
            row.indicator.getBackground().mutate().setColorFilter(color, PorterDuff.Mode.SRC_IN);
            row.indicator.getBackground().setAlpha(60);
        }
    }

    private void appendLog(LogLevel level, String text) {
        onUi(() -> {
            logAdapter.append(new LogLine(level, text));
            logRecycler.scrollToPosition(logAdapter.size() - 1);
        });
    }

    private void updateSubtitle(String text) {
        onUi(() -> statusSubtitle.setText(text));
    }

    private void onUi(Runnable r) {
        if (activity != null && isAdded()) activity.runOnUiThread(r);
    }

    private static final class StageRow {
        final TextView title;
        final ImageView icon;
        final ProgressBar spinner;
        final FrameLayout indicator;
        RowState state = RowState.PENDING;

        StageRow(TextView title, ImageView icon, ProgressBar spinner, FrameLayout indicator) {
            this.title = title;
            this.icon = icon;
            this.spinner = spinner;
            this.indicator = indicator;
        }
    }
}
