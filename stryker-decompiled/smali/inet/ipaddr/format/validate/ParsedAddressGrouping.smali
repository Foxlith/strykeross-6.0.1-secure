.class public Linet/ipaddr/format/validate/ParsedAddressGrouping;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cache:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x7fff

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache:[Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    sget-object v1, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cache(I)Ljava/lang/Integer;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache:[Ljava/lang/Integer;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getDivisionPrefixLength(II)Ljava/lang/Integer;
    .locals 0

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    if-gt p1, p0, :cond_1

    invoke-static {p1}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHostSegmentIndex(III)I
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    shr-int/lit8 p0, p0, 0x4

    return p0

    :cond_0
    div-int/2addr p0, p2

    return p0

    :cond_1
    shr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static getNetworkPrefixLength(III)Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    shl-int/lit8 p0, p2, 0x3

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    shl-int/lit8 p0, p2, 0x4

    goto :goto_0

    :cond_1
    mul-int/2addr p0, p2

    :goto_0
    add-int/2addr p0, p1

    invoke-static {p0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkSegmentIndex(III)I
    .locals 2

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    const/4 v1, 0x2

    sub-int/2addr p0, v0

    if-ne p1, v1, :cond_0

    shr-int/lit8 p0, p0, 0x4

    return p0

    :cond_0
    div-int/2addr p0, p2

    return p0

    :cond_1
    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    shl-int/lit8 p2, p2, 0x3

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    shl-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_1
    mul-int/2addr p2, p0

    :goto_0
    sub-int/2addr p1, p2

    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getDivisionPrefixLength(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isPrefixSubnet(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IIIILjava/lang/Integer;Linet/ipaddr/AddressNetwork$PrefixConfiguration;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p6, :cond_13

    invoke-virtual {p7}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->prefixedSubnetsAreExplicit()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-ne p4, v1, :cond_2

    shl-int/lit8 v1, p2, 0x3

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-ne p4, v1, :cond_3

    shl-int/lit8 v1, p2, 0x4

    goto :goto_0

    :cond_3
    mul-int v1, p2, p4

    :goto_0
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_4

    return v0

    :cond_4
    :goto_1
    invoke-virtual {p7}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result p7

    const/4 v1, 0x1

    if-eqz p7, :cond_5

    return v1

    :cond_5
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p7

    invoke-static {p7, p3, p4}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getHostSegmentIndex(III)I

    move-result p3

    if-ge p3, p2, :cond_12

    invoke-static {p4, p6, p3}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    :goto_2
    invoke-interface {p0, p3}, Linet/ipaddr/Address$SegmentValueProvider;->getValue(I)I

    move-result p7

    if-nez p6, :cond_9

    if-eqz p7, :cond_6

    return v0

    :cond_6
    invoke-interface {p1, p3}, Linet/ipaddr/Address$SegmentValueProvider;->getValue(I)I

    move-result p6

    if-eqz p8, :cond_7

    if-eq p6, p5, :cond_10

    return v0

    :cond_7
    not-int p7, p6

    invoke-static {p7}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p7

    if-lez p7, :cond_8

    ushr-int/2addr p6, p7

    if-eqz p6, :cond_f

    return v0

    :cond_8
    if-eqz p6, :cond_10

    return v0

    :cond_9
    if-ge p6, p4, :cond_10

    sub-int p6, p4, p6

    const/4 v2, -0x1

    if-eqz p8, :cond_b

    shl-int p6, v2, p6

    not-int p6, p6

    and-int/2addr p7, p6

    if-eqz p7, :cond_a

    return v0

    :cond_a
    invoke-interface {p1, p3}, Linet/ipaddr/Address$SegmentValueProvider;->getValue(I)I

    move-result p7

    and-int/2addr p7, p6

    if-eq p7, p6, :cond_10

    return v0

    :cond_b
    invoke-static {p7}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p7

    if-ge p7, p6, :cond_c

    return v0

    :cond_c
    invoke-interface {p1, p3}, Linet/ipaddr/Address$SegmentValueProvider;->getValue(I)I

    move-result p7

    not-int p8, p7

    invoke-static {p8}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p8

    if-ge p8, p6, :cond_f

    shl-int/2addr v2, p4

    or-int/2addr p7, v2

    ushr-int/2addr p7, p8

    invoke-static {p7}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p7

    add-int/2addr p7, p8

    if-ge p7, p6, :cond_d

    return v0

    :cond_d
    if-lez p8, :cond_e

    move p6, v1

    goto :goto_3

    :cond_e
    move p6, v0

    :goto_3
    move p8, p6

    goto :goto_4

    :cond_f
    move p8, v1

    :cond_10
    :goto_4
    add-int/lit8 p3, p3, 0x1

    if-lt p3, p2, :cond_11

    goto :goto_5

    :cond_11
    move p6, v0

    goto :goto_2

    :cond_12
    :goto_5
    return v1

    :cond_13
    :goto_6
    return v0
.end method

.method public static isPrefixSubnet(Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionLengthProvider;ILjava/lang/Integer;Linet/ipaddr/AddressNetwork$PrefixConfiguration;Z)Z
    .locals 23

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p7 .. p7}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->prefixedSubnetsAreExplicit()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v0, v5

    goto/16 :goto_14

    :cond_1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object/from16 v6, p6

    :goto_0
    move v7, v5

    move v8, v7

    :goto_1
    if-ge v7, v4, :cond_26

    invoke-interface {v3, v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionLengthProvider;->getLength(I)I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-static {v10, v11}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getDivisionPrefixLength(II)Ljava/lang/Integer;

    move-result-object v11

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    if-nez v11, :cond_4

    add-int/2addr v8, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v10, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    move v8, v5

    :goto_3
    const/16 v11, 0x40

    if-eqz v8, :cond_a

    if-le v10, v11, :cond_6

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    move v12, v5

    :goto_4
    if-eqz v12, :cond_9

    add-int/lit8 v10, v10, -0x40

    if-ge v6, v10, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    move v13, v5

    :goto_5
    if-eqz v13, :cond_8

    move v14, v11

    move v15, v12

    move/from16 v16, v13

    move v12, v7

    move v13, v10

    move v7, v5

    move v10, v6

    :goto_6
    move/from16 v6, p8

    goto :goto_8

    :cond_8
    sub-int/2addr v6, v10

    move v15, v5

    move v12, v7

    move v14, v11

    move/from16 v16, v13

    move v7, v6

    move v13, v10

    goto :goto_6

    :cond_9
    move v13, v5

    move/from16 v16, v13

    move v14, v10

    move v15, v12

    move/from16 v10, v16

    move v12, v7

    :goto_7
    move v7, v6

    goto :goto_6

    :cond_a
    move v13, v5

    move v15, v13

    move/from16 v16, v15

    move v12, v7

    move v14, v10

    move/from16 v10, v16

    goto :goto_7

    :goto_8
    const-wide/16 v17, -0x1

    const-wide/16 v19, 0x0

    if-eqz v15, :cond_19

    move-object/from16 v15, p1

    invoke-interface {v15, v12}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;->getValue(I)J

    move-result-wide v21

    if-nez v10, :cond_11

    cmp-long v10, v21, v19

    if-eqz v10, :cond_b

    return v5

    :cond_b
    invoke-interface {v2, v12}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;->getValue(I)J

    move-result-wide v9

    if-eqz v6, :cond_d

    rsub-int/lit8 v13, v13, 0x40

    ushr-long v21, v17, v13

    cmp-long v9, v9, v21

    if-eqz v9, :cond_c

    return v5

    :cond_c
    move/from16 p7, v6

    goto :goto_9

    :cond_d
    move/from16 p7, v6

    not-long v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    if-lez v5, :cond_f

    if-ge v5, v11, :cond_e

    ushr-long v5, v9, v5

    cmp-long v5, v5, v19

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    return v5

    :cond_e
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    cmp-long v6, v9, v19

    if-eqz v6, :cond_10

    return v5

    :cond_10
    :goto_9
    move/from16 v6, p7

    :goto_a
    move/from16 v16, v12

    goto :goto_e

    :cond_11
    move/from16 p7, v6

    if-eqz v16, :cond_13

    sub-int/2addr v13, v10

    if-eqz p7, :cond_14

    shl-long v5, v17, v13

    not-long v5, v5

    and-long v9, v5, v21

    cmp-long v9, v9, v19

    if-eqz v9, :cond_12

    const/4 v9, 0x0

    return v9

    :cond_12
    const/4 v9, 0x0

    invoke-interface {v2, v12}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;->getValue(I)J

    move-result-wide v21

    and-long v21, v5, v21

    cmp-long v5, v21, v5

    if-eqz v5, :cond_13

    return v9

    :cond_13
    :goto_b
    move/from16 v16, v12

    goto :goto_d

    :cond_14
    const/4 v9, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    if-ge v5, v13, :cond_15

    return v9

    :cond_15
    invoke-interface {v2, v12}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;->getValue(I)J

    move-result-wide v5

    move/from16 v16, v12

    not-long v11, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v11

    if-ge v11, v13, :cond_18

    ushr-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    add-int/2addr v5, v11

    if-ge v5, v13, :cond_16

    return v9

    :cond_16
    if-lez v11, :cond_17

    goto :goto_c

    :cond_17
    const/4 v6, 0x0

    goto :goto_e

    :cond_18
    :goto_c
    const/4 v6, 0x1

    goto :goto_e

    :cond_19
    move-object/from16 v15, p1

    move/from16 p7, v6

    goto :goto_b

    :goto_d
    move/from16 v6, p7

    :goto_e
    move/from16 v5, v16

    if-nez v7, :cond_1f

    invoke-interface {v0, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;->getValue(I)J

    move-result-wide v11

    cmp-long v7, v11, v19

    if-eqz v7, :cond_1a

    const/4 v7, 0x0

    return v7

    :cond_1a
    const/4 v7, 0x0

    invoke-interface {v1, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;->getValue(I)J

    move-result-wide v11

    if-eqz v6, :cond_1b

    rsub-int/lit8 v9, v14, 0x40

    ushr-long v13, v17, v9

    cmp-long v9, v11, v13

    if-eqz v9, :cond_1e

    return v7

    :cond_1b
    not-long v13, v11

    invoke-static {v13, v14}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v9

    if-lez v9, :cond_1d

    const/16 v10, 0x40

    if-ge v9, v10, :cond_1c

    ushr-long/2addr v11, v9

    cmp-long v6, v11, v19

    if-eqz v6, :cond_1c

    return v7

    :cond_1c
    const/4 v6, 0x1

    goto :goto_f

    :cond_1d
    cmp-long v9, v11, v19

    if-eqz v9, :cond_1e

    return v7

    :cond_1e
    :goto_f
    move/from16 p7, v8

    goto :goto_11

    :cond_1f
    if-eqz v8, :cond_1e

    invoke-interface {v0, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;->getValue(I)J

    move-result-wide v11

    sub-int/2addr v14, v7

    if-eqz v6, :cond_21

    shl-long v13, v17, v14

    not-long v13, v13

    and-long/2addr v11, v13

    cmp-long v7, v11, v19

    if-eqz v7, :cond_20

    const/4 v7, 0x0

    return v7

    :cond_20
    const/4 v7, 0x0

    invoke-interface {v1, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;->getValue(I)J

    move-result-wide v11

    and-long/2addr v11, v13

    cmp-long v9, v11, v13

    if-eqz v9, :cond_1e

    return v7

    :cond_21
    const/4 v7, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    if-ge v6, v14, :cond_22

    return v7

    :cond_22
    invoke-interface {v1, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;->getValue(I)J

    move-result-wide v11

    move/from16 p7, v8

    not-long v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    if-ge v6, v14, :cond_25

    ushr-long v7, v11, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v7

    add-int/2addr v7, v6

    if-ge v7, v14, :cond_23

    const/4 v7, 0x0

    return v7

    :cond_23
    if-lez v6, :cond_24

    goto :goto_10

    :cond_24
    const/4 v6, 0x0

    goto :goto_11

    :cond_25
    :goto_10
    const/4 v6, 0x1

    :goto_11
    add-int/lit8 v12, v5, 0x1

    if-ne v12, v4, :cond_27

    :cond_26
    const/4 v0, 0x1

    goto :goto_14

    :cond_27
    invoke-interface {v3, v12}, Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionLengthProvider;->getLength(I)I

    move-result v5

    const/16 v7, 0x40

    if-le v5, v7, :cond_28

    const/16 v16, 0x1

    goto :goto_12

    :cond_28
    const/16 v16, 0x0

    :goto_12
    if-eqz v16, :cond_29

    add-int/lit8 v5, v5, -0x40

    move v13, v5

    move v14, v7

    goto :goto_13

    :cond_29
    move v14, v5

    const/4 v13, 0x0

    :goto_13
    move/from16 v8, p7

    move v11, v7

    move/from16 v15, v16

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto/16 :goto_8

    :goto_14
    return v0
.end method
