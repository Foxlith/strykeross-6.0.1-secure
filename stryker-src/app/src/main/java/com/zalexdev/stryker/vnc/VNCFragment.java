package com.zalexdev.stryker.vnc;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.zalexdev.stryker.R;
import com.zalexdev.stryker.appintro.install.LogAdapter;
import com.zalexdev.stryker.appintro.install.LogClassifier;
import com.zalexdev.stryker.appintro.install.LogLevel;
import com.zalexdev.stryker.appintro.install.LogLine;
import com.zalexdev.stryker.vnc.install.VncInstallStage;
import com.zalexdev.stryker.utils.AdvancedProcess;
import com.zalexdev.stryker.utils.Core;
import com.zalexdev.stryker.utils.SimpleProcess;

import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

public class VNCFragment extends Fragment {

    private Activity activity;
    private Context context;
    private BroadcastReceiver mBroadcastReceiver;
    private Core core;

    private TextView installed;
    private ImageView statusIcon;
    private ProgressBar statusSpinner;
    private TextView stateChip;
    private LinearProgressIndicator progress;
    private TextView textProgress;

    private TextView sectionConnection;
    private MaterialCardView connectionCard;
    private TextView hostValue;
    private TextView portValue;
    private TextView passwordValue;
    private LinearLayout copyHostRow;
    private LinearLayout copyPortRow;
    private LinearLayout copyPasswordRow;
    private ImageView togglePasswordIcon;
    private boolean passwordVisible = false;

    private TextView sectionSettings;
    private TextInputLayout resolutionLayout;
    private AutoCompleteTextView resolution;
    private TextInputLayout portLayout;
    private TextInputEditText port;
    private TextInputLayout passwdLayout;

    private MaterialButton install;
    private MaterialButton toggle;
    private MaterialButton uninstall;
    private MaterialButton changePasswd;

    private AdvancedProcess installProcess;
    private AdvancedProcess uninstallProcess;
    private SimpleProcess changePasswdProcess;
    private final AtomicBoolean cancelled = new AtomicBoolean(false);

    private com.google.android.material.textview.MaterialTextView stagesHeader, logHeader;
    private com.google.android.material.card.MaterialCardView stagesCard;
    private LinearLayout stagesContainer;
    private RecyclerView logRecycler;
    private LogAdapter logAdapter;
    private final EnumMap<VncInstallStage, StageRow> stageRows = new EnumMap<>(VncInstallStage.class);

    private static final String VNC_DIR = "/CORE/VNC";
    private static final String PREF_RESOLUTION = "vnc_last_resolution";
    private static final String PREF_PORT = "vnc_last_port";

