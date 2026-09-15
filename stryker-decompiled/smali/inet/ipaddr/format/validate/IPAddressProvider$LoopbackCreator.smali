.class public Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;
.super Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/IPAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoopbackCreator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final zone:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddressStringParameters;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;-><init>(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;-><init>(Linet/ipaddr/IPAddressStringParameters;)V

    iput-object p1, p0, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;->zone:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public createAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses<",
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/Inet6Address;

    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;->zone:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v1, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v1}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;->zone:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, v2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([BLjava/lang/CharSequence;)Linet/ipaddr/Address;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddress;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Linet/ipaddr/IPAddressNetwork;->getLoopback()Linet/ipaddr/IPAddress;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v1, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    invoke-direct {v1, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;-><init>(Linet/ipaddr/IPAddress;)V

    return-object v1
.end method

.method public createVersionedAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 3

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->values:Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->values:Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Linet/ipaddr/IPAddressNetwork;->getLoopback()Linet/ipaddr/IPAddress;

    move-result-object v1

    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;->zone:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Linet/ipaddr/IPAddressNetwork;->getAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    move-result-object p1

    invoke-virtual {v1}, Linet/ipaddr/Address;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;->zone:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([BLjava/lang/CharSequence;)Linet/ipaddr/Address;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddress;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    return-object v0
.end method

.method public getProviderNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-static {v0}, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->from(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v0

    return-object v0
.end method

.method public isProvidingIPAddress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isProvidingIPv4()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->isIPv4()Z

    move-result v0

    return v0
.end method

.method public isProvidingIPv6()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->isIPv6()Z

    move-result v0

    return v0
.end method
