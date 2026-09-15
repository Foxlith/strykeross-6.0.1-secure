package com.zalexdev.stryker.localnetwork.nonroot;

import com.zalexdev.stryker.logger.Logger;

import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class MdnsResolver extends DiscoveryResolver {

    private static final String BLOCKED_TYPE = "_lg_dtv_wifirc._tcp.local.";
    private static final String DEVICE_INFO = "_device-info._tcp";
    private static final String ARPA_SUFFIX = ".in-addr.arpa";
    private static final int MAX_TYPES = 64;
    private static final int MAX_REVERSE = 256;
    private static final int MAX_SERVICES = 64;
    private static final int MAX_TXT_RECORDS = 64;
    private static final int MAX_TXT_KEYS = 64;
    private static final int BATCH = 8;
    private static final int BUFFER = 4096;
    private static final int SOCKET_TIMEOUT_MS = 400;
    private static final int TTL = 255;
    private static final int ERROR_PAUSE_MS = 50;

    private final Map<String, Node.Bonjour> results = new ConcurrentHashMap<>();
    private final Set<String> types = new LinkedHashSet<>();
    private final Map<String, Integer> reverse = new LinkedHashMap<>();
    private final AtomicInteger sequence = new AtomicInteger(1);
    private final Object lifecycle = new Object();

    private volatile MulticastSocket socket;
    private volatile InetAddress group;
    private volatile boolean joined;
    private volatile boolean sendWarned;
    private volatile Thread sender;
    private volatile Thread receiver;

    public MdnsResolver(NetworkContext net, Logger log) {
        super(net, log);
    }

    @Override
    public String tag() {
        return Node.SRC_MDNS;
    }

    @Override
    public void start() {
        synchronized (lifecycle) {
            if (running) return;
            try {
                try {
                    group = InetAddress.getByName(ScanConfig.MDNS_GROUP);
                } catch (Exception e) {
                    warn("group unresolved: " + e);
                    return;
                }
                MulticastSocket s = open();
                if (s == null) {
                    warn("no usable socket, resolver disabled");
                    return;
                }
                socket = s;
                sendWarned = false;
                running = true;
                Thread rx = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        receiveLoop();
                    }
                }, "mdns-rx");
                rx.setDaemon(true);
                Thread tx = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        sendLoop();
                    }
                }, "mdns-tx");
                tx.setDaemon(true);
                receiver = rx;
                sender = tx;
                rx.start();
                tx.start();
                if (joined && s.getLocalPort() == ScanConfig.MDNS_PORT) {
                    note("listening on " + ScanConfig.MDNS_GROUP + ":" + ScanConfig.MDNS_PORT);
                } else {
                    note("degraded mode, local port " + s.getLocalPort() + ", joined=" + joined);
                }
            } catch (Exception e) {
                running = false;
                warn("start failed: " + e);
                shutdown();
            }
        }
    }

    @Override
    public void stop() {
        synchronized (lifecycle) {
            running = false;
            shutdown();
        }
    }

    private void shutdown() {
        MulticastSocket s = socket;
        socket = null;
        if (s != null) {
            if (joined) {
                try {
                    InetAddress g = group;
                    if (g != null) s.leaveGroup(g);
                } catch (Exception ignored) {
                }
            }
            try {
                s.close();
            } catch (Exception ignored) {
            }
        }
        joined = false;
        Thread tx = sender;
        Thread rx = receiver;
        sender = null;
        receiver = null;
        join(tx, ScanConfig.RESOLVER_JOIN_MS);
        join(rx, ScanConfig.RESOLVER_JOIN_MS);
    }

    public Map<String, Node.Bonjour> results() {
        return results;
    }

    public Set<String> hostsWithService(String needle) {
        Set<String> out = new LinkedHashSet<>();
        try {
            if (needle == null) return out;
            String probe = DnsCodec.stripTrailingDot(needle).toLowerCase(Locale.ROOT);
            if (probe.isEmpty()) return out;
            for (Map.Entry<String, Node.Bonjour> entry : results.entrySet()) {
                Node.Bonjour b = entry.getValue();
                if (b != null && b.hasService(probe)) out.add(entry.getKey());
            }
        } catch (Exception e) {
            warn("service lookup failed: " + e);
        }
        return out;
    }

    public void queryReverse(String ip) {
        try {
            if (ip == null || !IpRange.isIpv4(ip)) return;
            String name = DnsCodec.stripTrailingDot(DnsCodec.reverseName(ip)).toLowerCase(Locale.ROOT);
            if (name.isEmpty() || !name.endsWith(ARPA_SUFFIX)) return;
            synchronized (reverse) {
                if (reverse.containsKey(name)) return;
                if (reverse.size() >= MAX_REVERSE) return;
                reverse.put(name, 0);
            }
        } catch (Exception e) {
            warn("reverse queue failed: " + e);
        }
    }

    private MulticastSocket open() {
        MulticastSocket s = null;
        try {
            s = new MulticastSocket(null);
            s.setReuseAddress(true);
            s.bind(new InetSocketAddress(ScanConfig.MDNS_PORT));
        } catch (Exception e) {
            warn("bind " + ScanConfig.MDNS_PORT + " failed (" + e + "), retrying send-only");
            closeQuietly(s);
            s = null;
            try {
                s = new MulticastSocket(null);
                s.setReuseAddress(true);
                s.bind(new InetSocketAddress(0));
            } catch (Exception second) {
                warn("ephemeral bind failed: " + second);
                closeQuietly(s);
                return null;
            }
        }
        try {
            s.setTimeToLive(TTL);
        } catch (Exception e) {
            warn("ttl not applied: " + e);
        }
        try {
            s.setSoTimeout(SOCKET_TIMEOUT_MS);
        } catch (Exception e) {
            warn("timeout not applied: " + e);
        }
        try {
            if (net != null && net.iface != null) s.setNetworkInterface(net.iface);
        } catch (Exception e) {
            warn("interface not bound: " + e);
        }
        try {
            InetAddress g = group;
            if (g != null) {
                s.joinGroup(g);
                joined = true;
            }
        } catch (Exception e) {
            joined = false;
            warn("join failed, unicast answers only: " + e);
        }
        return s;
    }

    private static void closeQuietly(MulticastSocket s) {
        try {
            if (s != null) s.close();
        } catch (Exception ignored) {
        }
    }

    private void sendLoop() {
        while (running && !Thread.currentThread().isInterrupted()) {
            try {
                List<String> names = new ArrayList<>();
                names.add(ScanConfig.MDNS_SERVICE_ENUM);
                synchronized (types) {
                    names.addAll(types);
                }
                names.addAll(dueReverse());
                dispatch(names);
            } catch (Exception e) {
                if (running && !sendWarned) {
                    sendWarned = true;
                    warn("send tick failed: " + e);
                }
            }
            if (!running) break;
            sleep(ScanConfig.MDNS_INTERVAL_MS);
        }
    }

    private void dispatch(List<String> names) {
        MulticastSocket s = socket;
        InetAddress g = group;
        if (s == null || g == null || names.isEmpty()) return;
        for (int i = 0; i < names.size() && running; i += BATCH) {
            List<String> chunk = names.subList(i, Math.min(i + BATCH, names.size()));
            try {
                byte[] payload = DnsCodec.query(sequence.getAndIncrement() & 0xFFFF, 0,
                        new ArrayList<String>(chunk), DnsCodec.TYPE_PTR);
                s.send(new DatagramPacket(payload, payload.length, g, ScanConfig.MDNS_PORT));
            } catch (Exception e) {
                if (running && !sendWarned) {
                    sendWarned = true;
                    warn("datagram dropped: " + e);
                }
                return;
            }
        }
    }

    private List<String> dueReverse() {
        List<String> out = new ArrayList<>();
        synchronized (reverse) {
            Iterator<Map.Entry<String, Integer>> it = reverse.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, Integer> entry = it.next();
                int used = entry.getValue() == null ? 0 : entry.getValue();
                if (used >= ScanConfig.MDNS_MAX_REVERSE_RETRY) {
                    it.remove();
                    continue;
                }
                entry.setValue(used + 1);
                out.add(entry.getKey());
            }
        }
        return out;
    }

    private void receiveLoop() {
        byte[] buffer = new byte[BUFFER];
        DatagramPacket packet = new DatagramPacket(buffer, buffer.length);
        while (running) {
            MulticastSocket s = socket;
            if (s == null) break;
            try {
                packet.setData(buffer, 0, buffer.length);
                s.receive(packet);
                handle(packet);
            } catch (SocketTimeoutException ignored) {
            } catch (Exception e) {
                if (!running || Thread.currentThread().isInterrupted()) break;
                sleep(ERROR_PAUSE_MS);
            }
        }
    }

    private void handle(DatagramPacket packet) {
        try {
            InetAddress from = packet.getAddress();
            if (from == null) return;
            String source = from.getHostAddress();
            if (source == null) return;
            int zone = source.indexOf('%');
            if (zone > 0) source = source.substring(0, zone);
            if (net == null || !net.inRange(source)) return;
            if (packet.getLength() <= 0) return;
            DnsCodec.Message msg = DnsCodec.parse(packet.getData(), packet.getLength());
            if (msg == null || !msg.response) return;
            mark(source);
            Node.Bonjour bonjour = bonjourFor(source);
            if (bonjour == null) return;
            for (DnsCodec.Record r : msg.records()) {
                if (r == null) continue;
                if (r.type == DnsCodec.TYPE_PTR) applyPtr(bonjour, r);
                else if (r.type == DnsCodec.TYPE_SRV) applySrv(bonjour, r);
                else if (r.type == DnsCodec.TYPE_A) applyAddress(source, bonjour, r);
            }
            applyText(bonjour, msg.answers);
            applyText(bonjour, msg.authority);
            applyText(bonjour, msg.additional);
        } catch (Exception e) {
            warn("datagram ignored: " + e);
        }
    }

    private void applyPtr(Node.Bonjour bonjour, DnsCodec.Record r) {
        String name = DnsCodec.stripTrailingDot(r.name);
        String lower = name.toLowerCase(Locale.ROOT);
        if (lower.isEmpty()) return;
        String enumeration = DnsCodec.stripTrailingDot(ScanConfig.MDNS_SERVICE_ENUM).toLowerCase(Locale.ROOT);
        if (lower.equals(enumeration)) {
            addType(r.target);
            return;
        }
        if (lower.endsWith(ARPA_SUFFIX)) {
            retireReverse(lower);
            if (r.ttl != 0 && bonjour.name.isEmpty()) {
                String label = DnsCodec.firstLabel(r.target);
                if (!label.isEmpty()) bonjour.name = label;
            }
            return;
        }
        boolean known;
        synchronized (types) {
            known = types.contains(lower);
        }
        if (!known) {
            if (!looksLikeServiceType(lower)) return;
            addType(lower);
        }
        addService(bonjour, lower);
        String target = DnsCodec.stripTrailingDot(r.target);
        if (!target.isEmpty() && bonjour.name.isEmpty()) {
            String label = DnsCodec.firstLabel(target);
            if (!label.isEmpty()) bonjour.name = label;
        }
    }

    private void applySrv(Node.Bonjour bonjour, DnsCodec.Record r) {
        addService(bonjour, serviceOf(r.name));
        if (bonjour.name.isEmpty()) {
            String label = DnsCodec.firstLabel(r.name);
            if (!label.isEmpty()) bonjour.name = label;
        }
    }

    private void applyAddress(String source, Node.Bonjour owner, DnsCodec.Record r) {
        String address = r.address;
        if (address == null || address.isEmpty()) return;
        if (address.equals(source)) {
            if (owner != null && owner.name.isEmpty()) {
                String label = DnsCodec.firstLabel(r.name);
                if (!label.isEmpty()) owner.name = label;
            }
            return;
        }
        if (net == null || !net.inRange(address)) return;
        Node.Bonjour other = bonjourFor(address);
        if (other == null) return;
        if (other.name.isEmpty()) {
            String label = DnsCodec.firstLabel(r.name);
            if (!label.isEmpty()) other.name = label;
        }
        mark(address);
    }

    private void applyText(Node.Bonjour bonjour, List<DnsCodec.Record> records) {
        if (records == null) return;
        for (DnsCodec.Record r : records) {
            if (r == null || r.type != DnsCodec.TYPE_TXT) continue;
            String name = DnsCodec.stripTrailingDot(r.name);
            if (name.isEmpty()) continue;
            Map<String, String> entries;
            synchronized (bonjour.txt) {
                entries = bonjour.txt.get(name);
                if (entries == null) {
                    if (bonjour.txt.size() >= MAX_TXT_RECORDS) continue;
                    entries = new ConcurrentHashMap<String, String>();
                    bonjour.txt.put(name, entries);
                }
            }
            for (String raw : r.strings) {
                if (raw == null || raw.isEmpty()) continue;
                int split = raw.indexOf('=');
                String key = split < 0 ? raw.trim() : raw.substring(0, split).trim();
                String value = split < 0 ? "" : raw.substring(split + 1).trim();
                if (key.isEmpty()) continue;
                key = key.toLowerCase(Locale.ROOT);
                if (!entries.containsKey(key) && entries.size() >= MAX_TXT_KEYS) continue;
                entries.put(key, value);
            }
            if (!name.toLowerCase(Locale.ROOT).contains(DEVICE_INFO)) continue;
            if (bonjour.model.isEmpty()) {
                String model = entries.get("model");
                if (model != null && !model.isEmpty()) bonjour.model = model;
            }
            if (bonjour.name.isEmpty()) {
                String label = DnsCodec.firstLabel(r.name);
                if (!label.isEmpty()) bonjour.name = label;
            }
        }
    }

    private void addType(String target) {
        String type = DnsCodec.stripTrailingDot(target).toLowerCase(Locale.ROOT);
        if (type.isEmpty()) return;
        if (type.equals(DnsCodec.stripTrailingDot(BLOCKED_TYPE).toLowerCase(Locale.ROOT))) return;
        synchronized (types) {
            if (types.contains(type)) return;
            if (types.size() >= MAX_TYPES) return;
            types.add(type);
        }
    }

    private static boolean looksLikeServiceType(String name) {
        return name.startsWith("_") && (name.contains("._tcp") || name.contains("._udp"));
    }

    private void retireReverse(String name) {
        if (name == null || name.isEmpty()) return;
        synchronized (reverse) {
            reverse.remove(name);
        }
    }

    private static void addService(Node.Bonjour bonjour, String service) {
        if (bonjour == null || service == null) return;
        String value = DnsCodec.stripTrailingDot(service).toLowerCase(Locale.ROOT);
        if (value.isEmpty()) return;
        synchronized (bonjour.services) {
            if (bonjour.services.contains(value)) return;
            if (bonjour.services.size() >= MAX_SERVICES) return;
            bonjour.services.add(value);
        }
    }

    private Node.Bonjour bonjourFor(String ip) {
        if (ip == null || ip.isEmpty()) return null;
        Node.Bonjour existing = results.get(ip);
        if (existing != null) return existing;
        Node.Bonjour created = new Node.Bonjour();
        Node.Bonjour previous = results.putIfAbsent(ip, created);
        return previous != null ? previous : created;
    }

    private static String serviceOf(String instance) {
        String value = DnsCodec.stripTrailingDot(instance);
        int dot = value.indexOf('.');
        if (dot <= 0 || dot + 1 >= value.length()) return "";
        return value.substring(dot + 1);
    }
}
