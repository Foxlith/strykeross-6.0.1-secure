.class public Linet/ipaddr/ipv6/IPv6Address;
.super Linet/ipaddr/IPAddress;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;,
        Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddress;",
        "Ljava/lang/Iterable<",
        "Linet/ipaddr/ipv6/IPv6Address;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALTERNATIVE_ZONE_SEPARATOR:C = '\u00a7'

.field public static final BASE_85_RADIX:I = 0x55

.field public static final BITS_PER_SEGMENT:I = 0x10

.field public static final BIT_COUNT:I = 0x80

.field public static final BYTES_PER_SEGMENT:I = 0x2

.field public static final BYTE_COUNT:I = 0x10

.field public static final DEFAULT_TEXTUAL_RADIX:I = 0x10

.field public static final MAX_VALUE_PER_SEGMENT:I = 0xffff

.field public static final MIXED_ORIGINAL_SEGMENT_COUNT:I = 0x6

.field public static final MIXED_REPLACED_SEGMENT_COUNT:I = 0x2

.field public static final REVERSE_DNS_SUFFIX:Ljava/lang/String; = ".ip6.arpa"

.field public static final REVERSE_DNS_SUFFIX_DEPRECATED:Ljava/lang/String; = ".ip6.int"

.field public static final SEGMENT_COUNT:I = 0x8

.field public static final SEGMENT_SEPARATOR:C = ':'

.field public static final UNC_RANGE_SEPARATOR:C = '\u00bb'

.field public static final UNC_RANGE_SEPARATOR_STR:Ljava/lang/String;

.field public static final UNC_SEGMENT_SEPARATOR:C = '-'

.field public static final UNC_SUFFIX:Ljava/lang/String; = ".ipv6-literal.net"

.field public static final UNC_ZONE_SEPARATOR:C = 's'

.field public static final ZONE_SEPARATOR:C = '%'

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field transient addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

.field private transient stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

