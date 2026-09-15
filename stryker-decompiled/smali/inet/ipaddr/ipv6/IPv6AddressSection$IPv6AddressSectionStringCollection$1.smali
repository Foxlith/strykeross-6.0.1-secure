.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection$1;
.super Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
        "Linet/ipaddr/ipv6/IPv6AddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;",
        ">.IPAddressConfigurableStringIterator;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection$1;->this$0:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;-><init>(Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V

    return-void
.end method


# virtual methods
.method public next()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;
    .locals 4

    .line 1
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection$1;->this$0:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;

    iget-object v1, v1, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->part:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection;

    iget-object v2, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    iget-object v3, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection$1;->this$0:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;

    invoke-static {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;->access$700(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection$1;->next()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    move-result-object v0

    return-object v0
.end method
