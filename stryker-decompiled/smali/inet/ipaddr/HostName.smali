.class public Linet/ipaddr/HostName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/HostIdentifierString;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linet/ipaddr/HostIdentifierString;",
        "Ljava/lang/Comparable<",
        "Linet/ipaddr/HostName;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/HostNameParameters;

.field public static final IPV6_END_BRACKET:C = ']'

.field public static final IPV6_START_BRACKET:C = '['

.field public static final LABEL_SEPARATOR:C = '.'

.field public static final PORT_SEPARATOR:C = ':'

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final host:Ljava/lang/String;

.field private transient normalizedString:Ljava/lang/String;

.field private transient normalizedWildcardString:Ljava/lang/String;

.field private parsedHost:Linet/ipaddr/format/validate/ParsedHost;

.field resolvedAddress:Linet/ipaddr/IPAddress;

.field private resolvedIsNull:Z

.field private validationException:Linet/ipaddr/HostNameException;

.field final validationOptions:Linet/ipaddr/HostNameParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Linet/ipaddr/HostNameParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/HostNameParameters$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/HostNameParameters$Builder;->toParams()Linet/ipaddr/HostNameParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/HostName;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/HostNameParameters;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddress;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    new-instance v1, Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->getProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;Linet/ipaddr/format/validate/IPAddressProvider;)V

    iput-object v1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    const/4 p1, 0x0

    iput-object p1, p0, Linet/ipaddr/HostName;->validationOptions:Linet/ipaddr/HostNameParameters;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddress;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/CharSequence;I)V

    invoke-static {p1, p2}, Linet/ipaddr/HostName;->toNormalizedString(Linet/ipaddr/IPAddress;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    new-instance v2, Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->getProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object p1

    invoke-direct {v2, p2, p1, v0}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;Linet/ipaddr/format/validate/IPAddressProvider;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V

    iput-object v2, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    iput-object v1, p0, Linet/ipaddr/HostName;->validationOptions:Linet/ipaddr/HostNameParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Linet/ipaddr/HostName;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/HostNameParameters;

    invoke-direct {p0, p1, v0}, Linet/ipaddr/HostName;-><init>(Ljava/lang/String;Linet/ipaddr/HostNameParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linet/ipaddr/HostNameParameters;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Linet/ipaddr/HostName;->validationOptions:Linet/ipaddr/HostNameParameters;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linet/ipaddr/format/validate/ParsedHost;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    iput-object p2, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    const/4 p1, 0x0

    iput-object p1, p0, Linet/ipaddr/HostName;->validationOptions:Linet/ipaddr/HostNameParameters;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1

    .line 6
    sget-object v0, Linet/ipaddr/IPAddressString;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    invoke-direct {p0, p1, v0}, Linet/ipaddr/HostName;-><init>(Ljava/net/InetAddress;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 0

    .line 7
    invoke-static {p1, p2}, Linet/ipaddr/HostName;->toIPAddress(Ljava/net/InetAddress;Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/HostName;-><init>(Linet/ipaddr/IPAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/Integer;)V
    .locals 1

    .line 8
    sget-object v0, Linet/ipaddr/IPAddressString;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    invoke-static {p1, v0, p2}, Linet/ipaddr/HostName;->toIPAddress(Ljava/net/InetAddress;Linet/ipaddr/IPAddressStringParameters;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/HostName;-><init>(Linet/ipaddr/IPAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    sget-object v1, Linet/ipaddr/IPAddressString;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    invoke-static {v0, v1}, Linet/ipaddr/HostName;->toIPAddress(Ljava/net/InetAddress;Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/HostName;->resolvedAddress:Linet/ipaddr/IPAddress;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    sget-object p1, Linet/ipaddr/HostName;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/HostNameParameters;

    iput-object p1, p0, Linet/ipaddr/HostName;->validationOptions:Linet/ipaddr/HostNameParameters;

    return-void
.end method

.method public constructor <init>(Ljava/net/InterfaceAddress;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result p1

    invoke-static {p1}, Linet/ipaddr/IPAddressNetwork;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Linet/ipaddr/HostName;-><init>(Ljava/net/InetAddress;Ljava/lang/Integer;)V

    return-void
.end method

.method private static toIPAddress(Ljava/net/InetAddress;Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p1

    check-cast p0, Ljava/net/Inet4Address;

    invoke-virtual {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Ljava/net/Inet4Address;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p1

    check-cast p0, Ljava/net/Inet6Address;

    invoke-virtual {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Ljava/net/Inet6Address;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static toIPAddress(Ljava/net/InetAddress;Linet/ipaddr/IPAddressStringParameters;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p1

    check-cast p0, Ljava/net/Inet4Address;

    invoke-virtual {p1, p0, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Ljava/net/Inet4Address;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p1

    check-cast p0, Ljava/net/Inet6Address;

    invoke-virtual {p1, p0, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Ljava/net/Inet6Address;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static toNormalizedString(Linet/ipaddr/IPAddress;I)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Linet/ipaddr/HostName;->toNormalizedString(Linet/ipaddr/IPAddress;ZLjava/lang/StringBuilder;)V

    invoke-static {p1, v0}, Linet/ipaddr/HostName;->toNormalizedString(ILjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toNormalizedString(Z)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/HostName;->asAddress()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-static {v1, p1, v0}, Linet/ipaddr/HostName;->toNormalizedString(Linet/ipaddr/IPAddress;ZLjava/lang/StringBuilder;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->asAddressString()Linet/ipaddr/IPAddressString;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->toNormalizedString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHost;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHost;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x2f

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHost;->getMask()Linet/ipaddr/IPAddress;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHost;->getPort()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v0}, Linet/ipaddr/HostName;->toNormalizedString(ILjava/lang/StringBuilder;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHost;->getService()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object p1, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    return-object p1
.end method

.method private static toNormalizedString(ILjava/lang/StringBuilder;)V
    .locals 1

    .line 4
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static toNormalizedString(Linet/ipaddr/IPAddress;ZLjava/lang/StringBuilder;)V
    .locals 4

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5d

    const/16 v1, 0x5b

    if-nez p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toIPv6()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Linet/ipaddr/HostName;->translateReserved(Linet/ipaddr/ipv6/IPv6Address;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toNormalizedWildcardString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toIPv6()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    invoke-static {p0, p1}, Linet/ipaddr/HostName;->translateReserved(Linet/ipaddr/ipv6/IPv6Address;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toNormalizedWildcardString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private toNormalizedWildcardString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/HostName;->normalizedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/HostName;->toNormalizedString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/HostName;->normalizedWildcardString:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static translateReserved(Linet/ipaddr/ipv6/IPv6Address;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0x25

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v2, "%25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Linet/ipaddr/format/validate/Validator;->isReserved(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3, v1}, Linet/ipaddr/IPAddressSegment;->toUnsignedString(IILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public asAddress()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->asAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public asAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/HostName;->isAddress(Linet/ipaddr/IPAddress$IPVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/validate/ParsedHost;->asAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public asAddressString()Linet/ipaddr/IPAddressString;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->asGenericAddressString()Linet/ipaddr/IPAddressString;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public asInetAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/HostName;->asAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public asInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/HostName;->asInetSocketAddress(Ljava/util/function/Function;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public asInetSocketAddress(Ljava/util/function/Function;)Ljava/net/InetSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/net/InetSocketAddress;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/HostName;->getPort()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/HostName;->getService()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->asAddress()Linet/ipaddr/IPAddress;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v1

    :cond_1
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Linet/ipaddr/HostName;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public cacheAddress(Linet/ipaddr/IPAddress;)V
    .locals 2

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/validate/ParsedHost;

    iget-object v1, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->getProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;Linet/ipaddr/format/validate/IPAddressProvider;)V

    iput-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    :cond_0
    return-void
.end method

.method public compareTo(Linet/ipaddr/HostName;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/HostName;->asAddressString()Linet/ipaddr/IPAddressString;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/HostName;->asAddressString()Linet/ipaddr/IPAddressString;

    move-result-object v3

    invoke-virtual {v0, v3}, Linet/ipaddr/IPAddressString;->compareTo(Linet/ipaddr/IPAddressString;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getNormalizedLabels()[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedHost;->getNormalizedLabels()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v0

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v7, v2

    :goto_0
    if-gt v7, v6, :cond_4

    sub-int v8, v4, v7

    aget-object v8, v0, v8

    sub-int v9, v5, v7

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    return v8

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-eq v4, v5, :cond_5

    sub-int/2addr v4, v5

    return v4

    :cond_5
    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p1, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedHost;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_7

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    return p1

    :cond_6
    return v2

    :cond_7
    if-eqz v3, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    iget-object v3, p1, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedHost;->getMask()Linet/ipaddr/IPAddress;

    move-result-object v3

    if-eqz v0, :cond_a

    if-eqz v3, :cond_9

    invoke-interface {v0, v3}, Linet/ipaddr/format/AddressItem;->compareTo(Linet/ipaddr/format/AddressItem;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_9
    return v2

    :cond_a
    if-eqz v3, :cond_b

    return v1

    :cond_b
    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getPort()Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p1, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedHost;->getPort()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_d

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v0, v3

    if-eqz v0, :cond_e

    return v0

    :cond_c
    return v2

    :cond_d
    if-eqz v3, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getService()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHost;->getService()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_10

    if-eqz p1, :cond_f

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_11

    return p1

    :cond_f
    return v2

    :cond_10
    if-eqz p1, :cond_11

    return v1

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_12
    return v2

    :cond_13
    invoke-virtual {p1}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    invoke-virtual {p0}, Linet/ipaddr/HostName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/HostName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/HostName;

    invoke-virtual {p0, p1}, Linet/ipaddr/HostName;->compareTo(Linet/ipaddr/HostName;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/HostName;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/HostName;

    invoke-virtual {p0, p1}, Linet/ipaddr/HostName;->matches(Linet/ipaddr/HostName;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getAddress()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/HostName;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/HostName;->toAddress()Linet/ipaddr/IPAddress;

    move-result-object v0
    :try_end_0
    .catch Linet/ipaddr/HostNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddressStringException()Linet/ipaddr/AddressStringException;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressStringException()Linet/ipaddr/AddressStringException;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMask()Linet/ipaddr/IPAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->asAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->asGenericAddressString()Linet/ipaddr/IPAddressString;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressString;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNormalizedLabels()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getNormalizedLabels()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getPort()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getService()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValidationOptions()Linet/ipaddr/HostNameParameters;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/HostName;->validationOptions:Linet/ipaddr/HostNameParameters;

    return-object v0
.end method

.method public getValidator()Linet/ipaddr/format/validate/HostIdentifierStringValidator;
    .locals 1

    sget-object v0, Linet/ipaddr/format/validate/Validator;->VALIDATOR:Linet/ipaddr/format/validate/HostIdentifierStringValidator;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/HostName;->toNormalizedWildcardString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAddress()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->asAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAddress(Linet/ipaddr/IPAddress$IPVersion;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/validate/ParsedHost;->asAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAddressString()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllAddresses()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingAllAddresses()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocalHost()Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoopback()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/HostName;->asAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->isLoopback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrefixOnly()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingPrefixOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReverseDNS()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->isReverseDNS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelf()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isLocalHost()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isLoopback()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUNCIPv6Literal()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->isUNCIPv6Literal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 3

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/HostName;->validationException:Linet/ipaddr/HostNameException;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/HostName;->validate()V
    :try_end_0
    .catch Linet/ipaddr/HostNameException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v2
.end method

.method public matches(Linet/ipaddr/HostName;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/HostName;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Linet/ipaddr/HostName;->isValid()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->asAddressString()Linet/ipaddr/IPAddressString;

    move-result-object v1

    invoke-virtual {p1}, Linet/ipaddr/HostName;->asAddressString()Linet/ipaddr/IPAddressString;

    move-result-object v3

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddressString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->getPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Linet/ipaddr/HostName;->getPort()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Linet/ipaddr/HostName;->getService()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Linet/ipaddr/HostName;->isAddressString()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v1}, Linet/ipaddr/format/validate/ParsedHost;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedHost;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v1}, Linet/ipaddr/format/validate/ParsedHost;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p1, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedHost;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v1}, Linet/ipaddr/format/validate/ParsedHost;->getMask()Linet/ipaddr/IPAddress;

    move-result-object v1

    iget-object v3, p1, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedHost;->getMask()Linet/ipaddr/IPAddress;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v1}, Linet/ipaddr/format/validate/ParsedHost;->getPort()Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p1, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedHost;->getPort()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v1}, Linet/ipaddr/format/validate/ParsedHost;->getService()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHost;->getService()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    return v0

    :cond_6
    return v2

    :cond_7
    invoke-virtual {p1}, Linet/ipaddr/HostName;->isValid()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Linet/ipaddr/HostName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Linet/ipaddr/HostName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    return v0
.end method

.method public resolvesToSelf()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->isSelf()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostName;->resolvedAddress:Linet/ipaddr/IPAddress;

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->isLoopback()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic toAddress()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/HostName;->toAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public toAddress()Linet/ipaddr/IPAddress;
    .locals 8

    .line 2
    iget-object v0, p0, Linet/ipaddr/HostName;->resolvedAddress:Linet/ipaddr/IPAddress;

    if-nez v0, :cond_8

    iget-boolean v1, p0, Linet/ipaddr/HostName;->resolvedIsNull:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Linet/ipaddr/HostName;->validate()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/HostName;->resolvedAddress:Linet/ipaddr/IPAddress;

    if-nez v0, :cond_7

    iget-boolean v1, p0, Linet/ipaddr/HostName;->resolvedIsNull:Z

    if-nez v1, :cond_7

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->isAddressString()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->asAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Linet/ipaddr/HostName;->resolvedIsNull:Z

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHost;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-object v3, p0, Linet/ipaddr/HostName;->validationOptions:Linet/ipaddr/HostNameParameters;

    iget-boolean v3, v3, Linet/ipaddr/HostNameParameters;->emptyIsLoopback:Z

    if-nez v3, :cond_2

    iput-boolean v2, p0, Linet/ipaddr/HostName;->resolvedIsNull:Z

    move-object v0, v4

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iget-object v3, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedHost;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v5, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {v5}, Linet/ipaddr/format/validate/ParsedHost;->getMask()Linet/ipaddr/IPAddress;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Linet/ipaddr/Address;->getBytes()[B

    move-result-object v3

    array-length v6, v3

    array-length v7, v0

    if-ne v6, v7, :cond_4

    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_3

    aget-byte v6, v0, v1

    aget-byte v7, v3, v1

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v2}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v0, Linet/ipaddr/HostNameException;

    iget-object v1, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    const-string v2, "ipaddress.error.ipMismatch"

    invoke-direct {v0, v1, v2}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v1, p0, Linet/ipaddr/HostName;->validationOptions:Linet/ipaddr/HostNameParameters;

    iget-object v1, v1, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    array-length v2, v0

    const/16 v5, 0x10

    if-ne v2, v5, :cond_6

    invoke-virtual {v1}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v4, p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([BLjava/lang/Integer;Ljava/lang/CharSequence;Linet/ipaddr/HostName;)Linet/ipaddr/IPAddress;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    invoke-virtual {v1, v0, v3, p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([BLjava/lang/Integer;Linet/ipaddr/HostName;)Linet/ipaddr/IPAddress;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Linet/ipaddr/HostName;->resolvedAddress:Linet/ipaddr/IPAddress;

    :cond_7
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    :goto_4
    return-object v0
.end method

.method public toInetAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/HostName;->validate()V

    invoke-virtual {p0}, Linet/ipaddr/HostName;->toAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Linet/ipaddr/HostName;->normalizedString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/HostName;->toNormalizedString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/HostName;->normalizedString:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/HostName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public validate()V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Linet/ipaddr/HostName;->validationException:Linet/ipaddr/HostNameException;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Linet/ipaddr/HostName;->validationException:Linet/ipaddr/HostNameException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Linet/ipaddr/HostName;->getValidator()Linet/ipaddr/format/validate/HostIdentifierStringValidator;

    move-result-object v0

    invoke-interface {v0, p0}, Linet/ipaddr/format/validate/HostIdentifierStringValidator;->validateHost(Linet/ipaddr/HostName;)Linet/ipaddr/format/validate/ParsedHost;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/HostName;->parsedHost:Linet/ipaddr/format/validate/ParsedHost;
    :try_end_1
    .catch Linet/ipaddr/HostNameException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Linet/ipaddr/HostName;->validationException:Linet/ipaddr/HostNameException;

    throw v0

    :cond_2
    throw v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    throw v0
.end method
