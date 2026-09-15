package com.zalexdev.stryker.ota;

import android.content.Context;

public final class CoreDownloader {

    private CoreDownloader() {
    }

    public static RemoteManifest.Asset resolve(Context context) {
        RemoteManifest manifest = ManifestService.fetch(context);
        if (manifest != null && manifest.chroot64 != null && manifest.chroot64.isUsable()) {
            return manifest.chroot64;
        }
        return new RemoteManifest.Asset(StrykerEndpoints.FALLBACK_CHROOT_64, "", 0);
    }
}
