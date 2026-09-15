package com.zalexdev.stryker.localnetwork.nonroot;

import java.io.ByteArrayOutputStream;
import java.net.InetAddress;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public final class DnsCodec {

    private DnsCodec() {
    }

    public static final int TYPE_A = 1;
    public static final int TYPE_NS = 2;
    public static final int TYPE_CNAME = 5;
    public static final int TYPE_PTR = 12;
    public static final int TYPE_TXT = 16;
    public static final int TYPE_AAAA = 28;
    public static final int TYPE_SRV = 33;
    public static final int TYPE_ANY = 255;

    public static final int CLASS_IN = 1;
    public static final int FLAG_RD = 0x0100;
    public static final int FLAG_QR = 0x8000;

    public static byte[] query(int id, int flags, String name, int type) {
        return query(id, flags, java.util.Collections.singletonList(name), type);
    }

    public static byte[] query(int id, int flags, List<String> names, int type) {
        ByteArrayOutputStream out = new ByteArrayOutputStream(128);
        writeShort(out, id);
        writeShort(out, flags);
        writeShort(out, names.size());
        writeShort(out, 0);
        writeShort(out, 0);
        writeShort(out, 0);
        for (String name : names) {
            writeName(out, name);
            writeShort(out, type);
            writeShort(out, CLASS_IN);
        }
        return out.toByteArray();
    }

    public static String reverseName(String ip) {
        String[] parts = ip.split("\\.");
        if (parts.length != 4) return ip;
        return parts[3] + "." + parts[2] + "." + parts[1] + "." + parts[0] + ".in-addr.arpa.";
    }

    public static Message parse(byte[] buf, int len) {
        if (buf == null || len < 12) return null;
        Message msg = new Message();
        msg.id = readShort(buf, 0);
        msg.flags = readShort(buf, 2);
        msg.response = (msg.flags & FLAG_QR) != 0;
        msg.rcode = msg.flags & 0x000F;
        int qd = readShort(buf, 4);
        int an = readShort(buf, 6);
        int ns = readShort(buf, 8);
        int ar = readShort(buf, 10);
        int pos = 12;
        try {
            for (int i = 0; i < qd && pos < len; i++) {
                StringBuilder sb = new StringBuilder();
                pos = readName(buf, len, pos, sb);
                if (pos + 4 > len) return msg;
                Question q = new Question();
                q.name = sb.toString();
                q.type = readShort(buf, pos);
                q.clazz = readShort(buf, pos + 2);
                pos += 4;
                msg.questions.add(q);
            }
            pos = readRecords(buf, len, pos, an, msg.answers);
            pos = readRecords(buf, len, pos, ns, msg.authority);
            readRecords(buf, len, pos, ar, msg.additional);
        } catch (Exception ignored) {
        }
        return msg;
    }

    private static int readRecords(byte[] buf, int len, int pos, int count, List<Record> sink) {
        for (int i = 0; i < count && pos < len; i++) {
            StringBuilder sb = new StringBuilder();
            pos = readName(buf, len, pos, sb);
            if (pos + 10 > len) return len;
            Record r = new Record();
            r.name = sb.toString();
            r.type = readShort(buf, pos);
            r.clazz = readShort(buf, pos + 2) & 0x7FFF;
            r.cacheFlush = (readShort(buf, pos + 2) & 0x8000) != 0;
            r.ttl = ((long) readShort(buf, pos + 4) << 16) | readShort(buf, pos + 6);
            int rdLen = readShort(buf, pos + 8);
            pos += 10;
            if (pos + rdLen > len) return len;
            r.data = Arrays.copyOfRange(buf, pos, pos + rdLen);
            decode(buf, len, pos, rdLen, r);
            pos += rdLen;
            sink.add(r);
        }
        return pos;
    }

    private static void decode(byte[] buf, int len, int off, int rdLen, Record r) {
        try {
            switch (r.type) {
                case TYPE_PTR:
                case TYPE_NS:
                case TYPE_CNAME: {
                    StringBuilder sb = new StringBuilder();
                    readName(buf, len, off, sb);
                    r.target = sb.toString();
                    break;
                }
                case TYPE_SRV: {
                    if (rdLen < 7) break;
                    r.port = readShort(buf, off + 4);
                    StringBuilder sb = new StringBuilder();
                    readName(buf, len, off + 6, sb);
                    r.target = sb.toString();
                    break;
                }
                case TYPE_TXT: {
                    int p = off;
                    int end = off + rdLen;
                    while (p < end) {
                        int l = buf[p] & 0xFF;
                        p++;
                        if (l == 0 || p + l > end) {
                            if (l == 0) continue;
                            break;
                        }
                        r.strings.add(new String(buf, p, l, StandardCharsets.UTF_8));
                        p += l;
                    }
                    break;
                }
                case TYPE_A: {
                    if (rdLen < 4) break;
                    r.address = (buf[off] & 0xFF) + "." + (buf[off + 1] & 0xFF) + "."
                            + (buf[off + 2] & 0xFF) + "." + (buf[off + 3] & 0xFF);
                    break;
                }
                case TYPE_AAAA: {
                    if (rdLen < 16) break;
                    byte[] raw = Arrays.copyOfRange(buf, off, off + 16);
                    r.address = InetAddress.getByAddress(raw).getHostAddress();
                    break;
                }
                default:
                    break;
            }
        } catch (Exception ignored) {
        }
    }

    private static int readName(byte[] buf, int len, int off, StringBuilder out) {
        int pos = off;
        int next = -1;
        int jumps = 0;
        while (true) {
            if (pos < 0 || pos >= len) break;
            int l = buf[pos] & 0xFF;
            if (l == 0) {
                pos++;
                break;
            }
            if ((l & 0xC0) == 0xC0) {
                if (pos + 1 >= len) break;
                int ptr = ((l & 0x3F) << 8) | (buf[pos + 1] & 0xFF);
                if (next < 0) next = pos + 2;
                pos = ptr;
                if (++jumps > 32) break;
                continue;
            }
            if (pos + 1 + l > len) break;
            if (out.length() > 0) out.append('.');
            out.append(new String(buf, pos + 1, l, StandardCharsets.UTF_8));
            pos += 1 + l;
        }
        return next >= 0 ? next : pos;
    }

    private static void writeName(ByteArrayOutputStream out, String name) {
        if (name == null) name = "";
        for (String label : name.split("\\.")) {
            if (label.isEmpty()) continue;
            byte[] raw = label.getBytes(StandardCharsets.UTF_8);
            int l = Math.min(raw.length, 63);
            out.write(l);
            out.write(raw, 0, l);
        }
        out.write(0);
    }

    private static void writeShort(ByteArrayOutputStream out, int value) {
        out.write((value >> 8) & 0xFF);
        out.write(value & 0xFF);
    }

    private static int readShort(byte[] buf, int off) {
        return ((buf[off] & 0xFF) << 8) | (buf[off + 1] & 0xFF);
    }

    public static String stripTrailingDot(String name) {
        if (name == null) return "";
        String v = name.trim();
        while (v.endsWith(".")) v = v.substring(0, v.length() - 1);
        return v;
    }

    public static String firstLabel(String name) {
        String v = stripTrailingDot(name);
        int dot = v.indexOf('.');
        return dot > 0 ? v.substring(0, dot) : v;
    }

    public static final class Message {
        public int id;
        public int flags;
        public boolean response;
        public int rcode;
        public final List<Question> questions = new ArrayList<>();
        public final List<Record> answers = new ArrayList<>();
        public final List<Record> authority = new ArrayList<>();
        public final List<Record> additional = new ArrayList<>();

        public List<Record> records() {
            List<Record> all = new ArrayList<>(answers.size() + additional.size() + authority.size());
            all.addAll(answers);
            all.addAll(authority);
            all.addAll(additional);
            return all;
        }
    }

    public static final class Question {
        public String name = "";
        public int type;
        public int clazz;
    }

    public static final class Record {
        public String name = "";
        public int type;
        public int clazz;
        public boolean cacheFlush;
        public long ttl;
        public byte[] data = new byte[0];
        public String target = "";
        public String address = "";
        public int port;
        public final List<String> strings = new ArrayList<>();

        public String lowerName() {
            return name == null ? "" : name.toLowerCase(Locale.ROOT);
        }
    }
}
