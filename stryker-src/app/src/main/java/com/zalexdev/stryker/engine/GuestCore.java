package com.zalexdev.stryker.engine;

import android.content.Context;
import android.util.Log;

import com.zalexdev.stryker.utils.Core;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public final class GuestCore {

    public static final String ASSET = "rootless/stryker-guest-core.tar";
    public static final String MARKER = "/CORE/PixieWps/pixie.py";
    public static final String VERSION_FILE = "/CORE/.version";
    public static final String VERSION = "6";

    private static final String TAG = "GuestCore";
    private static final String STAGED_NAME = "stryker-core.tar";

    private GuestCore() {
    }

    public static boolean ensure(Core core) {
        if (core == null) return false;
        if (core.isRootless()) return core.rootless().ensureGuestCore();
        return ensureChroot(core);
    }

    public static boolean deploy(Core core) {
        if (core == null) return false;
        if (core.isRootless()) return core.rootless().deployGuestCore();
        return deployChroot(core);
    }

    private static boolean ensureChroot(Core core) {
        if (core.checkFile(Core.CHROOT_ROOT + MARKER)
                && VERSION.equals(readVersion(core))) {
            return true;
        }
        return deployChroot(core);
    }

    private static String readVersion(Core core) {
        for (String l : core.customCommand("cat " + Core.CHROOT_ROOT + VERSION_FILE
                + " 2>/dev/null", true)) {
            if (l != null && !l.trim().isEmpty()) return l.trim();
        }
        return "";
    }

    private static boolean deployChroot(Core core) {
        Context ctx = core.context;
        if (ctx == null) return false;
        File staged = new File(ctx.getFilesDir(), STAGED_NAME);
        try (InputStream in = ctx.getAssets().open(ASSET);
             OutputStream out = new FileOutputStream(staged)) {
            byte[] buf = new byte[1 << 16];
            int r;
            while ((r = in.read(buf)) != -1) out.write(buf, 0, r);
            out.flush();
        } catch (Exception e) {
            Log.w(TAG, "staging failed: " + e.getMessage());
            return false;
        }
        core.customCommand("mkdir -p " + Core.CHROOT_ROOT);
        core.customCommand(Core.BUSYBOX + "tar xf " + staged.getAbsolutePath()
                + " -C " + Core.CHROOT_ROOT);
        core.customCommand("chmod -R 0755 " + Core.CHROOT_ROOT + "/CORE "
                + Core.CHROOT_ROOT + "/exploits");
        //noinspection ResultOfMethodCallIgnored
        staged.delete();
        return core.checkFile(Core.CHROOT_ROOT + MARKER);
    }
}
