package com.zalexdev.stryker.localnetwork.nonroot;

import java.util.ArrayList;
import java.util.Locale;

public final class IpRange {

    public final long network;
    public final long broadcast;
    public final int prefix;

    private IpRange(long network, long broadcast, int prefix) {
        this.network = network;
        this.broadcast = broadcast;
        this.prefix = prefix;
    }

    public static IpRange of(String ip, int prefix) {
        if (prefix < 0) prefix = 24;
        if (prefix > 32) prefix = 32;
        long addr = toLong(ip);
        long mask = prefix == 0 ? 0L : (0xFFFFFFFFL << (32 - prefix)) & 0xFFFFFFFFL;
        long net = addr & mask;
        long bc = net | (~mask & 0xFFFFFFFFL);
        return new IpRange(net, bc, prefix);
    }

    public static IpRange parse(String cidr) {
        if (cidr == null) return null;
        String value = cidr.trim();
        if (value.isEmpty()) return null;
        int slash = value.indexOf('/');
        if (slash < 0) return of(value, 24);
        String ip = value.substring(0, slash).trim();
        int prefix;
        try {
            prefix = Integer.parseInt(value.substring(slash + 1).trim());
        } catch (NumberFormatException e) {
            prefix = 24;
        }
        if (!isIpv4(ip)) return null;
        return of(ip, prefix);
    }

    public int size() {
        long total = broadcast - network + 1;
        if (total <= 2) return (int) Math.max(total, 0);
        long hosts = total - 2;
        if (hosts > ScanConfig.MAX_HOSTS) hosts = ScanConfig.MAX_HOSTS;
        return (int) hosts;
    }

    public String at(int index) {
        long total = broadcast - network + 1;
        long value = total <= 2 ? network + index : network + 1 + index;
        return toIp(value);
    }

    public boolean contains(String ip) {
        if (!isIpv4(ip)) return false;
        long v = toLong(ip);
        return v >= network && v <= broadcast;
    }

    public ArrayList<String> hosts() {
        int count = size();
        ArrayList<String> list = new ArrayList<>(count);
        for (int i = 0; i < count; i++) list.add(at(i));
        return list;
    }

    public String cidr() {
        return toIp(network) + "/" + prefix;
    }

    public static boolean isIpv4(String ip) {
        if (ip == null) return false;
        String[] parts = ip.split("\\.");
        if (parts.length != 4) return false;
        for (String p : parts) {
            if (p.isEmpty() || p.length() > 3) return false;
            for (int i = 0; i < p.length(); i++) {
                char c = p.charAt(i);
                if (c < '0' || c > '9') return false;
            }
            int v = Integer.parseInt(p);
            if (v < 0 || v > 255) return false;
        }
        return true;
    }

    public static long toLong(String ip) {
        long result = 0;
        String[] parts = ip.split("\\.");
        for (int i = 0; i < 4; i++) {
            long octet = i < parts.length ? Long.parseLong(parts[i].trim()) : 0;
            result = (result << 8) | (octet & 0xFF);
        }
        return result;
    }

    public static String toIp(long value) {
        return String.format(Locale.ENGLISH, "%d.%d.%d.%d",
                (value >> 24) & 0xFF, (value >> 16) & 0xFF, (value >> 8) & 0xFF, value & 0xFF);
    }

    public static int compare(String a, String b) {
        if (!isIpv4(a) || !isIpv4(b)) return String.valueOf(a).compareTo(String.valueOf(b));
        return Long.compare(toLong(a), toLong(b));
    }
}