    public VNCFragment() {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        activity = getActivity();
        context = getContext();
        core = new Core(context);
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_vnc, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, Bundle savedInstanceState) {
        installed = view.findViewById(R.id.installed);
        statusIcon = view.findViewById(R.id.vnc_status_icon);
        statusSpinner = view.findViewById(R.id.vnc_status_spinner);
        stateChip = view.findViewById(R.id.vnc_state_chip);
        progress = view.findViewById(R.id.progress);
        textProgress = view.findViewById(R.id.text_prog);

        sectionConnection = view.findViewById(R.id.vnc_section_connection);
        connectionCard = view.findViewById(R.id.vnc_connection_card);
        hostValue = view.findViewById(R.id.vnc_host_value);
        portValue = view.findViewById(R.id.vnc_port_value);
        passwordValue = view.findViewById(R.id.vnc_password_value);
        copyHostRow = view.findViewById(R.id.vnc_copy_host_row);
        copyPortRow = view.findViewById(R.id.vnc_copy_port_row);
        copyPasswordRow = view.findViewById(R.id.vnc_copy_password_row);
        togglePasswordIcon = view.findViewById(R.id.vnc_toggle_password_visible);

        sectionSettings = view.findViewById(R.id.vnc_section_settings);
        resolutionLayout = view.findViewById(R.id.resolution_layout);
        resolution = view.findViewById(R.id.resolution);
        portLayout = view.findViewById(R.id.port_layout);
        port = view.findViewById(R.id.port);
        passwdLayout = view.findViewById(R.id.passwd_layout);

        stagesHeader = view.findViewById(R.id.vnc_stages_header);
        stagesCard = view.findViewById(R.id.vnc_stages_card);
        stagesContainer = view.findViewById(R.id.vnc_stages_container);
        logHeader = view.findViewById(R.id.vnc_log_header);
        logRecycler = view.findViewById(R.id.vnc_log_recycler);
        logRecycler.setLayoutManager(new LinearLayoutManager(context));
        logAdapter = new LogAdapter(context);
        logRecycler.setAdapter(logAdapter);
        buildStageRows(LayoutInflater.from(context));

        install = view.findViewById(R.id.install_vnc);
        toggle = view.findViewById(R.id.toggle_vnc);
        uninstall = view.findViewById(R.id.uninstall_vnc);
        changePasswd = view.findViewById(R.id.change_passwd);

        cancelled.set(false);

        wireSettingsDefaults();
        wireConnectionCard();
        wireInstall();
        wireToggle();
        wireUninstall();
        wireChangePassword();

        new Thread(() -> core.customChrootCommand("mkdir -p " + VNC_DIR, true)).start();

        checkVNCInstalled();

        mBroadcastReceiver = new VNCBroadcastReceiver();
        IntentFilter startFilter = new IntentFilter(VNCService.ACTION_START);
        startFilter.addCategory(Intent.CATEGORY_DEFAULT);
        IntentFilter stopFilter = new IntentFilter(VNCService.ACTION_STOP);
        stopFilter.addCategory(Intent.CATEGORY_DEFAULT);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            activity.registerReceiver(mBroadcastReceiver, startFilter, Context.RECEIVER_NOT_EXPORTED);
            activity.registerReceiver(mBroadcastReceiver, stopFilter, Context.RECEIVER_NOT_EXPORTED);
        } else {
            activity.registerReceiver(mBroadcastReceiver, startFilter);
            activity.registerReceiver(mBroadcastReceiver, stopFilter);
        }
    }

    private void wireSettingsDefaults() {
        ArrayList<String> defaultResolutions = new ArrayList<>();
        defaultResolutions.add(getScreenResolution() + "x24");
        defaultResolutions.add("1920x1080x24");
        ArrayAdapter<String> resAdapter = new ArrayAdapter<>(context,
                android.R.layout.simple_spinner_dropdown_item, defaultResolutions);
        String savedResolution = core.getString(PREF_RESOLUTION);
        if (savedResolution.isEmpty()) savedResolution = core.getString("previous_vnc_resolution");
        resolution.setAdapter(resAdapter);
        resolution.setText(savedResolution.isEmpty() ? defaultResolutions.get(0) : savedResolution, false);

        String savedPort = core.getString(PREF_PORT);
        if (savedPort.isEmpty()) savedPort = core.getString("previous_vnc_port");
        port.setText(savedPort.isEmpty() ? Integer.toString(5901) : savedPort);

        Objects.requireNonNull(passwdLayout.getEditText()).setText(core.getString("vnc_passwd"));

        resolution.addTextChangedListener(new SimpleTextWatcher() {
            @Override
            public void afterTextChanged(Editable s) {
                core.putString(PREF_RESOLUTION, s == null ? "" : s.toString());
            }
        });
        port.addTextChangedListener(new SimpleTextWatcher() {
            @Override
            public void afterTextChanged(Editable s) {
                core.putString(PREF_PORT, s == null ? "" : s.toString());
            }
        });
    }

    private abstract static class SimpleTextWatcher implements TextWatcher {
        @Override
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    private void wireConnectionCard() {
        copyHostRow.setOnClickListener(v -> copy("VNC host", hostValue.getText().toString()));
        copyPortRow.setOnClickListener(v -> copy("VNC port", portValue.getText().toString()));
        copyPasswordRow.setOnClickListener(v -> copy("VNC password", core.getString("vnc_passwd")));
        togglePasswordIcon.setOnClickListener(v -> {
            passwordVisible = !passwordVisible;
            renderConnectionCard();
        });
    }

    private void renderConnectionCard() {
        hostValue.setText("localhost");
        String portText = port.getText() == null ? "5901" : port.getText().toString();
        portValue.setText(portText);
        String pwd = core.getString("vnc_passwd");
        passwordValue.setText(passwordVisible || pwd.isEmpty()
                ? (pwd.isEmpty() ? "(empty)" : pwd)
                : "••••••");
    }

    private void copy(String label, String value) {
        ClipboardManager cm = (ClipboardManager) requireContext().getSystemService(Context.CLIPBOARD_SERVICE);
        cm.setPrimaryClip(ClipData.newPlainText(label, value));
        Toast.makeText(getContext(), label + " copied", Toast.LENGTH_SHORT).show();
    }

    private void wireInstall() {
        install.setOnClickListener(v -> new MaterialAlertDialogBuilder(context)
                .setTitle("VNC installer")
                .setMessage(core.isRootless()
                        ? "This will install XFCE + x11vnc inside the VM. ~600 MB download."
                        : "This will install XFCE + x11vnc into the chroot. ~600 MB download.")
                .setPositiveButton(android.R.string.ok, (di, i) -> new Thread(() -> {
                    if (!stageVncScripts()) {
                        if (isSafe()) activity.runOnUiThread(() -> showDialog("Install failed",
                                "Could not stage the VNC helper scripts into the tool environment."));
                        return;
                    }
                    activity.runOnUiThread(this::enterRunningInstallUi);
                    runInstallProcess();
                }).start())
                .show());
    }

    private boolean stageVncScripts() {
        return core.isRootless() ? stageForGuest() : stageForChroot();
    }

    /** The VM only sees the 9p share, so the scripts have to travel through it. */
    private boolean stageForGuest() {
        java.io.File staging = new java.io.File(core.getShareRoot(), ".stryker-vnc");
        //noinspection ResultOfMethodCallIgnored
        staging.mkdirs();
        if (!stageAsset("install_xfce.sh", new java.io.File(staging, "install.sh"))) return false;
        if (!stageAsset("uninstall_xfce.sh", new java.io.File(staging, "uninstall.sh"))) return false;
        core.customChrootCommand("mkdir -p " + VNC_DIR + "; "
                + "cp -f /sdcard/Stryker/.stryker-vnc/install.sh " + VNC_DIR + "/install.sh; "
                + "cp -f /sdcard/Stryker/.stryker-vnc/uninstall.sh " + VNC_DIR + "/uninstall.sh; "
                + "sed -i 's/\r$//' " + VNC_DIR + "/install.sh " + VNC_DIR + "/uninstall.sh; "
                + "chmod 0755 " + VNC_DIR + "/install.sh " + VNC_DIR + "/uninstall.sh", true);
        return core.guestFileExists(VNC_DIR + "/install.sh");
    }

    /**
     * Chroot: never route this through shared storage. From Android 11 the app has no write access
     * to /sdcard unless the user grants all-files access, and refusing it used to fail the whole
     * install. The app's own files dir is always writable, and root copies from there.
     */
    private boolean stageForChroot() {
        java.io.File staging = new java.io.File(context.getFilesDir(), ".stryker-vnc");
        //noinspection ResultOfMethodCallIgnored
        staging.mkdirs();
        if (!stageAsset("install_xfce.sh", new java.io.File(staging, "install.sh"))) return false;
        if (!stageAsset("uninstall_xfce.sh", new java.io.File(staging, "uninstall.sh"))) return false;
        String src = staging.getAbsolutePath();
        String dst = Core.CHROOT_ROOT + VNC_DIR;
        core.customCommand("mkdir -p " + dst + "; "
                + "cp -f " + src + "/install.sh " + dst + "/install.sh; "
                + "cp -f " + src + "/uninstall.sh " + dst + "/uninstall.sh; "
                + "sed -i 's/\r$//' " + dst + "/install.sh " + dst + "/uninstall.sh; "
                + "chmod 0755 " + dst + "/install.sh " + dst + "/uninstall.sh", true);
        return core.guestFileExists(VNC_DIR + "/install.sh");
    }

    private boolean stageAsset(String assetName, java.io.File dest) {
        try (java.io.InputStream in = context.getAssets().open(assetName);
             java.io.OutputStream out = new java.io.FileOutputStream(dest)) {
            byte[] buf = new byte[8192];
            int r;
            while ((r = in.read(buf)) != -1) out.write(buf, 0, r);
            out.flush();
            return true;
        } catch (Exception e) {
            core.logger.writeLine("VNC staging failed for " + assetName + ": " + e.getMessage(), 3);
            return false;
        }
    }

    private enum RowState { PENDING, ACTIVE, DONE, FAILED }

    private static final class StageRow {
        final TextView title;
        final ImageView icon;
        final ProgressBar spinner;
        final android.widget.FrameLayout indicator;

        StageRow(TextView title, ImageView icon, ProgressBar spinner,
                 android.widget.FrameLayout indicator) {
            this.title = title;
            this.icon = icon;
            this.spinner = spinner;
            this.indicator = indicator;
        }
    }

    private void buildStageRows(LayoutInflater inflater) {
        stagesContainer.removeAllViews();
        stageRows.clear();
        for (VncInstallStage stage : VncInstallStage.values()) {
            View row = inflater.inflate(R.layout.install_stage_row, stagesContainer, false);
            TextView title = row.findViewById(R.id.stage_title);
            ImageView icon = row.findViewById(R.id.stage_icon);
            ProgressBar spinner = row.findViewById(R.id.stage_spinner);
            android.widget.FrameLayout indicator = row.findViewById(R.id.stage_indicator);
            title.setText(stage.titleRes);
            StageRow handles = new StageRow(title, icon, spinner, indicator);
            applyRowState(handles, RowState.PENDING);
            stageRows.put(stage, handles);
            stagesContainer.addView(row);
        }
    }

    private void resetStages() {
        for (StageRow row : stageRows.values()) applyRowState(row, RowState.PENDING);
    }

    private void markStage(VncInstallStage stage, RowState newState) {
        if (!isSafe()) return;
        activity.runOnUiThread(() -> {
            StageRow row = stageRows.get(stage);
            if (row != null) applyRowState(row, newState);
        });
    }

    private void applyRowState(StageRow row, RowState state) {
        int color;
        switch (state) {
            case ACTIVE:
                color = ContextCompat.getColor(context, R.color.stryker_accent);
                row.spinner.setVisibility(View.VISIBLE);
                row.icon.setVisibility(View.GONE);
                row.title.setTypeface(null, android.graphics.Typeface.BOLD);
                break;
            case DONE:
                color = ContextCompat.getColor(context, R.color.green);
                row.spinner.setVisibility(View.GONE);
                row.icon.setVisibility(View.VISIBLE);
                row.icon.setImageResource(R.drawable.done);
                row.icon.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                row.title.setTypeface(null, android.graphics.Typeface.NORMAL);
                break;
            case FAILED:
                color = ContextCompat.getColor(context, R.color.red);
                row.spinner.setVisibility(View.GONE);
                row.icon.setVisibility(View.VISIBLE);
                row.icon.setImageResource(R.drawable.error);
                row.icon.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                row.title.setTypeface(null, android.graphics.Typeface.BOLD);
                break;
            case PENDING:
            default:
                color = ContextCompat.getColor(context, R.color.grey);
                row.spinner.setVisibility(View.GONE);
                row.icon.setVisibility(View.GONE);
                row.title.setTypeface(null, android.graphics.Typeface.NORMAL);
                break;
        }
        row.title.setTextColor(color);
        if (row.indicator.getBackground() != null) {
            row.indicator.getBackground().mutate().setColorFilter(color, PorterDuff.Mode.SRC_IN);
            row.indicator.getBackground().setAlpha(60);
        }
    }

    private void markCurrentStageFailed() {
        for (VncInstallStage stage : VncInstallStage.values()) {
            StageRow row = stageRows.get(stage);
            if (row != null && row.spinner.getVisibility() == View.VISIBLE) {
                markStage(stage, RowState.FAILED);
                return;
            }
        }
    }

    private void appendLog(LogLevel level, String text) {
        if (!isSafe()) return;
        activity.runOnUiThread(() -> {
            if (!isSafe()) return;
            logAdapter.append(new LogLine(level, text));
            logRecycler.scrollToPosition(logAdapter.size() - 1);
        });
    }

    private void showInstallSurfaces() {
        stagesHeader.setVisibility(View.VISIBLE);
        stagesCard.setVisibility(View.VISIBLE);
        logHeader.setVisibility(View.VISIBLE);
        logRecycler.setVisibility(View.VISIBLE);
    }

    /** The stage list and installer output only make sense while installing or after a failure. */
    private void hideInstallSurfaces() {
        stagesHeader.setVisibility(View.GONE);
        stagesCard.setVisibility(View.GONE);
        logHeader.setVisibility(View.GONE);
        logRecycler.setVisibility(View.GONE);
    }

    private void handleInstallLine(String line) {
        if (line == null) return;
        if (line.contains("×")) {
            String marker = line.replace("×", "").trim();
            if (marker.startsWith("Refreshing package index")) {
                markStage(VncInstallStage.REFRESH, RowState.ACTIVE);
            } else if (marker.startsWith("Installing XFCE")) {
                markStage(VncInstallStage.REFRESH, RowState.DONE);
                markStage(VncInstallStage.PACKAGES, RowState.ACTIVE);
            } else if (marker.startsWith("Preparing the VNC password")) {
                markStage(VncInstallStage.PACKAGES, RowState.DONE);
                markStage(VncInstallStage.PASSWORD, RowState.ACTIVE);
            } else if (marker.startsWith("Writing helper scripts")) {
                markStage(VncInstallStage.PASSWORD, RowState.DONE);
                markStage(VncInstallStage.SCRIPTS, RowState.ACTIVE);
            } else if (marker.startsWith("Verifying the installation")) {
                markStage(VncInstallStage.SCRIPTS, RowState.DONE);
                markStage(VncInstallStage.VERIFY, RowState.ACTIVE);
            } else if (marker.startsWith("Done")) {
                markStage(VncInstallStage.VERIFY, RowState.DONE);
            }
            if (isSafe()) activity.runOnUiThread(() -> textProgress.setText(marker));
            appendLog(LogLevel.STEP, marker);
            return;
        }
        String content = LogClassifier.strip(line);
        if (!content.isEmpty()) appendLog(LogClassifier.classify(content), content);
    }

    private void enterRunningInstallUi() {
        if (!isSafe()) return;
        resetStages();
        logAdapter.clear();
        showInstallSurfaces();
        install.setEnabled(false);
        textProgress.setText("Starting installation…");
        textProgress.setVisibility(View.VISIBLE);
        progress.setVisibility(View.VISIBLE);
        progress.setIndeterminate(true);
        setStatePill("INSTALL", 0xFF5E35B1, true);
    }

    private void runInstallProcess() {
        installProcess = new AdvancedProcess(activity, context, "/CORE/VNC/install.sh", true) {
            boolean determinate = false;

            @Override
            public void onFinished(ArrayList<String> outputList) {
                if (!isSafe()) return;
                core.putString("vnc_installed_de", "xfce");
                checkVNCInstalled();
                textProgress.setVisibility(View.GONE);
                textProgress.setText("");
                progress.setVisibility(View.GONE);
                progress.setIndeterminate(false);
                install.setEnabled(true);
            }

            @Override
            public void onNewLine(String line) {
                if (!isSafe()) return;
                handleInstallLine(line);
                applyAptProgress(line);

                if (line.startsWith("E: ")
                        || line.contains("Failed to update packages")
                        || line.contains("Failed to write")) {
                    markCurrentStageFailed();
                    showDialog("Install failed", line);
                } else if (line.contains("No previous VNC")) {
                    core.toaster("Default password set to \"stryker\"");
                } else if (line.contains("Use the helper scripts")) {
                    showDialog("Install complete", "VNC server installed.");
                }
            }

            private void applyAptProgress(String line) {
                int open = line.indexOf('(');
                int close = line.indexOf(')', open + 1);
                if (open < 0 || close < 0) return;
                String[] parts = line.substring(open + 1, close).split("/");
                if (parts.length != 2) return;
                int progressInt;
                int progressMax;
                try {
                    progressInt = Integer.parseInt(parts[0].trim());
                    progressMax = Integer.parseInt(parts[1].trim());
                } catch (NumberFormatException e) {
                    return;
                }
                if (progressMax <= 0 || progressInt > progressMax) return;
                if (!determinate) {
                    determinate = true;
                    progress.setIndeterminate(false);
                    progress.setMax(progressMax);
                }
                progress.setProgressCompat(progressInt, true);
            }

            @Override
            public void onEvent(String line) {
            }
        };
    }

    private void wireToggle() {
        toggle.setOnClickListener(v -> {
            if (isVNCStarted()) {
                stopService();
            } else {
                startService(resolution.getText().toString(), port.getText().toString());
            }
        });
    }

    private void wireUninstall() {
        uninstall.setOnClickListener(v -> new MaterialAlertDialogBuilder(context)
                .setTitle("Uninstall VNC?")
                .setMessage("Removes XFCE + x11vnc from the chroot. Disk space is freed; you can reinstall later.")
                .setNegativeButton(android.R.string.cancel, (di, i) -> {})
                .setPositiveButton("Uninstall", (di, i) -> {
                    freezeActivity();
                    textProgress.setText("Starting uninstallation…");
                    textProgress.setVisibility(View.VISIBLE);
                    progress.setVisibility(View.VISIBLE);
                    progress.setIndeterminate(true);
                    uninstallProcess = new AdvancedProcess(activity, context, "/CORE/VNC/uninstall.sh", true) {
                        @Override
                        public void onFinished(ArrayList<String> outputList) {
                            if (!isSafe()) return;
                            if (!isVNCInstalled()) {
                                core.remove("vnc_installed_de");
                                core.toaster("VNC server uninstalled.");
                                vncNotInstalled();
                                unfreezeActivity();
                            }
                            textProgress.setVisibility(View.GONE);
                            textProgress.setText("");
                            progress.setVisibility(View.GONE);
                            progress.setIndeterminate(false);
                        }

                        @Override
                        public void onNewLine(String line) {
                            if (!isSafe()) return;
                            textProgress.setText(line);
                            if (line.contains("Error")) {
                                showDialog("Uninstall failed", line);
                            } else if (line.contains("Failed")) {
                                showDialog("Uninstall warning", line);
                            }
                        }

                        @Override
                        public void onEvent(String line) {
                        }
                    };
                })
                .show());
    }

    private void wireChangePassword() {
        changePasswd.setOnClickListener(v -> {
            changePasswd.setEnabled(false);
            String newPwd = passwdLayout.getEditText() != null
                    ? passwdLayout.getEditText().getText().toString() : "";
            changePasswdProcess = new SimpleProcess(activity, "x11vnc -storepasswd " + newPwd + " /root/.vnc/passwd", true) {
                @Override
                public void onFinished(ArrayList<String> outputList) {
                    if (!isSafe()) return;
                    if (Core.contains(outputList, "stored")) {
                        core.toaster("Password changed successfully!");
                        core.putString("vnc_passwd", newPwd);
                        renderConnectionCard();
                    } else {
                        core.toaster("Error when changing password.");
                    }
                    changePasswd.setEnabled(true);
                }
            };
        });
    }

    private String getScreenResolution() {
        Display display = ((WindowManager) context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay();
        Point point = new Point();
        display.getRealSize(point);
        int width = point.x;
        int height = point.y;
        return height + "x" + width;
    }

    private boolean isVNCInstalled() {
        return Core.contains(core.customChrootCommand("which x11vnc"), "x11vnc");
    }

    private void vncInstalled() {
        hideInstallSurfaces();
        install.setVisibility(View.GONE);
        resolutionLayout.setVisibility(View.VISIBLE);
        portLayout.setVisibility(View.VISIBLE);
        toggle.setVisibility(View.VISIBLE);
        uninstall.setVisibility(View.VISIBLE);
        changePasswd.setVisibility(View.VISIBLE);
        passwdLayout.setVisibility(View.VISIBLE);
        sectionConnection.setVisibility(View.VISIBLE);
        connectionCard.setVisibility(View.VISIBLE);
        sectionSettings.setVisibility(View.VISIBLE);
        renderConnectionCard();
    }

    private void vncNotInstalled() {
        // Keep them up after a failed run so the error stays readable.
        if (logAdapter.size() == 0) hideInstallSurfaces();
        install.setVisibility(View.VISIBLE);
        resolutionLayout.setVisibility(View.GONE);
        portLayout.setVisibility(View.GONE);
        toggle.setVisibility(View.GONE);
        uninstall.setVisibility(View.GONE);
        changePasswd.setVisibility(View.GONE);
        passwdLayout.setVisibility(View.GONE);
        sectionConnection.setVisibility(View.GONE);
        connectionCard.setVisibility(View.GONE);
        sectionSettings.setVisibility(View.GONE);
        installed.setText("Not installed — tap install to fetch ~600 MB.");
        setStatePill("OFF", 0xFF757575, false);
    }

    private void checkVNCInstalled() {
        new Thread(() -> {
            if (isVNCInstalled()) {
                if (isSafe()) activity.runOnUiThread(() -> {
                    if (!isSafe()) return;
                    vncInstalled();
                    installed.setText("Installed: " + core.getString("vnc_installed_de").toUpperCase()
                            + " · chroot ready");
                });
                checkVNCStarted();
            } else {
                if (isSafe()) activity.runOnUiThread(() -> {
                    if (!isSafe()) return;
                    vncNotInstalled();
                });
            }
        }).start();
    }

    private boolean isVNCStarted() {
        java.util.ArrayList<String> out = core.customChrootCommand("pidof Xvfb", true);
        for (String l : out) {
            if (l == null) continue;
            String t = l.trim();
            if (!t.isEmpty() && t.matches("[0-9 ]+")) return true;
        }
        return false;
    }

    private void vncStarted() {
        resolutionLayout.setEnabled(false);
        portLayout.setEnabled(false);
        toggle.setText("Stop VNC server");
        toggle.setIconResource(R.drawable.stop);
        uninstall.setEnabled(false);
        changePasswd.setEnabled(false);
        passwdLayout.setEnabled(false);
        setStatePill("RUN", 0xFF2E7D32, false);
        installed.setText("Running · accept VNC connections on the port below");
    }

    private void vncNotStarted() {
        resolutionLayout.setEnabled(true);
        portLayout.setEnabled(true);
        toggle.setText("Start VNC server");
        toggle.setIconResource(R.drawable.run);
        uninstall.setEnabled(true);
        changePasswd.setEnabled(true);
        passwdLayout.setEnabled(true);
        setStatePill("OFF", 0xFFF9A825, false);
        installed.setText("Stopped · tap Start to spin up xvfb + x11vnc");
    }

    private void setStatePill(String text, int color, boolean spinning) {
        if (stateChip != null) {
            stateChip.setText(text);
            stateChip.setTextColor(color);
            if (stateChip.getBackground() != null) {
                stateChip.getBackground().mutate().setColorFilter(color, PorterDuff.Mode.SRC_IN);
                stateChip.getBackground().setAlpha(40);
            }
        }
        if (statusSpinner != null) {
            statusSpinner.setVisibility(spinning ? View.VISIBLE : View.GONE);
        }
        if (statusIcon != null) {
            statusIcon.setVisibility(spinning ? View.GONE : View.VISIBLE);
            statusIcon.setColorFilter(color);
        }
    }

    private void checkVNCStarted() {
        new Thread(() -> {
            if (isVNCStarted()) {
                if (isSafe()) activity.runOnUiThread(() -> {
                    if (isSafe()) vncStarted();
                });
            } else {
                if (isSafe()) activity.runOnUiThread(() -> {
                    if (isSafe()) vncNotStarted();
                });
            }
        }).start();
    }

    private void freezeActivity() {
        resolutionLayout.setEnabled(false);
        portLayout.setEnabled(false);
        toggle.setEnabled(false);
        uninstall.setEnabled(false);
        changePasswd.setEnabled(false);
        passwdLayout.setEnabled(false);
    }

    private void unfreezeActivity() {
        resolutionLayout.setEnabled(true);
        portLayout.setEnabled(true);
        toggle.setEnabled(true);
        uninstall.setEnabled(true);
        changePasswd.setEnabled(true);
        passwdLayout.setEnabled(true);
    }

    private boolean isSafe() {
        return !cancelled.get() && activity != null && isAdded();
    }

    private void showDialog(String title, String message) {
        if (!isSafe()) return;
        new MaterialAlertDialogBuilder(context)
                .setTitle(title)
                .setMessage(message)
                .setPositiveButton(android.R.string.ok, (di, i) -> {})
                .setCancelable(true)
                .show();
    }

    @Override
    public void onResume() {
        super.onResume();
        new Thread(() -> {
            if (isVNCInstalled() && activity != null && isAdded()) {
                activity.runOnUiThread(this::checkVNCStarted);
            }
        }, "vnc-resume-check").start();
    }

    public void startService(String resolution, String port) {
        Intent serviceIntent = new Intent(context, VNCService.class);
        serviceIntent.putExtra(VNCService.EXTRA_RESOLUTION, resolution);
        serviceIntent.putExtra(VNCService.EXTRA_PORT, port);
        serviceIntent.setAction(VNCService.ACTION_START);
        ContextCompat.startForegroundService(context, serviceIntent);
    }

    public void stopService() {
        Intent serviceIntent = new Intent(context, VNCService.class);
        serviceIntent.setAction(VNCService.ACTION_STOP);
        ContextCompat.startForegroundService(context, serviceIntent);
    }

    @Override
    public void onDestroyView() {
        cancelled.set(true);
        if (installProcess != null) {
            installProcess.kill();
            installProcess = null;
        }
        if (uninstallProcess != null) {
            uninstallProcess.kill();
            uninstallProcess = null;
        }
        if (changePasswdProcess != null) {
            changePasswdProcess.kill();
            changePasswdProcess = null;
        }
        try {
            if (activity != null) activity.unregisterReceiver(mBroadcastReceiver);
        } catch (IllegalArgumentException ignored) {
        }
        super.onDestroyView();
    }

    private class VNCBroadcastReceiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (!isSafe()) return;
            if (Objects.equals(intent.getAction(), VNCService.ACTION_START)) {
                vncStarted();
            } else if (Objects.equals(intent.getAction(), VNCService.ACTION_STOP)) {
                vncNotStarted();
            }
        }
    }
}
