package com.zalexdev.stryker.localnetwork.utils;

import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class MacLine {

    public static final Pattern MAC = Pattern.compile("((?:[0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2})");

    private MacLine() {
    }

    public static String macOf(String line) {
        if (line == null) return "";
        Matcher m = MAC.matcher(line);
        return m.find() ? m.group(1).toUpperCase(Locale.ROOT) : "";
    }

    public static String vendorOf(String line) {
        if (line == null) return "";
        String out = line;
        int colon = out.indexOf("MAC Address:");
        if (colon >= 0) out = out.substring(colon + "MAC Address:".length());
        out = MAC.matcher(out).replaceAll(" ");
        out = out.replace("(", " ").replace(")", " ");
        out = out.replaceAll("\\s+", " ").trim();
        if (out.equalsIgnoreCase("Unknown")) return "";
        return out;
    }

    public static String stripMac(String vendor) {
        if (vendor == null) return "";
        String out = MAC.matcher(vendor).replaceAll(" ");
        return out.replaceAll("\\s+", " ").trim();
    }
}
