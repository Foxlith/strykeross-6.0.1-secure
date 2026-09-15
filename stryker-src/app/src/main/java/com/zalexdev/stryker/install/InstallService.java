package com.zalexdev.stryker.install;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

import com.zalexdev.stryker.MainActivity;
import com.zalexdev.stryker.R;
import com.zalexdev.stryker.engine.Apt;
import com.zalexdev.stryker.engine.GuestExec;
import com.zalexdev.stryker.utils.Core;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;

public class InstallService extends Service {

    public static final String TOOL_METASPLOIT = "metasploit";
    public static final String TOOL_NUCLEI = "nuclei";
    public static final String TOOL_HYDRA = "hydra";
    public static final String TOOL_CAMERADAR = "cameradar";

    public static final String NUCLEI_TEMPLATES_MARKER = "/root/.config/nuclei/.stryker-templates-ok";

    public static final String ACTION_INSTALL = "com.zalexdev.stryker.install.INSTALL";
    public static final String ACTION_CANCEL = "com.zalexdev.stryker.install.CANCEL";
    public static final String ACTION_UPDATED = "com.zalexdev.stryker.install.UPDATED";

    public static final String EXTRA_TOOL = "tool";
    public static final String EXTRA_LINE = "line";
    public static final String EXTRA_STATUS = "status";

    public static final String STATUS_IDLE = "idle";
    public static final String STATUS_RUNNING = "running";
    public static final String STATUS_DONE = "done";
    public static final String STATUS_FAILED = "failed";

    private static final String CHANNEL_ID = "stryker_install_channel";
    private static final int FOREGROUND_NOTIFICATION_ID = 5100;

    private static final long MAX_LOG_FILE_BYTES = 256 * 1024;
    private static final int MAX_REPLAY_LINES = 600;
    private static final long PROGRESS_BROADCAST_MS = 150;
    private volatile long lastProgressBroadcast = 0;

    private Core core;
    private NotificationManager notificationManager;
    private PowerManager.WakeLock wakeLock;
    private ExecutorService executor;

    private final AtomicReference<String> activeTool = new AtomicReference<>(null);
    private volatile Process current;
    private volatile GuestExec.Session currentGuest;

