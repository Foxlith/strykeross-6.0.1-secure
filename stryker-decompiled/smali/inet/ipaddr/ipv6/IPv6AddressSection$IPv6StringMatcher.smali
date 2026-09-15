.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringMatcher;
.super Linet/ipaddr/format/util/sql/SQLStringMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6StringMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/sql/SQLStringMatcher<",
        "Linet/ipaddr/ipv6/IPv6AddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V
    .locals 1

    iget-object v0, p1, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->isEntireAddress()Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/format/util/sql/SQLStringMatcher;-><init>(Linet/ipaddr/format/util/IPAddressPartConfiguredString;ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V

    return-void
.end method


# virtual methods
.method public getSQLCondition(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 10

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    iget-object v0, v0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->isEntireAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Linet/ipaddr/format/util/sql/SQLStringMatcher;->matchString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;->endIsCompressed()Z

    move-result v0

    const/16 v1, 0x29

    const-string v2, ") AND ("

    const/16 v3, 0x28

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v0}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getTrailingSegmentSeparator()C

    move-result v0

    iget-object v4, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v4, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v4}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v5, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v5}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v3}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getTrailingSeparatorCount()I

    move-result v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Linet/ipaddr/format/util/sql/SQLStringMatcher;->matchSubString(Ljava/lang/StringBuilder;Ljava/lang/String;CILjava/lang/String;)V

    iget-object v3, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    iget-object v3, v3, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v3, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v2}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getTrailingSeparatorCount()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v0, v2}, Linet/ipaddr/format/util/sql/SQLStringMatcher;->boundSeparatorCount(Ljava/lang/StringBuilder;Ljava/lang/String;CI)V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;->isCompressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v0}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getTrailingSegmentSeparator()C

    move-result v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v3}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getTrailingSeparatorCount()I

    move-result v3

    add-int/lit8 v8, v3, 0x1

    iget-object v3, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;->getString()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Linet/ipaddr/format/util/sql/SQLStringMatcher;->matchSubString(Ljava/lang/StringBuilder;Ljava/lang/String;CILjava/lang/String;)V

    iget-object v3, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    iget-object v3, v3, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v3, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v2}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getTrailingSeparatorCount()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v0, v2}, Linet/ipaddr/format/util/sql/SQLStringMatcher;->matchSeparatorCount(Ljava/lang/StringBuilder;Ljava/lang/String;CI)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v0}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getTrailingSegmentSeparator()C

    move-result v4

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v0}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getTrailingSeparatorCount()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;->getString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Linet/ipaddr/format/util/sql/SQLStringMatcher;->matchSubString(Ljava/lang/StringBuilder;Ljava/lang/String;CILjava/lang/String;)V

    :goto_1
    return-object p1
.end method
