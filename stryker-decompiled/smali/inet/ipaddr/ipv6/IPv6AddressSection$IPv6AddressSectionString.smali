.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;
.super Linet/ipaddr/format/util/IPAddressPartConfiguredString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6AddressSectionString"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "Linet/ipaddr/ipv6/IPv6AddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final zone:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/format/util/IPAddressStringWriter;)V

    iput-object p3, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;->zone:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public endIsCompressed()Z
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->endIsCompressed(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getNetworkStringMatcher(ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)Linet/ipaddr/format/util/sql/SQLStringMatcher;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;->getNetworkStringMatcher(ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringMatcher;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkStringMatcher(ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringMatcher;
    .locals 0

    .line 2
    new-instance p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringMatcher;

    invoke-direct {p1, p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringMatcher;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V

    return-object p1
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection;

    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;->zone:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->string:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressed()Z
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->isCompressed(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Z

    move-result v0

    return v0
.end method
