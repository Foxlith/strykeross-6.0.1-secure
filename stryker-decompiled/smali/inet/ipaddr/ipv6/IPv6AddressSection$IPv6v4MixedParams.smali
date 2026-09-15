.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/IPAddressStringWriter;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6v4MixedParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/IPAddressStringWriter<",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private ipv4Params:Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams<",
            "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
            ">;"
        }
    .end annotation
.end field

.field private ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;Linet/ipaddr/format/util/IPAddressPartConfiguredString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;",
            "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;

    check-cast p2, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    iput-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv4Params:Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    iget-object p1, p1, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;Linet/ipaddr/IPAddressSection$IPStringOptions;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->access$400(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p2

    iput-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv4Params:Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendLabel(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$600(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->appendSegments(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    iget v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->nextUncompressedIndex:I

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$600(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getTrailingSegmentSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv4Params:Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$500(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendSegments(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {v0, p1, p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendZone(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {p3, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->appendSuffix(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->appendPrefixIndicator(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)V

    return-object p1
.end method

.method public appendDivision(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivision;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendDivision(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivision;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendPrefixIndicator(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)V
    .locals 1

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$600(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->requiresPrefixIndicator(Linet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$500(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->requiresPrefixIndicator(Linet/ipaddr/ipv4/IPv4AddressSection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->appendPrefixIndicator(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)V

    :cond_1
    return-void
.end method

.method public clone()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->clone()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv4Params:Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    invoke-virtual {v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->clone()Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv4Params:Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->clone()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;

    move-result-object v0

    return-object v0
.end method

.method public getDivisionStringLength(Linet/ipaddr/format/string/AddressStringDivision;)I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getDivisionStringLength(Linet/ipaddr/format/string/AddressStringDivision;)I

    move-result p1

    return p1
.end method

.method public getPrefixStringLength(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)I
    .locals 1

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$600(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->requiresPrefixIndicator(Linet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$500(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->requiresPrefixIndicator(Linet/ipaddr/ipv4/IPv4AddressSection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-static {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getPrefixIndicatorStringLength(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I

    move-result p1

    return p1
.end method

.method public getStringLength(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)I
    .locals 3

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$600(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->getSegmentsStringLength(Linet/ipaddr/ipv6/IPv6AddressSection;)I

    move-result v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv4Params:Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$500(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v2

    invoke-virtual {v1, v2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getSegmentsStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    iget v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->nextUncompressedIndex:I

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$600(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->getPrefixStringLength(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getZoneLength(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/2addr p1, v1

    iget-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getAddressSuffixLength()I

    move-result p2

    add-int/2addr p2, p1

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getAddressLabelLength()I

    move-result p1

    add-int/2addr p1, p2

    return p1
.end method

.method public getTrailingSegmentSeparator()C
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv4Params:Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    invoke-virtual {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getTrailingSegmentSeparator()C

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrailingSeparatorCount(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->getTrailingSeparatorCount(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)I

    move-result p1

    return p1
.end method

.method public getTrailingSeparatorCount(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)I
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv4Params:Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->access$500(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getTrailingSeparatorCount(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I

    move-result p1

    return p1
.end method

.method public requiresPrefixIndicator(Linet/ipaddr/ipv4/IPv4AddressSection;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv4Params:Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->preferWildcards()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requiresPrefixIndicator(Linet/ipaddr/ipv6/IPv6AddressSection;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->preferWildcards()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->ipv6Params:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    iget-boolean p1, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->hostCompressed:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic toString(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->toString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toString(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->toString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Ljava/lang/String;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->toString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->getStringLength(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->append(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->checkLengths(ILjava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
