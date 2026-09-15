.class Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection;
.super Linet/ipaddr/format/util/IPAddressPartStringCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4StringCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4StringBuilder;,
        Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public addAll(Linet/ipaddr/format/util/IPAddressPartStringCollection;)V
    .locals 0

    invoke-super {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->addAll(Linet/ipaddr/format/util/IPAddressPartStringCollection;)V

    return-void
.end method
