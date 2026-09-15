.class public Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;
.super Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/IPAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaskCreator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;-><init>(Ljava/lang/Integer;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;-><init>(Ljava/lang/Integer;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method private createVersionedMask(Linet/ipaddr/IPAddress$IPVersion;IZ)Linet/ipaddr/IPAddress;
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Linet/ipaddr/IPAddressNetwork;->getNetworkAddress(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public createAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses<",
            "*>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    iget-object v1, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;->createVersionedMask(Linet/ipaddr/IPAddress$IPVersion;IZ)Linet/ipaddr/IPAddress;

    move-result-object v1

    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;->createVersionedMask(Linet/ipaddr/IPAddress$IPVersion;IZ)Linet/ipaddr/IPAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V

    return-object v0
.end method

.method public createVersionedAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;->createVersionedMask(Linet/ipaddr/IPAddress$IPVersion;IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-eqz v0, :cond_0

    invoke-static {v0}, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->from(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->PREFIX_ONLY:Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    return-object v0
.end method

.method public isProvidingPrefixOnly()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public providerCompare(Linet/ipaddr/format/validate/IPAddressProvider;)I
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-nez v0, :cond_2

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v0

    sget-object v1, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->PREFIX_ONLY:Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    return p1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_2
    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-interface {p1, v0}, Linet/ipaddr/format/AddressItem;->compareTo(Linet/ipaddr/format/AddressItem;)I

    move-result p1

    return p1

    :cond_3
    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    invoke-static {v0}, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->from(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public providerEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-nez v1, :cond_3

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v1

    sget-object v2, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->PREFIX_ONLY:Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0

    :cond_2
    return v3

    :cond_3
    invoke-super {p0, p1}, Linet/ipaddr/format/validate/IPAddressProvider;->providerEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Z

    move-result p1

    return p1
.end method

.method public providerHashCode()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->hashCode()I

    move-result v0

    return v0
.end method
