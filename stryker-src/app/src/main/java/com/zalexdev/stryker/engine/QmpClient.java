package com.zalexdev.stryker.engine;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

public final class QmpClient {

    private static final String TAG = "QmpClient";

    private final String socketPath;
    private LocalSocket socket;
    private OutputStream out;
    private BufferedReader in;

    public QmpClient(String socketPath) {
        this.socketPath = socketPath;
    }

    public synchronized boolean connect() {
        try {
            socket = new LocalSocket();
            socket.connect(new LocalSocketAddress(socketPath, LocalSocketAddress.Namespace.FILESYSTEM));
            out = socket.getOutputStream();
            in = new BufferedReader(new InputStreamReader(socket.getInputStream(), StandardCharsets.UTF_8));
            readLine();
            JSONObject caps = new JSONObject();
            caps.put("execute", "qmp_capabilities");
            writeRaw(caps.toString(), null);
            readReturn();
            return true;
        } catch (Exception e) {
            Log.w(TAG, "connect failed: " + e.getMessage());
            close();
            return false;
        }
    }

    public synchronized boolean isConnected() {
        return socket != null && socket.isConnected();
    }

    public synchronized int addFd(FileDescriptor fd) {
        try {
            JSONObject cmd = new JSONObject();
            cmd.put("execute", "add-fd");
            writeRaw(cmd.toString(), fd);
            JSONObject ret = readReturn();
            if (ret != null && ret.has("return")) {
                return ret.getJSONObject("return").optInt("fdset-id", -1);
            }
        } catch (Exception e) {
            Log.w(TAG, "addFd failed: " + e.getMessage());
        }
        return -1;
    }

    public synchronized boolean removeFd(int fdSetId) {
        return execute("remove-fd", jo("fdset-id", fdSetId)) != null;
    }

    public synchronized boolean deviceAdd(JSONObject args) {
        try {
            JSONObject cmd = new JSONObject();
            cmd.put("execute", "device_add");
            cmd.put("arguments", args);
            writeRaw(cmd.toString(), null);
            return readReturn() != null;
        } catch (Exception e) {
            Log.w(TAG, "deviceAdd failed: " + e.getMessage());
            return false;
        }
    }

    public synchronized boolean deviceDel(String id) {
        return execute("device_del", jo("id", id)) != null;
    }

    public synchronized boolean hostfwdAdd(String rule) {
        return execute("human-monitor-command",
                jo("command-line", "hostfwd_add " + rule)) != null;
    }

    public synchronized boolean hostfwdRemove(String rule) {
        return execute("human-monitor-command",
                jo("command-line", "hostfwd_remove " + rule)) != null;
    }

    public synchronized String queryStatus() {
        JSONObject ret = execute("query-status", null);
        if (ret != null) {
            JSONObject r = ret.optJSONObject("return");
            if (r != null) return r.optString("status", null);
        }
        return null;
    }

    public synchronized boolean powerdown() {
        return execute("system_powerdown", null) != null;
    }

    public synchronized void close() {
        try { if (socket != null) socket.close(); } catch (IOException ignored) {}
        socket = null; out = null; in = null;
    }


    private JSONObject execute(String command, JSONObject args) {
        try {
            JSONObject cmd = new JSONObject();
            cmd.put("execute", command);
            if (args != null) cmd.put("arguments", args);
            writeRaw(cmd.toString(), null);
            return readReturn();
        } catch (Exception e) {
            Log.w(TAG, command + " failed: " + e.getMessage());
            return null;
        }
    }

    private void writeRaw(String json, FileDescriptor fd) throws IOException {
        if (fd != null) socket.setFileDescriptorsForSend(new FileDescriptor[]{fd});
        out.write((json + "\n").getBytes(StandardCharsets.UTF_8));
        out.flush();
        if (fd != null) socket.setFileDescriptorsForSend(null);
    }

    private String readLine() throws IOException {
        return in.readLine();
    }

    private JSONObject readReturn() {
        try {
            String line;
            while ((line = in.readLine()) != null) {
                JSONObject o;
                try { o = new JSONObject(line); } catch (JSONException e) { continue; }
                if (o.has("return")) return o;
                if (o.has("error")) {
                    Log.w(TAG, "QMP error: " + o.optJSONObject("error"));
                    return null;
                }
            }
        } catch (IOException e) {
            Log.w(TAG, "readReturn: " + e.getMessage());
        }
        return null;
    }

    private static JSONObject jo(String k, Object v) {
        JSONObject o = new JSONObject();
        try { o.put(k, v); } catch (JSONException ignored) {}
        return o;
    }
}
