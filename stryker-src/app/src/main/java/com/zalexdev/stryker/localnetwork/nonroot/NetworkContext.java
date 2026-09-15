package com.zalexdev.stryker.localnetwork.nonroot;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;

public final class NetworkContext {

    public final String localIp;
    public final String localMac;
    public final String gateway;
    public final String dns1;
    public final String dns2;
    public final String ssid;
    public final String bssid;
    public final String ifaceName;
    public final int prefix;
    public final IpRange range;
    public final NetworkInterface iface;
    public final InetAddress localAddress;

    private NetworkContext(String localIp, String localMac, String gateway, String dns1, String dns2,
                           String ssid, String bssid, String ifaceName, int prefix, IpRange range,
                           NetworkInterface iface, InetAddress localAddress) {
        this.localIp = localIp;
        this.localMac = localMac;
        this.gateway = gateway;
        this.dns1 = dns1;
        this.dns2 = dns2;
        this.ssid = ssid;
        this.bssid = bssid;
        this.ifaceName = ifaceName;
        this.prefix = prefix;
        this.range = range;
        this.iface = iface;
        this.localAddress = localAddress;
    }

    public boolean inRange(String ip) {
        return range != null && range.contains(ip);
    }

    public boolean isLocal(String ip) {
        return localIp != null && localIp.equals(ip);
    }

    public boolean valid() {
        return range != null && localIp != null && !localIp.isEmpty();
    }

    public String describe() {
        return (ssid == null || ssid.isEmpty() ? "network" : ssid)
                + " " + (range == null ? "?" : range.cidr())
                + " ip=" + localIp + " gw=" + gateway + " dns=" + dns1;
    }

