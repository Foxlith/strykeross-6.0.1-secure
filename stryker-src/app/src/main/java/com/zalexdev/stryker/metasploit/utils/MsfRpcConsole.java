package com.zalexdev.stryker.metasploit.utils;

import android.util.Log;

import com.zalexdev.stryker.engine.GuestExec;
import com.zalexdev.stryker.engine.RootlessPaths;
import com.zalexdev.stryker.utils.Core;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public class MsfRpcConsole {

    private static final String TAG = "MsfRpcConsole";

    public enum State { IDLE, BOOTING, READY, DEAD }

    public interface Listener {
        void onLine(String line);
        void onState(State state, String reason);
    }

    private static final String CHROOT_LAUNCH = Core.EXECUTE + "'msfconsole'\n";
    private static final String GUEST_ENV =
            "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin${PATH:+:$PATH}; "
            + "export HOME=/root LANG=C.UTF-8\n";
    private static final String GUEST_LAUNCH = "cd /root 2>/dev/null || cd /tmp; exec msfconsole\n";
    private static final int GUEST_CONNECT_TIMEOUT_MS = 5000;
    private static final int GUEST_READ_SLICE_MS = 2000;

    private final Core core;
    private final String label;

    private volatile Process process;
    private volatile Socket socket;
    private volatile OutputStream stdin;
    private volatile BufferedReader stdout;
    private volatile boolean eof;
    private Thread stderrPump;

    private volatile State state = State.IDLE;
    private volatile String version = "";
    private final Object ioLock = new Object();
    private final AtomicBoolean shuttingDown = new AtomicBoolean(false);

    private static final long CMD_TIMEOUT_MS = 60_000L;
    private static final long BOOT_IDLE_MS = 90_000L;
    private static final long BOOT_CAP_MS = 20 * 60_000L;
    private static final long CMD_CAP_MS = 10 * 60_000L;

    private Listener listener;

    public MsfRpcConsole(Core core, String label) {
        this.core = core;
        this.label = label;
    }

    public synchronized void setListener(Listener listener) {
        this.listener = listener;
    }

    public State getState() { return state; }
    public String getVersion() { return version; }
    public boolean isReady() { return state == State.READY && isProcessAlive(); }

    public synchronized boolean boot() {
        if (state == State.READY && isProcessAlive()) return true;
        teardown("respawn");
        publishState(State.BOOTING, "starting msfconsole");
        String failure = core.isRootless() ? openGuestChannel() : openSuChannel();
        if (failure != null) {
            publishState(State.DEAD, failure);
            return false;
        }
        try {
            long cap = System.currentTimeMillis() + BOOT_CAP_MS;
            long idle = System.currentTimeMillis() + BOOT_IDLE_MS;
            String line;
            while ((line = readLine(Math.min(cap, idle))) != null) {
                idle = System.currentTimeMillis() + BOOT_IDLE_MS;
                line = clean(line);
                if (line.contains("metasploit v")) {
                    version = parseVersion(line);
                    publishState(State.READY, "v" + version);
                    return true;
                }
                if (isMissingBinary(line)) {
                    publishState(State.DEAD, "msfconsole not installed");
                    return false;
                }
                if (!shouldSuppress(line)) emitLine(line);
            }
            publishState(State.DEAD, eof ? "msfconsole exited" : "boot timeout");
            return false;
        } catch (IOException e) {
            Log.e(TAG, label + " boot failed", e);
            publishState(State.DEAD, e.getMessage() == null ? "io error" : e.getMessage());
            return false;
        }
    }

    private String readLine(long deadline) throws IOException {
        BufferedReader r = stdout;
        if (r == null) return null;
        while (System.currentTimeMillis() < deadline) {
            try {
                String line = r.readLine();
                if (line == null) {
                    eof = true;
                    return null;
                }
                return line;
            } catch (java.net.SocketTimeoutException idle) {
                if (socket == null || socket.isClosed()) {
                    eof = true;
                    return null;
                }
            }
        }
        return null;
    }

    private static boolean isMissingBinary(String line) {
        return line.contains("command not found")
                || line.contains("No such file")
                || line.contains("msfconsole: not found");
    }

    private String openSuChannel() {
        process = core.generateSuProcess();
        if (process == null) return "su denied";
        try {
            stdin = process.getOutputStream();
            stdout = new BufferedReader(new InputStreamReader(process.getInputStream()));
            startStderrPump(process.getErrorStream());
            stdin.write(CHROOT_LAUNCH.getBytes(StandardCharsets.UTF_8));
            stdin.flush();
            return null;
        } catch (IOException e) {
            Log.e(TAG, label + " su channel failed", e);
            return e.getMessage() == null ? "io error" : e.getMessage();
        }
    }

    private String openGuestChannel() {
        if (!GuestExec.ping(GUEST_CONNECT_TIMEOUT_MS)) {
            try {
                if (!core.rootless().startBlocking(null)) return "VM is not running";
            } catch (Throwable t) {
                return "VM is not running";
            }
        }
        try {
            Socket s = new Socket();
            s.connect(new InetSocketAddress(RootlessPaths.HOST_LOOPBACK, RootlessPaths.HOST_EXEC_PORT),
                    GUEST_CONNECT_TIMEOUT_MS);
            s.setKeepAlive(true);
            s.setSoTimeout(GUEST_READ_SLICE_MS);
            socket = s;
            stdin = s.getOutputStream();
            stdout = new BufferedReader(new InputStreamReader(s.getInputStream(), StandardCharsets.UTF_8));
            stdin.write(GUEST_ENV.getBytes(StandardCharsets.UTF_8));
            stdin.flush();
            stdin.write(GUEST_LAUNCH.getBytes(StandardCharsets.UTF_8));
            stdin.flush();
            return null;
        } catch (IOException e) {
            Log.e(TAG, label + " guest channel failed", e);
            return "VM unreachable on :" + RootlessPaths.HOST_EXEC_PORT;
        }
    }

    public ArrayList<String> command(String cmd) {
        return command(cmd, CMD_TIMEOUT_MS);
    }

    public ArrayList<String> command(String cmd, long timeoutMs) {
        ArrayList<String> out = new ArrayList<>();
        if (!isProcessAlive()) {
            if (!boot()) return out;
        }
        synchronized (ioLock) {
            String sentinel = "__STRYKER_END_" + Core.generateString().substring(0, 12) + "__";
            try {
                stdin.write((cmd + "\n").getBytes());
                stdin.write(("echo " + sentinel + "\n").getBytes());
                stdin.flush();
                long cap = System.currentTimeMillis() + CMD_CAP_MS;
                long idle = System.currentTimeMillis() + timeoutMs;
                String line;
                while ((line = readLine(Math.min(cap, idle))) != null) {
                    idle = System.currentTimeMillis() + timeoutMs;
                    if (line.contains(sentinel)) return out;
                    line = clean(line);
                    if (shouldSuppress(line)) continue;
                    out.add(line);
                    emitLine(line);
                }
                publishState(State.DEAD, eof ? "msfconsole exited" : "command timeout");
            } catch (Exception e) {
                Log.e(TAG, label + " io error in command", e);
                publishState(State.DEAD, e.getMessage() == null ? "io error" : e.getMessage());
            }
        }
        return out;
    }

    public void send(String cmd) {
        if (!isProcessAlive()) return;
        synchronized (ioLock) {
            try {
                stdin.write((cmd + "\n").getBytes());
                stdin.flush();
            } catch (IOException ignored) {
            }
        }
    }

    public synchronized boolean restart() {
        shuttingDown.set(false);
        teardown("manual restart");
        return boot();
    }

    public synchronized void shutdown() {
        shuttingDown.set(true);
        teardown("shutdown");
        publishState(State.IDLE, "shut down");
    }

    public boolean isProcessAlive() {
        if (eof) return false;
        if (socket != null) return !socket.isClosed();
        if (process == null) return false;
        try {
            process.exitValue();
            return false;
        } catch (IllegalThreadStateException alive) {
            return true;
        }
    }

    private void teardown(String why) {
        try { if (stdin != null) stdin.close(); } catch (IOException ignored) {}
        try { if (stdout != null) stdout.close(); } catch (IOException ignored) {}
        if (socket != null) {
            try { socket.close(); } catch (IOException ignored) {}
        }
        if (process != null) {
            try { process.destroy(); } catch (Exception ignored) {}
        }
        process = null;
        socket = null;
        stdin = null;
        stdout = null;
        eof = false;
        Log.d(TAG, label + " torn down (" + why + ")");
    }

    private void startStderrPump(final InputStream err) {
        if (err == null) return;
        stderrPump = new Thread(() -> {
            BufferedReader br = new BufferedReader(new InputStreamReader(err));
            String line;
            try {
                while ((line = br.readLine()) != null) {
                    String cleaned = clean(line);
                    if (shouldSuppress(cleaned)) continue;
                    emitLine("[stderr] " + cleaned);
                }
            } catch (IOException ignored) {
            }
        }, "MsfRpcStderr-" + label);
        stderrPump.setDaemon(true);
        stderrPump.start();
    }

    private void publishState(State newState, String reason) {
        state = newState;
        if (listener != null) listener.onState(newState, reason);
    }

    private void emitLine(String line) {
        if (listener != null) listener.onLine(line);
    }

    private static String clean(String line) {
        if (line == null) return "";
        line = line.replaceAll("\\[[0-9;]*[a-zA-Z]", "");
        line = line.replaceAll(".*0m>", "");
        line = line.replaceFirst("^msf\\d?[^>]*>\\s?", "");
        return line.trim();
    }

    static boolean shouldSuppress(String line) {
        if (line == null || line.isEmpty()) return true;
        if (line.contains("__STRYKER_END_")) return true;
        if (line.contains("Starting the Metasploit Framework console")) return true;
        if (line.contains("stty: standard input: Not a tty")) return true;
        if (line.startsWith("echo __STRYKER_END_")) return true;
        return false;
    }

    private static String parseVersion(String bannerLine) {
        return bannerLine.replace("metasploit v", "")
                .replace("=", "")
                .replace("[", "")
                .replace("]", "")
                .trim();
    }
}
