package com.zalexdev.stryker.localnetwork.nonroot;

import android.os.Build;
import android.util.Xml;

import com.zalexdev.stryker.logger.Logger;

import org.xmlpull.v1.XmlPullParser;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.StringReader;
import java.net.DatagramPacket;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class SsdpResolver extends DiscoveryResolver {

    private static final int SOCKET_TIMEOUT_MS = 400;
    private static final int TTL = 4;
    private static final int BUFFER_BYTES = 4096;
    private static final int READ_CHUNK = 4096;
    private static final int MAX_BODY_BYTES = 256 * 1024;
    private static final int MAX_LOCATIONS = 512;
    private static final int MAX_LOCATION_CHARS = 512;
    private static final int MAX_VALUE_CHARS = 256;
    private static final int MAX_SERVICES = 32;
    private static final int MAX_XML_EVENTS = 20000;
    private static final int MAX_RX_FAILURES = 20;
    private static final String ST_ROOT = "upnp:rootdevice";
    private static final String ST_ALL = "ssdp:all";

    private final Map<String, Node.Upnp> results = new ConcurrentHashMap<>();
    private final Set<String> fetched =
            Collections.newSetFromMap(new ConcurrentHashMap<String, Boolean>());

    private volatile MulticastSocket socket;
    private volatile InetAddress group;
    private volatile boolean joined;
    private volatile boolean sendWarned;
    private volatile boolean offHostWarned;
    private volatile Thread sender;
    private volatile Thread receiver;
    private volatile ExecutorService pool;

    public SsdpResolver(NetworkContext net, Logger log) {
        super(net, log);
    }

    @Override
    public String tag() {
        return Node.SRC_SSDP;
    }

    @Override
    public synchronized void start() {
        if (running) return;
        try {
            group = InetAddress.getByName(ScanConfig.SSDP_GROUP);
        } catch (Exception e) {
            group = null;
        }
        if (group == null) {
            warn("group address unavailable");
            return;
        }
        MulticastSocket opened = openSocket();
        if (opened == null) {
            warn("socket unavailable");
            return;
        }
        socket = opened;
        running = true;
        sendWarned = false;
        offHostWarned = false;
        try {
            pool = Executors.newFixedThreadPool(ScanConfig.SSDP_FETCH_THREADS, r -> {
                Thread worker = new Thread(r, "ssdp-fetch");
                worker.setDaemon(true);
                return worker;
            });
        } catch (Exception e) {
            pool = null;
        }
        try {
            receiver = new Thread(this::receiveLoop, "ssdp-rx");
            receiver.setDaemon(true);
            receiver.start();
            sender = new Thread(this::sendLoop, "ssdp-tx");
            sender.setDaemon(true);
            sender.start();
            note("listening on " + ScanConfig.SSDP_GROUP + ":" + opened.getLocalPort());
        } catch (Exception e) {
            warn("thread start failed: " + e);
            stop();
        }
    }

    @Override
    public synchronized void stop() {
        running = false;
        MulticastSocket current = socket;
        socket = null;
        if (current != null) {
            try {
                if (joined && group != null) current.leaveGroup(group);
            } catch (Exception ignored) {
            }
            try {
                current.close();
            } catch (Exception ignored) {
            }
        }
        joined = false;
        ExecutorService currentPool = pool;
        pool = null;
        if (currentPool != null) {
            try {
                currentPool.shutdownNow();
            } catch (Exception ignored) {
            }
        }
        Thread tx = sender;
        Thread rx = receiver;
        sender = null;
        receiver = null;
        try {
            if (tx != null) tx.interrupt();
        } catch (Exception ignored) {
        }
        try {
            if (rx != null) rx.interrupt();
        } catch (Exception ignored) {
        }
        join(tx, ScanConfig.RESOLVER_JOIN_MS);
        join(rx, ScanConfig.RESOLVER_JOIN_MS);
    }

    public Map<String, Node.Upnp> results() {
        return results;
    }

    private MulticastSocket openSocket() {
        MulticastSocket created = null;
        try {
            created = new MulticastSocket(null);
            created.setReuseAddress(true);
            created.bind(new InetSocketAddress(ScanConfig.SSDP_PORT));
        } catch (Exception e) {
            if (created != null) {
                try {
                    created.close();
                } catch (Exception ignored) {
                }
            }
            created = null;
            warn("bind " + ScanConfig.SSDP_PORT + " failed (" + e + "), retrying on ephemeral port");
            try {
                created = new MulticastSocket(null);
                created.setReuseAddress(true);
                created.bind(new InetSocketAddress(0));
            } catch (Exception second) {
                if (created != null) {
                    try {
                        created.close();
                    } catch (Exception ignored) {
                    }
                }
                warn("bind failed: " + second);
                return null;
            }
        }
        try {
            created.setSoTimeout(SOCKET_TIMEOUT_MS);
        } catch (Exception ignored) {
        }
        try {
            created.setTimeToLive(TTL);
        } catch (Exception ignored) {
        }
        try {
            if (net != null && net.iface != null) created.setNetworkInterface(net.iface);
        } catch (Exception ignored) {
        }
        try {
            InetAddress target = group;
            if (target != null) {
                created.joinGroup(target);
                joined = true;
            }
        } catch (Exception e) {
            joined = false;
            note("join failed: " + e);
        }
        return created;
    }

    private void sendLoop() {
        int tick = 0;
        while (running) {
            MulticastSocket current = socket;
            InetAddress target = group;
            if (current == null || target == null) break;
            try {
                byte[] payload = search(tick % 2 == 0 ? ST_ROOT : ST_ALL);
                current.send(new DatagramPacket(payload, payload.length, target, ScanConfig.SSDP_PORT));
            } catch (Exception e) {
                if (running && !sendWarned) {
                    sendWarned = true;
                    warn("send failed: " + e);
                }
            }
            tick++;
            if (!running) break;
            sleep(ScanConfig.SSDP_INTERVAL_MS);
        }
    }

    private void receiveLoop() {
        byte[] buffer = new byte[BUFFER_BYTES];
        int failures = 0;
        while (running) {
            MulticastSocket current = socket;
            if (current == null) break;
            DatagramPacket packet = new DatagramPacket(buffer, buffer.length);
            try {
                current.receive(packet);
                failures = 0;
            } catch (SocketTimeoutException timeout) {
                failures = 0;
                continue;
            } catch (Exception e) {
                if (!running) break;
                failures++;
                if (failures >= MAX_RX_FAILURES) {
                    warn("receive failed " + failures + " times, listener stopped: " + e);
                    break;
                }
                sleep(50);
                continue;
            }
            try {
                handle(packet);
            } catch (Exception ignored) {
            }
        }
    }

    private void handle(DatagramPacket packet) {
        InetAddress from = packet.getAddress();
        if (from == null) return;
        String ip = from.getHostAddress();
        if (ip == null || ip.isEmpty()) return;
        int zone = ip.indexOf('%');
        if (zone > 0) ip = ip.substring(0, zone);
        if (net == null || !net.inRange(ip) || net.isLocal(ip)) return;

        byte[] data = packet.getData();
        int offset = packet.getOffset();
        int length = packet.getLength();
        if (data == null || offset < 0 || length <= 0 || length > data.length - offset) return;

        String text = new String(data, offset, length, StandardCharsets.UTF_8);
        String[] lines = text.split("\r\n|\n|\r");
        if (lines.length == 0) return;
        String first = lines[0].trim().toUpperCase(Locale.ROOT);
        boolean ok = first.startsWith("HTTP/") && first.contains(" 200");
        if (!ok && !first.startsWith("NOTIFY")) return;

        mark(ip);

        Map<String, String> headers = new HashMap<>();
        for (int i = 1; i < lines.length; i++) {
            String line = lines[i];
            if (line == null) continue;
            if (line.trim().isEmpty()) break;
            int colon = line.indexOf(':');
            if (colon <= 0) continue;
            String key = line.substring(0, colon).trim().toUpperCase(Locale.ROOT);
            String value = line.substring(colon + 1).trim();
            if (key.isEmpty() || headers.containsKey(key)) continue;
            headers.put(key, value);
        }

        String location = headers.get("LOCATION");
        if (location == null) location = "";
        location = location.trim();
        if (location.isEmpty() || location.length() > MAX_LOCATION_CHARS) return;
        if (!sameHost(location, ip)) {
            if (!offHostWarned) {
                offHostWarned = true;
                warn(ip + " advertised off-host location, ignored");
            }
            return;
        }

        String server = headers.get("SERVER");
        Node.Upnp node = ensure(ip);
        synchronized (node) {
            if (node.location.isEmpty()) node.location = location;
            if (node.server.isEmpty() && server != null && !server.trim().isEmpty()) {
                node.server = clamp(server.trim());
            }
        }

        if (fetched.size() >= MAX_LOCATIONS) return;
        if (!fetched.add(location)) return;

        ExecutorService current = pool;
        if (current == null || current.isShutdown()) {
            fetched.remove(location);
            return;
        }
        final String owner = ip;
        final String url = location;
        try {
            current.execute(() -> fetch(owner, url));
        } catch (Exception rejected) {
            fetched.remove(url);
        }
    }

    private boolean sameHost(String raw, String ip) {
        try {
            URL url = new URL(raw);
            String protocol = url.getProtocol() == null ? "" : url.getProtocol().toLowerCase(Locale.ROOT);
            if (!"http".equals(protocol) && !"https".equals(protocol)) return false;
            String host = url.getHost();
            if (host == null) return false;
            host = host.trim();
            if (host.length() > 1 && host.charAt(0) == '[' && host.charAt(host.length() - 1) == ']') {
                host = host.substring(1, host.length() - 1);
            }
            int zone = host.indexOf('%');
            if (zone > 0) host = host.substring(0, zone);
            if (host.equalsIgnoreCase(ip)) return true;
            return IpRange.isIpv4(host) && net != null && net.inRange(host);
        } catch (Exception e) {
            return false;
        }
    }

    private void fetch(String ip, String url) {
        try {
            if (!running) return;
            String body = download(url);
            if (body == null || body.isEmpty()) return;
            Node.Upnp parsed = parse(body);
            if (parsed == null) return;
            merge(ip, url, parsed);
        } catch (Exception ignored) {
        }
    }

    private String download(String raw) {
        HttpURLConnection conn = null;
        InputStream in = null;
        try {
            URL url = new URL(raw);
            String protocol = url.getProtocol() == null ? "" : url.getProtocol().toLowerCase(Locale.ROOT);
            if (!"http".equals(protocol) && !"https".equals(protocol)) return null;
            conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(ScanConfig.HTTP_TIMEOUT_MS);
            conn.setReadTimeout(ScanConfig.HTTP_TIMEOUT_MS);
            conn.setRequestMethod("GET");
            conn.setRequestProperty("User-Agent", "Stryker");
            conn.setRequestProperty("Accept", "text/xml, application/xml");
            conn.setRequestProperty("Connection", "close");
            conn.setInstanceFollowRedirects(false);
            conn.setUseCaches(false);
            conn.setDoInput(true);
            if (conn.getResponseCode() != HttpURLConnection.HTTP_OK) return null;
            in = conn.getInputStream();
            if (in == null) return null;
            ByteArrayOutputStream out = new ByteArrayOutputStream(READ_CHUNK);
            byte[] chunk = new byte[READ_CHUNK];
            int total = 0;
            while (total < MAX_BODY_BYTES && running) {
                int want = Math.min(chunk.length, MAX_BODY_BYTES - total);
                int read = in.read(chunk, 0, want);
                if (read <= 0) break;
                out.write(chunk, 0, read);
                total += read;
            }
            if (total == 0) return null;
            return new String(out.toByteArray(), StandardCharsets.UTF_8);
        } catch (Exception e) {
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

    private Node.Upnp parse(String xml) {
        Node.Upnp out = new Node.Upnp();
        try {
            XmlPullParser parser = Xml.newPullParser();
            try {
                parser.setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false);
            } catch (Exception ignored) {
            }
            parser.setInput(new StringReader(xml));
            String tag = "";
            int guard = 0;
            int event = parser.getEventType();
            while (event != XmlPullParser.END_DOCUMENT && guard < MAX_XML_EVENTS) {
                guard++;
                if (event == XmlPullParser.START_TAG) {
                    tag = local(parser.getName());
                } else if (event == XmlPullParser.END_TAG) {
                    tag = "";
                } else if (event == XmlPullParser.TEXT && !tag.isEmpty()) {
                    String raw = parser.getText();
                    if (raw != null) {
                        String value = raw.trim();
                        if (!value.isEmpty()) apply(out, tag, value);
                    }
                }
                event = parser.next();
            }
        } catch (Exception ignored) {
        }
        return out;
    }

    private static void apply(Node.Upnp target, String tag, String raw) {
        String key = tag.toLowerCase(Locale.ROOT);
        String value = clamp(raw);
        if ("friendlyname".equals(key)) {
            if (target.friendlyName.isEmpty()) target.friendlyName = value;
        } else if ("devicetype".equals(key)) {
            if (target.deviceType.isEmpty()) target.deviceType = value;
        } else if ("manufacturer".equals(key)) {
            if (target.manufacturer.isEmpty()) target.manufacturer = value;
        } else if ("modelname".equals(key)) {
            if (target.modelName.isEmpty()) target.modelName = value;
        } else if ("modelnumber".equals(key)) {
            if (target.modelNumber.isEmpty()) target.modelNumber = value;
        } else if ("modeldescription".equals(key)) {
            if (target.modelDescription.isEmpty()) target.modelDescription = value;
        } else if ("serialnumber".equals(key)) {
            if (target.serialNumber.isEmpty()) target.serialNumber = value;
        } else if ("udn".equals(key)) {
            if (target.udn.isEmpty()) target.udn = value;
        } else if ("servicetype".equals(key)) {
            if (target.serviceTypes.size() < MAX_SERVICES && !target.serviceTypes.contains(value)) {
                target.serviceTypes.add(value);
            }
        }
    }

    private void merge(String ip, String url, Node.Upnp parsed) {
        Node.Upnp target = ensure(ip);
        String label;
        synchronized (target) {
            if (target.location.isEmpty()) target.location = url;
            if (target.friendlyName.isEmpty()) target.friendlyName = parsed.friendlyName;
            if (target.deviceType.isEmpty()) target.deviceType = parsed.deviceType;
            if (target.manufacturer.isEmpty()) target.manufacturer = parsed.manufacturer;
            if (target.modelName.isEmpty()) target.modelName = parsed.modelName;
            if (target.modelNumber.isEmpty()) target.modelNumber = parsed.modelNumber;
            if (target.modelDescription.isEmpty()) target.modelDescription = parsed.modelDescription;
            if (target.serialNumber.isEmpty()) target.serialNumber = parsed.serialNumber;
            if (target.udn.isEmpty()) target.udn = parsed.udn;
            for (String service : parsed.serviceTypes) {
                if (target.serviceTypes.size() >= MAX_SERVICES) break;
                if (service != null && !service.isEmpty() && !target.serviceTypes.contains(service)) {
                    target.serviceTypes.add(service);
                }
            }
            label = target.friendlyName.isEmpty() ? target.modelName : target.friendlyName;
        }
        note(ip + " " + (label.isEmpty() ? url : label));
    }

    private Node.Upnp ensure(String ip) {
        Node.Upnp existing = results.get(ip);
        if (existing != null) return existing;
        Node.Upnp created = new Node.Upnp();
        Node.Upnp prior = results.putIfAbsent(ip, created);
        return prior != null ? prior : created;
    }

    private static String clamp(String value) {
        if (value == null) return "";
        return value.length() > MAX_VALUE_CHARS ? value.substring(0, MAX_VALUE_CHARS) : value;
    }

    private static String local(String name) {
        if (name == null) return "";
        int colon = name.indexOf(':');
        return colon >= 0 ? name.substring(colon + 1) : name;
    }

    private static byte[] search(String target) {
        String release = "";
        try {
            if (Build.VERSION.RELEASE != null) release = Build.VERSION.RELEASE;
        } catch (Throwable ignored) {
        }
        String message = "M-SEARCH * HTTP/1.1\r\n"
                + "HOST: " + ScanConfig.SSDP_GROUP + ":" + ScanConfig.SSDP_PORT + "\r\n"
                + "MAN: \"ssdp:discover\"\r\n"
                + "MX: 1\r\n"
                + "ST: " + target + "\r\n"
                + "USER-AGENT: Android/" + release + " UPnP/1.1 Stryker/1.0\r\n"
                + "\r\n";
        return message.getBytes(StandardCharsets.UTF_8);
    }
}
