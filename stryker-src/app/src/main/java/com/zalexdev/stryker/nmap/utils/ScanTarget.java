package com.zalexdev.stryker.nmap.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;

import com.zalexdev.stryker.engine.GuestExec;
import com.zalexdev.stryker.utils.Core;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

public class ScanTarget extends AsyncTask<Void, String, Boolean> {

    public interface Callback {
        void onLine(String line);
        void onFinished(boolean ok);
    }

    private final String command;
    private final Activity activity;
    private final Callback callback;
    private final Core core;

    private Process process;
    private volatile GuestExec.Session guestSession;
    private volatile boolean killed;

    public ScanTarget(String command, Context context, Activity activity, Callback callback) {
        this.command = command;
        this.activity = activity;
        this.callback = callback;
        this.core = new Core(context);
    }

    public void kill() {
        killed = true;
        if (process != null) {
            try {
                process.destroy();
            } catch (Exception ignored) {
            }
        }
        if (guestSession != null) {
            try {
                guestSession.close();
            } catch (Exception ignored) {
            }
        }
    }

    @SuppressLint("WrongThread")
    @Override
    protected Boolean doInBackground(Void... voids) {
        if (core.isRootless()) {
            return runRootless();
        }
        boolean ok = false;
        try {
            process = Runtime.getRuntime().exec("su");
            OutputStream stdin = process.getOutputStream();
            InputStream stderr = process.getErrorStream();
            InputStream stdout = process.getInputStream();
            String wrapped = Core.EXECUTE + "'" + command.replace("'", "'\\''") + "' && echo SCAN_DONE_OK || echo SCAN_DONE_ERR";
            stdin.write((wrapped + '\n').getBytes());
            stdin.write(("exit" + '\n').getBytes());
            stdin.flush();
            stdin.close();

            BufferedReader br = new BufferedReader(new InputStreamReader(stdout));
            String line;
            while (!killed && (line = br.readLine()) != null) {
                if (line.contains("SCAN_DONE_OK")) { ok = true; break; }
                if (line.contains("SCAN_DONE_ERR")) { ok = false; break; }
                publishProgress(line);
            }
            br.close();

            BufferedReader er = new BufferedReader(new InputStreamReader(stderr));
            while (!killed && (line = er.readLine()) != null) {
                publishProgress("[stderr] " + line);
            }
            er.close();

            process.waitFor();
            process.destroy();
        } catch (IOException | InterruptedException e) {
            Log.d("NmapScan", "exception: " + e.getMessage());
        }
        return ok && !killed;
    }

    private Boolean runRootless() {
        if (needsRawOrL2(command)) {
            publishProgress("[stryker] Raw-socket/L2 scan needs an adapter on the LAN (root engine)");
            return false;
        }
        boolean ok = false;
        try {
            guestSession = core.rootless().openStream(command);
            BufferedReader br = guestSession.reader;
            String line;
            while (!killed && (line = br.readLine()) != null) {
                if (line.startsWith(GuestExec.Session.SENTINEL)) {
                    try {
                        ok = Integer.parseInt(
                                line.substring(GuestExec.Session.SENTINEL.length()).trim()) == 0;
                    } catch (NumberFormatException ignored) {
                    }
                    break;
                }
                publishProgress(line);
            }
        } catch (IOException e) {
            Log.d("NmapScan", "rootless exception: " + e.getMessage());
        } finally {
            if (guestSession != null) {
                try {
                    guestSession.close();
                } catch (Exception ignored) {
                }
            }
        }
        return ok && !killed;
    }

    private static boolean needsRawOrL2(String cmd) {
        String c = " " + cmd.toLowerCase() + " ";
        return c.contains(" -su ")
                || c.contains(" -o ")
                || c.contains(" -sn ")
                || c.contains(" -pe ")
                || c.contains(" -pp ")
                || c.contains(" -pm ")
                || c.contains(" -so ")
                || c.contains(" -ss ")
                || c.contains(" -sa ")
                || c.contains(" arp-scan ");
    }

    @Override
    protected void onProgressUpdate(String... values) {
        if (callback != null && values != null && values.length > 0) {
            callback.onLine(values[0]);
        }
    }

    @Override
    protected void onPostExecute(Boolean result) {
        if (callback != null) callback.onFinished(Boolean.TRUE.equals(result));
    }

    @Override
    protected void onCancelled(Boolean result) {
        if (callback != null) callback.onFinished(false);
    }
}
