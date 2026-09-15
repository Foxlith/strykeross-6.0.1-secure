package com.zalexdev.stryker.localnetwork.nonroot;

import com.zalexdev.stryker.logger.Logger;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class NetbiosResolver extends DiscoveryResolver {

    private static final byte[] REQUEST = buildRequest();

    private static final int HEADER_LEN = 12;
    private static final int RR_NAME_LEN = 34;
    private static final int RR_FIXED_LEN = 10;
    private static final int TYPE_OFFSET = HEADER_LEN + RR_NAME_LEN;
    private static final int CLASS_OFFSET = TYPE_OFFSET + 2;
    private static final int RDLENGTH_OFFSET = TYPE_OFFSET + 8;
    private static final int RDATA_OFFSET = TYPE_OFFSET + RR_FIXED_LEN;
    private static final int ENTRY_LEN = 18;
    private static final int NAME_LEN = 15;
    private static final int MAC_LEN = 6;
    private static final int RECV_BUFFER = 2048;

    private static final int TYPE_NBSTAT = 0x0021;
    private static final int CLASS_IN = 0x0001;
    private static final int FLAG_QR = 0x8000;
    private static final int FLAG_GROUP = 0x8000;

    private static final int ERROR_PAUSE_MS = 50;

    private final Map<String, Node.Netbios> results = new ConcurrentHashMap<>();

    private volatile DatagramSocket socket;
    private volatile Thread receiver;

    public NetbiosResolver(NetworkContext net, Logger log) {
        super(net, log);
    }

    @Override
    public String tag() {
        return "netbios";
    }

    @Override
    public void start() {
        if (running) return;
        try {
            DatagramSocket ds = new DatagramSocket();
            ds.setSoTimeout(ScanConfig.NETBIOS_TIMEOUT_MS);
            try {
                ds.setBroadcast(true);
            } catch (Exception ignored) {
            }
            socket = ds;
            running = true;
            Thread t = new Thread(new Runnable() {
                @Override
                public void run() {
                    receiveLoop();
                }
            }, "netbios-rx");
            t.setDaemon(true);
            receiver = t;
            t.start();
        } catch (Throwable e) {
            running = false;
            closeSocket();
            warn("start failed: " + e);
        }
    }

    @Override
    public void stop() {
        running = false;
        closeSocket();
        Thread t = receiver;
        receiver = null;
        join(t, ScanConfig.RESOLVER_JOIN_MS);
    }

    public void query(String ip) {
        if (ip == null || ip.isEmpty()) return;
        DatagramSocket ds = socket;
        if (ds == null || ds.isClosed() || !running) return;
        try {
            InetAddress target = InetAddress.getByName(ip);
            ds.send(new DatagramPacket(REQUEST, REQUEST.length, target, ScanConfig.NETBIOS_PORT));
        } catch (Throwable ignored) {
        }
    }

    public Map<String, Node.Netbios> results() {
        return results;
    }

    private void receiveLoop() {
        byte[] buffer = new byte[RECV_BUFFER];
        DatagramPacket packet = new DatagramPacket(buffer, buffer.length);
        while (running) {
            DatagramSocket ds = socket;
            if (ds == null || ds.isClosed()) break;
            try {
                packet.setData(buffer, 0, buffer.length);
                ds.receive(packet);
            } catch (SocketTimeoutException timeout) {
                continue;
            } catch (Throwable e) {
                if (!running) break;
                if (ds.isClosed()) break;
                sleep(ERROR_PAUSE_MS);
                continue;
            }
            try {
                handle(packet);
            } catch (Throwable ignored) {
            }
        }
    }

    private void handle(DatagramPacket packet) {
        if (packet.getPort() != ScanConfig.NETBIOS_PORT) return;
        InetAddress from = packet.getAddress();
        if (from == null) return;
        String ip = from.getHostAddress();
        if (ip == null || ip.isEmpty()) return;
        if (net != null && !net.inRange(ip)) return;
        mark(ip);
        Node.Netbios info = parse(packet.getData(), packet.getOffset(), packet.getLength());
        if (info == null) return;
        if (results.size() >= ScanConfig.MAX_HOSTS && !results.containsKey(ip)) return;
        results.put(ip, info);
    }

    private Node.Netbios parse(byte[] data, int offset, int length) {
        if (data == null) return null;
        if (offset < 0 || length < 0) return null;
        if (offset > data.length - length) return null;
        if (length < RDATA_OFFSET + 1) return null;

        if ((u16(data, offset + 2) & FLAG_QR) == 0) return null;
        if (u16(data, offset + 6) < 1) return null;
        if (u16(data, offset + TYPE_OFFSET) != TYPE_NBSTAT) return null;
        if (u16(data, offset + CLASS_OFFSET) != CLASS_IN) return null;

        int rdLength = u16(data, offset + RDLENGTH_OFFSET);
        int limit = rdLength > 0 ? Math.min(length, RDATA_OFFSET + rdLength) : length;
        if (limit < RDATA_OFFSET + 1) return null;

        int declared = data[offset + RDATA_OFFSET] & 0xFF;
        int room = (limit - RDATA_OFFSET - 1) / ENTRY_LEN;
        int count = Math.min(declared, room);
        boolean complete = count == declared;

        int entriesStart = offset + RDATA_OFFSET + 1;
        Node.Netbios info = new Node.Netbios();
        String computer = "";

        for (int i = 0; i < count; i++) {
            int p = entriesStart + (i * ENTRY_LEN);
            String name = trimName(new String(data, p, NAME_LEN, StandardCharsets.US_ASCII));
            if (name.isEmpty()) continue;

            int suffix = data[p + NAME_LEN] & 0xFF;
            int flags = ((data[p + NAME_LEN + 1] & 0xFF) << 8) | (data[p + NAME_LEN + 2] & 0xFF);
            boolean group = (flags & FLAG_GROUP) != 0;

            info.names.add(name + "<" + String.format(Locale.ENGLISH, "%02X", suffix) + ">");

            if (suffix == 0x00) {
                if (group) {
                    if (info.workgroup.isEmpty()) info.workgroup = name;
                } else if (computer.isEmpty()) {
                    computer = name;
                    info.name = name;
                }
            } else if (suffix == 0x03) {
                if (!group && !name.equals(computer) && info.user.isEmpty()) info.user = name;
            } else if (suffix == 0x20) {
                info.fileServer = true;
            } else if (suffix == 0x1C) {
                info.domainController = true;
            }
        }

        String mac = null;
        int macAt = entriesStart + (count * ENTRY_LEN);
        if (complete && macAt + MAC_LEN <= offset + limit) {
            StringBuilder sb = new StringBuilder(17);
            for (int i = 0; i < MAC_LEN; i++) {
                if (sb.length() > 0) sb.append(':');
                sb.append(String.format(Locale.ENGLISH, "%02X", data[macAt + i] & 0xFF));
            }
            mac = Node.normalizeMac(sb.toString());
            if (mac != null) info.mac = mac;
        }

        if (info.names.isEmpty() && mac == null) return null;
        return info;
    }

    private static int u16(byte[] data, int off) {
        return ((data[off] & 0xFF) << 8) | (data[off + 1] & 0xFF);
    }

    private static String trimName(String raw) {
        if (raw == null) return "";
        StringBuilder sb = new StringBuilder(raw.length());
        for (int i = 0; i < raw.length(); i++) {
            char c = raw.charAt(i);
            if (c < 0x20 || c == 0x7F) continue;
            sb.append(c);
        }
        int end = sb.length();
        while (end > 0 && sb.charAt(end - 1) == ' ') end--;
        int start = 0;
        while (start < end && sb.charAt(start) == ' ') start++;
        return sb.substring(start, end);
    }

    private void closeSocket() {
        DatagramSocket ds = socket;
        socket = null;
        if (ds == null) return;
        try {
            ds.close();
        } catch (Throwable ignored) {
        }
    }

    private static byte[] buildRequest() {
        byte[] req = new byte[50];
        req[0] = (byte) 0x82;
        req[1] = (byte) 0x28;
        req[2] = 0x00;
        req[3] = 0x00;
        req[4] = 0x00;
        req[5] = 0x01;
        req[6] = 0x00;
        req[7] = 0x00;
        req[8] = 0x00;
        req[9] = 0x00;
        req[10] = 0x00;
        req[11] = 0x00;
        req[12] = 0x20;
        req[13] = 0x43;
        req[14] = 0x4B;
        for (int i = 15; i < 45; i++) req[i] = 0x41;
        req[45] = 0x00;
        req[46] = 0x00;
        req[47] = 0x21;
        req[48] = 0x00;
        req[49] = 0x01;
        return req;
    }
}
