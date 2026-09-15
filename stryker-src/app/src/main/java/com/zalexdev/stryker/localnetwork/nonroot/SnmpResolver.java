package com.zalexdev.stryker.localnetwork.nonroot;

import com.zalexdev.stryker.logger.Logger;

import java.io.ByteArrayOutputStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class SnmpResolver extends DiscoveryResolver {

    private static final int POOL_SIZE = 8;
    private static final int RECV_BUFFER = 2048;
    private static final int MAX_REPLIES_PER_ATTEMPT = 4;
    private static final int MAX_TEXT = 256;

    private static final int VERSION_1 = 0;
    private static final int VERSION_2C = 1;

    private static final int TAG_INTEGER = 0x02;
    private static final int TAG_OCTET_STRING = 0x04;
    private static final int TAG_NULL = 0x05;
    private static final int TAG_OID = 0x06;
    private static final int TAG_SEQUENCE = 0x30;
    private static final int TAG_GET_REQUEST = 0xA0;
    private static final int TAG_GET_RESPONSE = 0xA2;
    private static final int TAG_COUNTER32 = 0x41;
    private static final int TAG_GAUGE32 = 0x42;
    private static final int TAG_TIMETICKS = 0x43;
    private static final int TAG_NO_SUCH_OBJECT = 0x80;
    private static final int TAG_NO_SUCH_INSTANCE = 0x81;
    private static final int TAG_END_OF_MIB = 0x82;

    private static final String OID_SYS_DESCR = "1.3.6.1.2.1.1.1.0";
    private static final String OID_SYS_OBJECT_ID = "1.3.6.1.2.1.1.2.0";
    private static final String OID_SYS_CONTACT = "1.3.6.1.2.1.1.4.0";
    private static final String OID_SYS_NAME = "1.3.6.1.2.1.1.5.0";
    private static final String OID_SYS_LOCATION = "1.3.6.1.2.1.1.6.0";
    private static final String OID_SYS_SERVICES = "1.3.6.1.2.1.1.7.0";

    private static final String[] OIDS = {
            OID_SYS_DESCR,
            OID_SYS_OBJECT_ID,
            OID_SYS_CONTACT,
            OID_SYS_NAME,
            OID_SYS_LOCATION,
            OID_SYS_SERVICES
    };

    private static final String[] OIDS_CORE = {
            OID_SYS_DESCR,
            OID_SYS_OBJECT_ID,
            OID_SYS_NAME
    };

    private static final byte[] EMPTY = new byte[0];

    private final Map<String, Node.Snmp> results = new ConcurrentHashMap<>();

    private final Set<String> inFlight =
            Collections.newSetFromMap(new ConcurrentHashMap<String, Boolean>());

    private final Set<DatagramSocket> sockets =
            Collections.newSetFromMap(new ConcurrentHashMap<DatagramSocket, Boolean>());

    private final AtomicInteger sequence = new AtomicInteger(1);

    private volatile ExecutorService pool;

    public SnmpResolver(NetworkContext net, Logger log) {
        super(net, log);
    }

    @Override
    public String tag() {
        return "snmp";
    }

    @Override
    public void start() {
        try {
            synchronized (this) {
                if (pool != null && !pool.isShutdown()) {
                    running = true;
                    return;
                }
                pool = Executors.newFixedThreadPool(POOL_SIZE, new ThreadFactory() {
                    private final AtomicInteger index = new AtomicInteger(1);

                    @Override
                    public Thread newThread(Runnable r) {
                        Thread t = new Thread(r, "snmp-probe-" + index.getAndIncrement());
                        t.setDaemon(true);
                        t.setPriority(Thread.MIN_PRIORITY + 2);
                        return t;
                    }
                });
                running = true;
            }
        } catch (Throwable t) {
            running = false;
            warn("start failed: " + t);
        }
    }

    @Override
    public void stop() {
        running = false;
        ExecutorService victim;
        synchronized (this) {
            victim = pool;
            pool = null;
        }
        closeSockets();
        if (victim != null) {
            try {
                victim.shutdownNow();
            } catch (Throwable ignored) {
            }
            try {
                victim.awaitTermination(ScanConfig.RESOLVER_JOIN_MS, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } catch (Throwable ignored) {
            }
        }
        closeSockets();
        inFlight.clear();
    }

    public void query(final String ip) {
        try {
            if (!running || ip == null || ip.isEmpty()) return;
            if (!IpRange.isIpv4(ip)) return;
            if (results.containsKey(ip)) return;
            ExecutorService current = pool;
            if (current == null || current.isShutdown()) return;
            if (!inFlight.add(ip)) return;
            try {
                current.execute(new Runnable() {
                    @Override
                    public void run() {
                        probe(ip);
                    }
                });
            } catch (Throwable t) {
                inFlight.remove(ip);
            }
        } catch (Throwable t) {
            warn("query failed: " + t);
        }
    }

    public Map<String, Node.Snmp> results() {
        return results;
    }

    private void probe(String ip) {
        DatagramSocket socket = null;
        try {
            if (!running || results.containsKey(ip)) return;
            InetAddress target = InetAddress.getByName(ip);
            socket = new DatagramSocket();
            socket.setSoTimeout(ScanConfig.SNMP_TIMEOUT_MS);
            sockets.add(socket);
            int attempts = 1 + Math.max(0, ScanConfig.SNMP_RETRIES);
            byte[] buffer = new byte[RECV_BUFFER];
            for (int attempt = 0; attempt < attempts && running; attempt++) {
                int requestId = nextRequestId();
                boolean modern = attempt == 0;
                byte[] request = buildRequest(requestId, modern ? VERSION_2C : VERSION_1,
                        modern ? OIDS : OIDS_CORE);
                if (request.length == 0) return;
                try {
                    socket.send(new DatagramPacket(request, request.length, target, ScanConfig.SNMP_PORT));
                } catch (Throwable t) {
                    continue;
                }
                for (int reads = 0; reads < MAX_REPLIES_PER_ATTEMPT && running; reads++) {
                    DatagramPacket reply = new DatagramPacket(buffer, buffer.length);
                    try {
                        socket.receive(reply);
                    } catch (Throwable t) {
                        break;
                    }
                    if (!target.equals(reply.getAddress())) continue;
                    Node.Snmp parsed = decode(reply.getData(), reply.getOffset(), reply.getLength(), requestId);
                    if (parsed == null) continue;
                    results.put(ip, parsed);
                    mark(ip);
                    note(ip + " " + describe(parsed));
                    return;
                }
            }
        } catch (Throwable t) {
            warn(ip + " probe failed: " + t);
        } finally {
            if (socket != null) {
                sockets.remove(socket);
                try {
                    socket.close();
                } catch (Throwable ignored) {
                }
            }
            inFlight.remove(ip);
        }
    }

    private void closeSockets() {
        try {
            for (DatagramSocket s : sockets) {
                try {
                    s.close();
                } catch (Throwable ignored) {
                }
            }
            sockets.clear();
        } catch (Throwable ignored) {
        }
    }

    private int nextRequestId() {
        int id = sequence.getAndIncrement();
        if (id <= 0) {
            sequence.set(1);
            id = 1;
        }
        return id & 0x7FFFFFFF;
    }

    private static String describe(Node.Snmp snmp) {
        String name = snmp.sysName == null ? "" : snmp.sysName;
        String descr = snmp.sysDescr == null ? "" : snmp.sysDescr;
        if (descr.length() > 60) descr = descr.substring(0, 60);
        if (name.isEmpty()) return descr;
        return descr.isEmpty() ? name : name + " / " + descr;
    }

    private static byte[] buildRequest(int requestId, int version, String[] oids) {
        try {
            ByteArrayOutputStream binds = new ByteArrayOutputStream(160);
            for (String oid : oids) {
                ByteArrayOutputStream bind = new ByteArrayOutputStream(32);
                writeTlv(bind, TAG_OID, encodeOid(oid));
                writeTlv(bind, TAG_NULL, EMPTY);
                writeTlv(binds, TAG_SEQUENCE, bind.toByteArray());
            }

            ByteArrayOutputStream pdu = new ByteArrayOutputStream(224);
            writeTlv(pdu, TAG_INTEGER, encodeInteger(requestId));
            writeTlv(pdu, TAG_INTEGER, encodeInteger(0));
            writeTlv(pdu, TAG_INTEGER, encodeInteger(0));
            writeTlv(pdu, TAG_SEQUENCE, binds.toByteArray());

            ByteArrayOutputStream body = new ByteArrayOutputStream(288);
            writeTlv(body, TAG_INTEGER, encodeInteger(version));
            writeTlv(body, TAG_OCTET_STRING,
                    ScanConfig.SNMP_COMMUNITY.getBytes(StandardCharsets.UTF_8));
            writeTlv(body, TAG_GET_REQUEST, pdu.toByteArray());

            ByteArrayOutputStream frame = new ByteArrayOutputStream(320);
            writeTlv(frame, TAG_SEQUENCE, body.toByteArray());
            return frame.toByteArray();
        } catch (Throwable t) {
            return EMPTY;
        }
    }

    private static void writeTlv(ByteArrayOutputStream out, int tag, byte[] value) {
        out.write(tag & 0xFF);
        writeLength(out, value == null ? 0 : value.length);
        if (value != null && value.length > 0) out.write(value, 0, value.length);
    }

    private static void writeLength(ByteArrayOutputStream out, int length) {
        if (length < 0) length = 0;
        if (length < 0x80) {
            out.write(length);
        } else if (length <= 0xFF) {
            out.write(0x81);
            out.write(length & 0xFF);
        } else if (length <= 0xFFFF) {
            out.write(0x82);
            out.write((length >> 8) & 0xFF);
            out.write(length & 0xFF);
        } else {
            out.write(0x83);
            out.write((length >> 16) & 0xFF);
            out.write((length >> 8) & 0xFF);
            out.write(length & 0xFF);
        }
    }

    private static byte[] encodeInteger(long value) {
        byte[] tmp = new byte[9];
        int count = 0;
        long v = value;
        while (count < tmp.length) {
            byte b = (byte) (v & 0xFF);
            tmp[count++] = b;
            long next = v >> 8;
            boolean high = (b & 0x80) != 0;
            if ((next == 0L && !high) || (next == -1L && high)) break;
            v = next;
        }
        byte[] out = new byte[count];
        for (int i = 0; i < count; i++) out[i] = tmp[count - 1 - i];
        return out;
    }

    private static byte[] encodeOid(String oid) {
        ByteArrayOutputStream out = new ByteArrayOutputStream(24);
        if (oid == null || oid.isEmpty()) return out.toByteArray();
        String value = oid.charAt(0) == '.' ? oid.substring(1) : oid;
        String[] parts = value.split("\\.");
        if (parts.length == 0) return out.toByteArray();
        long first = parseArc(parts[0]);
        long second = parts.length > 1 ? parseArc(parts[1]) : 0L;
        writeBase128(out, first * 40L + second);
        for (int i = 2; i < parts.length; i++) writeBase128(out, parseArc(parts[i]));
        return out.toByteArray();
    }

    private static long parseArc(String raw) {
        try {
            long v = Long.parseLong(raw.trim());
            return v < 0 ? 0L : v;
        } catch (Throwable t) {
            return 0L;
        }
    }

    private static void writeBase128(ByteArrayOutputStream out, long value) {
        if (value < 0) value = 0;
        byte[] tmp = new byte[10];
        int count = 0;
        long v = value;
        do {
            tmp[count++] = (byte) (v & 0x7FL);
            v >>>= 7;
        } while (v != 0L && count < tmp.length);
        for (int i = count - 1; i >= 0; i--) {
            int b = tmp[i] & 0x7F;
            out.write(i == 0 ? b : (b | 0x80));
        }
    }

    private static Node.Snmp decode(byte[] buf, int off, int len, int expectedId) {
        try {
            if (buf == null || len <= 0 || off < 0 || len > buf.length - off) return null;
            int end = off + len;

            Tlv outer = readTlv(buf, off, end);
            if (outer == null || outer.tag != TAG_SEQUENCE) return null;
            int bodyEnd = outer.start + outer.length;

            Tlv version = readTlv(buf, outer.start, bodyEnd);
            if (version == null || version.tag != TAG_INTEGER) return null;

            Tlv community = readTlv(buf, version.next, bodyEnd);
            if (community == null || community.tag != TAG_OCTET_STRING) return null;

            Tlv pdu = readTlv(buf, community.next, bodyEnd);
            if (pdu == null || pdu.tag != TAG_GET_RESPONSE) return null;
            int pduEnd = pdu.start + pdu.length;

            Tlv requestId = readTlv(buf, pdu.start, pduEnd);
            if (requestId == null || requestId.tag != TAG_INTEGER) return null;
            if (readSigned(buf, requestId.start, requestId.length) != (long) expectedId) return null;

            Tlv errorStatus = readTlv(buf, requestId.next, pduEnd);
            if (errorStatus == null || errorStatus.tag != TAG_INTEGER) return null;
            if (readSigned(buf, errorStatus.start, errorStatus.length) != 0L) return null;

            Tlv errorIndex = readTlv(buf, errorStatus.next, pduEnd);
            if (errorIndex == null || errorIndex.tag != TAG_INTEGER) return null;

            Tlv binds = readTlv(buf, errorIndex.next, pduEnd);
            if (binds == null || binds.tag != TAG_SEQUENCE) return null;
            int bindsEnd = binds.start + binds.length;

            Node.Snmp snmp = new Node.Snmp();
            int cursor = binds.start;
            while (cursor < bindsEnd) {
                Tlv bind = readTlv(buf, cursor, bindsEnd);
                if (bind == null || bind.tag != TAG_SEQUENCE) break;
                cursor = bind.next;
                int innerEnd = bind.start + bind.length;
                Tlv oidTlv = readTlv(buf, bind.start, innerEnd);
                if (oidTlv == null || oidTlv.tag != TAG_OID) continue;
                Tlv valueTlv = readTlv(buf, oidTlv.next, innerEnd);
                if (valueTlv == null) continue;
                assign(snmp, decodeOid(buf, oidTlv.start, oidTlv.length), decodeValue(buf, valueTlv));
            }

            return populated(snmp) ? snmp : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static boolean populated(Node.Snmp snmp) {
        if (snmp == null) return false;
        return filled(snmp.sysDescr) || filled(snmp.sysObjectId) || filled(snmp.sysName)
                || filled(snmp.sysContact) || filled(snmp.sysLocation) || filled(snmp.sysServices);
    }

    private static boolean filled(String value) {
        return value != null && !value.isEmpty();
    }

    private static void assign(Node.Snmp snmp, String oid, String value) {
        if (snmp == null || oid == null || oid.isEmpty() || value == null) return;
        String key = oid.charAt(0) == '.' ? oid.substring(1) : oid;
        if (!key.endsWith(".0")) key = key + ".0";
        if (OID_SYS_DESCR.equals(key)) snmp.sysDescr = value;
        else if (OID_SYS_OBJECT_ID.equals(key)) snmp.sysObjectId = value;
        else if (OID_SYS_CONTACT.equals(key)) snmp.sysContact = value;
        else if (OID_SYS_NAME.equals(key)) snmp.sysName = value;
        else if (OID_SYS_LOCATION.equals(key)) snmp.sysLocation = value;
        else if (OID_SYS_SERVICES.equals(key)) snmp.sysServices = value;
    }

    private static String decodeValue(byte[] buf, Tlv tlv) {
        try {
            switch (tlv.tag) {
                case TAG_OCTET_STRING:
                    return cleanText(new String(buf, tlv.start,
                            Math.min(tlv.length, MAX_TEXT), StandardCharsets.UTF_8));
                case TAG_INTEGER:
                    return Long.toString(readSigned(buf, tlv.start, tlv.length));
                case TAG_OID:
                    return decodeOid(buf, tlv.start, tlv.length);
                case TAG_TIMETICKS:
                case TAG_COUNTER32:
                case TAG_GAUGE32:
                    return Long.toString(readUnsigned(buf, tlv.start, tlv.length));
                case TAG_NULL:
                case TAG_NO_SUCH_OBJECT:
                case TAG_NO_SUCH_INSTANCE:
                case TAG_END_OF_MIB:
                    return "";
                default:
                    return "";
            }
        } catch (Throwable t) {
            return "";
        }
    }

    private static String cleanText(String raw) {
        if (raw == null) return "";
        int limit = Math.min(raw.length(), MAX_TEXT);
        StringBuilder sb = new StringBuilder(limit);
        for (int i = 0; i < limit; i++) {
            char c = raw.charAt(i);
            sb.append(c < 0x20 || c == 0x7F ? ' ' : c);
        }
        return sb.toString().trim();
    }

    private static String decodeOid(byte[] buf, int off, int len) {
        if (buf == null || len <= 0 || off < 0 || len > buf.length - off) return "";
        StringBuilder sb = new StringBuilder(32);
        long value = 0L;
        boolean first = true;
        int guard = 0;
        int end = off + len;
        for (int i = off; i < end; i++) {
            int b = buf[i] & 0xFF;
            value = (value << 7) | (b & 0x7F);
            if ((b & 0x80) != 0) {
                if (++guard > 8) return sb.toString();
                continue;
            }
            guard = 0;
            if (first) {
                long a0 = value < 80L ? value / 40L : 2L;
                long a1 = value < 80L ? value % 40L : value - 80L;
                sb.append(a0).append('.').append(a1);
                first = false;
            } else {
                sb.append('.').append(value);
            }
            value = 0L;
            if (sb.length() >= MAX_TEXT) return sb.toString();
        }
        return sb.toString();
    }

    private static long readSigned(byte[] buf, int off, int len) {
        if (buf == null || len <= 0 || off < 0 || len > buf.length - off) return 0L;
        int count = Math.min(len, 8);
        int start = off + len - count;
        long v = (buf[off] & 0x80) != 0 ? -1L : 0L;
        for (int i = 0; i < count; i++) v = (v << 8) | (buf[start + i] & 0xFFL);
        return v;
    }

    private static long readUnsigned(byte[] buf, int off, int len) {
        if (buf == null || len <= 0 || off < 0 || len > buf.length - off) return 0L;
        int count = Math.min(len, 8);
        int start = off + len - count;
        long v = 0L;
        for (int i = 0; i < count; i++) v = (v << 8) | (buf[start + i] & 0xFFL);
        return v;
    }

    private static Tlv readTlv(byte[] buf, int off, int end) {
        if (buf == null || off < 0 || end > buf.length || end - off < 2) return null;
        int tag = buf[off] & 0xFF;
        int pos = off + 1;
        int first = buf[pos++] & 0xFF;
        int length;
        if ((first & 0x80) == 0) {
            length = first;
        } else {
            int count = first & 0x7F;
            if (count < 1 || count > 4 || count > end - pos) return null;
            length = 0;
            for (int i = 0; i < count; i++) length = (length << 8) | (buf[pos++] & 0xFF);
        }
        if (length < 0 || length > end - pos) return null;
        Tlv tlv = new Tlv();
        tlv.tag = tag;
        tlv.start = pos;
        tlv.length = length;
        tlv.next = pos + length;
        return tlv;
    }

    private static final class Tlv {
        int tag;
        int start;
        int length;
        int next;
    }
}
