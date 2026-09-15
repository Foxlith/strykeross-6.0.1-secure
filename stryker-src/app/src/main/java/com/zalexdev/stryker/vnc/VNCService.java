package com.zalexdev.stryker.vnc;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

import com.zalexdev.stryker.MainActivity;
import com.zalexdev.stryker.R;
import com.zalexdev.stryker.utils.Core;
import com.zalexdev.stryker.utils.Utils;

import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

public class VNCService extends Service {
    private final String CHANNEL_ID = "VNCChannel";
    public static final String ACTION_START = "com.zalexdev.stryker.vnc.action.START";
    public static final String ACTION_STOP = "com.zalexdev.stryker.vnc.action.STOP";
    public static final String EXTRA_RESOLUTION = "com.zalexdev.stryker.vnc.extra.resolution";
    public static final String EXTRA_PORT = "com.zalexdev.stryker.vnc.extra.port";
    private Timer timer = new Timer();
    private String port = "";
    private Process vnc = null;
    private Core core = null;
    private NotificationCompat.Builder notification;

    @Override
    public void onCreate() {
        core = new Core(this);
        super.onCreate();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        String action = intent.getAction();

        createNotificationChannel();
        Intent notificationPendingIntent = new Intent(this, MainActivity.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(this, 0, notificationPendingIntent, Utils.setPendingIntentFlag());

        notification = new NotificationCompat.Builder(this, CHANNEL_ID)
                .setContentTitle("VNC Server")
                .setContentText("Running command. Waiting for connection...")
                .setSmallIcon(R.drawable.vnc)
                .setOnlyAlertOnce(true)
                .setOngoing(true)
                .setContentIntent(pendingIntent);

        startForeground(33, notification.build());
        if (action != null) {
            if (action.equals(ACTION_START)) {
                port = intent.getStringExtra(EXTRA_PORT);
                final String param1 = intent.getStringExtra(EXTRA_RESOLUTION);
                final String param2 = intent.getStringExtra(EXTRA_PORT);
                new Thread(() -> {
                    if (!isVNCStarted()) startVNC(param1, param2);
                    else openPortForward(param2);
                }).start();
                try {
                    Thread.sleep(5);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                timer = new Timer();
                timer.scheduleAtFixedRate(new TimerTask() {
                    @Override
                    public void run() {
                        checkVNC();
                    }
                }, 0, 10000);
            } else if (action.equals(ACTION_STOP)) {
                new Thread(() -> {
                    try {
                        stopVNC();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }).start();
            }
        }
        return START_NOT_STICKY;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel serviceChannel = new NotificationChannel(
                    CHANNEL_ID,
                    "VNCServiceChannel",
                    NotificationManager.IMPORTANCE_DEFAULT
            );

            NotificationManager manager = getSystemService(NotificationManager.class);
            manager.createNotificationChannel(serviceChannel);
        }
    }

    public void startVNC(String resolution, String port) {
        Intent intent = new Intent();
        intent.setAction(ACTION_START);
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        sendBroadcast(intent);

        core.customChrootCommand("mkdir -p /tmp; setsid nohup vncserver-start -p " + port
                + " -r " + resolution + " > /tmp/vncserver-start.log 2>&1 < /dev/null &");
        openPortForward(port);
    }

    private void openPortForward(String value) {
        if (!core.isRootless()) return;
        int p = parsePort(value);
        if (p <= 0) return;
        boolean ok = core.rootless().forwardPort(p, p);
        core.logger.writeLine(ok
                ? "VNC port " + p + " forwarded into the VM"
                : "VNC port " + p + " could not be forwarded (QMP unavailable)", ok ? 2 : 3);
    }

    private void closePortForward(String value) {
        if (!core.isRootless()) return;
        int p = parsePort(value);
        if (p > 0) core.rootless().unforwardPort(p);
    }

    private static int parsePort(String value) {
        try {
            int p = Integer.parseInt(value == null ? "" : value.trim());
            return p > 0 && p < 65536 ? p : -1;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    public void stopVNC() throws IOException {
        if (vnc != null) {
            vnc.destroy();
        }

        Intent intent = new Intent();
        intent.setAction(ACTION_STOP);
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        sendBroadcast(intent);

        vnc = null;
        core.customChrootCommand("vncserver-stop");
        closePortForward(port);

        timer.cancel();
        stopForeground(false);
        stopSelf();
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

    public void checkVNC() {
        if (isVNCStarted()) {
            notification.setContentText("Running VNC Server on localhost:" + port);
            notification.build();
            NotificationManager mNotificationManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
            mNotificationManager.notify(33, notification.build());
        }
    }
}