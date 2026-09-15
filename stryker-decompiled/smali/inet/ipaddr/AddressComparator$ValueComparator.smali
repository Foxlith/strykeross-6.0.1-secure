.class public Linet/ipaddr/AddressComparator$ValueComparator;
.super Linet/ipaddr/AddressComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/AddressComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueComparator"
.end annotation


# instance fields
.field private final compareHighValue:Z

.field private final flipSecond:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Linet/ipaddr/AddressComparator$ValueComparator;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 2
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/AddressComparator$ValueComparator;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Linet/ipaddr/AddressComparator;-><init>(Z)V

    iput-boolean p2, p0, Linet/ipaddr/AddressComparator$ValueComparator;->compareHighValue:Z

    iput-boolean p3, p0, Linet/ipaddr/AddressComparator$ValueComparator;->flipSecond:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Linet/ipaddr/format/AddressItem;

    check-cast p2, Linet/ipaddr/format/AddressItem;

    invoke-super {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)I

    move-result p1

    return p1
.end method

.method public compareParts(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I
    .locals 6

    .line 1
    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getByteCount()I

    move-result v0

    invoke-interface {p2}, Linet/ipaddr/format/AddressItem;->getByteCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/AddressComparator$ValueComparator;->compareHighValue:Z

    :cond_1
    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-interface {p1, v3}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v4

    invoke-interface {p2, v3}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v5

    if-eqz v0, :cond_2

    invoke-interface {v4}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result v4

    invoke-interface {v5}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result v5

    :goto_1
    sub-int/2addr v4, v5

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v4

    invoke-interface {v5}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v5

    goto :goto_1

    :goto_2
    if-eqz v4, :cond_4

    iget-boolean p1, p0, Linet/ipaddr/AddressComparator$ValueComparator;->flipSecond:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Linet/ipaddr/AddressComparator$ValueComparator;->compareHighValue:Z

    if-eq v0, p1, :cond_3

    neg-int p1, v4

    return p1

    :cond_3
    return v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Linet/ipaddr/AddressComparator$ValueComparator;->compareHighValue:Z

    if-ne v0, v1, :cond_1

    return v2
.end method

.method public compareParts(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I
    .locals 29

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v3

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-eqz v3, :cond_0

    return v3

    :cond_0
    iget-boolean v3, v0, Linet/ipaddr/AddressComparator;->equalsConsistent:Z

    if-nez v3, :cond_1

    invoke-interface/range {p1 .. p1}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static/range {p1 .. p2}, Linet/ipaddr/AddressComparator;->compareDivBitCounts(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    iget-boolean v3, v0, Linet/ipaddr/AddressComparator$ValueComparator;->compareHighValue:Z

    instance-of v4, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping;

    if-eqz v4, :cond_3

    instance-of v4, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Linet/ipaddr/format/standard/AddressDivisionGrouping;

    move-object v5, v2

    check-cast v5, Linet/ipaddr/format/standard/AddressDivisionGrouping;

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move-object v5, v4

    :cond_4
    :goto_0
    invoke-interface/range {p1 .. p1}, Linet/ipaddr/format/AddressItem;->getByteCount()I

    move-result v6

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/AddressItem;->getByteCount()I

    move-result v7

    new-array v6, v6, [B

    new-array v7, v7, [B

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v8

    if-lt v11, v8, :cond_6

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v8

    if-ge v12, v8, :cond_5

    goto :goto_2

    :cond_5
    xor-int/lit8 v3, v3, 0x1

    iget-boolean v6, v0, Linet/ipaddr/AddressComparator$ValueComparator;->compareHighValue:Z

    if-ne v3, v6, :cond_4

    return v10

    :cond_6
    :goto_2
    if-eqz v4, :cond_a

    if-nez v13, :cond_8

    add-int/lit8 v8, v11, 0x1

    invoke-virtual {v4, v11}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v9

    invoke-interface {v9}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v13

    if-eqz v3, :cond_7

    invoke-virtual {v9}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v21

    goto :goto_3

    :cond_7
    invoke-virtual {v9}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v21

    :goto_3
    move v11, v8

    :cond_8
    if-nez v15, :cond_16

    add-int/lit8 v8, v12, 0x1

    invoke-virtual {v5, v12}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v9

    invoke-interface {v9}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v15

    if-eqz v3, :cond_9

    invoke-virtual {v9}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v23

    goto :goto_4

    :cond_9
    invoke-virtual {v9}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v23

    :goto_4
    move v12, v8

    goto/16 :goto_e

    :cond_a
    const/4 v9, 0x7

    const/16 v25, 0x8

    if-nez v13, :cond_10

    if-nez v14, :cond_c

    add-int/lit8 v13, v11, 0x1

    invoke-interface {v1, v11}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v11

    if-eqz v3, :cond_b

    invoke-interface {v11, v6}, Linet/ipaddr/format/AddressItem;->getUpperBytes([B)[B

    move-result-object v6

    goto :goto_5

    :cond_b
    invoke-interface {v11, v6}, Linet/ipaddr/format/AddressItem;->getBytes([B)[B

    move-result-object v6

    :goto_5
    invoke-interface {v11}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v14

    invoke-interface {v11}, Linet/ipaddr/format/AddressItem;->getByteCount()I

    move-result v11

    move/from16 v17, v10

    move/from16 v28, v14

    move v14, v11

    move v11, v13

    move/from16 v13, v28

    goto :goto_6

    :cond_c
    move/from16 v13, v16

    :goto_6
    if-ge v9, v14, :cond_e

    add-int/lit8 v16, v13, -0x38

    add-int/lit8 v14, v14, -0x7

    move v13, v9

    const-wide/16 v21, 0x0

    :goto_7
    add-int/lit8 v26, v13, -0x1

    if-lez v13, :cond_d

    shl-long v21, v21, v25

    add-int/lit8 v17, v17, 0x1

    aget-byte v13, v6, v17

    move/from16 v27, v11

    int-to-long v10, v13

    or-long v21, v21, v10

    move/from16 v13, v26

    move/from16 v11, v27

    const/4 v10, 0x0

    goto :goto_7

    :cond_d
    move/from16 v27, v11

    const/16 v13, 0x38

    goto :goto_9

    :cond_e
    move/from16 v27, v11

    add-int/lit8 v14, v14, -0x1

    shl-int/lit8 v10, v14, 0x3

    sub-int v10, v13, v10

    const-wide/16 v21, 0x0

    :goto_8
    add-int/lit8 v11, v14, -0x1

    if-lez v14, :cond_f

    shl-long v21, v21, v25

    add-int/lit8 v17, v17, 0x1

    aget-byte v14, v6, v17

    int-to-long v8, v14

    or-long v21, v21, v8

    move v14, v11

    const/4 v9, 0x7

    goto :goto_8

    :cond_f
    shl-long v8, v21, v10

    add-int/lit8 v17, v17, 0x1

    aget-byte v11, v6, v17

    rsub-int/lit8 v10, v10, 0x8

    ushr-int v10, v11, v10

    int-to-long v10, v10

    or-long v21, v8, v10

    move/from16 v11, v27

    const/4 v14, 0x0

    const/16 v16, 0x0

    :cond_10
    :goto_9
    if-nez v15, :cond_16

    if-nez v19, :cond_12

    add-int/lit8 v8, v12, 0x1

    invoke-interface {v2, v12}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v9

    if-eqz v3, :cond_11

    invoke-interface {v9, v7}, Linet/ipaddr/format/AddressItem;->getUpperBytes([B)[B

    move-result-object v7

    goto :goto_a

    :cond_11
    invoke-interface {v9, v7}, Linet/ipaddr/format/AddressItem;->getBytes([B)[B

    move-result-object v7

    :goto_a
    invoke-interface {v9}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v10

    invoke-interface {v9}, Linet/ipaddr/format/AddressItem;->getByteCount()I

    move-result v19

    move v12, v8

    move v15, v10

    move/from16 v8, v19

    const/4 v9, 0x7

    const/16 v20, 0x0

    goto :goto_b

    :cond_12
    move/from16 v15, v18

    move/from16 v8, v19

    const/4 v9, 0x7

    :goto_b
    if-ge v9, v8, :cond_14

    add-int/lit8 v18, v15, -0x38

    add-int/lit8 v19, v8, -0x7

    const-wide/16 v23, 0x0

    :goto_c
    add-int/lit8 v8, v9, -0x1

    if-lez v9, :cond_13

    shl-long v9, v23, v25

    add-int/lit8 v20, v20, 0x1

    aget-byte v15, v6, v20

    int-to-long v0, v15

    or-long v23, v9, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v9, v8

    goto :goto_c

    :cond_13
    const/16 v15, 0x38

    goto :goto_e

    :cond_14
    add-int/lit8 v8, v8, -0x1

    shl-int/lit8 v0, v8, 0x3

    sub-int v0, v15, v0

    const-wide/16 v9, 0x0

    :goto_d
    add-int/lit8 v1, v8, -0x1

    if-lez v8, :cond_15

    shl-long v8, v9, v25

    add-int/lit8 v20, v20, 0x1

    aget-byte v10, v6, v20

    move/from16 v18, v1

    int-to-long v1, v10

    or-long v9, v8, v1

    move-object/from16 v2, p2

    move/from16 v8, v18

    goto :goto_d

    :cond_15
    shl-long v1, v9, v0

    add-int/lit8 v20, v20, 0x1

    aget-byte v8, v6, v20

    rsub-int/lit8 v25, v0, 0x8

    ushr-int v0, v8, v25

    int-to-long v8, v0

    or-long v23, v1, v8

    const/16 v18, 0x0

    const/16 v19, 0x0

    :cond_16
    :goto_e
    if-ne v15, v13, :cond_17

    move-wide/from16 v0, v21

    move-wide/from16 v8, v23

    const/4 v13, 0x0

    :goto_f
    const/4 v15, 0x0

    goto :goto_10

    :cond_17
    sub-int/2addr v15, v13

    const-wide/16 v0, -0x1

    if-lez v15, :cond_18

    shr-long v8, v23, v15

    shl-long/2addr v0, v15

    not-long v0, v0

    and-long v0, v23, v0

    move-wide/from16 v23, v8

    const/4 v13, 0x0

    move-wide v8, v0

    move-wide/from16 v0, v21

    goto :goto_10

    :cond_18
    neg-int v2, v15

    shr-long v8, v21, v2

    shl-long/2addr v0, v2

    not-long v0, v0

    and-long v0, v21, v0

    move v13, v2

    move-wide/from16 v21, v8

    move-wide/from16 v8, v23

    goto :goto_f

    :goto_10
    sub-long v21, v21, v23

    const-wide/16 v23, 0x0

    cmp-long v2, v21, v23

    if-eqz v2, :cond_19

    invoke-static/range {v21 .. v22}, Linet/ipaddr/AddressComparator;->convertResult(J)I

    move-result v0

    return v0

    :cond_19
    move-object/from16 v2, p2

    move-wide/from16 v21, v0

    move-wide/from16 v23, v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1
.end method

.method public compareValues(IIII)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/AddressComparator$ValueComparator;->compareHighValue:Z

    if-eqz v0, :cond_0

    sub-int/2addr p1, p3

    if-nez p1, :cond_2

    sub-int p1, p2, p4

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p4

    if-nez p2, :cond_1

    sub-int/2addr p1, p3

    goto :goto_0

    :cond_1
    move p1, p2

    :cond_2
    :goto_0
    return p1
.end method

.method public compareValues(JJJJ)I
    .locals 3

    .line 2
    iget-boolean v0, p0, Linet/ipaddr/AddressComparator$ValueComparator;->compareHighValue:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    sub-long/2addr p1, p5

    cmp-long p5, p1, v1

    if-nez p5, :cond_2

    sub-long p1, p3, p7

    goto :goto_0

    :cond_0
    sub-long/2addr p3, p7

    cmp-long p7, p3, v1

    if-nez p7, :cond_1

    sub-long/2addr p1, p5

    goto :goto_0

    :cond_1
    move-wide p1, p3

    :cond_2
    :goto_0
    invoke-static {p1, p2}, Linet/ipaddr/AddressComparator;->convertResult(J)I

    move-result p1

    return p1
.end method

.method public compareValues(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 1

    .line 3
    iget-boolean v0, p0, Linet/ipaddr/AddressComparator$ValueComparator;->compareHighValue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :cond_2
    :goto_0
    int-to-long p1, p1

    invoke-static {p1, p2}, Linet/ipaddr/AddressComparator;->convertResult(J)I

    move-result p1

    return p1
.end method
