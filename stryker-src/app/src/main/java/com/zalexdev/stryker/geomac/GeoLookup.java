package com.zalexdev.stryker.geomac;

import android.content.Context;

import com.zalexdev.stryker.geomac.model.GeoPin;
import com.zalexdev.stryker.geomac.store.GeoStore;
import com.zalexdev.stryker.utils.Core;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class GeoLookup {

    private static final Pattern COORDS =
            Pattern.compile("([-]?[0-9]+\\.[0-9]+)\\s*,\\s*([-]?[0-9]+\\.[0-9]+)");

    private GeoLookup() {}

    public static double[] coordsFor(Core core, String bssid) {
        if (core == null || bssid == null || bssid.isEmpty()) return null;

        double[] apple = AppleWloc.locate(bssid);
        if (apple != null) return apple;

        double[] mylnikov = coordsViaHttp(bssid);
        if (mylnikov != null) return mylnikov;

        return null;
    }

    private static double[] coordsViaHttp(String bssid) {
        try {
            String url = "https://api.mylnikov.org/geolocation/wifi?v=1.1&data=open&bssid="
                    + java.net.URLEncoder.encode(bssid, "UTF-8");
            okhttp3.OkHttpClient client = new okhttp3.OkHttpClient();
            okhttp3.Request req = new okhttp3.Request.Builder().url(url).build();
            try (okhttp3.Response resp = client.newCall(req).execute()) {
                if (!resp.isSuccessful() || resp.body() == null) return null;
                org.json.JSONObject j = new org.json.JSONObject(resp.body().string());
                if (j.optInt("result") != 200) return null;
                org.json.JSONObject d = j.optJSONObject("data");
                if (d == null) return null;
                return new double[]{ d.getDouble("lat"), d.getDouble("lon") };
            }
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean lookupAndStore(Context ctx, Core core, String bssid, String ssid,
                                         GeoPin.Category category) {
        double[] coords = coordsFor(core, bssid);
        if (coords == null) return false;
        GeoStore store = new GeoStore(ctx);
        store.upsert(new GeoPin(bssid, ssid, coords[0], coords[1], category,
                System.currentTimeMillis(), null));
        return true;
    }
}
