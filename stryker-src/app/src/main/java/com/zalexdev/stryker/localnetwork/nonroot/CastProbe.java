package com.zalexdev.stryker.localnetwork.nonroot;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public final class CastProbe {

    private CastProbe() {
    }

    private static final int TIMEOUT_MS = 2500;
    private static final int MAX_BODY = 128 * 1024;
    private static final int READ_CHUNK = 4096;
    private static final int MAX_THREADS = 8;
    private static final long POOL_WAIT_S = 20L;
    private static final String PATH = "/setup/eureka_info?options=detail";

    public static Node.Cast probe(String ip) {
        if (ip == null || ip.trim().isEmpty()) return null;
        String body = fetch(ip.trim());
        if (body == null || body.isEmpty()) return null;
        try {
            JSONObject root = new JSONObject(body);
            JSONObject dev = root.optJSONObject("device_info");

            String name = firstNonEmpty(
                    str(root, "name"), str(dev, "name"),
                    str(root, "device_name"), str(dev, "device_name"),
                    str(root, "ssdp_udn"), str(dev, "ssdp_udn"));
            String model = firstNonEmpty(str(root, "model_name"), str(dev, "model_name"));
            String build = firstNonEmpty(
                    str(root, "build_version"), str(root, "cast_build_revision"),
                    str(dev, "build_version"), str(dev, "cast_build_revision"));
            String ssid = firstNonEmpty(str(root, "ssid"), str(dev, "ssid"));
            String mac = Node.normalizeMac(firstNonEmpty(
                    str(root, "mac_address"), str(dev, "mac_address")));

            if (name.isEmpty() && model.isEmpty() && build.isEmpty() && ssid.isEmpty() && mac == null) {
                return null;
            }

            Node.Cast cast = new Node.Cast();
            cast.name = name;
            cast.model = model;
            cast.build = build;
            cast.ssid = ssid;
            if (mac != null) cast.mac = mac;
            return cast;
        } catch (Exception e) {
            return null;
        } catch (Throwable t) {
            return null;
        }
    }

    public static Map<String, Node.Cast> probeAll(Collection<String> ips, int threads) {
        final Map<String, Node.Cast> results = new ConcurrentHashMap<>();
        if (ips == null || ips.isEmpty()) return results;

        int size = Math.max(1, Math.min(threads, MAX_THREADS));
        ExecutorService pool = null;
        try {
            pool = Executors.newFixedThreadPool(size);
            for (String raw : ips) {
                if (raw == null || raw.trim().isEmpty()) continue;
                final String target = raw.trim();
                try {
                    pool.execute(() -> {
                        try {
                            Node.Cast cast = probe(target);
                            if (cast != null) results.put(target, cast);
                        } catch (Throwable ignored) {
                        }
                    });
                } catch (Exception ignored) {
                }
            }
        } catch (Exception ignored) {
        }

        if (pool != null) {
            try {
                pool.shutdown();
                pool.awaitTermination(POOL_WAIT_S, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } catch (Exception ignored) {
            }
            try {
                pool.shutdownNow();
            } catch (Exception ignored) {
            }
        }
        return results;
    }

    private static String fetch(String ip) {
        HttpURLConnection conn = null;
        InputStream in = null;
        try {
            URL url = new URL("http://" + ip + ":" + ScanConfig.CAST_PORT + PATH);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(TIMEOUT_MS);
            conn.setReadTimeout(TIMEOUT_MS);
            conn.setUseCaches(false);
            conn.setDoInput(true);
            conn.setInstanceFollowRedirects(false);
            conn.setRequestProperty("User-Agent", "Stryker");
            conn.setRequestProperty("Accept", "application/json");
            conn.setRequestProperty("Connection", "close");

            int code = conn.getResponseCode();
            if (code != HttpURLConnection.HTTP_OK) return null;

            in = conn.getInputStream();
            if (in == null) return null;

            ByteArrayOutputStream sink = new ByteArrayOutputStream(READ_CHUNK);
            byte[] chunk = new byte[READ_CHUNK];
            int total = 0;
            while (total < MAX_BODY) {
                int want = Math.min(chunk.length, MAX_BODY - total);
                int read = in.read(chunk, 0, want);
                if (read < 0) break;
                if (read == 0) continue;
                sink.write(chunk, 0, read);
                total += read;
            }
            if (total == 0) return null;
            return new String(sink.toByteArray(), StandardCharsets.UTF_8);
        } catch (Exception e) {
            return null;
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Exception ignored) {
                }
            }
            if (conn != null) {
                try {
                    InputStream err = conn.getErrorStream();
                    if (err != null) err.close();
                } catch (Exception ignored) {
                }
                try {
                    conn.disconnect();
                } catch (Exception ignored) {
                }
            }
        }
    }

    private static String str(JSONObject source, String key) {
        if (source == null || key == null) return "";
        try {
            Object value = source.opt(key);
            if (value == null || value == JSONObject.NULL) return "";
            if (value instanceof JSONObject || value instanceof JSONArray) return "";
            return String.valueOf(value).trim();
        } catch (Exception e) {
            return "";
        }
    }

    private static String firstNonEmpty(String... candidates) {
        if (candidates == null) return "";
        for (String candidate : candidates) {
            if (candidate != null && !candidate.isEmpty()) return candidate;
        }
        return "";
    }
}
