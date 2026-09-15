.class Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4StringBuilder;
.super Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4StringBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder<",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;",
        ">;",
        "Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;",
        "Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V

    return-void
.end method

.method public synthetic constructor <init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;Linet/ipaddr/ipv4/IPv4AddressSection$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4StringBuilder;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;)V

    return-void
.end method

.method public static isDecimalSameAsOctal(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Z
    .locals 5

    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;

    move-result-object v3

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Linet/ipaddr/format/string/AddressStringDivision;->isBoundedBy(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addAllVariations()V
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xa

    invoke-static {v3}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v4, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v4

    const/16 v5, 0x10

    if-eqz v4, :cond_0

    invoke-static {v5}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v4, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    const/16 v6, 0x100

    invoke-virtual {v4, v6}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v4

    const/16 v6, 0x70

    const/16 v7, 0x8

    if-eqz v4, :cond_1

    invoke-static {v7}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v4, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {v4, v6}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->OCTAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    invoke-virtual {v4}, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v4

    const-string v10, "0"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-static {v4}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4StringBuilder;->isDecimalSameAsOctal(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    invoke-direct {v12, v10}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v10, v7, :cond_3

    if-eq v10, v5, :cond_2

    goto :goto_3

    :cond_2
    sget-object v13, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->HEX:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    :goto_2
    invoke-virtual {v13}, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSegmentStrPrefix(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    sget-object v13, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->OCTAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    goto :goto_2

    :goto_3
    iget-object v12, v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v12, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v0, v10}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->getExpandableSegments(I)[I

    move-result-object v12

    iget-object v13, v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-interface {v13}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_a

    aget v15, v12, v14

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_5
    if-lez v15, :cond_9

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v7, :cond_7

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    if-eqz v4, :cond_5

    if-ne v10, v3, :cond_5

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v13, :cond_6

    if-eq v3, v14, :cond_4

    invoke-virtual {v8, v3}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getExpandedSegmentLength(I)I

    move-result v17

    if-nez v17, :cond_4

    goto :goto_8

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_5
    :goto_8
    invoke-virtual {v8}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;->clone()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    move-result-object v3

    iget-object v8, v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-interface {v8}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v8

    invoke-virtual {v3, v14, v15, v8}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->expandSegment(III)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/16 v3, 0xa

    goto :goto_6

    :cond_7
    iget-object v3, v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v3, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {v3, v6}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_9

    :cond_8
    add-int/lit8 v15, v15, -0x1

    const/16 v3, 0xa

    goto :goto_5

    :cond_9
    :goto_9
    add-int/lit8 v14, v14, 0x1

    const/16 v3, 0xa

    const/16 v7, 0x8

    goto :goto_4

    :cond_a
    move v7, v3

    :goto_a
    const/4 v8, 0x1

    goto :goto_b

    :cond_b
    iget-object v3, v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    check-cast v3, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {v3, v5}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v10}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->isExpandable(I)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    const/16 v7, 0xa

    invoke-direct {v3, v7}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;-><init>(I)V

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->expandSegments(Z)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    const/16 v7, 0xa

    goto :goto_a

    :goto_b
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v3, v7

    const/16 v7, 0x8

    goto/16 :goto_1

    :cond_d
    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_e

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    invoke-virtual {v0, v2}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4StringBuilder;->addStringParam(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_e
    return-void
.end method

.method public bridge synthetic addStringParam(Linet/ipaddr/format/util/IPAddressStringWriter;)V
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4StringBuilder;->addStringParam(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;)V

    return-void
.end method

.method public addStringParam(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addStringParam(Linet/ipaddr/format/util/IPAddressStringWriter;)V

    return-void
.end method
