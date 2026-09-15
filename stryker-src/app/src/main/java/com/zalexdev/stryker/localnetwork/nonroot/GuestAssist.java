package com.zalexdev.stryker.localnetwork.nonroot;

import com.zalexdev.stryker.engine.RootlessEngine;
import com.zalexdev.stryker.logger.Logger;
import com.zalexdev.stryker.utils.Core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class GuestAssist {

    private GuestAssist() {
    }

    private static final String TAG = "guest";
    private static final long PROBE_TTL_MS = 60000L;
    private static final int ENRICH_PORT_CAP = 40;

    private static volatile boolean cached;
    private static volatile long cachedAt;

    private static final Pattern PORT_LINE =
            Pattern.compile("^(\\d{1,5})/tcp\\s+open\\s+(\\S+)\\s*(.*)$");
    private static final Pattern MAC_VALUE =
            Pattern.compile("([0-9A-Fa-f]{2}(?:[:-][0-9A-Fa-f]{2}){5})");
    private static final Pattern OS_VALUE =
            Pattern.compile("\\bOSs?:\\s*([^;]+)");

    public static boolean available(Core core) {
        try {
            if (core == null) return false;
            long now = System.currentTimeMillis();
            if (cached && now - cachedAt >= 0 && now - cachedAt < PROBE_TTL_MS) return true;
            if (!core.isRootless()) {
                cached = false;
                return false;
            }
            RootlessEngine engine = core.rootless();
            if (engine == null || !engine.isReady()) {
                cached = false;
                return false;
            }
            if (!core.guestHasBinary("nmap")) {
                cached = false;
                return false;
            }
            cachedAt = now;
            cached = true;
            return true;
        } catch (Throwable t) {
            cached = false;
            return false;
        }
    }

    public static void enrich(Core core, Node node) {
        try {
            if (node == null) return;
            if (!IpRange.isIpv4(node.ip)) return;
            if (!available(core)) return;

            List<Node.OpenPort> snapshot = new ArrayList<>();
            synchronized (node.ports) {
                snapshot.addAll(node.ports);
            }
            if (snapshot.isEmpty()) return;

            StringBuilder csv = new StringBuilder();
            int used = 0;
            for (int i = 0; i < snapshot.size() && used < ENRICH_PORT_CAP; i++) {
                Node.OpenPort port = snapshot.get(i);
                if (port == null || port.number <= 0 || port.number > 65535) continue;
                if (csv.length() > 0) csv.append(',');
                csv.append(port.number);
                used++;
            }
            if (used == 0) return;

            List<String> out = run(core, "nmap -Pn -sT -n -sV --version-light --max-retries 1"
                    + " --host-timeout 40s -p " + csv + " " + node.ip);
            if (out.isEmpty()) return;

            boolean parsed = false;
            for (int i = 0; i < out.size(); i++) {
                String raw = out.get(i);
                if (raw == null) continue;
                String line = raw.trim();
                if (line.isEmpty()) continue;

                Matcher portMatcher = PORT_LINE.matcher(line);
                if (portMatcher.matches()) {
                    if (applyPort(node, portMatcher.group(1), portMatcher.group(2), portMatcher.group(3))) {
                        parsed = true;
                    }
                    continue;
                }

                if (line.startsWith("Service Info:")) {
                    Matcher osMatcher = OS_VALUE.matcher(line);
                    if (osMatcher.find()) {
                        String value = osMatcher.group(1);
                        value = value == null ? "" : value.trim();
                        if (!value.isEmpty() && (node.os == null || node.os.isEmpty())) {
                            node.os = value;
                            parsed = true;
                        }
                    }
                    continue;
                }

                if (line.contains("MAC Address:")) {
                    Matcher macMatcher = MAC_VALUE.matcher(line);
                    if (macMatcher.find()) {
                        node.applyMac(macMatcher.group(1), Node.SRC_GUEST);
                        parsed = true;
                    }
                }
            }

            if (parsed) node.addSource(Node.SRC_GUEST);
        } catch (Throwable t) {
            warn(core, "enrich failed: " + t);
        }
    }

    public static List<String> deepScan(Core core, String ip) {
        List<String> found = new ArrayList<>();
        try {
            if (!IpRange.isIpv4(ip)) return found;
            if (!available(core)) return found;

            StringBuilder csv = new StringBuilder();
            for (int i = 0; i < ScanConfig.SCAN_PORTS.length; i++) {
                if (csv.length() > 0) csv.append(',');
                csv.append(ScanConfig.SCAN_PORTS[i]);
            }

            List<String> out = run(core, "nmap -Pn -sT -n --open -T4 --max-retries 1"
                    + " --host-timeout 120s -p " + csv + " " + ip);
            if (out.isEmpty()) return found;

            Set<Integer> seen = new LinkedHashSet<>();
            for (int i = 0; i < out.size(); i++) {
                String raw = out.get(i);
                if (raw == null) continue;
                String line = raw.trim();
                if (line.isEmpty()) continue;
                Matcher matcher = PORT_LINE.matcher(line);
                if (!matcher.matches()) continue;
                int number = parsePort(matcher.group(1));
                if (number <= 0) continue;
                if (!seen.add(number)) continue;
                String service = matcher.group(2);
                if (service == null || service.isEmpty()) service = "unknown";
                found.add(number + "/" + service);
            }
            note(core, "deep scan " + ip + " -> " + found.size() + " open");
        } catch (Throwable t) {
            warn(core, "deepScan failed: " + t);
            return new ArrayList<>();
        }
        return found;
    }

    private static boolean applyPort(Node node, String rawNumber, String rawService, String rawVersion) {
        int number = parsePort(rawNumber);
        if (number <= 0) return false;
        String service = rawService == null ? "" : rawService.trim();
        String version = rawVersion == null ? "" : rawVersion.trim();
        boolean matched = false;
        synchronized (node.ports) {
            for (int i = 0; i < node.ports.size(); i++) {
                Node.OpenPort port = node.ports.get(i);
                if (port == null || port.number != number) continue;
                matched = true;
                if (!service.isEmpty() && !"unknown".equalsIgnoreCase(service)) {
                    port.service = service;
                }
                if (!version.isEmpty() && (port.banner == null || port.banner.isEmpty())) {
                    port.banner = version;
                }
                break;
            }
        }
        return matched;
    }

    private static int parsePort(String raw) {
        try {
            int value = Integer.parseInt(raw.trim());
            return value > 0 && value <= 65535 ? value : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    private static List<String> run(Core core, String command) {
        try {
            ArrayList<String> out = core.customChrootCommand(command, true);
            if (out == null) return Collections.emptyList();
            return out;
        } catch (Throwable t) {
            cached = false;
            warn(core, "command failed: " + t);
            return Collections.emptyList();
        }
    }

    private static void note(Core core, String message) {
        write(core, message, 2);
    }

    private static void warn(Core core, String message) {
        write(core, message, 3);
    }

    private static void write(Core core, String message, int level) {
        try {
            if (core == null || message == null) return;
            Logger log = core.getLogger();
            if (log == null) return;
            log.writeLine("[" + TAG.toLowerCase(Locale.ROOT) + "] " + message, level);
        } catch (Throwable ignored) {
        }
    }
}
