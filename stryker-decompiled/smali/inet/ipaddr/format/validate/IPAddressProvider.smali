.class public interface abstract Linet/ipaddr/format/validate/IPAddressProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;,
        Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;,
        Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;,
        Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;,
        Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;,
        Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;,
        Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;,
        Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;,
        Linet/ipaddr/format/validate/IPAddressProvider$IPType;
    }
.end annotation


# static fields
.field public static final EMPTY_PROVIDER:Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

.field public static final INVALID_PROVIDER:Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

.field public static final NO_TYPE_PROVIDER:Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/format/validate/IPAddressProvider$1;

    sget-object v1, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->INVALID:Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    invoke-direct {v0, v1}, Linet/ipaddr/format/validate/IPAddressProvider$1;-><init>(Linet/ipaddr/format/validate/IPAddressProvider$IPType;)V

    sput-object v0, Linet/ipaddr/format/validate/IPAddressProvider;->INVALID_PROVIDER:Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

    new-instance v0, Linet/ipaddr/format/validate/IPAddressProvider$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linet/ipaddr/format/validate/IPAddressProvider$2;-><init>(Linet/ipaddr/format/validate/IPAddressProvider$IPType;)V

    sput-object v0, Linet/ipaddr/format/validate/IPAddressProvider;->NO_TYPE_PROVIDER:Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

    new-instance v0, Linet/ipaddr/format/validate/IPAddressProvider$3;

    sget-object v1, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->EMPTY:Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    invoke-direct {v0, v1}, Linet/ipaddr/format/validate/IPAddressProvider$3;-><init>(Linet/ipaddr/format/validate/IPAddressProvider$IPType;)V

    sput-object v0, Linet/ipaddr/format/validate/IPAddressProvider;->EMPTY_PROVIDER:Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

    return-void
.end method

.method public static getProviderFor(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/format/validate/IPAddressProvider;
    .locals 2

    new-instance v0, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/format/validate/IPAddressProvider$1;)V

    return-object v0
.end method


# virtual methods
.method public contains(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public contains(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDivisionGrouping()Linet/ipaddr/format/IPAddressDivisionSeries;
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Linet/ipaddr/IPAddressStringParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getProviderAddress()Linet/ipaddr/IPAddress;
.end method

.method public abstract getProviderAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
.end method

.method public abstract getProviderHostAddress()Linet/ipaddr/IPAddress;
.end method

.method public getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderMask()Linet/ipaddr/IPAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderSeqRange()Linet/ipaddr/IPAddressSeqRange;
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->toSequentialRange()Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;
.end method

.method public hasPrefixSeparator()Z
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProvidingAllAddresses()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProvidingBase85IPv6()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProvidingEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProvidingIPAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProvidingIPv4()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProvidingIPv6()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProvidingMixedIPv6()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProvidingPrefixOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSequential()Z
    .locals 1

    :try_start_0
    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/Address;->isSequential()Z

    move-result v0
    :try_end_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUninitialized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parsedEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public prefixContains(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public prefixContains(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public prefixEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public prefixEquals(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public providerCompare(Linet/ipaddr/format/validate/IPAddressProvider;)I
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Linet/ipaddr/format/AddressItem;->compareTo(Linet/ipaddr/format/AddressItem;)I

    move-result p1

    return p1

    :cond_1
    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v1

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object p1

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_3
    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public providerEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v2

    :cond_2
    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v1

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object p1

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public providerHashCode()I
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/Address;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
