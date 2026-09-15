package com.zalexdev.stryker.localnetwork.nonroot;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

public final class HostProbes {

    private HostProbes() {
    }

    private static final String ARP_PATH = "/proc/net/arp";
    private static final int ARP_MAX_LINES = 4096;
    private static final int PING_MAX_LINES = 32;
    private static final long PING_BUDGET_MS = 2000L;
    private static final int[] TTL_BUCKETS = {32, 64, 128, 255};

    private static final Map<Integer, String> SERVICES;

    static {
        Map<Integer, String> m = new HashMap<>(256);
        m.put(7, "echo");
        m.put(21, "ftp");
        m.put(22, "ssh");
        m.put(23, "telnet");
        m.put(25, "smtp");
        m.put(53, "domain");
        m.put(67, "dhcp");
        m.put(69, "tftp");
        m.put(80, "http");
        m.put(81, "http-alt");
        m.put(88, "kerberos");
        m.put(110, "pop3");
        m.put(111, "rpcbind");
        m.put(123, "ntp");
        m.put(135, "msrpc");
        m.put(137, "netbios-ns");
        m.put(138, "netbios-dgm");
        m.put(139, "netbios-ssn");
        m.put(143, "imap");
        m.put(161, "snmp");
        m.put(389, "ldap");
        m.put(427, "svrloc");
        m.put(443, "https");
        m.put(445, "microsoft-ds");
        m.put(465, "smtps");
        m.put(500, "isakmp");
        m.put(515, "printer");
        m.put(548, "afp");
        m.put(554, "rtsp");
        m.put(587, "submission");
        m.put(631, "ipp");
        m.put(636, "ldaps");
        m.put(873, "rsync");
        m.put(902, "vmware");
        m.put(993, "imaps");
        m.put(995, "pop3s");
        m.put(1080, "socks");
        m.put(1433, "ms-sql");
        m.put(1723, "pptp");
        m.put(1883, "mqtt");
        m.put(1900, "upnp");
        m.put(1935, "rtmp");
        m.put(2049, "nfs");
        m.put(2082, "cpanel");
        m.put(2181, "zookeeper");
        m.put(2375, "docker");
        m.put(3000, "http-dev");
        m.put(3306, "mysql");
        m.put(3389, "ms-term-serv");
        m.put(3478, "stun");
        m.put(3689, "daap");
        m.put(4444, "metasploit");
        m.put(5000, "upnp-http");
        m.put(5060, "sip");
        m.put(5222, "xmpp");
        m.put(5353, "mdns");
        m.put(5357, "wsdapi");
        m.put(5432, "postgresql");
        m.put(5555, "adb");
        m.put(5601, "kibana");
        m.put(5672, "amqp");
        m.put(5800, "vnc-http");
        m.put(5900, "vnc");
        m.put(5984, "couchdb");
        m.put(6379, "redis");
        m.put(7547, "tr069");
        m.put(8000, "http-alt");
        m.put(8008, "cast");
        m.put(8009, "cast-tls");
        m.put(8080, "http-proxy");
        m.put(8081, "http-alt");
        m.put(8443, "https-alt");
        m.put(8554, "rtsp-alt");
        m.put(8883, "mqtts");
        m.put(8888, "http-alt");
        m.put(9000, "http-alt");
        m.put(9090, "http-alt");
        m.put(9100, "jetdirect");
        m.put(9200, "elasticsearch");
        m.put(11211, "memcached");
        m.put(27017, "mongodb");
        m.put(32400, "plex");
        m.put(37777, "dahua-dvr");
        m.put(49152, "upnp-dyn");
        m.put(62078, "iphone-sync");
        SERVICES = Collections.unmodifiableMap(m);
    }

    public static Map<String, String> arpTable() {
        LinkedHashMap<String, String> out = new LinkedHashMap<>();
        try {
            out.putAll(Neighbours.dump());
        } catch (Throwable ignored) {
        }
        try {
            readProcArp(out);
        } catch (Throwable ignored) {
        }
        if (out.isEmpty()) {
            try {
                readNeighbours(out);
            } catch (Throwable ignored) {
            }
        }
        return out;
    }

    public static int ttl(String ip) {
        if (!IpRange.isIpv4(ip)) return -1;
        int value = pingTtl(new String[]{"/system/bin/ping", "-n", "-c", "1", "-W", "1", ip});
        if (value > 0) return value;
        return pingTtl(new String[]{"ping", "-n", "-c", "1", "-W", "1", ip});
    }

