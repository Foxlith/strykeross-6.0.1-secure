.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;
.super Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6StringBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder<",
        "Linet/ipaddr/ipv6/IPv6AddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;

    invoke-direct {v0, p1, p3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V

    return-void
.end method

.method private addAllCompressedStrings(IIZI)V
    .locals 2

    add-int/2addr p2, p1

    if-eqz p3, :cond_1

    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 p3, p1, 0x1

    move v0, p3

    :goto_1
    if-gt v0, p2, :cond_0

    sub-int v1, v0, p1

    invoke-direct {p0, p1, v1, p4}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;->addAllExpansions(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move p1, p3

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p1

    if-lez p2, :cond_2

    invoke-direct {p0, p1, p2, p4}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;->addAllExpansions(III)V

    :cond_2
    return-void
.end method

.method private addAllExpansions(III)V
    .locals 10

    new-instance p3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-direct {p3, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;-><init>(II)V

    invoke-virtual {p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getRadix()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    const/16 v2, 0x30

    invoke-virtual {p3, v2}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result p3

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz p3, :cond_4

    invoke-virtual {p0, v3}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->getExpandableSegments(I)[I

    move-result-object p3

    add-int/2addr p2, p1

    iget-object v3, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v3, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_5

    if-lt v4, p1, :cond_0

    if-lt v4, p2, :cond_3

    :cond_0
    aget v5, p3, v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_1
    if-lez v5, :cond_3

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {v8}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->clone()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object v8

    iget-object v9, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v9, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v9}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v9

    invoke-virtual {v8, v4, v5, v9}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->expandSegment(III)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v7, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    const/16 v8, 0x70

    invoke-virtual {v7, v8}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object p3, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    invoke-virtual {p3, v3}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0, v3, p1, p2}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->isExpandableOutsideRange(III)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v2

    :goto_4
    if-ge p2, p1, :cond_5

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {p3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->clone()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object p3

    const/4 v3, 0x1

    invoke-virtual {p3, v3}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->expandSegments(Z)V

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    invoke-direct {p0, v1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;->addUppercaseVariations(Ljava/util/ArrayList;I)V

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addStringParam(Linet/ipaddr/format/util/IPAddressStringWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method private addUppercaseVariations(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasUppercaseVariations(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->clone()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setUppercase(Z)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllVariations()V
    .locals 8

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;->addAllExpansions(III)V

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    const/16 v3, 0xf00

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v1

    const/16 v3, 0x1f00

    if-eqz v1, :cond_0

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getZeroSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v1, v2}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->getRange(I)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    move-result-object v4

    iget v5, v4, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;->index:I

    iget v4, v4, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;->length:I

    iget-object v6, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v6, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    invoke-virtual {v6, v3}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v6

    invoke-direct {p0, v5, v4, v6, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;->addAllCompressedStrings(IIZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    const/16 v4, 0x100

    invoke-virtual {v1, v4}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    iget-object v4, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v4, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    const/16 v5, 0x300

    invoke-virtual {v4, v5}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v4

    sget-object v5, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->ZEROS:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    invoke-direct {v1, v4, v5}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;-><init>(ZLinet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;)V

    iget-object v4, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v4, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v4, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->access$900(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)[I

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v4, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    const/16 v5, 0x700

    invoke-virtual {v4, v5}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    aget v1, v1, v5

    iget-object v4, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v4, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v4}, Linet/ipaddr/ipv6/IPv6AddressSection;->getZeroSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {v4, v2}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->getRange(I)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    move-result-object v5

    iget v6, v5, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;->length:I

    if-ne v6, v1, :cond_1

    iget v5, v5, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;->index:I

    iget-object v7, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v7, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    invoke-virtual {v7, v3}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v7

    invoke-direct {p0, v5, v6, v7, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;->addAllCompressedStrings(IIZI)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    aget v3, v1, v2

    aget v1, v1, v5

    invoke-direct {p0, v3, v1, v2, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;->addAllCompressedStrings(IIZI)V

    :cond_3
    return-void
.end method
