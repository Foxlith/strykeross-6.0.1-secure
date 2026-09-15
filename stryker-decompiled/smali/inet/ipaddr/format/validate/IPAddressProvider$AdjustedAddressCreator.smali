.class public abstract Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;
.super Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/IPAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdjustedAddressCreator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field protected final adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

.field protected final networkPrefixLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;-><init>(Linet/ipaddr/IPAddressStringParameters;)V

    iput-object p1, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->networkPrefixLength:Ljava/lang/Integer;

    iput-object p2, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;-><init>(Ljava/lang/Integer;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method


# virtual methods
.method public getProviderAddress()Linet/ipaddr/IPAddress;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProviderHostAddress()Linet/ipaddr/IPAddress;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;->getProviderHostAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    return-object v0
.end method

.method public getProviderNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->networkPrefixLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public isProvidingIPAddress()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProvidingIPv4()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->isProvidingIPAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProvidingIPv6()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->isProvidingIPAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$AdjustedAddressCreator;->adjustedVersion:Linet/ipaddr/IPAddress$IPVersion;

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
