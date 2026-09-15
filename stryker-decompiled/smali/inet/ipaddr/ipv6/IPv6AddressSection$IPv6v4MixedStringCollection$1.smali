.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;
.super Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;",
        ">;>.IPAddressConfigurableStringIterator;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;->this$0:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;

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
            "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;",
            "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1$1;

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;->this$0:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;

    iget-object v1, v1, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->part:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    iget-object v2, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;

    invoke-direct {v0, p0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1$1;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;->next()Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    move-result-object v0

    return-object v0
.end method
