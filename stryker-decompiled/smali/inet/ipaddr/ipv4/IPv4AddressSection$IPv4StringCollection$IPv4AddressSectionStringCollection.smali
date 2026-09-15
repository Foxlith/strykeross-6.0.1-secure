.class Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;
.super Linet/ipaddr/format/util/IPAddressPartStringSubCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4AddressSectionStringCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)V
    .locals 0

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
            "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
            "Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection$1;

    invoke-direct {v0, p0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection$1;-><init>(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;)V

    return-object v0
.end method
