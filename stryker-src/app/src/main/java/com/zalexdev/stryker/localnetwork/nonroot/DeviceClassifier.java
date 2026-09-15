package com.zalexdev.stryker.localnetwork.nonroot;

import com.zalexdev.stryker.R;
import com.zalexdev.stryker.utils.Core;

import java.util.Locale;

public final class DeviceClassifier {

    private DeviceClassifier() {
    }

    public static final String TYPE_ROUTER = "Router";
    public static final String TYPE_ACCESS_POINT = "Access point";
    public static final String TYPE_SWITCH = "Switch";
    public static final String TYPE_PRINTER = "Printer";
    public static final String TYPE_CAMERA = "IP camera";
    public static final String TYPE_NAS = "NAS";
    public static final String TYPE_TV = "Smart TV";
    public static final String TYPE_MEDIA = "Media player";
    public static final String TYPE_SPEAKER = "Speaker";
    public static final String TYPE_PHONE = "Phone";
    public static final String TYPE_TABLET = "Tablet";
    public static final String TYPE_COMPUTER = "Computer";
    public static final String TYPE_SERVER = "Server";
    public static final String TYPE_CONSOLE = "Game console";
    public static final String TYPE_IOT = "Smart device";
    public static final String TYPE_WEARABLE = "Wearable";
    public static final String TYPE_SELF = "This device";

    private static final double RANK_SELF = 1.0;
    private static final double RANK_SNMP = 0.5;
    private static final double RANK_UPNP = 0.4;
    private static final double RANK_CAST = 0.35;
    private static final double RANK_BONJOUR = 0.3;
    private static final double RANK_GATEWAY = 0.25;
    private static final double RANK_NETBIOS = 0.2;
    private static final double RANK_PORTS = 0.18;
    private static final double RANK_VENDOR = 0.15;
    private static final double RANK_TTL = 0.1;

    public static void classify(Core core, NetworkContext net, Node node) {
        if (node == null) return;
        try {
            resolveVendor(core, node);
            resolveName(node);
            Verdict v = new Verdict();
            fromTtl(node, v);
            fromVendor(node, v);
            fromPorts(node, v);
            fromNetbios(node, v);
            fromGateway(node, v);
            fromBonjour(node, v);
            fromCast(node, v);
            fromUpnp(node, v);
            fromSnmp(node, v);
            if (node.self) {
                v.type(TYPE_SELF, RANK_SELF);
                v.os("Android", RANK_SELF);
                v.model(android.os.Build.MANUFACTURER + " " + android.os.Build.MODEL, RANK_SELF);
            }
            String priorOs = node.os == null ? "" : node.os;
            node.type = v.type;
            node.os = v.os.isEmpty() ? priorOs : v.os;
            if (!v.model.isEmpty()) node.model = v.model;
            node.rank = Math.max(v.rankType, v.rankOs);
        } catch (Exception ignored) {
        }
    }

    public static int icon(Node node) {
        if (node == null) return R.drawable.devices;
        String type = node.type == null ? "" : node.type;
        String os = node.os == null ? "" : node.os.toLowerCase(Locale.ROOT);
        if (TYPE_ROUTER.equals(type) || TYPE_ACCESS_POINT.equals(type) || TYPE_SWITCH.equals(type)) {
            return R.drawable.router;
        }
        if (TYPE_PRINTER.equals(type)) return R.drawable.printer;
        if (TYPE_CAMERA.equals(type)) return R.drawable.nest_cam_indoor;
        if (TYPE_NAS.equals(type) || TYPE_SERVER.equals(type)) return R.drawable.storage;
        if (TYPE_IOT.equals(type)) return R.drawable.ic_cpu;
        if (TYPE_TV.equals(type) || TYPE_MEDIA.equals(type) || TYPE_SPEAKER.equals(type)
                || TYPE_CONSOLE.equals(type)) {
            return R.drawable.devices;
        }
        if (os.contains("windows")) return R.drawable.windows;
        if (os.contains("ios") || os.contains("mac") || os.contains("apple") || os.contains("tvos")
                || os.contains("ipados") || os.contains("watchos")) {
            return R.drawable.apple;
        }
        if (os.contains("android")) return R.drawable.iphone;
        if (TYPE_PHONE.equals(type) || TYPE_TABLET.equals(type) || TYPE_SELF.equals(type)) {
            return R.drawable.iphone;
        }
        if (os.contains("linux") || os.contains("unix") || os.contains("openwrt")) return R.drawable.linux;
        return R.drawable.devices;
    }