.field private final zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xbb

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6Address;->UNC_RANGE_SEPARATOR_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p3}, Linet/ipaddr/ipv6/IPv6Address;->checkZone(Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method private constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 2

    .line 6
    new-instance v0, Linet/ipaddr/ipv4/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1, p3}, Linet/ipaddr/ipv4/a;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    iput-object p4, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/mac/MACAddress;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;)V
    .locals 1

    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 2

    .line 10
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddress;-><init>(Linet/ipaddr/IPAddressSection;)V

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-nez v0, :cond_0

    iput-object p2, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    return-void

    :cond_0
    new-instance p2, Linet/ipaddr/AddressPositionException;

    iget p1, p1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    invoke-direct {p2, p1}, Linet/ipaddr/AddressPositionException;-><init>(I)V

    throw p2

    :cond_1
    new-instance p2, Linet/ipaddr/AddressValueException;

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result p1

    int-to-long v0, p1

    const-string p1, "ipaddress.error.ipv6.invalid.segment.count"

    invoke-direct {p2, p1, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(Ljava/lang/String;J)V

    throw p2
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddress;)V
    .locals 0

    .line 11
    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 2

    .line 13
    new-instance v0, Linet/ipaddr/ipv4/h;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Linet/ipaddr/ipv4/h;-><init>(Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    iput-object p3, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-static {p3}, Linet/ipaddr/ipv6/IPv6Address;->checkZone(Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 16
    if-eqz p3, :cond_0

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6Address;->checkZone(Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_1

    new-instance p3, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Ljava/math/BigInteger;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Ljava/math/BigInteger;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6Address;->checkZone(Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Ljava/math/BigInteger;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/Integer;)V
    .locals 1

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Ljava/math/BigInteger;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 2

    .line 21
    new-instance v0, Linet/ipaddr/ipv4/h;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Linet/ipaddr/ipv4/h;-><init>(Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    iput-object p3, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/Integer;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-static {p3}, Linet/ipaddr/ipv6/IPv6Address;->checkZone(Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Ljava/math/BigInteger;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet6Address;)V
    .locals 3

    .line 23
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6Address;->getZone(Ljava/net/Inet6Address;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Ljava/net/Inet6Address;[BLjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet6Address;Ljava/lang/Integer;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6Address;->getZone(Ljava/net/Inet6Address;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Ljava/net/Inet6Address;[BLjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/Inet6Address;[BLjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 2

    .line 25
    new-instance v0, Linet/ipaddr/ipv4/b;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p3}, Linet/ipaddr/ipv4/b;-><init>([BILjava/lang/Integer;)V

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    iput-object p4, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p2

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setInetAddress(Ljava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>([BLjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6

    .line 27
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6Address;-><init>([BIILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>([BIILjava/lang/Integer;)V
    .locals 6

    .line 28
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6Address;-><init>([BIILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method private constructor <init>([BIILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 7

    .line 29
    new-instance v6, Linet/ipaddr/ipv4/e;

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/e;-><init>([BIIILjava/lang/Integer;)V

    invoke-direct {p0, v6}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    iput-object p5, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    return-void
.end method

.method public constructor <init>([BLinet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>([BLjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6Address;->checkZone(Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>([BLinet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/Integer;)V
    .locals 1

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>([BLjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method private constructor <init>([BLjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 6

    .line 33
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6Address;-><init>([BIILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;)V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6Address;->checkZone(Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;)V
    .locals 1

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/ipv6/IPv6Address;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-void
.end method

.method private constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V
    .locals 2

    .line 38
    new-instance v0, Linet/ipaddr/ipv4/h;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Linet/ipaddr/ipv4/h;-><init>(Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    array-length p2, p1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    iput-object p3, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    return-void

    :cond_0
    new-instance p2, Linet/ipaddr/AddressValueException;

    array-length p1, p1

    int-to-long v0, p1

    const-string p1, "ipaddress.error.ipv6.invalid.segment.count"

    invoke-direct {p2, p1, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(Ljava/lang/String;J)V

    throw p2
.end method

.method public static synthetic access$000(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    return-object p0
.end method

.method private checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public static checkZone(Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {v1}, Linet/ipaddr/format/validate/Validator;->validateZone(Ljava/lang/CharSequence;)I

    move-result p0

    if-gez p0, :cond_2

    new-instance p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-direct {p0, v1}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance v0, Linet/ipaddr/AddressValueException;

    const-string v1, "ipaddress.error.invalid.zone"

    int-to-long v2, p0

    invoke-direct {v0, v1, v2, v3}, Linet/ipaddr/AddressValueException;-><init>(Ljava/lang/String;J)V

    throw v0
.end method

.method public static synthetic e([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->lambda$new$0([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f([BLjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->lambda$new$1([BLjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g([BIILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6Address;->lambda$new$3([BIILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private getConverted(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->converter:Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;

    invoke-interface {p1, p0}, Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;->toIPv4(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private varargs getConverted([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 6

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Linet/ipaddr/IPAddress;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    aput-object p1, v0, v2

    return-object v0
.end method

.method private getLowestOrHighest(ZZ)Linet/ipaddr/ipv6/IPv6Address;
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLowestOrHighestSection(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    :goto_0
    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    goto :goto_1

    :cond_2
    iget-object v0, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_0

    :cond_3
    iget-object v0, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_0

    :goto_1
    if-nez v0, :cond_d

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    if-eqz v5, :cond_6

    new-instance v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    invoke-direct {v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;-><init>()V

    iput-object v2, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_6
    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    iget-object v0, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    if-nez v0, :cond_7

    :goto_3
    move v3, v4

    :cond_7
    move v5, v3

    goto :goto_4

    :cond_8
    iget-object v0, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_9
    iget-object v0, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    if-nez v0, :cond_7

    goto :goto_3

    :goto_4
    if-eqz v5, :cond_c

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    if-eqz p1, :cond_b

    if-eqz p2, :cond_a

    iput-object v0, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_5

    :cond_a
    iput-object v0, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_5

    :cond_b
    iput-object v0, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    :cond_c
    :goto_5
    monitor-exit p0

    :cond_d
    return-object v0

    :goto_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static getZone(Ljava/net/Inet6Address;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getScopedInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;-><init>(Ljava/net/NetworkInterface;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p0

    if-eqz p0, :cond_1

    new-instance v0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-direct {v0, p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;-><init>(I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getZoneString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic h(Ljava/math/BigInteger;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->lambda$new$2(Ljava/math/BigInteger;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private hasNoStringCache()Z
    .locals 2

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v1

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic i(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->lambda$new$5(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private isSameZone(Linet/ipaddr/ipv6/IPv6Address;)Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    iget-object p1, p1, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static synthetic j(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6Address;->lambda$new$4(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Linet/ipaddr/ipv6/IPv6Address;->join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;ZLjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method private static join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;ZLjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 3

    .line 2
    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v1

    if-eqz p3, :cond_1

    and-int/lit8 p3, v0, 0x2

    const/4 v2, 0x2

    invoke-virtual {p1, p3, v2}, Linet/ipaddr/mac/MACAddressSegment;->matchesWithMask(II)Z

    move-result p3

    if-eqz p3, :cond_0

    xor-int/lit8 v0, v0, 0x2

    xor-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    new-instance p0, Linet/ipaddr/IncompatibleAddressException;

    const-string p2, "ipaddress.mac.error.not.eui.convertible"

    invoke-direct {p0, p1, p2}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    shl-int/lit8 p1, v0, 0x8

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result p3

    or-int/2addr p1, p3

    shl-int/lit8 p3, v1, 0x8

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result p2

    or-int/2addr p2, p3

    invoke-virtual {p0, p1, p2, p4}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Linet/ipaddr/ipv6/IPv6Address;I[Linet/ipaddr/ipv6/IPv6AddressSegment;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->lambda$nonZeroHostIterator$6(I[Linet/ipaddr/ipv6/IPv6AddressSegment;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    check-cast p2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSection([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$1([BLjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 6

    check-cast p2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, p0

    const/16 v4, 0x8

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSection([BIIILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$2(Ljava/math/BigInteger;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 2

    check-cast p2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p2

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v0, p1, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$3([BIILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 6

    check-cast p4, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p4}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    const/16 v4, 0x8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSection([BIIILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$4(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    check-cast p3, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p3}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$5(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 1

    check-cast p2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object p2

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Linet/ipaddr/ipv6/IPv6Address;->toFullEUI64Section(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$nonZeroHostIterator$6(I[Linet/ipaddr/ipv6/IPv6AddressSegment;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->isZeroHost([Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z

    move-result p1

    return p1
.end method

.method public static toEUI64Segments([Linet/ipaddr/ipv6/IPv6AddressSegment;ILinet/ipaddr/mac/MACAddressSection;IZLinet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;)[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 17

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    if-lez v4, :cond_0

    invoke-virtual {v0, v7}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v8

    move v9, v6

    goto :goto_0

    :cond_0
    move v9, v7

    const/4 v8, 0x0

    :goto_0
    if-gt v1, v6, :cond_1

    if-ge v9, v4, :cond_1

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v9}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v9

    goto :goto_1

    :cond_1
    move v10, v9

    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x2

    if-gt v1, v11, :cond_2

    if-ge v10, v4, :cond_2

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v0, v10}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v10

    goto :goto_2

    :cond_2
    move v11, v10

    const/4 v10, 0x0

    :goto_2
    const/4 v12, 0x3

    if-gt v1, v12, :cond_3

    if-ge v11, v4, :cond_3

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v11

    goto :goto_3

    :cond_3
    move v12, v11

    const/4 v11, 0x0

    :goto_3
    const/4 v13, 0x4

    if-gt v1, v13, :cond_4

    if-ge v12, v4, :cond_4

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v12

    goto :goto_4

    :cond_4
    move v13, v12

    const/4 v12, 0x0

    :goto_4
    const/4 v14, 0x5

    if-gt v1, v14, :cond_5

    if-ge v13, v4, :cond_5

    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v13

    goto :goto_5

    :cond_5
    move v14, v13

    const/4 v13, 0x0

    :goto_5
    const/4 v15, 0x6

    if-gt v1, v15, :cond_6

    if-ge v14, v4, :cond_6

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v14

    goto :goto_6

    :cond_6
    move v15, v14

    const/4 v14, 0x0

    :goto_6
    const/4 v5, 0x7

    if-gt v1, v5, :cond_7

    if-ge v15, v4, :cond_7

    invoke-virtual {v0, v15}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v3, v7}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v15

    const/16 v5, 0xfe

    invoke-virtual {v3, v5}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    if-eqz p7, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    :goto_8
    if-eqz v8, :cond_9

    move/from16 v16, v6

    goto :goto_9

    :cond_9
    const/16 v16, 0x0

    :goto_9
    if-nez v16, :cond_b

    if-eqz v9, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v16, p1

    goto :goto_c

    :cond_b
    :goto_a
    if-eqz v16, :cond_c

    if-nez v9, :cond_d

    move-object v9, v4

    goto :goto_b

    :cond_c
    move-object v8, v4

    :cond_d
    :goto_b
    add-int/lit8 v16, p1, 0x1

    invoke-static {v2, v8, v9, v6, v7}, Linet/ipaddr/ipv6/IPv6Address;->join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;ZLjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v8

    aput-object v8, p0, p1

    :goto_c
    if-eqz p4, :cond_17

    if-eqz v10, :cond_e

    move v8, v6

    goto :goto_d

    :cond_e
    const/4 v8, 0x0

    :goto_d
    const-string v9, "ipaddress.mac.error.not.eui.convertible"

    if-nez v8, :cond_f

    if-eqz v11, :cond_12

    :cond_f
    if-nez v8, :cond_11

    const/16 v8, 0xff

    invoke-virtual {v11, v8}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result v8

    if-eqz v8, :cond_10

    move-object v10, v4

    goto :goto_e

    :cond_10
    new-instance v1, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v1, v0, v9}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_e
    add-int/lit8 v8, v16, 0x1

    invoke-static {v2, v10, v15, v7}, Linet/ipaddr/ipv6/IPv6Address;->join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v10

    aput-object v10, p0, v16

    move/from16 v16, v8

    :cond_12
    if-eqz v12, :cond_13

    move v8, v6

    goto :goto_f

    :cond_13
    const/4 v8, 0x0

    :goto_f
    if-nez v8, :cond_14

    if-eqz v13, :cond_1e

    :cond_14
    if-eqz v8, :cond_16

    invoke-virtual {v12, v5}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result v5

    if-eqz v5, :cond_15

    if-nez v13, :cond_16

    move-object v13, v4

    goto :goto_10

    :cond_15
    new-instance v1, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v1, v0, v9}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v1

    :cond_16
    :goto_10
    add-int/lit8 v0, v16, 0x1

    invoke-static {v2, v3, v13, v7}, Linet/ipaddr/ipv6/IPv6Address;->join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    aput-object v3, p0, v16

    :goto_11
    move/from16 v16, v0

    goto :goto_14

    :cond_17
    if-eqz v10, :cond_18

    add-int/lit8 v0, v16, 0x1

    invoke-static {v2, v10, v15, v7}, Linet/ipaddr/ipv6/IPv6Address;->join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v5

    aput-object v5, p0, v16

    move/from16 v16, v0

    :cond_18
    if-eqz v11, :cond_19

    add-int/lit8 v0, v16, 0x1

    invoke-static {v2, v3, v11, v7}, Linet/ipaddr/ipv6/IPv6Address;->join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    aput-object v3, p0, v16

    move/from16 v16, v0

    :cond_19
    if-eqz v12, :cond_1a

    move v0, v6

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_1b

    if-eqz v13, :cond_1e

    :cond_1b
    if-eqz v0, :cond_1c

    if-nez v13, :cond_1d

    move-object v13, v4

    goto :goto_13

    :cond_1c
    move-object v12, v4

    :cond_1d
    :goto_13
    add-int/lit8 v0, v16, 0x1

    invoke-static {v2, v12, v13, v7}, Linet/ipaddr/ipv6/IPv6Address;->join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    aput-object v3, p0, v16

    goto :goto_11

    :cond_1e
    :goto_14
    if-eqz v14, :cond_1f

    goto :goto_15

    :cond_1f
    const/4 v6, 0x0

    :goto_15
    if-nez v6, :cond_20

    if-eqz v1, :cond_23

    :cond_20
    if-eqz v6, :cond_21

    if-nez v1, :cond_22

    move-object v1, v4

    goto :goto_16

    :cond_21
    move-object v14, v4

    :cond_22
    :goto_16
    invoke-static {v2, v14, v1, v7}, Linet/ipaddr/ipv6/IPv6Address;->join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    aput-object v0, p0, v16

    :cond_23
    return-object p0
.end method

.method private static toFullEUI64Section(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 9

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v1

    iget v3, p1, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    if-nez v3, :cond_5

    iget v3, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-nez v3, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    const-string v4, "ipaddress.mac.error.not.eui.convertible"

    const/4 v5, 0x4

    if-lt v3, v5, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v3

    const/16 v6, 0x8

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    if-ne v3, v1, :cond_2

    invoke-virtual {p2, v6}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v8

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v5, v8, v1}, Linet/ipaddr/IPAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x40

    if-gt v1, v3, :cond_1

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v4

    move-object v0, v8

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Linet/ipaddr/ipv6/IPv6Address;->toEUI64Segments([Linet/ipaddr/ipv6/IPv6AddressSegment;ILinet/ipaddr/mac/MACAddressSection;IZLinet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p2, v8}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Linet/ipaddr/AddressValueException;

    invoke-direct {v0, p1, v4}, Linet/ipaddr/AddressValueException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Linet/ipaddr/AddressValueException;

    invoke-direct {v1, p0, v4}, Linet/ipaddr/AddressValueException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Linet/ipaddr/AddressPositionException;

    iget v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    invoke-direct {v1, p0, v2}, Linet/ipaddr/AddressPositionException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v1

    :cond_5
    new-instance v0, Linet/ipaddr/AddressPositionException;

    iget v1, p1, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    invoke-direct {v0, p1, v1}, Linet/ipaddr/AddressPositionException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v0
.end method

.method public static toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressNetwork;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 11

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/16 v6, 0x10

    const v7, 0xffff

    const/16 v8, 0x3a

    const/16 v9, 0x10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v10, p4

    invoke-static/range {v0 .. v10}, Linet/ipaddr/IPAddress;->toNormalizedString(Linet/ipaddr/AddressNetwork$PrefixConfiguration;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;IIIICILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddress;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddress;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 9
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 10
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddress;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 9
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 10
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/Address;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->assignMinPrefixForBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->assignMinPrefixForBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public assignMinPrefixForBlock()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddress;->assignMinPrefixForBlock()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->assignPrefixForSingleBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->assignPrefixForSingleBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public assignPrefixForSingleBlock()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddress;->assignPrefixForSingleBlock()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    return-object v0
.end method

.method public bridge synthetic bitwiseOr(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->bitwiseOr(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bitwiseOr(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->bitwiseOr(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bitwiseOr(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6Address;->bitwiseOr(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bitwiseOr(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->bitwiseOr(Linet/ipaddr/ipv6/IPv6AddressSection;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bitwiseOrNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->bitwiseOrNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bitwiseOrNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->bitwiseOrNetwork(Linet/ipaddr/ipv6/IPv6AddressSection;I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public blockIterator(I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->blockIterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->blockSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public blockStream(I)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public cache(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;)V
    .locals 3

    if-nez p1, :cond_0

    if-eqz p2, :cond_8

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSingleLowestOrHighestSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->cache(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection;)V

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    if-eqz v1, :cond_4

    :cond_3
    if-eqz p2, :cond_8

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    if-nez v0, :cond_8

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    if-nez v0, :cond_5

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    iput-object p1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    :goto_1
    iput-object p2, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    iget-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    if-nez v1, :cond_6

    iput-object p1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    :cond_6
    iget-object p1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_8
    :goto_4
    return-void
.end method

.method public contains(Linet/ipaddr/Address;)Z
    .locals 1

    invoke-super {p0, p1}, Linet/ipaddr/Address;->contains(Linet/ipaddr/Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->isSameZone(Linet/ipaddr/ipv6/IPv6Address;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 2
    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toIPv6()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Linet/ipaddr/AddressConversionException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/AddressConversionException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)V

    throw v0
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->coverWithPrefixBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic coverWithPrefixBlock(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->coverWithPrefixBlock(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->coverWithPrefixBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public coverWithPrefixBlock()Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-static {p0, v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    return-object v0
.end method

.method public coverWithPrefixBlock(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 6

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    new-instance v1, Linet/ipaddr/ipv4/f;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v2, Linet/ipaddr/ipv4/f;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Linet/ipaddr/ipv4/f;-><init>(I)V

    sget-object v3, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Linet/ipaddr/ipv4/g;

    const/4 v5, 0x7

    invoke-direct {v4, v3, v5}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    invoke-static {v0, p1, v1, v2, v4}, Linet/ipaddr/ipv6/IPv6AddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    return-object p1
.end method

.method public createFromStringParams()Linet/ipaddr/IPAddressStringParameters;
    .locals 2

    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getIPv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->setNetwork(Linet/ipaddr/ipv4/IPv4AddressNetwork;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->setNetwork(Linet/ipaddr/ipv6/IPv6AddressNetwork;)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    return-object v0
.end method

.method public get6To4IPv4Address()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getEmbeddedIPv4Address(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getBitCount()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public getByteCount()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Linet/ipaddr/ipv6/IPv6Address$1;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    iget-object v3, v0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-direct {v1, p0, v2, v3}, Linet/ipaddr/ipv6/IPv6Address$1;-><init>(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)V

    iget-boolean v0, v0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    iput-boolean v0, v1, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    return-object v1
.end method

.method public getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getEmbeddedIPv4Address()Linet/ipaddr/ipv4/IPv4Address;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getIPv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getEmbeddedIPv4AddressSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedIPv4Address(I)Linet/ipaddr/ipv4/IPv4Address;
    .locals 3

    .line 2
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getEmbeddedIPv4Address()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getIPv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, p1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getEmbeddedIPv4AddressSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getHostMask()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getHostMask()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public getHostMask()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddress;->getHostMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    return-object v0
.end method

.method public bridge synthetic getHostSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getHostSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getHostSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getHostSection()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getHostSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getIPv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;
    .locals 1

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getIPv6Zone()Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    return-object v0
.end method

.method public getIterable()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddress;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 6
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getLowestOrHighest(ZZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLowerNonZeroHost()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLowerNonZeroHost()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public getLowerNonZeroHost()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getLowestOrHighest(ZZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public getMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;
    .locals 1

    invoke-static {}, Linet/ipaddr/Address;->defaultMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;
    .locals 1

    .line 3
    invoke-static {}, Linet/ipaddr/Address;->defaultIpv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetworkMask()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetworkMask()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkMask()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddress;->getNetworkMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    return-object v0
.end method

.method public bridge synthetic getNetworkSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetworkSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getNetworkSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNetworkSection(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->getNetworkSection(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkSection()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkSection(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getParts(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 0

    .line 1
    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->from(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getParts(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    move-result-object p1

    return-object p1
.end method

.method public getParts(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 4

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getParts(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    move-result-object v0

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getConverted(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->ipv4ConverterOptions:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {v1, p1}, Linet/ipaddr/ipv4/IPv4Address;->getParts(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    move-result-object p1

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getSection()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 7
    invoke-super {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 8
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 9
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getSegmentCount()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/AddressSegment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSegments()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSegments()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getSegments()[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegments()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddress;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getLowestOrHighest(ZZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public getZone()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->getZoneString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNoValueCache()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasZone()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Linet/ipaddr/Address;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->increment(J)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->increment(J)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddress;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->increment(J)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->increment(J)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public increment(J)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddress;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public incrementBoundary(J)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic intersect(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->intersect(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->intersect(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->isSameZone(Linet/ipaddr/ipv6/IPv6Address;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public is6Over4()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    const v2, 0xfe80

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public is6To4()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v0

    return v0
.end method

.method public isEUI64()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->isEUI64()Z

    move-result v0

    return v0
.end method

.method public isIPv4Compatible()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public isIPv4Convertible()Z
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress;->DEFAULT_ADDRESS_CONVERTER:Linet/ipaddr/IPAddressConverter;

    invoke-interface {v0, p0}, Linet/ipaddr/IPAddressConverter;->isIPv4Convertible(Linet/ipaddr/IPAddress;)Z

    move-result v0

    return v0
.end method

.method public isIPv4Mapped()Z
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    const v2, 0xffff

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public isIPv4Translatable()Z
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    const v1, 0xffff

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isIPv6Convertible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIsatap()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    const v2, 0xfe80

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    const/16 v3, 0x5efe

    invoke-virtual {v2, v3}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public isLinkLocal()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->isMulticast()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Linet/ipaddr/IPAddressSegment;->matchesWithMask(II)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0xfe80

    invoke-virtual {v1, v3, v2}, Linet/ipaddr/IPAddressSegment;->matchesWithPrefixMask(ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isLocal()Z
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->isMulticast()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    const/16 v3, 0x8

    const/16 v4, 0xf

    invoke-virtual {v0, v3, v4}, Linet/ipaddr/IPAddressSegment;->matchesWithMask(II)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/IPAddressSegment;->getValueCount()I

    move-result v3

    const/4 v5, 0x5

    if-gt v3, v5, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    and-int/2addr v3, v4

    if-lt v3, v2, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v3

    and-int/2addr v3, v4

    if-gt v3, v5, :cond_1

    return v2

    :cond_1
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0xff30

    invoke-virtual {v0, v4, v3}, Linet/ipaddr/IPAddressSegment;->matchesWithPrefixMask(ILjava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    const v3, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Linet/ipaddr/IPAddressSegment;->matchesWithPrefixMask(ILjava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->isLinkLocal()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->isSiteLocal()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->isUniqueLocal()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->isAnyLocal()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public isLoopback()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSegmentCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    invoke-virtual {v0, v3}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v0

    return v0
.end method

.method public isMulticast()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xff00

    invoke-virtual {v0, v2, v1}, Linet/ipaddr/IPAddressSegment;->matchesWithPrefixMask(ILjava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public isSameAddress(Linet/ipaddr/Address;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6Address;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/Address;->isSameAddress(Linet/ipaddr/Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->isSameZone(Linet/ipaddr/ipv6/IPv6Address;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSiteLocal()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->isMulticast()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Linet/ipaddr/IPAddressSegment;->matchesWithMask(II)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0xfec0

    invoke-virtual {v1, v3, v2}, Linet/ipaddr/IPAddressSegment;->matchesWithPrefixMask(ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isTeredo()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    const/16 v2, 0x2001

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public isUniqueLocal()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xfc00

    invoke-virtual {v0, v2, v1}, Linet/ipaddr/IPAddressSegment;->matchesWithPrefixMask(ILjava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public isWellKnownIPv4Translatable()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    const v3, 0xff9b

    invoke-virtual {v2, v3}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mask(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->mask(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mask(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->mask(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public mask(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6Address;->mask(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public mask(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->mask(Linet/ipaddr/ipv6/IPv6AddressSection;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic maskNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->maskNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public maskNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->maskNetwork(Linet/ipaddr/ipv6/IPv6AddressSection;I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeToPrefixBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->mergeToPrefixBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public varargs mergeToPrefixBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/Address;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Linet/ipaddr/ipv6/IPv6Address;

    const/4 v0, 0x0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getConverted([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-static {p1}, Linet/ipaddr/IPAddress;->getMergedPrefixBlocks([Linet/ipaddr/IPAddressSegmentSeries;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6Address;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv6/IPv6Address;

    return-object p1
.end method

.method public bridge synthetic mergeToSequentialBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->mergeToSequentialBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public varargs mergeToSequentialBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/Address;->isSequential()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    aput-object v0, p1, v1

    return-object p1

    :cond_0
    invoke-virtual {p1}, [Linet/ipaddr/IPAddress;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/IPAddress;

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getConverted([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-static {p1, v0}, Linet/ipaddr/IPAddress;->getMergedSequentialBlocks([Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6Address;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv6/IPv6Address;

    return-object p1
.end method

.method public nonZeroHostIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->includesZeroHost()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Linet/ipaddr/ipv4/c;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2, p0}, Linet/ipaddr/ipv4/c;-><init>(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixIterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockIterator(I)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixIterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;ZI)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixBlockStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockStream(I)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public prefixIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixIterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixIterator(I)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixIterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;ZI)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public prefixStream(I)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->prefixSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removePrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/Address;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removePrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removePrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removePrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public removePrefixLength()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public removeZone()Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public replace(IILinet/ipaddr/ipv6/IPv6Address;I)Linet/ipaddr/ipv6/IPv6Address;
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p3}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v3

    sub-int p3, p2, p1

    add-int v5, p3, p4

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressSection;->replace(IILinet/ipaddr/ipv6/IPv6AddressSection;II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddress;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public reverseBits(Z)Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseBytes()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseBytes()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseBytes()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddress;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseBytes()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseBytes()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytes()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseSegments()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseSegments()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseSegments()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->reverseSegments()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public reverseSegments()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseSegments()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public segmentsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->segmentsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsNonZeroHostIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->segmentsNonZeroHostIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->segmentsSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public sequentialBlockIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/IPAddress;->sequentialBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sequentialBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/IPAddress;->sequentialBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public sequentialBlockStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/IPAddress;->sequentialBlockStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddress;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZZ)Linet/ipaddr/IPAddress;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(IZZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 10
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 11
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(IZZ)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 12
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public setZone(Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithPrefixBlocks()[Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->spanWithPrefixBlocks()[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithPrefixBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->spanWithPrefixBlocks()[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public spanWithPrefixBlocks()[Linet/ipaddr/ipv6/IPv6Address;
    .locals 3

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/Address;->isSequential()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/Address;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Linet/ipaddr/ipv6/IPv6Address;

    const/4 v1, 0x0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    invoke-virtual {p0, p0}, Linet/ipaddr/ipv6/IPv6Address;->spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddress;->spanWithBlocks(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv6/IPv6Address;

    return-object v0
.end method

.method public spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;
    .locals 9

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    new-instance v2, Linet/ipaddr/ipv4/f;

    const/16 p1, 0x1a

    invoke-direct {v2, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v3, Linet/ipaddr/ipv4/f;

    const/16 p1, 0x1b

    invoke-direct {v3, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    sget-object p1, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Linet/ipaddr/ipv4/g;

    const/16 v5, 0x8

    invoke-direct {v4, p1, v5}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    new-instance v5, Linet/ipaddr/ipv4/f;

    const/16 p1, 0x1c

    invoke-direct {v5, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v6, Linet/ipaddr/ipv4/f;

    const/16 p1, 0x1d

    invoke-direct {v6, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Linet/ipaddr/ipv6/a;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8}, Linet/ipaddr/ipv6/a;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;I)V

    invoke-static/range {v0 .. v7}, Linet/ipaddr/IPAddress;->getSpanningPrefixBlocks(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv6/IPv6Address;

    return-object p1
.end method

.method public bridge synthetic spanWithRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->spanWithRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public spanWithRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithSequentialBlocks()[Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->spanWithSequentialBlocks()[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spanWithSequentialBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->spanWithSequentialBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithSequentialBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->spanWithSequentialBlocks()[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public spanWithSequentialBlocks()[Linet/ipaddr/ipv6/IPv6Address;
    .locals 3

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/Address;->isSequential()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddress;->spanWithBlocks(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv6/IPv6Address;

    return-object v0
.end method

.method public spanWithSequentialBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;
    .locals 7

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    new-instance v2, Linet/ipaddr/ipv4/f;

    const/16 p1, 0x15

    invoke-direct {v2, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v3, Linet/ipaddr/ipv4/f;

    const/16 p1, 0x16

    invoke-direct {v3, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    sget-object p1, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Linet/ipaddr/ipv4/g;

    const/4 v5, 0x6

    invoke-direct {v4, p1, v5}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    new-instance v5, Linet/ipaddr/ipv4/f;

    const/16 p1, 0x17

    invoke-direct {v5, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddress;->getSpanningSequentialBlocks(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;)[Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv6/IPv6Address;

    return-object p1
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->subtract(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;
    .locals 5

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->subtract(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Linet/ipaddr/ipv6/IPv6Address;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public toAllStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->ALL_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toBase85String()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getAddressfromString()Linet/ipaddr/IPAddressString;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/IPAddressString;->isBase85IPv6()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/IPAddressString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->base85String:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->toBase85String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->base85String:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toBase85String()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public toBinaryString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->binaryString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toBinaryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iput-object v0, v1, Linet/ipaddr/IPAddressSection$IPStringCache;->binaryString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->toBinaryString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->canonicalParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->canonicalString:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toCanonicalWildcardString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->canonicalWildcardString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->wildcardCanonicalParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->canonicalWildcardString:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toCanonicalWildcardString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toCompressedString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedString:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toCompressedString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toCompressedWildcardString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->wildcardCompressedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedWildcardString:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toCompressedWildcardString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toConvertedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->isIPv4Convertible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toMixedString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toEUI(Z)Linet/ipaddr/mac/MACAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toEUI(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public toFullString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->fullString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->fullParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->fullString:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toFullString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toHexString(Z)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    if-eqz p1, :cond_0

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexStringPrefixed:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexString:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toHexString(ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iput-object v0, p1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexStringPrefixed:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iput-object v0, p1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexString:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->toHexString(Z)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public toIPv4()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress;->DEFAULT_ADDRESS_CONVERTER:Linet/ipaddr/IPAddressConverter;

    invoke-interface {v0, p0}, Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;->toIPv4(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public toIPv6()Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    return-object p0
.end method

.method public toInetAddress()Ljava/net/Inet6Address;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoValueCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;->inetAddress:Ljava/net/Inet6Address;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->addressCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toInetAddressImpl()Ljava/net/Inet6Address;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;->inetAddress:Ljava/net/Inet6Address;

    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    invoke-super {p0}, Linet/ipaddr/IPAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    return-object v0
.end method

.method public bridge synthetic toInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toInetAddress()Ljava/net/Inet6Address;

    move-result-object v0

    return-object v0
.end method

.method public toInetAddressImpl()Ljava/net/Inet6Address;
    .locals 3

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesInternal()[B

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesScopeId()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getAssociatedScopeId()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesIntf()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getAssociatedIntf()Ljava/net/NetworkInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getAssociatedIntf()Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    check-cast v0, Ljava/net/Inet6Address;

    return-object v0
.end method

.method public bridge synthetic toInetAddressImpl()Ljava/net/InetAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toInetAddressImpl()Ljava/net/Inet6Address;

    move-result-object v0

    return-object v0
.end method

.method public toMappedIPv4Segments()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->isIPv4Mapped()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getEmbeddedIPv4AddressSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toMaxHost()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->toMaxHost(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toMaxHost()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->toMaxHost(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public toMaxHost()Linet/ipaddr/ipv6/IPv6Address;
    .locals 3

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->includesMaxHost()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->isSingleNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->createMaxHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public toMaxHost(I)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toMaxHost()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMaxHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public toMixedString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->mixedString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->mixedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->mixedString:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMixedString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->normalizedString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->normalizedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->normalizedString:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->getZoneString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;
    .locals 2

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->getZoneString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString(ZLinet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;
    .locals 19

    .line 5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_0

    iget-object v2, v0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddress;->getAddressfromString()Linet/ipaddr/IPAddressString;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/IPAddressString;->isMixedIPv6()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->makeMixed()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    iget v4, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->base:I

    iget-boolean v5, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->expandSegments:Z

    iget-object v6, v1, Linet/ipaddr/IPAddressSection$IPStringOptions;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    iget-object v7, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    iget-object v8, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->segmentStrPrefix:Ljava/lang/String;

    iget-object v10, v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->ipv4Opts:Linet/ipaddr/IPAddressSection$IPStringOptions;

    iget-object v11, v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->compressOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    iget-object v12, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->separator:Ljava/lang/Character;

    iget-char v13, v1, Linet/ipaddr/IPAddressSection$IPStringOptions;->zoneSeparator:C

    iget-object v14, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->addrLabel:Ljava/lang/String;

    iget-object v15, v1, Linet/ipaddr/IPAddressSection$IPStringOptions;->addrSuffix:Ljava/lang/String;

    iget-boolean v3, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->reverse:Z

    iget-boolean v9, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->splitDigits:Z

    iget-boolean v1, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->uppercase:Z

    move/from16 v16, v3

    move-object v3, v2

    move/from16 v17, v9

    const/4 v9, 0x1

    move/from16 v18, v1

    invoke-direct/range {v3 .. v18}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;-><init>(IZLinet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;ZLinet/ipaddr/IPAddressSection$IPStringOptions;Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;Ljava/lang/Character;CLjava/lang/String;Ljava/lang/String;ZZZ)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toNormalizedWildcardString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->normalizedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->wildcardNormalizedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->normalizedWildcardString:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedWildcardString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toOctalString(Z)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    if-eqz p1, :cond_0

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->octalStringPrefixed:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->octalString:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toOctalString(ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iput-object v0, p1, Linet/ipaddr/IPAddressSection$IPStringCache;->octalStringPrefixed:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iput-object v0, p1, Linet/ipaddr/IPAddressSection$IPStringCache;->octalString:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->toOctalString(Z)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public toPrefixBlock()Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 7
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 8
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public toPrefixLengthString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->networkPrefixLengthString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->networkPrefixLengthParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->networkPrefixLengthString:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixLengthString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toSQLWildcardString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->sqlWildcardString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->sqlWildcardParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->sqlWildcardString:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toSQLWildcardString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toSegmentedBinaryString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->segmentedBinaryString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toSegmentedBinaryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iput-object v0, v1, Linet/ipaddr/IPAddressSection$IPStringCache;->segmentedBinaryString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toSegmentedBinaryString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public bridge synthetic toSequentialRange()Linet/ipaddr/IPAddressSeqRange;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toSequentialRange()Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public toSequentialRange()Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 3

    .line 3
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;-><init>(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;)V

    return-object v0
.end method

.method public toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 1

    .line 4
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;-><init>(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;)V

    return-object v0
.end method

.method public toStandardStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->STANDARD_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 0

    .line 1
    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->from(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object p1

    return-object p1
.end method

.method public toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->getZoneString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;

    move-result-object v0

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getConverted(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->ipv4ConverterOptions:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {v1, p1}, Linet/ipaddr/ipv4/IPv4Address;->toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;->addAll(Linet/ipaddr/format/util/IPAddressPartStringCollection;)V

    :cond_0
    return-object v0
.end method

.method public toSubnetString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toPrefixLengthString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUNCHostName()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->uncString:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address;->zone:Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6Address;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v2

    sget-object v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->uncParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {v2, v3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->uncString:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public toUpperInetAddress()Ljava/net/Inet6Address;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/IPAddress;->toUpperInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    return-object v0
.end method

.method public bridge synthetic toUpperInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toUpperInetAddress()Ljava/net/Inet6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toZeroHost()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->toZeroHost(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroHost(Z)Linet/ipaddr/IPAddress;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->toZeroHost(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toZeroHost()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->toZeroHost(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public toZeroHost()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->toZeroHost(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public toZeroHost(I)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 7
    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toZeroHost()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public toZeroHost(Z)Linet/ipaddr/ipv6/IPv6Address;
    .locals 3

    .line 8
    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->includesZeroHost()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->isSingleNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->createZeroHost(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toZeroNetwork()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->toZeroNetwork()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public toZeroNetwork()Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getBitCount()I

    move-result v1

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->createZeroNetwork()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->checkIdentity(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6Address;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method