    public static void start(Context ctx, String tool) {
        Intent i = new Intent(ctx, InstallService.class)
                .setAction(ACTION_INSTALL)
                .putExtra(EXTRA_TOOL, tool);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            ctx.startForegroundService(i);
        } else {
            ctx.startService(i);
        }
    }

    public static void cancel(Context ctx, String tool) {
        Intent i = new Intent(ctx, InstallService.class)
                .setAction(ACTION_CANCEL)
                .putExtra(EXTRA_TOOL, tool);
        try {
            ctx.startService(i);
        } catch (Throwable ignored) {
        }
    }

    public static String statusOf(Core core, String tool) {
        String s = core.getString(statusKey(tool));
        return (s == null || s.isEmpty()) ? STATUS_IDLE : s;
    }

    public static boolean isRunning(Core core, String tool) {
        return STATUS_RUNNING.equals(statusOf(core, tool));
    }

    public static boolean isServiceAlive(Context ctx) {
        ActivityManager am = (ActivityManager) ctx.getSystemService(Context.ACTIVITY_SERVICE);
        if (am == null) return false;
        try {
            for (ActivityManager.RunningServiceInfo si : am.getRunningServices(Integer.MAX_VALUE)) {
                if (InstallService.class.getName().equals(si.service.getClassName())) return true;
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    public static String reconcileStatus(Context ctx, Core core, String tool) {
        String s = statusOf(core, tool);
        if (STATUS_RUNNING.equals(s) && !isServiceAlive(ctx)) {
            core.putString(statusKey(tool), STATUS_FAILED);
            return STATUS_FAILED;
        }
        return s;
    }

    public static File logFile(Context ctx, String tool) {
        File dir = new File(ctx.getFilesDir(), "install-logs");
        if (!dir.exists())
            dir.mkdirs();
        return new File(dir, tool + ".log");
    }

    public static List<String> readLog(Context ctx, String tool) {
        File f = logFile(ctx, tool);
        if (!f.exists()) return new ArrayList<>();
        ArrayDeque<String> tail = new ArrayDeque<>();
        try (BufferedReader br = new BufferedReader(new InputStreamReader(new java.io.FileInputStream(f)))) {
            String line;
            while ((line = br.readLine()) != null) {
                tail.addLast(line);
                if (tail.size() > MAX_REPLAY_LINES) tail.removeFirst();
            }
        } catch (Exception e) {
            Log.w("InstallService", "readLog failed: " + e.getMessage());
        }
        return new ArrayList<>(tail);
    }

    private static String statusKey(String tool) {
        return "install_status_" + tool;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        core = new Core(this);
        notificationManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        createChannel();
        executor = Executors.newSingleThreadExecutor(r -> {
            Thread t = new Thread(r, "stryker-install-worker");
            t.setPriority(Thread.NORM_PRIORITY - 1);
            return t;
        });
        PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
        wakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "stryker:install");
        wakeLock.setReferenceCounted(false);
    }

    @Override
    public int onStartCommand(@Nullable Intent intent, int flags, int startId) {
        String action = intent != null ? intent.getAction() : null;
        String tool = intent != null ? intent.getStringExtra(EXTRA_TOOL) : null;

        String running = activeTool.get();
        startInForeground(running != null ? running : tool, getString(R.string.install_notif_starting));

        if (intent == null) {
            stopIfIdle();
            return START_NOT_STICKY;
        }
        if (ACTION_CANCEL.equals(action)) {
            cancelActive(tool);
            return START_NOT_STICKY;
        }
        if (!ACTION_INSTALL.equals(action) || !isKnownTool(tool)) {
            stopIfIdle();
            return START_NOT_STICKY;
        }
        if (!activeTool.compareAndSet(null, tool)) {
            broadcast(activeTool.get(), null, statusOf(core, activeTool.get()));
            return START_NOT_STICKY;
        }
        if (!wakeLock.isHeld()) wakeLock.acquire(2L * 60 * 60 * 1000);

        executor.submit(() -> {
            try {
                runInstall(tool);
            } finally {
                activeTool.set(null);
                stopIfIdle();
            }
        });
        return START_NOT_STICKY;
    }

    private boolean isKnownTool(String tool) {
        return TOOL_METASPLOIT.equals(tool) || TOOL_NUCLEI.equals(tool) || TOOL_HYDRA.equals(tool)
                || TOOL_CAMERADAR.equals(tool);
    }

    private void runInstall(String tool) {
        setStatus(tool, STATUS_RUNNING);
        truncateLog(tool);
        tee(tool, "Starting " + label(tool) + " installation");
        updateNotification(tool, getString(R.string.install_notif_running, label(tool)));

        Process process = null;
        boolean shellOk = false;
        if (core.isRootless()) {
            shellOk = runInstallRootless(tool);
        } else {
            try {
                process = core.generateSuProcess();
                current = process;
                OutputStream stdin = process.getOutputStream();
                InputStream stdout = process.getInputStream();

                final Process fp = process;
                Thread errReader = new Thread(() -> drain(fp.getErrorStream(), tool), "install-stderr-" + tool);
                errReader.start();

                stdin.write((Core.EXECUTE + "'" + Core.SHELL + "'\n").getBytes());
                for (String line : commandsFor(tool)) {
                    stdin.write((line + "\n").getBytes());
                }
                stdin.write("exit\nexit\n".getBytes());
                stdin.flush();
                stdin.close();

                try (BufferedReader br = new BufferedReader(new InputStreamReader(stdout))) {
                    String line;
                    while ((line = br.readLine()) != null) {
                        handleLine(tool, line.trim());
                    }
                }
                try { errReader.join(2000); } catch (InterruptedException ignored) {}
                process.waitFor();
                shellOk = true;
            } catch (Exception e) {
                Log.e("InstallService", "install shell crashed", e);
                tee(tool, "[E] install shell crashed: " + e.getMessage());
            } finally {
                if (process != null) {
                    try { process.destroy(); } catch (Throwable ignored) {}
                }
                current = null;
            }
        }

        boolean ok = shellOk && verify(tool);
        if (ok) {
            markInstalled(tool);
            tee(tool, "OK: " + label(tool) + " installation complete");
            setStatus(tool, STATUS_DONE);
            updateNotification(tool, getString(R.string.install_notif_done, label(tool)));
        } else {
            setStatus(tool, STATUS_FAILED);
            tee(tool, "[E] " + label(tool) + " install did not verify");
            updateNotification(tool, getString(R.string.install_notif_failed, label(tool)));
        }
    }

    private boolean runInstallRootless(String tool) {
        GuestExec.Session s = null;
        try {
            StringBuilder script = new StringBuilder();
            for (String line : commandsFor(tool)) script.append(line).append('\n');
            s = core.rootless().openStream(script.toString());
            currentGuest = s;
            String line;
            while ((line = s.reader.readLine()) != null) {
                if (line.startsWith(GuestExec.Session.SENTINEL)) break;
                handleLine(tool, line.trim());
            }
            return true;
        } catch (Exception e) {
            Log.e("InstallService", "rootless install crashed", e);
            tee(tool, "[E] install shell crashed: " + e.getMessage());
            return false;
        } finally {
            if (s != null) s.close();
            currentGuest = null;
        }
    }

    private void handleLine(String tool, String line) {
        if (line == null || line.isEmpty()) return;
        if (isProgressLine(line)) {
            long now = SystemClock.elapsedRealtime();
            if (now - lastProgressBroadcast >= PROGRESS_BROADCAST_MS) {
                lastProgressBroadcast = now;
                broadcast(tool, line, statusOf(core, tool));
            }
        } else {
            tee(tool, line);
        }
        if (line.contains("×")) {
            updateNotification(tool, line.replace("×", "").trim());
        }
    }

    private static boolean isProgressLine(String line) {
        return line.contains("Receiving objects") || line.contains("Resolving deltas")
                || line.contains("Counting objects") || line.contains("Compressing objects")
                || line.contains("Updating files") || line.contains("Unpacking objects");
    }

    private void drain(InputStream stream, String tool) {
        try (BufferedReader br = new BufferedReader(new InputStreamReader(stream))) {
            String line;
            while ((line = br.readLine()) != null) {
                String t = line.trim();
                if (!t.isEmpty()) handleLine(tool, "[E] " + t);
            }
        } catch (Exception e) {
            Log.d("InstallService", "stderr drained: " + e.getMessage());
        }
    }

    private boolean verify(String tool) {
        try {
            switch (tool) {
                case TOOL_NUCLEI:
                    return core.hasBinary("nuclei");
                case TOOL_HYDRA:
                    return core.hasBinary("hydra");
                case TOOL_CAMERADAR:
                    return core.hasBinary("cameradar")
                            || core.guestFileExists("/usr/bin/cameradar", "/usr/local/bin/cameradar");
                case TOOL_METASPLOIT:
                default:
                    return core.hasBinary("msfconsole")
                            || core.guestFileExists("/opt/metasploit-framework/msfconsole");
            }
        } catch (Throwable t) {
            Log.w("InstallService", "verify failed: " + t.getMessage());
            return false;
        }
    }

    private void markInstalled(String tool) {
        switch (tool) {
            case TOOL_METASPLOIT: core.putBoolean("msf", true); break;
            case TOOL_NUCLEI: core.putBoolean("nuclei", true); break;
            case TOOL_HYDRA: core.putBoolean("hydra", true); break;
            case TOOL_CAMERADAR: core.putBoolean("cameradar", true); break;
        }
        if (!core.checkModule(tool)) core.installModule(tool);
    }

    private List<String> commandsFor(String tool) {
        switch (tool) {
            case TOOL_NUCLEI: return nucleiCommands();
            case TOOL_HYDRA: return hydraCommands();
            case TOOL_CAMERADAR: return cameradarCommands();
            case TOOL_METASPLOIT:
            default: return metasploitCommands();
        }
    }

    private List<String> metasploitCommands() {
        ArrayList<String> c = new ArrayList<>(Apt.env());
        c.add("echo ×Updating packages");
        c.add(Apt.update());

        c.add("echo ×Installing additional pkgs");
        c.add(Apt.install("curl ca-certificates gnupg git "
                + "ruby ruby-dev bundler build-essential pkg-config "
                + "libpq-dev libpcap-dev libsqlite3-dev libssl-dev zlib1g-dev"));

        c.add("echo ×Downloading metasploit");
        c.addAll(loopSupportCommands());
        c.add("SNAPOK=0; [ \"$LOOP_OK\" = 1 ] && [ \"$SQUASH_OK\" = 1 ] && [ \"$SYSTEMD_OK\" = 1 ] && SNAPOK=1; "
                + "echo \"×snap usable here: $SNAPOK (loop=$LOOP_OK squashfs=$SQUASH_OK systemd=$SYSTEMD_OK)\"");
        c.add("if [ \"$SNAPOK\" = 1 ]; then "
                + Apt.install("snapd squashfs-tools") + " >/dev/null 2>&1; "
                + "systemctl enable --now snapd.socket >/dev/null 2>&1 "
                + "|| service snapd start >/dev/null 2>&1 "
                + "|| (nohup /usr/lib/snapd/snapd >/tmp/snapd.log 2>&1 &); "
                + "sleep 8; snap wait system seed.loaded >/dev/null 2>&1; "
                + "snap install metasploit-framework || echo '×snap install failed'; fi");
        c.add("command -v msfconsole >/dev/null 2>&1 || echo '×Trying the Rapid7 installer'");
        c.add("command -v msfconsole >/dev/null 2>&1 || "
                + "(curl -fsSL https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/"
                + "config/templates/metasploit-framework-wrappers/msfupdate.erb -o /tmp/msfinstall "
                + "&& chmod 0755 /tmp/msfinstall && /tmp/msfinstall) "
                + "|| echo '×Rapid7 installer unavailable, building from source'");
        c.add("command -v msfconsole >/dev/null 2>&1 || "
                + "(rm -rf /opt/metasploit-framework && git clone --depth 1 "
                + "https://github.com/rapid7/metasploit-framework /opt/metasploit-framework)");

        c.add("echo ×Pulling msfpc helper");
        c.add("rm -rf /opt/msfpc; git clone --depth 1 https://github.com/g0tmi1k/msfpc /opt/msfpc "
                + "&& install -m 0755 /opt/msfpc/msfpc.sh /usr/local/bin/msfpc || true");

        c.add("echo ×Linking binaries");
        c.add("for b in msfconsole msfvenom msfdb msfd msfrpc; do "
                + "if [ -x \"/snap/bin/metasploit-framework.$b\" ]; then "
                + "ln -sf \"/snap/bin/metasploit-framework.$b\" \"/usr/local/bin/$b\"; "
                + "elif [ -x \"/snap/bin/$b\" ]; then ln -sf \"/snap/bin/$b\" \"/usr/local/bin/$b\"; "
                + "elif [ -x \"/opt/metasploit-framework/$b\" ]; then "
                + "ln -sf \"/opt/metasploit-framework/$b\" \"/usr/local/bin/$b\"; fi; done; true");

        c.add("echo ×Installing msf pkgs and tools");
        c.add("if [ -f /opt/metasploit-framework/Gemfile ]; then "
                + "cd /opt/metasploit-framework "
                + "&& bundle config set --local without 'development test coverage' >/dev/null 2>&1; "
                + "bundle install; fi; true");

        c.add("echo ×Initializing metasploit");
        c.add("command -v msfconsole >/dev/null 2>&1 "
                + "&& msfconsole -q -x 'version; exit' 2>&1 | head -5 || true");

        c.add("echo ×Making sure everything is ready");
        c.add("command -v msfconsole >/dev/null 2>&1 && msfconsole --version 2>&1 | head -3 "
                + "|| echo '×msfconsole is still missing — see the log above'");
        c.add("echo ×Done");
        return c;
    }

    private List<String> loopSupportCommands() {
        ArrayList<String> c = new ArrayList<>();
        c.add("echo \"×Kernel $(uname -r)\"");

        c.add("SQUASH_OK=0; grep -qw squashfs /proc/filesystems && SQUASH_OK=1");
        c.add("[ \"$SQUASH_OK\" = 1 ] || { modprobe squashfs >/dev/null 2>&1; "
                + "grep -qw squashfs /proc/filesystems && SQUASH_OK=1 "
                + "&& echo '×squashfs loaded as a module'; }");
        c.add("[ \"$SQUASH_OK\" = 1 ] || echo '×squashfs is not in this kernel "
                + "(needs CONFIG_SQUASHFS + CONFIG_SQUASHFS_XZ)'");

        c.add("modprobe loop >/dev/null 2>&1 || true");
        c.add("[ -e /dev/loop-control ] || mknod /dev/loop-control c 10 237 >/dev/null 2>&1 || true");
        c.add("for i in 0 1 2 3 4 5 6 7; do "
                + "[ -e \"/dev/loop$i\" ] || mknod \"/dev/loop$i\" b 7 \"$i\" >/dev/null 2>&1; done; true");
        c.add("LOOP_OK=0; if losetup -f >/dev/null 2>&1; then LOOP_OK=1; "
                + "echo \"×loop devices OK ($(losetup -f))\"; "
                + "elif [ -e /dev/loop-control ]; then echo '×/dev/loop-control exists but losetup failed'; "
                + "else echo '×no loop support in this kernel (needs CONFIG_BLK_DEV_LOOP)'; fi");

        c.add("SYSTEMD_OK=0; [ -d /run/systemd/system ] && SYSTEMD_OK=1");
        c.add("[ \"$SYSTEMD_OK\" = 1 ] || echo '×systemd is not running here — snapd needs it, skipping snap'");
        return c;
    }

    private List<String> nucleiCommands() {
        ArrayList<String> c = new ArrayList<>(Apt.env());
        c.add("echo ×Installing download tools");
        c.add(Apt.update());
        c.add(Apt.install("curl unzip ca-certificates"));
        c.addAll(nucleiBinaryCommands());
        return c;
    }

    private List<String> nucleiBinaryCommands() {
        ArrayList<String> c = new ArrayList<>();
        c.add("mkdir -p /tmp /usr/bin");
        c.add("echo ×Detecting architecture");
        c.add("NARCH=linux_arm64; echo \"×Target $NARCH\"");
        c.add("echo ×Resolving latest nuclei release");
        c.add("NURL=$(curl -fsSL https://api.github.com/repos/projectdiscovery/nuclei/releases/latest "
                + "| tr ',' '\\n' | grep browser_download_url | grep \"$NARCH\" | grep '\\.zip' "
                + "| head -1 | cut -d'\"' -f4)");
        c.add("[ -n \"$NURL\" ] || echo '×Could not resolve a release URL'");
        c.add("echo \"×Downloading $NURL\"");
        c.add("curl -fL --retry 3 --retry-delay 2 -o /tmp/nuclei.zip \"$NURL\"");
        c.add("echo ×Unpacking binary");
        c.add("unzip -o /tmp/nuclei.zip nuclei -d /usr/bin");
        c.add("chmod 0755 /usr/bin/nuclei");
        c.add("rm -f /tmp/nuclei.zip");
        c.add("echo ×Fetching template library");
        c.add("export HOME=/root; mkdir -p /root/.config/nuclei; "
                + "if /usr/bin/nuclei -duc -ut >/tmp/nuclei-ut.log 2>&1; then "
                + "touch " + NUCLEI_TEMPLATES_MARKER + "; fi; tail -8 /tmp/nuclei-ut.log; rm -f /tmp/nuclei-ut.log");
        c.add("if [ -f " + NUCLEI_TEMPLATES_MARKER + " ]; then echo '×Template library ready'; "
                + "else echo '×Template download failed — the first scan will retry'; fi");
        c.add("echo ×Verify nuclei -version");
        c.add("/usr/bin/nuclei -version 2>&1 | head -3");
        c.add("echo ×Done");
        return c;
    }

    private List<String> hydraCommands() {
        ArrayList<String> c = new ArrayList<>(Apt.env());
        c.add("echo ×Refreshing package index");
        c.add(Apt.update());
        c.add("echo ×Installing hydra");
        c.add(Apt.installRecommended("hydra"));
        c.add("echo ×Done installing");
        return c;
    }

    private List<String> cameradarCommands() {
        ArrayList<String> c = new ArrayList<>(Apt.env());
        c.add("echo ×Refreshing package index");
        c.add(Apt.update());
        c.add("echo ×Installing dependencies");
        c.add(Apt.install("curl ca-certificates tar nmap"));
        c.add("mkdir -p /tmp /usr/bin");

        c.add("CARCH=linux_arm64; case \"$(uname -m)\" in "
                + "aarch64|arm64) CARCH=linux_arm64;; "
                + "armv7*) CARCH=linux_armv7;; "
                + "armv6*) CARCH=linux_armv6;; "
                + "x86_64|amd64) CARCH=linux_amd64;; "
                + "i?86) CARCH=linux_386;; esac; echo \"×Target $CARCH\"");

        c.add("echo ×Resolving latest cameradar release");
        c.add("CDURL=$(curl -fsSL https://api.github.com/repos/Ullaakut/cameradar/releases/latest "
                + "| tr ',' '\\n' | grep browser_download_url | grep \"$CARCH\" | grep '\\.tar\\.gz' "
                + "| head -1 | cut -d'\"' -f4)");
        c.add("[ -n \"$CDURL\" ] || echo '×Could not resolve a release URL'");
        c.add("echo \"×Downloading $CDURL\"");
        c.add("[ -n \"$CDURL\" ] && curl -fL --retry 3 --retry-delay 2 -o /tmp/cameradar.tar.gz \"$CDURL\"");

        c.add("echo ×Unpacking binary");
        c.add("rm -rf /tmp/cameradar-x; mkdir -p /tmp/cameradar-x; "
                + "tar -xzf /tmp/cameradar.tar.gz -C /tmp/cameradar-x 2>&1 | head -5");
        c.add("CDBIN=$(find /tmp/cameradar-x -type f -name cameradar 2>/dev/null | head -1)");
        c.add("[ -n \"$CDBIN\" ] || CDBIN=$(find /tmp/cameradar-x -type f ! -name '*.md' ! -name '*.txt' "
                + "! -name '*.json' ! -name 'LICENSE*' 2>/dev/null | head -1)");
        c.add("if [ -n \"$CDBIN\" ]; then install -m 0755 \"$CDBIN\" /usr/bin/cameradar; "
                + "else echo '×No binary inside the archive'; fi");
        c.add("ln -sf /usr/bin/cameradar /usr/bin/radar");
        c.add("rm -rf /tmp/cameradar.tar.gz /tmp/cameradar-x");

        c.add("echo ×Checking dictionaries");
        c.add("[ -f /CORE/Cameradar/credentials.json ] && [ -f /CORE/Cameradar/routes ] "
                + "|| echo '×Cameradar dictionaries are missing from /CORE — repair the core'");

        c.add("echo ×Verify cameradar");
        c.add("/usr/bin/cameradar --help 2>&1 | head -3 "
                + "|| echo '×cameradar is still missing — see the log above'");
        c.add("echo ×Done");
        return c;
    }

    private String label(String tool) {
        switch (tool) {
            case TOOL_NUCLEI: return "Nuclei";
            case TOOL_HYDRA: return "Hydra";
            case TOOL_CAMERADAR: return "Cameradar";
            case TOOL_METASPLOIT: default: return "Metasploit";
        }
    }

    private void truncateLog(String tool) {
        File f = logFile(this, tool);
        f.delete();
    }

    private synchronized void tee(String tool, String line) {
        File f = logFile(this, tool);
        if (line.contains("×") || f.length() <= MAX_LOG_FILE_BYTES) {
            try (PrintWriter pw = new PrintWriter(new FileWriter(f, true))) {
                pw.println(line);
            } catch (Exception e) {
                Log.w("InstallService", "tee failed: " + e.getMessage());
            }
        }
        broadcast(tool, line, statusOf(core, tool));
    }

    private void setStatus(String tool, String status) {
        core.putString(statusKey(tool), status);
        broadcast(tool, null, status);
    }

    private void broadcast(String tool, @Nullable String line, String status) {
        Intent i = new Intent(ACTION_UPDATED).setPackage(getPackageName());
        i.putExtra(EXTRA_TOOL, tool);
        if (line != null) i.putExtra(EXTRA_LINE, line);
        i.putExtra(EXTRA_STATUS, status);
        sendBroadcast(i);
    }

    private void cancelActive(String tool) {
        Process p = current;
        if (p != null) {
            try { p.destroy(); } catch (Throwable ignored) {}
        }
        GuestExec.Session gs = currentGuest;
        if (gs != null) {
            try { gs.close(); } catch (Throwable ignored) {}
        }
        if (tool != null) {
            setStatus(tool, STATUS_FAILED);
            tee(tool, "[E] install cancelled");
        }
        activeTool.set(null);
        stopIfIdle();
    }

    private void stopIfIdle() {
        if (activeTool.get() == null) {
            if (wakeLock != null && wakeLock.isHeld()) wakeLock.release();
            stopForeground(STOP_FOREGROUND_REMOVE);
            stopSelf();
        }
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel ch = new NotificationChannel(
                    CHANNEL_ID, getString(R.string.install_notif_channel),
                    NotificationManager.IMPORTANCE_LOW);
            ch.setShowBadge(false);
            notificationManager.createNotificationChannel(ch);
        }
    }

    @SuppressLint("InlinedApi")
    private void startInForeground(String tool, String text) {
        Notification n = buildNotification(label(tool), text);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            startForeground(FOREGROUND_NOTIFICATION_ID, n, ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC);
        } else {
            startForeground(FOREGROUND_NOTIFICATION_ID, n);
        }
    }

    private void updateNotification(String tool, String text) {
        if (notificationManager == null) return;
        notificationManager.notify(FOREGROUND_NOTIFICATION_ID, buildNotification(label(tool), text));
    }

    private Notification buildNotification(String toolLabel, String text) {
        Intent openApp = new Intent(this, MainActivity.class)
                .setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_SINGLE_TOP);
        PendingIntent pi = PendingIntent.getActivity(this, 0, openApp,
                PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        return new NotificationCompat.Builder(this, CHANNEL_ID)
                .setSmallIcon(R.drawable.download)
                .setContentTitle(getString(R.string.install_notif_title, toolLabel))
                .setContentText(text)
                .setOnlyAlertOnce(true)
                .setOngoing(true)
                .setProgress(100, 0, true)
                .setContentIntent(pi)
                .setPriority(NotificationCompat.PRIORITY_LOW)
                .build();
    }

    @Override
    public void onDestroy() {
        if (wakeLock != null && wakeLock.isHeld()) wakeLock.release();
        Process p = current;
        if (p != null) {
            try { p.destroy(); } catch (Throwable ignored) {}
        }
        GuestExec.Session gs = currentGuest;
        if (gs != null) {
            try { gs.close(); } catch (Throwable ignored) {}
        }
        String tool = activeTool.get();
        if (tool != null && STATUS_RUNNING.equals(statusOf(core, tool))) {
            setStatus(tool, STATUS_FAILED);
        }
        if (executor != null) executor.shutdownNow();
        super.onDestroy();
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