    public static String summary(Node node) {
        if (node == null) return "Unknown";
        String type = node.type == null ? "" : node.type;
        String os = node.os == null ? "" : node.os;
        if (isAppliance(type)) return type;
        if (hasOwnIcon(type) && overridesIcon(os)) return type;
        if (!type.isEmpty() && !os.isEmpty() && !type.equalsIgnoreCase(os)) return type + " · " + os;
        if (!type.isEmpty()) return type;
        if (!os.isEmpty()) return os;
        return "Unknown";
    }

    private static boolean isAppliance(String type) {
        return TYPE_ROUTER.equals(type) || TYPE_ACCESS_POINT.equals(type) || TYPE_SWITCH.equals(type)
                || TYPE_PRINTER.equals(type) || TYPE_CAMERA.equals(type) || TYPE_NAS.equals(type)
                || TYPE_IOT.equals(type);
    }

    private static boolean hasOwnIcon(String type) {
        return isAppliance(type) || TYPE_SERVER.equals(type) || TYPE_TV.equals(type)
                || TYPE_MEDIA.equals(type) || TYPE_SPEAKER.equals(type) || TYPE_CONSOLE.equals(type);
    }

    private static boolean overridesIcon(String os) {
        return os.contains("Windows") || os.contains("Linux") || os.contains("Android")
                || os.contains("IOS") || os.contains("MacOS") || os.contains("Apple");
    }

    private static void resolveVendor(Core core, Node node) {
        if (node.vendor == null) node.vendor = "";
        if (node.vendor.isEmpty() && node.hasMac() && core != null) {
            try {
                String v = core.getVendorByMacFromDB(node.mac);
                if (v != null) node.vendor = v.trim();
            } catch (Exception ignored) {
            }
        }
        if (node.vendor.isEmpty() && node.upnp != null && node.upnp.manufacturer != null) {
            node.vendor = node.upnp.manufacturer.trim();
        }
        if (node.vendor.isEmpty() && node.cast != null) node.vendor = "Google";
    }

    private static void resolveName(Node node) {
        if (node.name == null) node.name = "";
        if (!node.name.isEmpty()) return;
        String candidate = node.displayName();
        if (candidate == null) candidate = "";
        node.name = candidate.trim();
    }

    private static void fromTtl(Node node, Verdict v) {
        if (node.ttl <= 0) return;
        int t = node.ttl;
        if (t <= 32) {
            v.os("Embedded", RANK_TTL);
        } else if (t <= 64) {
            v.os("Linux/Unix", RANK_TTL);
        } else if (t <= 128) {
            v.os("Windows", RANK_TTL);
        } else {
            v.os("Network device", RANK_TTL);
        }
    }

