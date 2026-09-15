package com.zalexdev.stryker.localnetwork.nonroot;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public final class Node {

    public static final String SRC_ICMP = "icmp";
    public static final String SRC_TCP = "tcp";
    public static final String SRC_ARP = "arp";
    public static final String SRC_NETBIOS = "netbios";
    public static final String SRC_MDNS = "mdns";
    public static final String SRC_SSDP = "ssdp";
    public static final String SRC_SNMP = "snmp";
    public static final String SRC_CAST = "cast";
    public static final String SRC_RDNS = "rdns";
    public static final String SRC_SELF = "self";
    public static final String SRC_GATEWAY = "gateway";
    public static final String SRC_BSSID = "bssid";
    public static final String SRC_GUEST = "guest";

    public final String ip;
    public volatile boolean up;
    public volatile boolean self;
    public volatile boolean gateway;
    public volatile String mac = "";
    public volatile String macSource = "";
    public volatile String vendor = "";
    public volatile String hostname = "";
    public volatile String name = "";
    public volatile String model = "";
    public volatile String os = "";
    public volatile String type = "";
    public volatile double rank;
    public volatile int ttl = -1;
    public volatile int hops = -1;

    public volatile Netbios netbios;
    public volatile Bonjour bonjour;
    public volatile Upnp upnp;
    public volatile Snmp snmp;
    public volatile Cast cast;

    public final Set<String> sources = Collections.synchronizedSet(new LinkedHashSet<String>());
    public final List<OpenPort> ports = Collections.synchronizedList(new ArrayList<OpenPort>());

    public Node(String ip) {
        this.ip = ip;
    }

    public void addSource(String source) {
        if (source != null) sources.add(source);
    }

    public boolean hasMac() {
        return mac != null && mac.length() == 17;
    }

    public void applyMac(String candidate, String source) {
        String normalized = normalizeMac(candidate);
        if (normalized == null) return;
        if (hasMac() && !"".equals(macSource)) return;
        mac = normalized;
        macSource = source == null ? "" : source;
    }

    public void addPort(int number, String service, String banner) {
        synchronized (ports) {
            for (OpenPort p : ports) {
                if (p.number == number) {
                    if (banner != null && !banner.isEmpty() && p.banner.isEmpty()) p.banner = banner;
                    if (service != null && !service.isEmpty() && "unknown".equals(p.service)) p.service = service;
                    return;
                }
            }
            ports.add(new OpenPort(number, service == null || service.isEmpty() ? "unknown" : service,
                    banner == null ? "" : banner));
        }
    }

    public boolean hasPort(int number) {
        synchronized (ports) {
            for (OpenPort p : ports) if (p.number == number) return true;
        }
        return false;
    }

    public String displayName() {
        if (name != null && !name.isEmpty()) return name;
        if (hostname != null && !hostname.isEmpty()) return hostname;
        if (netbios != null && netbios.name != null && !netbios.name.isEmpty()) return netbios.name;
        if (upnp != null && upnp.friendlyName != null && !upnp.friendlyName.isEmpty()) return upnp.friendlyName;
        if (snmp != null && snmp.sysName != null && !snmp.sysName.isEmpty()) return snmp.sysName;
        if (cast != null && cast.name != null && !cast.name.isEmpty()) return cast.name;
        return "";
    }

    public static String normalizeMac(String raw) {
        if (raw == null) return null;
        String cleaned = raw.trim().replace('-', ':').toUpperCase(Locale.ROOT);
        if (cleaned.length() == 12 && cleaned.indexOf(':') < 0) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 12; i += 2) {
                if (sb.length() > 0) sb.append(':');
                sb.append(cleaned, i, i + 2);
            }
            cleaned = sb.toString();
        }
        if (cleaned.length() != 17) return null;
        for (int i = 0; i < cleaned.length(); i++) {
            char c = cleaned.charAt(i);
            boolean sep = (i % 3) == 2;
            if (sep && c != ':') return null;
            if (!sep && !((c >= '0' && c <= '9') || (c >= 'A' && c <= 'F'))) return null;
        }
        if ("00:00:00:00:00:00".equals(cleaned) || "FF:FF:FF:FF:FF:FF".equals(cleaned)) return null;
        return cleaned;
    }

    public static final class OpenPort {
        public final int number;
        public volatile String service;
        public volatile String banner;

        public OpenPort(int number, String service, String banner) {
            this.number = number;
            this.service = service;
            this.banner = banner;
        }
    }

    public static final class Netbios {
        public String name = "";
        public String workgroup = "";
        public String user = "";
        public String mac = "";
        public boolean fileServer;
        public boolean domainController;
        public final List<String> names = new ArrayList<>();
    }

    public static final class Bonjour {
        public String name = "";
        public String model = "";
        public final Set<String> services = Collections.synchronizedSet(new LinkedHashSet<String>());
        public final Map<String, Map<String, String>> txt =
                Collections.synchronizedMap(new LinkedHashMap<String, Map<String, String>>());

        public boolean hasService(String needle) {
            if (needle == null || needle.isEmpty()) return false;
            String target = needle.toLowerCase(Locale.ROOT);
            synchronized (services) {
                for (String s : services) {
                    if (s != null && s.toLowerCase(Locale.ROOT).contains(target)) return true;
                }
            }
            return false;
        }

        public String txtValue(String key) {
            synchronized (txt) {
                for (Map<String, String> entries : txt.values()) {
                    String v = entries.get(key);
                    if (v != null && !v.isEmpty()) return v;
                }
            }
            return "";
        }
    }

    public static final class Upnp {
        public String location = "";
        public String friendlyName = "";
        public String deviceType = "";
        public String manufacturer = "";
        public String modelName = "";
        public String modelNumber = "";
        public String modelDescription = "";
        public String serialNumber = "";
        public String udn = "";
        public String server = "";
        public final List<String> serviceTypes = new ArrayList<>();
    }

    public static final class Snmp {
        public String sysDescr = "";
        public String sysObjectId = "";
        public String sysContact = "";
        public String sysName = "";
        public String sysLocation = "";
        public String sysServices = "";
    }

    public static final class Cast {
        public String name = "";
        public String model = "";
        public String mac = "";
        public String build = "";
        public String ssid = "";
    }
}
