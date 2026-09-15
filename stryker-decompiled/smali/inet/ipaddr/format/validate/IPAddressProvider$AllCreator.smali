.class public Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;
.super Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/IPAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllCreator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field originator:Linet/ipaddr/HostIdentifierString;

.field qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;


# direct methods
.method public constructor <init>(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;-><init>(Ljava/lang/Integer;Linet/ipaddr/IPAddressStringParameters;)V

    iput-object p2, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->originator:Linet/ipaddr/HostIdentifierString;

    iput-object p1, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2, p4}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;-><init>(Ljava/lang/Integer;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/IPAddressStringParameters;)V

    iput-object p3, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->originator:Linet/ipaddr/HostIdentifierString;

    iput-object p1, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    return-void
.end method


# virtual methods
.method public contains(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;
    .locals 1

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object p1

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public createAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    sget-object v1, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    iget-object v1, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    iget-object v3, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->originator:Linet/ipaddr/HostIdentifierString;

    iget-object v4, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-static {v1, v2, v3, v4}, Linet/ipaddr/format/validate/ParsedIPAddress;->createAllAddress(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-direct {v0, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;-><init>(Linet/ipaddr/IPAddress;)V

    return-object v0

    :cond_0
    new-instance v0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    iget-object v3, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    iget-object v4, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->originator:Linet/ipaddr/HostIdentifierString;

    iget-object v5, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-static {v2, v3, v4, v5}, Linet/ipaddr/format/validate/ParsedIPAddress;->createAllAddress(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress;

    move-result-object v2

    iget-object v3, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    iget-object v4, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v4}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getZone()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v1, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    iget-object v4, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v4}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getZone()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v4}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->originator:Linet/ipaddr/HostIdentifierString;

    iget-object v5, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-static {v3, v1, v4, v5}, Linet/ipaddr/format/validate/ParsedIPAddress;->createAllAddress(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V

    return-object v0
.end method

.method public createVersionedAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 3

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    iget-object v1, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->originator:Linet/ipaddr/HostIdentifierString;

    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-static {p1, v0, v1, v2}, Linet/ipaddr/format/validate/ParsedIPAddress;->createAllAddress(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public getDivisionGrouping()Linet/ipaddr/format/IPAddressDivisionSeries;
    .locals 14

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->isProvidingAllAddresses()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

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
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->getProviderMask()Linet/ipaddr/IPAddress;

    move-result-object v2

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v11}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->toPrefixBlock()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v1

    const-string v3, "ipaddress.error.maskMismatch"

    invoke-direct {v0, v1, v2, v3}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    invoke-virtual {v2}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    new-array v12, v3, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    new-instance v13, Linet/ipaddr/format/standard/IPAddressBitsDivision;

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    const/16 v7, 0x20

    const/16 v8, 0xa

    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v2}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v10

    move-object v2, v13

    move-object v9, v0

    invoke-direct/range {v2 .. v10}, Linet/ipaddr/format/standard/IPAddressBitsDivision;-><init>(JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V

    aput-object v13, v12, v11

    invoke-direct {v1, v12, v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    invoke-virtual {v2}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v1, 0x10

    new-array v4, v1, [B

    const/4 v2, -0x1

    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    new-instance v9, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;

    new-array v10, v3, [Linet/ipaddr/format/large/IPAddressLargeDivision;

    new-instance v12, Linet/ipaddr/format/large/IPAddressLargeDivision;

    new-array v3, v1, [B

    const/16 v5, 0x80

    const/16 v6, 0x10

    iget-object v1, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v8

    move-object v2, v12

    move-object v7, v0

    invoke-direct/range {v2 .. v8}, Linet/ipaddr/format/large/IPAddressLargeDivision;-><init>([B[BIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V

    aput-object v12, v10, v11

    invoke-direct {v9, v10, v0}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;-><init>([Linet/ipaddr/format/large/IPAddressLargeDivision;Linet/ipaddr/IPAddressNetwork;)V

    move-object v1, v9

    :cond_5
    :goto_1
    return-object v1
.end method

.method public getProviderMask()Linet/ipaddr/IPAddress;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getMaskLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProviderSeqRange()Linet/ipaddr/IPAddressSeqRange;
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->isProvidingAllAddresses()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->getProviderMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    sget-object v3, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    iget-object v4, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    invoke-static {v2, v3, v1, v4}, Linet/ipaddr/format/validate/ParsedIPAddress;->createAllAddress(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddress;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v2

    invoke-virtual {v2, v0}, Linet/ipaddr/IPAddress;->mask(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v1}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddress;->toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderSeqRange()Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-eqz v0, :cond_0

    invoke-static {v0}, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->from(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->ALL:Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    return-object v0
.end method

.method public isProvidingAllAddresses()Z
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

.method public isSequential()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;->isProvidingAllAddresses()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public providerHashCode()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-nez v0, :cond_0

    sget-object v0, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
