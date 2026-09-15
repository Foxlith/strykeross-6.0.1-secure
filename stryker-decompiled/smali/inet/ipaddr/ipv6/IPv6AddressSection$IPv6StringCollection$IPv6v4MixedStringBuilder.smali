.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6v4MixedStringBuilder;
.super Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6v4MixedStringBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder<",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;",
        ">;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;",
        ">;"
    }
.end annotation


# instance fields
.field private final zone:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;

    invoke-direct {v0, p1, p3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V

    iput-object p3, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6v4MixedStringBuilder;->zone:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public addAllVariations()V
    .locals 6

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$600(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    iget-object v2, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    iget-object v3, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6v4MixedStringBuilder;->zone:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->getVariations()Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$500(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    iget-object v2, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    iget-object v2, v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->mixedOptions:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v1

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v1}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    new-instance v5, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;

    invoke-direct {v5, v2, v4}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;Linet/ipaddr/format/util/IPAddressPartConfiguredString;)V

    invoke-virtual {p0, v5}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addStringParam(Linet/ipaddr/format/util/IPAddressStringWriter;)V

    goto :goto_0

    :cond_1
    return-void
.end method
