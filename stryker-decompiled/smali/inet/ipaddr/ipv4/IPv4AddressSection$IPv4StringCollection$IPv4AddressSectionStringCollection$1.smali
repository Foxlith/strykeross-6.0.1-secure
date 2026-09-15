.class Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection$1;
.super Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;",
        ">;>.IPAddressConfigurableStringIterator;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection$1;->this$0:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;-><init>(Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V

    return-void
.end method


# virtual methods
.method public next()Linet/ipaddr/format/util/IPAddressPartConfiguredString;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
            "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
            "Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    iget-object v1, p0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection$1;->this$0:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;

    iget-object v1, v1, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->part:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    iget-object v2, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/format/util/IPAddressStringWriter;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection$1;->next()Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    move-result-object v0

    return-object v0
.end method