    private static void fromVendor(Node node, Verdict v) {
        String ven = lower(node.vendor);
        if (ven.isEmpty()) return;
        if (contains(ven, "apple")) {
            v.os("iOS/macOS", RANK_VENDOR);
            v.type(TYPE_PHONE, RANK_VENDOR);
        } else if (contains(ven, "samsung", "xiaomi", "huawei", "oneplus", "oppo", "vivo mobile",
                "realme", "motorola", "honor", "meizu", "lenovo mobile", "tcl communication",
                "transsion")) {
            v.os("Android", RANK_VENDOR);
            v.type(TYPE_PHONE, RANK_VENDOR);
        } else if (contains(ven, "google")) {
            v.os("Android", RANK_VENDOR);
        } else if (contains(ven, "tp-link", "d-link", "netgear", "keenetic", "mikrotik", "zyxel",
                "tenda", "asustek", "linksys", "ubiquiti", "mercusys", "totolink", "sagemcom",
                "technicolor", "arris", "avm ", "fritz", "eltex", "rostelecom")) {
            v.type(TYPE_ROUTER, RANK_VENDOR);
            v.os("Linux/Unix", RANK_TTL);
        } else if (contains(ven, "hikvision", "dahua", "axis communications", "reolink", "amcrest",
                "uniview", "ezviz", "foscam", "vivotek")) {
            v.type(TYPE_CAMERA, RANK_VENDOR);
        } else if (contains(ven, "hewlett", "brother", "canon", "seiko epson", "epson", "kyocera",
                "lexmark", "ricoh", "xerox", "pantum", "oki data", "zebra techn")) {
            v.type(TYPE_PRINTER, RANK_VENDOR);
        } else if (contains(ven, "synology", "qnap", "western digital", "buffalo",
                "terramaster", "asustor")) {
            v.type(TYPE_NAS, RANK_VENDOR);
        } else if (contains(ven, "sonos", "bose", "denon", "yamaha", "harman", "marshall", "jbl",
                "sonance")) {
            v.type(TYPE_SPEAKER, RANK_VENDOR);
        } else if (contains(ven, "espressif", "tuya", "shelly", "sonoff", "itead", "broadlink",
                "nest labs", "ecobee", "irobot", "roborock", "tasmota", "signify", "philips lighting",
                "lifi labs", "aqara", "lumi united", "sengled", "wyze")) {
            v.type(TYPE_IOT, RANK_VENDOR);
        } else if (contains(ven, "raspberry")) {
            v.type(TYPE_COMPUTER, RANK_VENDOR);
            v.os("Linux", RANK_VENDOR);
        } else if (contains(ven, "intel corporate", "dell", "micro-star", "gigabyte", "asrock",
                "microsoft", "framework", "clevo", "tuxedo")) {
            v.type(TYPE_COMPUTER, RANK_VENDOR);
        } else if (contains(ven, "nintendo", "sony interactive")) {
            v.type(TYPE_CONSOLE, RANK_VENDOR);
        } else if (contains(ven, "roku", "amazon technologies", "amazon.com", "nvidia")) {
            v.type(TYPE_MEDIA, RANK_VENDOR);
        } else if (contains(ven, "lg electronics", "sony corporation", "vizio", "hisense", "vestel",
                "panasonic", "sharp", "philips consumer", "skyworth", "tcl ")) {
            v.type(TYPE_TV, RANK_VENDOR);
        }
    }

    private static void fromPorts(Node node, Verdict v) {
        if (node.hasPort(62078)) {
            v.type(TYPE_PHONE, RANK_PORTS);
            v.os("iOS", RANK_PORTS);
        }
        if (node.hasPort(5555)) {
            v.os("Android", RANK_PORTS);
        }
        if (node.hasPort(3389) || (node.hasPort(445) && node.hasPort(139))) {
            v.os("Windows", RANK_PORTS);
            v.type(TYPE_COMPUTER, RANK_PORTS - 0.01);
        }
        if (node.hasPort(9100) || node.hasPort(515) || node.hasPort(631)) {
            v.type(TYPE_PRINTER, RANK_PORTS);
        }
        if (node.hasPort(554) || node.hasPort(8554) || node.hasPort(37777) || node.hasPort(34571)) {
            v.type(TYPE_CAMERA, RANK_PORTS);
        }
        if (node.hasPort(8009) || node.hasPort(8008)) {
            v.type(TYPE_MEDIA, RANK_PORTS);
        }
        if (node.hasPort(32400)) {
            v.type(TYPE_SERVER, RANK_PORTS);
        }
        if (node.hasPort(7547) || node.hasPort(1723)) {
            v.type(TYPE_ROUTER, RANK_PORTS);
        }
        if (node.hasPort(548) || node.hasPort(2049)) {
            v.type(TYPE_NAS, RANK_PORTS - 0.02);
        }
        if (node.hasPort(1883) || node.hasPort(8883)) {
            v.type(TYPE_IOT, RANK_PORTS - 0.02);
        }
        if (node.hasPort(22) && !node.hasPort(445)) {
            v.os("Linux/Unix", RANK_PORTS - 0.03);
        }
        if (node.hasPort(3306) || node.hasPort(5432) || node.hasPort(27017) || node.hasPort(6379)) {
            v.type(TYPE_SERVER, RANK_PORTS - 0.01);
        }
    }

