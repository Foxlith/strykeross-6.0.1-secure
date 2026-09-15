.class public Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/validate/IPAddressProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/IPAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedAddressProvider"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field values:Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V

    iput-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->values:Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    return-void
.end method

.method public synthetic constructor <init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/format/validate/IPAddressProvider$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V

    return-void
.end method


# virtual methods
.method public getProviderAddress()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->values:Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProviderAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public getProviderHostAddress()Linet/ipaddr/IPAddress;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->values:Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->getHostAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    return-object v0
.end method

.method public getProviderNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

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

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->isIPv4()Z

    move-result v0

    return v0
.end method

.method public isProvidingIPv6()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->isIPv6()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