    public static NetworkContext capture(Context ctx, String overrideCidr) {
        String ip = "";
        String mac = "";
        String gw = "";
        String dnsA = "";
        String dnsB = "";
        String ssid = "";
        String bssid = "";
        int prefix = -1;

        WifiManager wifi = null;
        try {
            wifi = (WifiManager) ctx.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
        } catch (Exception ignored) {
        }

        if (wifi != null) {
            try {
                WifiInfo info = wifi.getConnectionInfo();
                if (info != null) {
                    int raw = info.getIpAddress();
                    if (raw != 0) ip = leToIp(raw);
                    String s = info.getSSID();
                    if (s != null) ssid = s.replace("\"", "");
                    if (info.getBSSID() != null) bssid = info.getBSSID().toUpperCase(Locale.ROOT);
                    String m = info.getMacAddress();
                    if (m != null && !m.startsWith("02:00:00")) {
                        String n = Node.normalizeMac(m);
                        if (n != null) mac = n;
                    }
                }
            } catch (Exception ignored) {
            }
            try {
                DhcpInfo dhcp = wifi.getDhcpInfo();
                if (dhcp != null) {
                    if (dhcp.gateway != 0) gw = leToIp(dhcp.gateway);
                    if (dhcp.dns1 != 0) dnsA = leToIp(dhcp.dns1);
                    if (dhcp.dns2 != 0) dnsB = leToIp(dhcp.dns2);
                    if (dhcp.netmask != 0) prefix = maskToPrefix(leToIp(dhcp.netmask));
                    if (ip.isEmpty() && dhcp.ipAddress != 0) ip = leToIp(dhcp.ipAddress);
                }
            } catch (Exception ignored) {
            }
        }

        try {
            ConnectivityManager cm = (ConnectivityManager) ctx.getApplicationContext()
                    .getSystemService(Context.CONNECTIVITY_SERVICE);
            if (cm != null && Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                Network active = cm.getActiveNetwork();
                LinkProperties props = active == null ? null : cm.getLinkProperties(active);
                if (props != null) {
                    List<InetAddress> servers = props.getDnsServers();
                    for (InetAddress a : servers) {
                        if (!(a instanceof Inet4Address)) continue;
                        if (dnsA.isEmpty()) dnsA = a.getHostAddress();
                        else if (dnsB.isEmpty() && !a.getHostAddress().equals(dnsA)) dnsB = a.getHostAddress();
                    }
                    for (LinkAddress la : props.getLinkAddresses()) {
                        if (!(la.getAddress() instanceof Inet4Address)) continue;
                        String candidate = la.getAddress().getHostAddress();
                        if (ip.isEmpty()) ip = candidate;
                        if (candidate.equals(ip) && la.getPrefixLength() > 0) prefix = la.getPrefixLength();
                    }
                }
            }
        } catch (Exception ignored) {
        }

        NetworkInterface found = null;
        InetAddress localAddress = null;
        try {
            Enumeration<NetworkInterface> all = NetworkInterface.getNetworkInterfaces();
            while (all != null && all.hasMoreElements()) {
                NetworkInterface ni = all.nextElement();
                if (!ni.isUp() || ni.isLoopback()) continue;
                for (InterfaceAddress ia : ni.getInterfaceAddresses()) {
                    InetAddress addr = ia.getAddress();
                    if (!(addr instanceof Inet4Address)) continue;
                    String candidate = addr.getHostAddress();
                    if (ip.isEmpty()) {
                        ip = candidate;
                        prefix = ia.getNetworkPrefixLength();
                        found = ni;
                        localAddress = addr;
                    } else if (candidate.equals(ip)) {
                        if (prefix <= 0) prefix = ia.getNetworkPrefixLength();
                        found = ni;
                        localAddress = addr;
                    }
                }
            }
        } catch (Exception ignored) {
        }

        if (mac.isEmpty() && found != null) {
            try {
                byte[] hw = found.getHardwareAddress();
                if (hw != null && hw.length == 6) {
                    StringBuilder sb = new StringBuilder();
                    for (byte b : hw) {
                        if (sb.length() > 0) sb.append(':');
                        sb.append(String.format(Locale.ENGLISH, "%02X", b));
                    }
                    mac = sb.toString();
                }
            } catch (Exception ignored) {
            }
        }

        if (localAddress == null && !ip.isEmpty()) {
            try {
                localAddress = InetAddress.getByName(ip);
            } catch (Exception ignored) {
            }
        }

        if (prefix <= 0 || prefix > 32) prefix = 24;

        IpRange range = null;
        if (overrideCidr != null && !overrideCidr.trim().isEmpty()) {
            range = IpRange.parse(overrideCidr);
        }
        if (range == null && !ip.isEmpty()) {
            range = IpRange.of(ip, prefix);
        }
        if (range == null && !gw.isEmpty()) {
            range = IpRange.of(gw, 24);
        }
        if (range != null && range.prefix < 22) {
            String anchor = !ip.isEmpty() ? ip : IpRange.toIp(range.network + 1);
            range = IpRange.of(anchor, 24);
        }

        if (gw.isEmpty() && range != null) gw = IpRange.toIp(range.network + 1);
        if (dnsA.isEmpty()) dnsA = gw;

        String name = found == null ? "" : found.getName();
        return new NetworkContext(ip, mac, gw, dnsA, dnsB, ssid, bssid, name,
                range == null ? 24 : range.prefix, range, found, localAddress);
    }

    public static List<InetAddress> ipv4Of(NetworkInterface ni) {
        if (ni == null) return Collections.emptyList();
        java.util.ArrayList<InetAddress> out = new java.util.ArrayList<>();
        Enumeration<InetAddress> addrs = ni.getInetAddresses();
        while (addrs.hasMoreElements()) {
            InetAddress a = addrs.nextElement();
            if (a instanceof Inet4Address) out.add(a);
        }
        return out;
    }

    private static String leToIp(int value) {
        return String.format(Locale.ENGLISH, "%d.%d.%d.%d",
                value & 0xFF, (value >> 8) & 0xFF, (value >> 16) & 0xFF, (value >> 24) & 0xFF);
    }

    private static int maskToPrefix(String mask) {
        try {
            long v = IpRange.toLong(mask);
            int bits = 0;
            for (int i = 31; i >= 0; i--) {
                if (((v >> i) & 1L) == 1L) bits++;
                else break;
            }
            return bits;
        } catch (Exception e) {
            return -1;
        }
    }
}
