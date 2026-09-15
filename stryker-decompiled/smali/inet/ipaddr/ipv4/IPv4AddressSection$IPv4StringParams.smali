.class Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;
.super Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4StringParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams<",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;-><init>(ILjava/lang/Character;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;->clone()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;->clone()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->clone()Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;->clone()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    move-result-object v0

    return-object v0
.end method
