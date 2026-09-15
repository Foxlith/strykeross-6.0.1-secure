.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;
.super Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6StringParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams<",
        "Linet/ipaddr/ipv6/IPv6AddressSection;",
        ">;"
    }
.end annotation


# instance fields
.field firstCompressedSegmentIndex:I

.field hostCompressed:Z

.field nextUncompressedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .line 2
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x25

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;-><init>(ZIIZCC)V

    return-void
.end method

.method private constructor <init>(ZIIZCC)V
    .locals 1

    .line 3
    const/16 v0, 0x10

    invoke-static {p5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p5

    invoke-direct {p0, v0, p5, p4, p6}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;-><init>(ILjava/lang/Character;ZC)V

    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->expandSegments(Z)V

    iput p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->firstCompressedSegmentIndex:I

    add-int/2addr p2, p3

    iput p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->nextUncompressedIndex:I

    return-void
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    check-cast p2, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->append(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    .line 2
    check-cast p2, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->append(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendLabel(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->appendSegments(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendZone(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0, p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->appendSuffix(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->isReverse()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->preferWildcards()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->hostCompressed:Z

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->appendPrefixIndicator(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)V

    :cond_1
    return-object p1
.end method

.method public bridge synthetic appendSegments(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    check-cast p2, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->appendSegments(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendSegments(Ljava/lang/StringBuilder;Linet/ipaddr/ipv6/IPv6AddressSection;)Ljava/lang/StringBuilder;
    .locals 7

    .line 2
    invoke-virtual {p2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getSeparator()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->isReverse()Z

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    sub-int v4, v0, v3

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    iget v5, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->firstCompressedSegmentIndex:I

    if-lt v4, v5, :cond_6

    iget v6, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->nextUncompressedIndex:I

    if-lt v4, v6, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    add-int/lit8 v5, v6, -0x1

    :cond_4
    if-ne v4, v5, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    if-le v3, v0, :cond_1

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0, v4, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->appendSegment(ILjava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I

    add-int/lit8 v3, v3, 0x1

    if-le v3, v0, :cond_7

    :goto_3
    return-object p1

    :cond_7
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->clone()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->clone()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->clone()Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->clone()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object v0

    return-object v0
.end method

.method public endIsCompressed(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Z
    .locals 1

    iget v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->nextUncompressedIndex:I

    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getSegmentsStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;)I
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->getSegmentsStringLength(Linet/ipaddr/ipv6/IPv6AddressSection;)I

    move-result p1

    return p1
.end method

.method public getSegmentsStringLength(Linet/ipaddr/ipv6/IPv6AddressSection;)I
    .locals 6

    .line 2
    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getSeparator()Ljava/lang/Character;

    move-result-object v2

    move v3, v1

    :cond_0
    :goto_0
    iget v4, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->firstCompressedSegmentIndex:I

    if-lt v1, v4, :cond_4

    iget v5, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->nextUncompressedIndex:I

    if-lt v1, v5, :cond_1

    goto :goto_3

    :cond_1
    if-ne v1, v4, :cond_3

    if-eqz v2, :cond_3

    add-int/lit8 v4, v3, 0x1

    if-nez v1, :cond_2

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :goto_2
    move v1, v3

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->appendSegment(ILjava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return v1
.end method

.method public bridge synthetic getStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;)I
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->getStringLength(Linet/ipaddr/ipv6/IPv6AddressSection;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getStringLength(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->getStringLength(Linet/ipaddr/ipv6/IPv6AddressSection;)I

    move-result p1

    return p1
.end method

.method public getStringLength(Linet/ipaddr/ipv6/IPv6AddressSection;)I
    .locals 2

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->getSegmentsStringLength(Linet/ipaddr/ipv6/IPv6AddressSection;)I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->isReverse()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->preferWildcards()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->hostCompressed:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getPrefixIndicatorStringLength(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getAddressSuffixLength()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getAddressLabelLength()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getTrailingSepCount(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I
    .locals 4

    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->isCompressed(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->nextUncompressedIndex:I

    iget v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->firstCompressedSegmentIndex:I

    sub-int v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v1, v3

    if-eqz v2, :cond_1

    if-lt p1, v0, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    return v1
.end method

.method public bridge synthetic getTrailingSeparatorCount(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->getTrailingSeparatorCount(Linet/ipaddr/ipv6/IPv6AddressSection;)I

    move-result p1

    return p1
.end method

.method public getTrailingSeparatorCount(Linet/ipaddr/ipv6/IPv6AddressSection;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->getTrailingSepCount(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I

    move-result p1

    return p1
.end method

.method public isCompressed(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Z
    .locals 0

    iget p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->firstCompressedSegmentIndex:I

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
