package com.zalexdev.stryker.utils;

import android.app.Activity;
import android.content.Context;

public  abstract class AdvancedThread {

    public Activity activity;
    public Context context;
    public Core core;
    public volatile boolean canceled = false;
    public boolean success = false;
    public Thread mainThread;

    public AdvancedThread(Activity activity, Context context) {
        this.activity = activity;
        this.context = context;
        core = new Core(context);
        execute();
    }


    private void startBackground() {
       mainThread = new Thread(() -> {
            doOnBackground();
            if (!canceled) {activity.runOnUiThread(this::onFinished); }

        });
        mainThread.start();
    }

    public void execute() { startBackground();}
    public abstract void onFinished();

    public abstract void eventListener(String line);

    public abstract void doOnBackground();
    public void sendEvent(String line) {
        activity.runOnUiThread(() -> eventListener(line));
    }
    public void setCanceled(boolean canceled) {
        this.canceled = canceled;
        new Thread(this::onCanceled).start();
    }
    public abstract void onCanceled();

    public void setSuccess(boolean success) {
        this.success = success;
    }
}