    private static void fromNetbios(Node node, Verdict v) {
        Node.Netbios nb = node.netbios;
        if (nb == null) return;
        v.os("Windows", RANK_NETBIOS);
        v.type(TYPE_COMPUTER, RANK_NETBIOS);
        if (nb.domainController) {
            v.type(TYPE_SERVER, RANK_NETBIOS + 0.02);
            v.os("Windows Server", RANK_NETBIOS + 0.02);
        }
    }

    private static void fromGateway(Node node, Verdict v) {
        if (!node.gateway) return;
        v.type(TYPE_ROUTER, RANK_GATEWAY);
    }

    private static void fromBonjour(Node node, Verdict v) {
        Node.Bonjour b = node.bonjour;
        if (b == null) return;
        String model = b.model == null ? "" : b.model;
        if (!model.isEmpty()) v.model(model, RANK_BONJOUR);
        applyAppleModel(model, v);

        if (b.hasService("_googlecast")) {
            v.type(TYPE_MEDIA, RANK_BONJOUR);
            v.os("Google Cast", RANK_BONJOUR);
        }
        if (b.hasService("_androidtvremote")) {
            v.type(TYPE_TV, RANK_BONJOUR + 0.01);
            v.os("Android TV", RANK_BONJOUR + 0.01);
        }
        if (b.hasService("_airplay") || b.hasService("_raop") || b.hasService("_companion-link")
                || b.hasService("_rdlink") || b.hasService("_touch-able") || b.hasService("_sleep-proxy")) {
            v.os("iOS/macOS", RANK_BONJOUR);
            if (b.hasService("_raop") && !b.hasService("_airplay")) v.type(TYPE_SPEAKER, RANK_BONJOUR);
        }
        if (b.hasService("_ipp") || b.hasService("_printer") || b.hasService("_pdl-datastream")
                || b.hasService("_scanner") || b.hasService("_uscan") || b.hasService("_ipps")) {
            v.type(TYPE_PRINTER, RANK_BONJOUR + 0.02);
        }
        if (b.hasService("_afpovertcp") || b.hasService("_adisk") || b.hasService("_nfs")
                || b.hasService("_smb")) {
            v.type(TYPE_NAS, RANK_BONJOUR);
        }
        if (b.hasService("_workstation")) {
            v.type(TYPE_COMPUTER, RANK_BONJOUR);
            v.os("Linux/Unix", RANK_BONJOUR - 0.05);
        }
        if (b.hasService("_ssh") || b.hasService("_sftp-ssh")) {
            v.type(TYPE_COMPUTER, RANK_BONJOUR - 0.02);
        }
        if (b.hasService("_hap") || b.hasService("_homekit") || b.hasService("_miio")
                || b.hasService("_esphomelib") || b.hasService("_shelly") || b.hasService("_tuya")
                || b.hasService("_ewelink") || b.hasService("_hue") || b.hasService("_matter")
                || b.hasService("_matterc")) {
            v.type(TYPE_IOT, RANK_BONJOUR);
        }
        if (b.hasService("_spotify-connect") || b.hasService("_sonos")) {
            v.type(TYPE_SPEAKER, RANK_BONJOUR);
        }
        if (b.hasService("_amzn-wplay") || b.hasService("_amzn") || b.hasService("_nvstream")
                || b.hasService("_rsp") || b.hasService("_roku") || b.hasService("_viziocast")
                || b.hasService("_plexmediasvr")) {
            v.type(TYPE_MEDIA, RANK_BONJOUR);
        }
        if (b.hasService("_octoprint")) {
            v.type(TYPE_PRINTER, RANK_BONJOUR);
        }
        if (b.hasService("_dosvc") || b.hasService("_ms-device-info")) {
            v.os("Windows", RANK_BONJOUR - 0.05);
        }
        if (b.hasService("_psbsvc") || b.hasService("_ps4") || b.hasService("_xbox")) {
            v.type(TYPE_CONSOLE, RANK_BONJOUR);
        }
    }

