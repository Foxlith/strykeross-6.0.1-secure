.class public Linet/ipaddr/IPAddressConverter$DefaultAddressConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAddressConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIPv4Convertible(Linet/ipaddr/IPAddress;)Z
    .locals 1

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toIPv6()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->hasZone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toIPv6()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->isIPv4Mapped()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isIPv6Convertible(Linet/ipaddr/IPAddress;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toIPv4(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressConverter$DefaultAddressConverter;->isIPv4Convertible(Linet/ipaddr/IPAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->isIPv4()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toIPv4()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toIPv6()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getEmbeddedIPv4Address()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toIPv6(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toIPv6()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toIPv4()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getIPv4MappedAddress()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    :goto_0
    return-object p1
.end method
