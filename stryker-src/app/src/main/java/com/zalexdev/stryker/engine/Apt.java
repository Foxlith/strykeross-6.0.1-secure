package com.zalexdev.stryker.engine;

import java.util.ArrayList;
import java.util.List;

public final class Apt {

    public static final String INSTALLED_MARK = "__STRYKER_PKG_OK__";
    public static final String MISSING_MARK = "__STRYKER_PKG_NO__";

    private static final String OPTS =
            "-o Dpkg::Options::=--force-confdef "
                    + "-o Dpkg::Options::=--force-confold "
                    + "-o APT::Sandbox::User=root "
                    + "-o Acquire::Retries=3";

    private Apt() {
    }

    public static List<String> env() {
        ArrayList<String> c = new ArrayList<>();
        c.add("export DEBIAN_FRONTEND=noninteractive");
        c.add("export APT_LISTCHANGES_FRONTEND=none");
        c.add("export LANG=C.UTF-8 LC_ALL=C.UTF-8");
        c.add("export HOME=/root");
        c.add("mkdir -p /var/lib/apt/lists/partial /var/cache/apt/archives/partial /tmp");
        return c;
    }

    public static String update() {
        return "apt-get " + OPTS + " update";
    }

    public static String upgrade() {
        return "apt-get " + OPTS + " -y upgrade";
    }

    public static String install(String packages) {
        return "apt-get " + OPTS + " install -y --no-install-recommends " + packages;
    }

    public static String installRecommended(String packages) {
        return "apt-get " + OPTS + " install -y " + packages;
    }

    public static String remove(String packages) {
        return "apt-get " + OPTS + " purge -y " + packages
                + "; apt-get " + OPTS + " autoremove -y";
    }

    public static String clean() {
        return "apt-get " + OPTS + " clean";
    }

    public static String listInstalled() {
        return "dpkg-query -W -f='${Package}\\t${Version}\\n' 2>/dev/null";
    }

    public static String search(String query) {
        return "apt-cache search --names-only " + shellQuote(query)
                + " 2>/dev/null | head -n 400";
    }

    public static String isInstalled(String pkg) {
        return "dpkg-query -W -f='${Status}' " + shellQuote(pkg) + " 2>/dev/null "
                + "| grep -q 'ok installed' && echo " + INSTALLED_MARK + " || echo " + MISSING_MARK;
    }

    public static String hasBinary(String bin) {
        return "command -v " + shellQuote(bin) + " >/dev/null 2>&1 && echo " + INSTALLED_MARK
                + " || echo " + MISSING_MARK;
    }

    public static String shellQuote(String raw) {
        if (raw == null) return "''";
        return "'" + raw.replace("'", "'\\''") + "'";
    }
}
