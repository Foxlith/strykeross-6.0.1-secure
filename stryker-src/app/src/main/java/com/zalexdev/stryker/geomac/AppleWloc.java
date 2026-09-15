package com.zalexdev.stryker.geomac;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.TimeUnit;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public final class AppleWloc {

    private static final String ENDPOINT = "https://gs-loc.apple.com/clls/wloc";
    private static final String UA =
            "locationd/1753.17 CFNetwork/711.1.12 Darwin/14.0.0";
    private static final long UNKNOWN = -18000000000L;
    private static final double SCALE = 1e-8;
    private static final byte[] MARKER = {0x00, 0x00, 0x00, 0x01, 0x00, 0x00};

    private static volatile OkHttpClient client;

    private AppleWloc() {
    }

    public static double[] locate(String bssid) {
        String mac = normalize(bssid);
        if (mac == null) return null;
        try {
            byte[] payload = buildRequest(mac);
            Request req = new Request.Builder()
                    .url(ENDPOINT)
                    .header("User-Agent", UA)
                    .header("Accept-Charset", "utf-8")
                    .post(RequestBody.create(
                            MediaType.parse("application/x-www-form-urlencoded"), payload))
                    .build();
            try (Response resp = http().newCall(req).execute()) {
                if (!resp.isSuccessful() || resp.body() == null) return null;
                return parseResponse(resp.body().bytes(), mac);
            }
        } catch (IOException | RuntimeException e) {
            return null;
        }
    }

    private static OkHttpClient http() {
        OkHttpClient c = client;
        if (c == null) {
            synchronized (AppleWloc.class) {
                c = client;
                if (c == null) {
                    c = new OkHttpClient.Builder()
                            .connectTimeout(15, TimeUnit.SECONDS)
                            .readTimeout(20, TimeUnit.SECONDS)
                            .build();
                    client = c;
                }
            }
        }
        return c;
    }

    static String normalize(String bssid) {
        if (bssid == null) return null;
        StringBuilder hex = new StringBuilder();
        for (int i = 0; i < bssid.length(); i++) {
            char ch = bssid.charAt(i);
            if (Character.digit(ch, 16) >= 0) hex.append(Character.toUpperCase(ch));
        }
        if (hex.length() != 12) return null;
        StringBuilder out = new StringBuilder(17);
        for (int i = 0; i < 12; i += 2) {
            if (i > 0) out.append(':');
            out.append(hex.charAt(i)).append(hex.charAt(i + 1));
        }
        return out.toString();
    }

    private static byte[] buildRequest(String mac) throws IOException {
        ByteArrayOutputStream wifi = new ByteArrayOutputStream();
        writeLengthDelimited(wifi, 1, mac.getBytes(StandardCharsets.UTF_8));

        ByteArrayOutputStream body = new ByteArrayOutputStream();
        writeLengthDelimited(body, 2, wifi.toByteArray());
        writeTag(body, 3, 0);
        writeVarint(body, 0);
        writeTag(body, 4, 0);
        writeVarint(body, 100);
        byte[] proto = body.toByteArray();

        ByteArrayOutputStream out = new ByteArrayOutputStream();
        out.write(new byte[]{0x00, 0x01, 0x00, 0x05});
        out.write("en_US".getBytes(StandardCharsets.UTF_8));
        out.write(new byte[]{0x00, 0x13});
        out.write("com.apple.locationd".getBytes(StandardCharsets.UTF_8));
        out.write(new byte[]{0x00, 0x0C});
        out.write("8.4.1.12H321".getBytes(StandardCharsets.UTF_8));
        out.write(new byte[]{0x00, 0x00, 0x00, 0x01, 0x00, 0x00});
        out.write((proto.length >> 8) & 0xFF);
        out.write(proto.length & 0xFF);
        out.write(proto);
        return out.toByteArray();
    }

    private static double[] parseResponse(byte[] data, String wanted) {
        int start = indexOf(data, MARKER);
        if (start < 0) return null;
        int[] pos = {start + 8};
        double[] first = null;
        while (pos[0] < data.length) {
            long tag = readVarint(data, pos);
            if (tag < 0) break;
            int field = (int) (tag >>> 3);
            int wire = (int) (tag & 7);
            if (wire == 2) {
                long len = readVarint(data, pos);
                if (len < 0 || pos[0] + len > data.length) break;
                int from = pos[0];
                pos[0] += (int) len;
                if (field != 2) continue;
                Entry e = parseWifi(data, from, from + (int) len);
                if (e == null || e.lat == null || e.lon == null) continue;
                if (e.lat == UNKNOWN || e.lon == UNKNOWN) continue;
                double[] coords = {e.lat * SCALE, e.lon * SCALE};
                if (wanted.equalsIgnoreCase(e.mac)) return coords;
                if (first == null) first = coords;
            } else if (wire == 0) {
                if (readVarint(data, pos) < 0) break;
            } else {
                break;
            }
        }
        return first;
    }

    private static final class Entry {
        String mac;
        Long lat;
        Long lon;
    }

    private static Entry parseWifi(byte[] b, int from, int to) {
        Entry e = new Entry();
        int[] pos = {from};
        while (pos[0] < to) {
            long tag = readVarint(b, pos);
            if (tag < 0) return e;
            int field = (int) (tag >>> 3);
            int wire = (int) (tag & 7);
            if (wire == 2) {
                long len = readVarint(b, pos);
                if (len < 0 || pos[0] + len > to) return e;
                int start = pos[0];
                pos[0] += (int) len;
                if (field == 1) {
                    e.mac = new String(b, start, (int) len, StandardCharsets.UTF_8);
                } else if (field == 2) {
                    readLocation(b, start, start + (int) len, e);
                }
            } else if (wire == 0) {
                if (readVarint(b, pos) < 0) return e;
            } else {
                return e;
            }
        }
        return e;
    }

    private static void readLocation(byte[] b, int from, int to, Entry e) {
        int[] pos = {from};
        while (pos[0] < to) {
            long tag = readVarint(b, pos);
            if (tag < 0) return;
            int field = (int) (tag >>> 3);
            int wire = (int) (tag & 7);
            if (wire != 0) return;
            long v = readVarint(b, pos);
            if (v == Long.MIN_VALUE) return;
            if (field == 1) e.lat = v;
            else if (field == 2) e.lon = v;
        }
    }

    private static int indexOf(byte[] haystack, byte[] needle) {
        outer:
        for (int i = 0; i + needle.length <= haystack.length; i++) {
            for (int j = 0; j < needle.length; j++) {
                if (haystack[i + j] != needle[j]) continue outer;
            }
            return i;
        }
        return -1;
    }

    private static long readVarint(byte[] b, int[] pos) {
        long result = 0;
        int shift = 0;
        while (pos[0] < b.length && shift < 64) {
            int x = b[pos[0]++] & 0xFF;
            result |= (long) (x & 0x7F) << shift;
            if ((x & 0x80) == 0) return result;
            shift += 7;
        }
        return Long.MIN_VALUE;
    }

    private static void writeTag(ByteArrayOutputStream out, int field, int wire) {
        writeVarint(out, ((long) field << 3) | wire);
    }

    private static void writeLengthDelimited(ByteArrayOutputStream out, int field, byte[] data)
            throws IOException {
        writeTag(out, field, 2);
        writeVarint(out, data.length);
        out.write(data);
    }

    private static void writeVarint(ByteArrayOutputStream out, long value) {
        while (true) {
            int b = (int) (value & 0x7F);
            value >>>= 7;
            if (value != 0) {
                out.write(b | 0x80);
            } else {
                out.write(b);
                return;
            }
        }
    }
}
