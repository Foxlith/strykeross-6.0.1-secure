.class public abstract Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;
.super Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/IPAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CachedAddressCreator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;-><init>()V

    return-void
.end method

.method private getCachedAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->values:Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->values:Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;->createAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->values:Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public abstract createAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses<",
            "*>;"
        }
    .end annotation
.end method

.method public getProviderAddress()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-direct {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;->getCachedAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProviderAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;->getProviderAddress()Linet/ipaddr/IPAddress;

    invoke-super {p0, p1}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->getProviderAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public getProviderHostAddress()Linet/ipaddr/IPAddress;
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;->getCachedAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->getHostAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProviderNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;->getProviderAddress()Linet/ipaddr/IPAddress;

    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
