.class public Linet/ipaddr/ipv4/IPv4Address;
.super Linet/ipaddr/IPAddress;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;,
        Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddress;",
        "Ljava/lang/Iterable<",
        "Linet/ipaddr/ipv4/IPv4Address;",
        ">;"
    }
.end annotation


# static fields
.field public static final BITS_PER_SEGMENT:I = 0x8

.field public static final BIT_COUNT:I = 0x20

.field public static final BYTES_PER_SEGMENT:I = 0x1

.field public static final BYTE_COUNT:I = 0x4

.field public static final DEFAULT_TEXTUAL_RADIX:I = 0xa

.field public static final MAX_VALUE:I = -0x1

.field public static final MAX_VALUE_PER_SEGMENT:I = 0xff

.field public static final REVERSE_DNS_SUFFIX:Ljava/lang/String; = ".in-addr.arpa"

.field public static final SEGMENT_COUNT:I = 0x4

.field public static final SEGMENT_SEPARATOR:C = '.'

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field transient sectionCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4Address;-><init>(ILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/d;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv4/d;-><init>(ILjava/lang/Integer;)V

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4Address;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/ipv4/IPv4Address;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)V
    .locals 2

    .line 5
    new-instance v0, Linet/ipaddr/ipv4/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Linet/ipaddr/ipv4/a;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv4/IPv4AddressSection;)V
    .locals 3

    .line 7
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddress;-><init>(Linet/ipaddr/IPAddressSection;)V

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/AddressValueException;

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result p1

    int-to-long v1, p1

    const-string p1, "ipaddress.error.ipv4.invalid.segment.count"

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/AddressValueException;-><init>(Ljava/lang/String;J)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/Inet4Address;)V
    .locals 2

    .line 8
    invoke-virtual {p1}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/ipv4/IPv4Address;-><init>(Ljava/net/Inet4Address;[BLjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet4Address;Ljava/lang/Integer;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/ipv4/IPv4Address;-><init>(Ljava/net/Inet4Address;[BLjava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/Inet4Address;[BLjava/lang/Integer;)V
    .locals 2

    .line 10
    new-instance v0, Linet/ipaddr/ipv4/b;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p3}, Linet/ipaddr/ipv4/b;-><init>([BILjava/lang/Integer;)V

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p2

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setInetAddress(Ljava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4Address;-><init>([BLjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Linet/ipaddr/ipv4/IPv4Address;-><init>([BIILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>([BIILjava/lang/Integer;)V
    .locals 7

    .line 13
    new-instance v6, Linet/ipaddr/ipv4/e;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/e;-><init>([BIIILjava/lang/Integer;)V

    invoke-direct {p0, v6}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/Integer;)V
    .locals 2

    .line 14
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Linet/ipaddr/ipv4/IPv4Address;-><init>([BIILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv4/IPv4AddressSegment;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4Address;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;)V
    .locals 2

    .line 16
    new-instance v0, Linet/ipaddr/ipv4/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Linet/ipaddr/ipv4/h;-><init>(Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddress;-><init>(Ljava/util/function/Function;)V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSegmentCount()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Linet/ipaddr/AddressValueException;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSegmentCount()I

    move-result p2

    int-to-long v0, p2

    const-string p2, "ipaddress.error.ipv4.invalid.segment.count"

    invoke-direct {p1, p2, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(Ljava/lang/String;J)V

    throw p1
.end method

.method private checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic e(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4Address;->lambda$new$4(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->lambda$new$0([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Linet/ipaddr/ipv4/IPv4Address;I[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->lambda$nonZeroHostIterator$5(I[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z

    move-result p0

    return p0
.end method

.method private getConverted(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 1
    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->converter:Linet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;

    invoke-interface {p1, p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;->toIPv6(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

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

    invoke-virtual {p0, v3}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_0

    :cond_0
    aput-object p0, v0, v2

    return-object v0
.end method

.method private getLowestOrHighest(ZZ)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLowestOrHighest(Linet/ipaddr/ipv4/IPv4Address;ZZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic h(ILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->lambda$new$1(ILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i([BIILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4Address;->lambda$new$3([BIILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j([BLjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->lambda$new$2([BLjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    check-cast p2, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSection([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$1(ILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    check-cast p2, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSectionInternal(ILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$2([BLjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 6

    check-cast p2, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, p0

    const/4 v4, 0x4

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSection([BIIILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$3([BIILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 6

    check-cast p4, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p4}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    const/4 v4, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSection([BIIILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$4(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;
    .locals 0

    check-cast p3, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p3}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$nonZeroHostIterator$5(I[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->isZeroHost([Linet/ipaddr/ipv4/IPv4AddressSegment;I)Z

    move-result p1

    return p1
.end method

.method public static toNormalizedString(Linet/ipaddr/ipv4/IPv4AddressNetwork;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/16 v7, 0xff

    const/16 v8, 0x2e

    const/16 v9, 0xa

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v10}, Linet/ipaddr/IPAddress;->toNormalizedString(Linet/ipaddr/AddressNetwork$PrefixConfiguration;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;IIIICILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddress;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddress;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 9
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 10
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddress;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 9
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 10
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/Address;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->assignMinPrefixForBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->assignMinPrefixForBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public assignMinPrefixForBlock()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddress;->assignMinPrefixForBlock()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->assignPrefixForSingleBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->assignPrefixForSingleBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public assignPrefixForSingleBlock()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddress;->assignPrefixForSingleBlock()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method

.method public bridge synthetic bitwiseOr(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->bitwiseOr(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bitwiseOr(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->bitwiseOr(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bitwiseOr(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4Address;->bitwiseOr(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bitwiseOr(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->bitwiseOr(Linet/ipaddr/ipv4/IPv4AddressSection;Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bitwiseOrNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->bitwiseOrNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bitwiseOrNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->bitwiseOrNetwork(Linet/ipaddr/ipv4/IPv4AddressSection;I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public blockIterator(I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->blockIterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->blockSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public blockStream(I)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public cache(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)V
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->cache(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)V

    return-void
.end method

.method public bridge synthetic convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 2
    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toIPv4()Linet/ipaddr/ipv4/IPv4Address;

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
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->coverWithPrefixBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic coverWithPrefixBlock(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->coverWithPrefixBlock(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->coverWithPrefixBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public coverWithPrefixBlock()Linet/ipaddr/ipv4/IPv4Address;
    .locals 2

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-static {p0, v0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method

.method public coverWithPrefixBlock(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 5

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    new-instance v0, Linet/ipaddr/ipv4/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v2, Linet/ipaddr/ipv4/f;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Linet/ipaddr/ipv4/f;-><init>(I)V

    sget-object v3, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Linet/ipaddr/ipv4/g;

    invoke-direct {v4, v3, v1}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    invoke-static {p0, p1, v0, v2, v4}, Linet/ipaddr/ipv4/IPv4AddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    return-object p1
.end method

.method public createFromStringParams()Linet/ipaddr/IPAddressStringParameters;
    .locals 2

    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->setNetwork(Linet/ipaddr/ipv4/IPv4AddressNetwork;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getIPv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->setNetwork(Linet/ipaddr/ipv6/IPv6AddressNetwork;)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public getBitCount()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getByteCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getHostMask()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getHostMask()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getHostMask()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddress;->getHostMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method

.method public bridge synthetic getHostSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getHostSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getHostSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getHostSection()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getHostSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getIPv4MappedAddress()Linet/ipaddr/ipv6/IPv6Address;
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getIPv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v2, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    aput-object v2, v3, v1

    const v1, 0xffff

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v3, v1

    invoke-virtual {p0, v3}, Linet/ipaddr/ipv4/IPv4Address;->getIPv6Address([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public getIPv6Address([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getIPv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-static {v0, p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->createSection(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public getIPv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;
    .locals 1

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getIterable()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddress;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/ipv4/IPv4Address;
    .locals 2

    .line 6
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Linet/ipaddr/ipv4/IPv4Address;->getLowestOrHighest(ZZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getLowerNonZeroHost()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getLowerNonZeroHost()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getLowerNonZeroHost()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Linet/ipaddr/ipv4/IPv4Address;->getLowestOrHighest(ZZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;
    .locals 1

    .line 3
    invoke-static {}, Linet/ipaddr/Address;->defaultIpv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetworkMask()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetworkMask()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkMask()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddress;->getNetworkMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method

.method public bridge synthetic getNetworkSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetworkSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getNetworkSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNetworkSection(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->getNetworkSection(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkSection()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkSection(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getParts(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 0

    .line 1
    invoke-static {p1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->from(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getParts(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    move-result-object p1

    return-object p1
.end method

.method public getParts(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 4

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getParts(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    move-result-object v0

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getConverted(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->ipv6ConverterOptions:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6Address;->getParts(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

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
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 7
    invoke-super {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 8
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 9
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getSegmentCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/AddressSegment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSegments()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSegments()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getSegments()[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegments()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddress;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Linet/ipaddr/ipv4/IPv4Address;->getLowestOrHighest(ZZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->increment(J)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->increment(J)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddress;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->increment(J)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->increment(J)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public increment(J)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddress;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public incrementBoundary(J)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public intValue()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->intValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic intersect(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->intersect(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->intersect(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public isIPv4Convertible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIPv6Convertible()Z
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress;->DEFAULT_ADDRESS_CONVERTER:Linet/ipaddr/IPAddressConverter;

    invoke-interface {v0, p0}, Linet/ipaddr/IPAddressConverter;->isIPv6Convertible(Linet/ipaddr/IPAddress;)Z

    move-result v0

    return v0
.end method

.method public isLinkLocal()Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->isMulticast()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    const/16 v3, 0xe0

    invoke-virtual {v0, v3}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    const/16 v3, 0xfc

    invoke-virtual {v0, v3}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v2}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    const/16 v3, 0xa9

    invoke-virtual {v0, v3}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    const/16 v3, 0xfe

    invoke-virtual {v0, v3}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public isLocal()Z
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->isMulticast()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    const/16 v3, 0xef

    invoke-virtual {v0, v3}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v2}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v4

    const/16 v5, 0xe0

    invoke-virtual {v0, v5}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/16 v5, 0xe8

    invoke-virtual {v0, v5}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->isLinkLocal()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->isAnyLocal()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public isLoopback()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v0

    return v0
.end method

.method public isMulticast()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe0

    invoke-virtual {v0, v2, v1}, Linet/ipaddr/IPAddressSegment;->matchesWithPrefixMask(ILjava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0xac

    invoke-virtual {v1, v4}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v3, v5, v4}, Linet/ipaddr/IPAddressSegment;->matchesWithPrefixMask(ILjava/lang/Integer;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 v4, 0xc0

    invoke-virtual {v1, v4}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa8

    invoke-virtual {v3, v1}, Linet/ipaddr/IPAddressSegment;->matches(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic mask(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->mask(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mask(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->mask(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public mask(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4Address;->mask(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public mask(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->mask(Linet/ipaddr/ipv4/IPv4AddressSection;Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic maskNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->maskNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public maskNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->maskNetwork(Linet/ipaddr/ipv4/IPv4AddressSection;I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeToPrefixBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->mergeToPrefixBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public varargs mergeToPrefixBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/Address;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Linet/ipaddr/ipv4/IPv4Address;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getConverted([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-static {p1}, Linet/ipaddr/IPAddress;->getMergedPrefixBlocks([Linet/ipaddr/IPAddressSegmentSeries;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4Address;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv4/IPv4Address;

    return-object p1
.end method

.method public bridge synthetic mergeToSequentialBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->mergeToSequentialBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public varargs mergeToSequentialBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/Address;->isSequential()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Linet/ipaddr/ipv4/IPv4Address;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getConverted([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    invoke-static {p1, v0}, Linet/ipaddr/IPAddress;->getMergedSequentialBlocks([Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4Address;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv4/IPv4Address;

    return-object p1
.end method

.method public nonZeroHostIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
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

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Linet/ipaddr/ipv4/c;-><init>(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixIterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockIterator(I)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixIterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;ZI)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixBlockStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

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
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

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
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixIterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixIterator(I)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixIterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;ZI)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

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
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->prefixSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

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
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->removePrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/Address;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->removePrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->removePrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->removePrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public removePrefixLength()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILinet/ipaddr/ipv4/IPv4Address;I)Linet/ipaddr/ipv4/IPv4Address;
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p3}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v3

    sub-int p3, p2, p1

    add-int v5, p3, p4

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/ipv4/IPv4AddressSection;->replace(IILinet/ipaddr/ipv4/IPv4AddressSection;II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddress;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public reverseBits(Z)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseBytes()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseBytes()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseBytes()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddress;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseBytes()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseBytes()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytes()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    .line 5
    return-object p0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseSegments()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseSegments()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseSegments()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->reverseSegments()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public reverseSegments()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

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
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->segmentsIterator()Ljava/util/Iterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->segmentsNonZeroHostIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "[",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->segmentsSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

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
            "Linet/ipaddr/ipv4/IPv4Address;",
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
            "Linet/ipaddr/ipv4/IPv4Address;",
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
            "Linet/ipaddr/ipv4/IPv4Address;",
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
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddress;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZZ)Linet/ipaddr/IPAddress;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(IZZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 10
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 11
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(IZZ)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 12
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithPrefixBlocks()[Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->spanWithPrefixBlocks()[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithPrefixBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->spanWithPrefixBlocks()[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public spanWithPrefixBlocks()[Linet/ipaddr/ipv4/IPv4Address;
    .locals 2

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/Address;->isSequential()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/Address;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Linet/ipaddr/ipv4/IPv4Address;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    invoke-virtual {p0, p0}, Linet/ipaddr/ipv4/IPv4Address;->spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddress;->spanWithBlocks(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method

.method public spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;
    .locals 8

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    new-instance v2, Linet/ipaddr/ipv4/f;

    const/4 p1, 0x5

    invoke-direct {v2, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v3, Linet/ipaddr/ipv4/f;

    const/4 p1, 0x6

    invoke-direct {v3, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    sget-object p1, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Linet/ipaddr/ipv4/g;

    const/4 v0, 0x2

    invoke-direct {v4, p1, v0}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    new-instance v5, Linet/ipaddr/ipv4/f;

    const/4 p1, 0x7

    invoke-direct {v5, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v6, Linet/ipaddr/ipv4/f;

    const/16 p1, 0x8

    invoke-direct {v6, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Linet/ipaddr/ipv4/i;

    const/4 v0, 0x0

    invoke-direct {v7, p1, v0}, Linet/ipaddr/ipv4/i;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;I)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Linet/ipaddr/IPAddress;->getSpanningPrefixBlocks(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv4/IPv4Address;

    return-object p1
.end method

.method public bridge synthetic spanWithRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->spanWithRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public spanWithRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithSequentialBlocks()[Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->spanWithSequentialBlocks()[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spanWithSequentialBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->spanWithSequentialBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithSequentialBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->spanWithSequentialBlocks()[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public spanWithSequentialBlocks()[Linet/ipaddr/ipv4/IPv4Address;
    .locals 3

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/Address;->isSequential()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddress;->spanWithBlocks(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method

.method public spanWithSequentialBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;
    .locals 7

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    new-instance v2, Linet/ipaddr/ipv4/f;

    const/4 p1, 0x2

    invoke-direct {v2, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v3, Linet/ipaddr/ipv4/f;

    const/4 p1, 0x3

    invoke-direct {v3, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    sget-object p1, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Linet/ipaddr/ipv4/g;

    const/4 v0, 0x1

    invoke-direct {v4, p1, v0}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    new-instance v5, Linet/ipaddr/ipv4/f;

    const/4 p1, 0x4

    invoke-direct {v5, p1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddress;->getSpanningSequentialBlocks(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;)[Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv4/IPv4Address;

    return-object p1
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->subtract(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;
    .locals 5

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->subtract(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    array-length v1, p1

    new-array v2, v1, [Linet/ipaddr/ipv4/IPv4Address;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public toAllStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->ALL_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toBroadcastAddress()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toMaxHost()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public toIPv4()Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    return-object p0
.end method

.method public toIPv6()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress;->DEFAULT_ADDRESS_CONVERTER:Linet/ipaddr/IPAddressConverter;

    invoke-interface {v0, p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;->toIPv6(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public toInetAddress()Ljava/net/Inet4Address;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/IPAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public bridge synthetic toInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toInetAddress()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public toInetAtonString(Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toInetAtonString(Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toInetAtonString(Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;I)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->toInetAtonString(Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toMaxHost()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->toMaxHost(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toMaxHost()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->toMaxHost(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public toMaxHost()Linet/ipaddr/ipv4/IPv4Address;
    .locals 3

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->includesMaxHost()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->isSingleNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->createMaxHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public toMaxHost(I)Linet/ipaddr/ipv4/IPv4Address;
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

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toMaxHost()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toMaxHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public toNetworkAddress()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toZeroHost()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public toPrefixBlock()Linet/ipaddr/ipv4/IPv4Address;
    .locals 2

    .line 7
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 8
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public toSegmentedBinaryString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toSegmentedBinaryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSequentialRange()Linet/ipaddr/IPAddressSeqRange;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toSequentialRange()Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public toSequentialRange()Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 3

    .line 3
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;-><init>(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)V

    return-object v0
.end method

.method public toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 1

    .line 4
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;-><init>(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)V

    return-object v0
.end method

.method public toStandardStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->STANDARD_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 0

    .line 1
    invoke-static {p1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->from(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object p1

    return-object p1
.end method

.method public toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 2

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    invoke-virtual {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection;->addAll(Linet/ipaddr/format/util/IPAddressPartStringCollection;)V

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getConverted(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->ipv6ConverterOptions:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6Address;->toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection;->addAll(Linet/ipaddr/format/util/IPAddressPartStringCollection;)V

    :cond_0
    return-object v0
.end method

.method public toUNCHostName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/Address;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUpperInetAddress()Ljava/net/Inet4Address;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/IPAddress;->toUpperInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public bridge synthetic toUpperInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toUpperInetAddress()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toZeroHost()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->toZeroHost(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroHost(Z)Linet/ipaddr/IPAddress;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->toZeroHost(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toZeroHost()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->toZeroHost(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public toZeroHost()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->toZeroHost(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public toZeroHost(I)Linet/ipaddr/ipv4/IPv4Address;
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

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toZeroHost()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public toZeroHost(Z)Linet/ipaddr/ipv4/IPv4Address;
    .locals 3

    .line 8
    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

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

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->createZeroHost(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toZeroNetwork()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->toZeroNetwork()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public toZeroNetwork()Linet/ipaddr/ipv4/IPv4Address;
    .locals 2

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getBitCount()I

    move-result v1

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->createZeroNetwork()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->checkIdentity(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public upperIntValue()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->upperIntValue()I

    move-result v0

    return v0
.end method

.method public upperLongValue()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->upperLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4Address;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method