    public static int hopsFromTtl(int ttl) {
        if (ttl <= 0) return 0;
        for (int bucket : TTL_BUCKETS) {
            if (ttl <= bucket) return bucket - ttl;
        }
        return 0;
    }

    public static String serviceName(int port) {
        try {
            String name = SERVICES.get(port);
            return name == null ? "unknown" : name;
        } catch (Throwable t) {
            return "unknown";
        }
    }

    private static void readProcArp(Map<String, String> sink) {
        BufferedReader reader = null;
        FileInputStream stream = null;
        try {
            stream = new FileInputStream(ARP_PATH);
            reader = new BufferedReader(new InputStreamReader(stream, StandardCharsets.UTF_8));
            String line = reader.readLine();
            int guard = 0;
            while ((line = reader.readLine()) != null && guard++ < ARP_MAX_LINES) {
                String[] cols = line.trim().split("\\s+");
                if (cols.length < 4) continue;
                if (!IpRange.isIpv4(cols[0])) continue;
                if ("0x0".equalsIgnoreCase(cols[2])) continue;
                String mac = Node.normalizeMac(cols[3]);
                if (mac == null) continue;
                sink.put(cols[0], mac);
            }
        } catch (Throwable ignored) {
        } finally {
            closeQuietly(reader);
            closeQuietly(stream);
        }
    }

    private static void readNeighbours(Map<String, String> sink) {
        Process process = null;
        BufferedReader reader = null;
        try {
            process = Runtime.getRuntime().exec(new String[]{"ip", "neigh", "show"});
            reader = new BufferedReader(
                    new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8));
            String line;
            int guard = 0;
            while (guard++ < ARP_MAX_LINES && (line = reader.readLine()) != null) {
                String[] cols = line.trim().split("\\s+");
                if (cols.length < 5) continue;
                if (!IpRange.isIpv4(cols[0])) continue;
                String mac = null;
                String state = "";
                for (int i = 1; i < cols.length; i++) {
                    if ("lladdr".equalsIgnoreCase(cols[i]) && i + 1 < cols.length) {
                        mac = Node.normalizeMac(cols[i + 1]);
                    }
                }
                String last = cols[cols.length - 1].toUpperCase(Locale.ROOT);
                if (last.length() > 0 && last.indexOf(':') < 0) state = last;
                if (mac == null) continue;
                if ("FAILED".equals(state) || "INCOMPLETE".equals(state)) continue;
                sink.put(cols[0], mac);
            }
        } catch (Throwable ignored) {
        } finally {
            closeQuietly(reader);
            destroyQuietly(process);
        }
    }

    private static int pingTtl(String[] command) {
        Process process = null;
        BufferedReader reader = null;
        try {
            process = Runtime.getRuntime().exec(command);
            reader = new BufferedReader(
                    new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8));
            long deadline = System.currentTimeMillis() + PING_BUDGET_MS;
            String line;
            int guard = 0;
            while (guard++ < PING_MAX_LINES && (line = reader.readLine()) != null) {
                int parsed = parseTtl(line);
                if (parsed > 0) return parsed;
                if (System.currentTimeMillis() > deadline) break;
                if (Thread.currentThread().isInterrupted()) break;
            }
        } catch (Throwable ignored) {
        } finally {
            closeQuietly(reader);
            destroyQuietly(process);
        }
        return -1;
    }

    private static int parseTtl(String line) {
        if (line == null) return -1;
        int at = line.indexOf("ttl=");
        if (at < 0) at = line.indexOf("TTL=");
        if (at < 0) return -1;
        int pos = at + 4;
        int value = 0;
        int digits = 0;
        while (pos < line.length() && digits < 5) {
            char c = line.charAt(pos);
            if (c < '0' || c > '9') break;
            value = value * 10 + (c - '0');
            digits++;
            pos++;
        }
        if (digits == 0) return -1;
        if (value <= 0 || value > 255) return -1;
        return value;
    }

    private static void closeQuietly(Closeable target) {
        if (target == null) return;
        try {
            target.close();
        } catch (Throwable ignored) {
        }
    }

    private static void destroyQuietly(Process process) {
        if (process == null) return;
        try {
            closeQuietly(process.getOutputStream());
        } catch (Throwable ignored) {
        }
        try {
            closeQuietly(process.getErrorStream());
        } catch (Throwable ignored) {
        }
        try {
            process.destroy();
        } catch (Throwable ignored) {
        }
    }
}
