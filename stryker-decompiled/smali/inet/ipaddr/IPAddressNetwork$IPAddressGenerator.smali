.class public Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPAddressGenerator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field protected final options:Linet/ipaddr/IPAddressStringParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;-><init>(Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddressStringParameters;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Linet/ipaddr/IPAddressString;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    :cond_0
    iput-object p1, p0, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->options:Linet/ipaddr/IPAddressStringParameters;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv4/IPv4AddressNetwork;Linet/ipaddr/ipv6/IPv6AddressNetwork;)V
    .locals 1

    .line 3
    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->setNetwork(Linet/ipaddr/ipv4/IPv4AddressNetwork;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->setNetwork(Linet/ipaddr/ipv6/IPv6AddressNetwork;)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p2

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getEmbeddedIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->setNetwork(Linet/ipaddr/ipv4/IPv4AddressNetwork;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->getEmbeddedIPv4AddressParentBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;-><init>(Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public static synthetic access$000(Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .locals 0

    invoke-direct/range {p0 .. p5}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->from(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p0

    return-object p0
.end method

.method private from(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->getIPv4Creator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->getIPv6Creator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private from([BIILjava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .locals 6

    .line 9
    array-length v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->getIPv4Creator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress([BIILjava/lang/Integer;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->getIPv6Creator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress([BIILjava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method private getIPv4Creator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method private getIPv6Creator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public from(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 6

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->from(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/net/InetAddress;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->getIPv4Creator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    check-cast p1, Ljava/net/Inet4Address;

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Ljava/net/Inet4Address;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->getIPv6Creator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    check-cast p1, Ljava/net/Inet6Address;

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Ljava/net/Inet6Address;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public from(Ljava/net/InetAddress;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 4
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->getIPv4Creator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    check-cast p1, Ljava/net/Inet4Address;

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Ljava/net/Inet4Address;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->getIPv6Creator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    check-cast p1, Ljava/net/Inet6Address;

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Ljava/net/Inet6Address;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public from(Ljava/net/InterfaceAddress;)Linet/ipaddr/IPAddress;
    .locals 2

    .line 5
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->getIPv4Creator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    check-cast v0, Ljava/net/Inet4Address;

    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result p1

    invoke-static {p1}, Linet/ipaddr/IPAddressNetwork;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Ljava/net/Inet4Address;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->getIPv6Creator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result p1

    invoke-static {p1}, Linet/ipaddr/IPAddressNetwork;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Ljava/net/Inet6Address;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public from([B)Linet/ipaddr/IPAddress;
    .locals 6

    .line 6
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->from([BIILjava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public from([BII)Linet/ipaddr/IPAddress;
    .locals 6

    .line 7
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->from([BIILjava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public from([BIILjava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 6

    .line 8
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->from([BIILjava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public from([BLjava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 6

    .line 10
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->from([BIILjava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4Address;->toNormalizedString(Linet/ipaddr/ipv4/IPv4AddressNetwork;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object p1

    invoke-static {p1, p2, p3, p4, p5}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressNetwork;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