    private static void applyAppleModel(String model, Verdict v) {
        String m = lower(model);
        if (m.isEmpty()) return;
        if (m.startsWith("iphone")) {
            v.type(TYPE_PHONE, RANK_BONJOUR + 0.02);
            v.os("iOS", RANK_BONJOUR + 0.02);
        } else if (m.startsWith("ipad")) {
            v.type(TYPE_TABLET, RANK_BONJOUR + 0.02);
            v.os("iPadOS", RANK_BONJOUR + 0.02);
        } else if (m.startsWith("macbook") || m.startsWith("imac") || m.startsWith("macmini")
                || m.startsWith("macpro") || m.startsWith("mac")) {
            v.type(TYPE_COMPUTER, RANK_BONJOUR + 0.02);
            v.os("macOS", RANK_BONJOUR + 0.02);
        } else if (m.startsWith("appletv")) {
            v.type(TYPE_MEDIA, RANK_BONJOUR + 0.02);
            v.os("tvOS", RANK_BONJOUR + 0.02);
        } else if (m.startsWith("audioaccessory")) {
            v.type(TYPE_SPEAKER, RANK_BONJOUR + 0.02);
            v.os("HomePod", RANK_BONJOUR + 0.02);
        } else if (m.startsWith("watch")) {
            v.type(TYPE_WEARABLE, RANK_BONJOUR + 0.02);
            v.os("watchOS", RANK_BONJOUR + 0.02);
        }
    }

    private static void fromCast(Node node, Verdict v) {
        Node.Cast c = node.cast;
        if (c == null) return;
        String raw = c.model == null ? "" : c.model;
        String model = lower(raw);
        v.type(TYPE_MEDIA, RANK_CAST);
        if (!raw.isEmpty()) v.model(raw, RANK_CAST);
        if (contains(model, "chromecast", "google home", "nest", "google tv")) {
            v.os("Google Cast", RANK_CAST);
        }
        if (contains(model, "google home", "nest mini", "nest audio", "home mini", "home max")) {
            v.type(TYPE_SPEAKER, RANK_CAST + 0.01);
        }
        if (contains(model, "android tv", "google tv", "shield", "bravia", "philips tv")) {
            v.type(TYPE_TV, RANK_CAST + 0.02);
            v.os("Android TV", RANK_CAST + 0.02);
        }
        if (contains(model, "google wifi", "nest wifi")) {
            v.type(TYPE_ROUTER, RANK_CAST + 0.03);
        }
    }

    private static void fromUpnp(Node node, Verdict v) {
        Node.Upnp u = node.upnp;
        if (u == null) return;
        String deviceType = lower(u.deviceType);
        String manufacturer = lower(u.manufacturer);
        String modelName = u.modelName == null ? "" : u.modelName;
        String modelLower = lower(modelName);
        String server = lower(u.server);
        String friendly = lower(u.friendlyName);

        if (!modelName.isEmpty()) v.model(modelName, RANK_UPNP);

        if (contains(deviceType, "internetgatewaydevice", "wandevice", "wanconnectiondevice")) {
            v.type(TYPE_ROUTER, RANK_UPNP);
        }
        if (!node.gateway && contains(deviceType, "mediarenderer")) {
            v.type(TYPE_TV, RANK_UPNP - 0.02);
        }
        if (!node.gateway && contains(deviceType, "mediaserver")) {
            v.type(TYPE_SERVER, RANK_UPNP - 0.02);
        }
        if (contains(deviceType, "printer")) {
            v.type(TYPE_PRINTER, RANK_UPNP);
        }
        if (contains(deviceType, "zoneplayer") || contains(manufacturer, "sonos")) {
            v.type(TYPE_SPEAKER, RANK_UPNP);
        }
        if (contains(deviceType, "digitalsecuritycamera") || contains(modelLower, "ipcamera", "ip camera")) {
            v.type(TYPE_CAMERA, RANK_UPNP);
        }
        if (contains(manufacturer, "samsung", "lg elec", "sony", "philips", "vizio", "hisense",
                "panasonic", "sharp", "tcl") && contains(deviceType, "mediarenderer", "basic")) {
            v.type(TYPE_TV, RANK_UPNP);
        }
        if (contains(friendly, "xbox") || contains(modelLower, "xbox")) {
            v.type(TYPE_CONSOLE, RANK_UPNP);
            v.os("Xbox", RANK_UPNP);
        }
        if (contains(friendly, "playstation") || contains(modelLower, "playstation")) {
            v.type(TYPE_CONSOLE, RANK_UPNP);
            v.os("PlayStation", RANK_UPNP);
        }
        if (contains(modelLower, "plex", "kodi", "jellyfin", "emby")) {
            v.type(TYPE_SERVER, RANK_UPNP);
        }
        if (contains(server, "windows")) {
            v.os("Windows", RANK_UPNP - 0.05);
        } else if (contains(server, "linux")) {
            v.os("Linux", RANK_UPNP - 0.05);
        } else if (contains(server, "darwin", "mac os")) {
            v.os("macOS", RANK_UPNP - 0.05);
        }
        if (contains(manufacturer, "synology", "qnap", "western digital", "asustor")) {
            v.type(TYPE_NAS, RANK_UPNP);
        }
    }

    private static void fromSnmp(Node node, Verdict v) {
        Node.Snmp s = node.snmp;
        if (s == null) return;
        String d = lower(s.sysDescr);
        if (d.isEmpty()) return;
        v.model(s.sysDescr.length() > 80 ? s.sysDescr.substring(0, 80) : s.sysDescr, RANK_SNMP);
        if (contains(d, "jetdirect", "laserjet", "officejet", "deskjet", "brother", "canon",
                "epson", "lexmark", "kyocera", "ricoh", "xerox", "printer")) {
            v.type(TYPE_PRINTER, RANK_SNMP);
        }
        if (contains(d, "cisco ios", "mikrotik", "routeros", "openwrt", "dd-wrt", "pfsense",
                "edgeos", "vyos", "junos", "fortigate", "keenetic", "tp-link router")) {
            v.type(TYPE_ROUTER, RANK_SNMP);
        }
        if (contains(d, "ubiquiti", "unifi", "aruba", "ruckus", "access point")) {
            v.type(TYPE_ACCESS_POINT, RANK_SNMP);
        }
        if (contains(d, "switch", "catalyst", "procurve", "netgear gs", "dgs-")) {
            v.type(TYPE_SWITCH, RANK_SNMP);
        }
        if (contains(d, "synology", "qnap", "diskstation", "truenas", "freenas")) {
            v.type(TYPE_NAS, RANK_SNMP);
        }
        if (contains(d, "apc ", "ups ", "smart-ups", "eaton")) {
            v.type(TYPE_IOT, RANK_SNMP);
        }
        if (contains(d, "windows")) {
            v.os("Windows", RANK_SNMP);
        } else if (contains(d, "linux")) {
            v.os("Linux", RANK_SNMP);
        } else if (contains(d, "freebsd", "openbsd", "netbsd", "sunos", "solaris", "hp-ux", "aix")) {
            v.os("Unix", RANK_SNMP);
        } else if (contains(d, "darwin")) {
            v.os("macOS", RANK_SNMP);
        } else if (contains(d, "ios ", "ios-xe", "routeros", "junos", "vxworks", "openwrt")) {
            v.os("Network OS", RANK_SNMP - 0.05);
        }
    }

    private static String lower(String value) {
        return value == null ? "" : value.toLowerCase(Locale.ROOT);
    }

    private static boolean contains(String haystack, String... needles) {
        if (haystack == null || haystack.isEmpty()) return false;
        for (String n : needles) {
            if (n != null && !n.isEmpty() && haystack.contains(n)) return true;
        }
        return false;
    }

    private static final class Verdict {
        String type = "";
        String os = "";
        String model = "";
        double rankType;
        double rankOs;
        double rankModel;

        void type(String value, double rank) {
            if (value == null || value.isEmpty()) return;
            if (type.isEmpty() || rank > rankType) {
                type = value;
                rankType = rank;
            }
        }

        void os(String value, double rank) {
            if (value == null || value.isEmpty()) return;
            if (os.isEmpty() || rank > rankOs) {
                os = value;
                rankOs = rank;
            }
        }

        void model(String value, double rank) {
            if (value == null || value.isEmpty()) return;
            if (model.isEmpty() || rank > rankModel) {
                model = value;
                rankModel = rank;
            }
        }
    }
}
