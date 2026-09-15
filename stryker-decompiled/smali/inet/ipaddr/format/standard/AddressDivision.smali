.class public abstract Linet/ipaddr/format/standard/AddressDivision;
.super Linet/ipaddr/format/AddressDivisionBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/standard/AddressDivision$BitwiseOrResult;,
        Linet/ipaddr/format/standard/AddressDivision$MaskResult;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionBase;-><init>()V

    return-void
.end method

.method private adjustLeadingZeroCount(IJI)I
    .locals 0

    if-gez p1, :cond_0

    invoke-static {p2, p3, p4}, Linet/ipaddr/format/AddressDivisionBase;->getDigitCount(JI)I

    move-result p1

    invoke-virtual {p0, p4}, Linet/ipaddr/format/standard/AddressDivision;->getMaxDigitCount(I)I

    move-result p2

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method private static appendDigits(JIIZCLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 18

    .line 1
    move-wide/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v0, v5

    if-gtz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    long-to-int v9, v0

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    if-eqz p4, :cond_2

    sget-object v10, Linet/ipaddr/format/AddressDivisionBase;->UPPERCASE_DIGITS:[C

    goto :goto_2

    :cond_2
    sget-object v10, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    :goto_2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v11

    move v12, v9

    move v9, v7

    move/from16 v7, p3

    :goto_3
    if-lt v12, v2, :cond_8

    if-eqz v9, :cond_4

    div-int v13, v12, v2

    if-lez v7, :cond_3

    add-int/lit8 v7, v7, -0x1

    move v12, v13

    goto :goto_3

    :cond_3
    rem-int/2addr v12, v2

    move v8, v12

    move v12, v13

    goto :goto_5

    :cond_4
    int-to-long v13, v2

    move/from16 p0, v9

    div-long v8, v0, v13

    cmp-long v15, v8, v5

    if-gtz v15, :cond_5

    long-to-int v12, v8

    move v15, v12

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    move v15, v12

    move/from16 v12, p0

    :goto_4
    if-lez v7, :cond_6

    add-int/lit8 v7, v7, -0x1

    move-wide v0, v8

    move v9, v12

    move v12, v15

    goto :goto_3

    :cond_6
    rem-long/2addr v0, v13

    long-to-int v0, v0

    move-wide/from16 v16, v8

    move v8, v0

    move-wide/from16 v0, v16

    move v9, v12

    move v12, v15

    :goto_5
    if-lez v11, :cond_7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    aget-char v8, v10, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    if-nez v7, :cond_a

    if-lez v11, :cond_9

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    aget-char v0, v10, v12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    return-void
.end method

.method private static appendDigits(JJLjava/lang/String;Ljava/lang/String;IZCZLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 25

    .line 2
    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    if-eqz p7, :cond_0

    sget-object v7, Linet/ipaddr/format/AddressDivisionBase;->UPPERCASE_DIGITS:[C

    goto :goto_0

    :cond_0
    sget-object v7, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    :goto_0
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v0, v8

    if-gtz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_2

    long-to-int v13, v0

    move-wide/from16 v14, p0

    long-to-int v11, v14

    goto :goto_2

    :cond_2
    move-wide/from16 v14, p0

    move v11, v4

    move v13, v11

    :goto_2
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    :goto_3
    if-eqz v10, :cond_4

    rem-int v18, v13, v4

    div-int v19, v13, v4

    if-ne v13, v11, :cond_3

    move/from16 v13, v18

    move/from16 v11, v19

    goto :goto_4

    :cond_3
    rem-int v13, v11, v4

    div-int/2addr v11, v4

    :goto_4
    move-wide/from16 v22, v0

    move-wide v0, v8

    move-wide/from16 v20, v14

    move/from16 v8, v18

    goto :goto_8

    :cond_4
    move/from16 p0, v13

    int-to-long v12, v4

    rem-long v8, v0, v12

    long-to-int v8, v8

    move/from16 p1, v8

    div-long v8, v0, v12

    cmp-long v0, v0, v14

    if-nez v0, :cond_5

    move/from16 v13, p1

    move-wide v14, v8

    :goto_5
    const-wide/32 v0, 0x7fffffff

    goto :goto_6

    :cond_5
    rem-long v0, v14, v12

    long-to-int v0, v0

    div-long/2addr v14, v12

    move v13, v0

    goto :goto_5

    :goto_6
    cmp-long v12, v8, v0

    if-gtz v12, :cond_6

    long-to-int v10, v8

    long-to-int v11, v14

    move-wide/from16 v22, v8

    move/from16 v19, v10

    move-wide/from16 v20, v14

    const/4 v10, 0x1

    :goto_7
    move/from16 v8, p1

    goto :goto_8

    :cond_6
    move/from16 v19, p0

    move-wide/from16 v22, v8

    move-wide/from16 v20, v14

    goto :goto_7

    :goto_8
    if-ne v13, v8, :cond_a

    if-eqz p9, :cond_8

    if-lez v16, :cond_7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    aget-char v8, v7, v13

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_8
    aget-char v8, v7, v13

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v16, -0x1

    :goto_9
    if-ltz v8, :cond_9

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    :cond_9
    :goto_a
    const/4 v12, 0x1

    const/16 v17, 0x0

    goto :goto_f

    :cond_a
    if-eqz v17, :cond_12

    if-nez v13, :cond_b

    add-int/lit8 v9, v4, -0x1

    if-ne v8, v9, :cond_b

    const/4 v9, 0x1

    goto :goto_b

    :cond_b
    const/4 v9, 0x0

    :goto_b
    if-eqz v9, :cond_d

    if-eqz v3, :cond_d

    if-eqz p9, :cond_c

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    goto :goto_e

    :cond_c
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    :goto_c
    if-ltz v8, :cond_10

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    goto :goto_c

    :cond_d
    const/4 v12, 0x1

    if-eqz p9, :cond_f

    if-lez v16, :cond_e

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    aget-char v13, v7, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_f
    aget-char v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v8, v7, v13

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v16, -0x1

    :goto_d
    if-ltz v8, :cond_10

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    goto :goto_d

    :cond_10
    :goto_e
    move/from16 v17, v9

    :goto_f
    if-nez v19, :cond_11

    return-void

    :cond_11
    move/from16 v8, p8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide v8, v0

    move/from16 v13, v19

    move-wide/from16 v14, v20

    move-wide/from16 v0, v22

    goto/16 :goto_3

    :cond_12
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    const-string v24, "ipaddress.error.splitMismatch"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJLjava/lang/String;)V

    throw v0
.end method

.method public static bitwiseOrRange(JJJ)Linet/ipaddr/format/standard/AddressDivision$BitwiseOrResult;
    .locals 9

    .line 1
    invoke-static/range {p0 .. p5}, Linet/ipaddr/format/validate/ParsedIPAddress;->bitwiseOrRange(JJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    move-result-object v7

    new-instance v8, Linet/ipaddr/format/standard/AddressDivision$BitwiseOrResult;

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivision$BitwiseOrResult;-><init>(JJJLinet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;)V

    return-object v8
.end method

.method public static bitwiseOrRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;
    .locals 0

    .line 2
    invoke-static/range {p0 .. p7}, Linet/ipaddr/format/validate/ParsedIPAddress;->bitwiseOrRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    move-result-object p0

    return-object p0
.end method

.method private buildDefaultRangeString(I)Ljava/lang/String;
    .locals 10

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p1

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Linet/ipaddr/format/AddressDivisionBase;->getRangeString(Ljava/lang/String;IILjava/lang/String;IZZLjava/lang/StringBuilder;)I

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static calculateRangeDigitCount(IJJJ)I
    .locals 8

    const/4 v0, 0x1

    move v1, p0

    :goto_0
    int-to-long v2, v1

    rem-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    div-long v4, p5, v2

    div-long v6, p3, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    rem-long v4, p5, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v1, -0x1

    int-to-long v4, v4

    :goto_1
    rem-long v2, p3, v2

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    sub-long v2, p3, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v1, p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getPrefixValueCount(Linet/ipaddr/AddressSegment;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TS;I)I"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result p1

    ushr-int/2addr p1, v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p0

    ushr-int/2addr p0, v0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static getRadixPower(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionBase;->getRadixPower(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static identityIterator(Linet/ipaddr/AddressSegment;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TS;)",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/standard/AddressDivision$1;

    invoke-direct {v0, p0}, Linet/ipaddr/format/standard/AddressDivision$1;-><init>(Linet/ipaddr/AddressSegment;)V

    return-object v0
.end method

.method public static isReversibleRange(Linet/ipaddr/AddressSegment;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TS;)Z"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getMaxSegmentValue()I

    move-result p0

    sub-int/2addr p0, v1

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static iterator(Linet/ipaddr/AddressSegment;IIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TS;III",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;",
            "Ljava/lang/Integer;",
            "ZZ)",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation

    .line 1
    if-eqz p6, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p3, v0

    const/4 v1, -0x1

    shl-int/2addr v1, v0

    not-int v2, v1

    move v4, v0

    move v9, v1

    move v11, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    move v9, v4

    move v11, v9

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Linet/ipaddr/format/standard/AddressDivision$2;

    move-object v5, v0

    move/from16 v6, p7

    move-object/from16 v7, p4

    move v8, p1

    move/from16 v10, p2

    move-object/from16 v12, p5

    move-object v13, p0

    invoke-direct/range {v5 .. v13}, Linet/ipaddr/format/standard/AddressDivision$2;-><init>(ZLinet/ipaddr/AddressNetwork$AddressSegmentCreator;IIIILjava/lang/Integer;Linet/ipaddr/AddressSegment;)V

    return-object v0

    :cond_1
    if-eqz p6, :cond_3

    if-eqz p7, :cond_2

    new-instance v0, Linet/ipaddr/format/standard/AddressDivision$3;

    move-object v1, v0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move v6, v11

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Linet/ipaddr/format/standard/AddressDivision$3;-><init>(IIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;ILjava/lang/Integer;)V

    return-object v0

    :cond_2
    new-instance v0, Linet/ipaddr/format/standard/AddressDivision$4;

    move-object v1, v0

    move v2, p1

    move/from16 v3, p2

    move v5, v11

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Linet/ipaddr/format/standard/AddressDivision$4;-><init>(IIIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;)V

    return-object v0

    :cond_3
    new-instance v0, Linet/ipaddr/format/standard/AddressDivision$5;

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, p1, v2, v3, v4}, Linet/ipaddr/format/standard/AddressDivision$5;-><init>(IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static iterator(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TS;",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;",
            "Ljava/lang/Integer;",
            "ZZ)",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v1

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result v2

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;IIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static maskRange(JJJ)Linet/ipaddr/format/standard/AddressDivision$MaskResult;
    .locals 9

    .line 1
    invoke-static/range {p0 .. p5}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v7

    new-instance v8, Linet/ipaddr/format/standard/AddressDivision$MaskResult;

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivision$MaskResult;-><init>(JJJLinet/ipaddr/format/validate/ParsedIPAddress$Masker;)V

    return-object v8
.end method

.method public static maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;
    .locals 0

    .line 2
    invoke-static/range {p0 .. p7}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object p0

    return-object p0
.end method

.method public static reverseBits(B)I
    .locals 1

    .line 1
    and-int/lit16 v0, p0, 0xaa

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 p0, p0, 0x55

    shl-int/lit8 p0, p0, 0x1

    or-int/2addr p0, v0

    and-int/lit16 v0, p0, 0xcc

    ushr-int/lit8 v0, v0, 0x2

    and-int/lit8 p0, p0, 0x33

    shl-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static reverseBits(I)I
    .locals 2

    .line 2
    const v0, -0x55555556

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1

    const v1, 0x55555555

    and-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x1

    or-int/2addr p0, v0

    const v0, -0x33333334

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x2

    const v1, 0x33333333

    and-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    const v0, -0xf0f0f10

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x4

    const v1, 0xf0f0f0f

    and-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    const v0, -0xff0100

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    const v1, 0xff00ff

    and-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public static reverseBits(S)I
    .locals 1

    .line 3
    const v0, 0xaaaa

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit16 p0, p0, 0x5555

    shl-int/lit8 p0, p0, 0x1

    or-int/2addr p0, v0

    const v0, 0xcccc

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x2

    and-int/lit16 p0, p0, 0x3333

    shl-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    const v0, 0xf0f0

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit16 p0, p0, 0xf0f

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static setPrefixedSegment(Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Ljava/lang/Integer;ZLinet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/AddressSegment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TS;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;)TS;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_4

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result p3

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sub-int/2addr p3, p1

    shl-int p1, v0, p3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p3, v1

    shl-int v1, v0, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p3, p1

    shl-int p1, v0, p3

    not-int p1, p1

    or-int/2addr p1, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int p1, p3, p1

    shl-int p1, v0, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p3, v1

    shl-int p3, v0, p3

    not-int p3, p3

    or-int/2addr p1, p3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :goto_1
    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p3

    and-int/2addr p3, p1

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result p0

    and-int/2addr p0, p1

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p3

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result p0

    :goto_2
    invoke-interface {p4, p3, p0, p2}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static testRange(JJJJJ)Z
    .locals 0

    and-long/2addr p6, p0

    cmp-long p0, p0, p6

    if-nez p0, :cond_0

    or-long p0, p2, p8

    cmp-long p0, p4, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toDefaultString(JI)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "1"

    return-object p0

    :cond_1
    const/16 v0, 0xa

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p2, v0, :cond_6

    const-wide/16 v4, 0xa

    cmp-long v0, p0, v4

    if-gez v0, :cond_2

    sget-object p2, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    long-to-int p0, p0

    invoke-static {p2, p0, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/16 v3, 0x64

    cmp-long v0, p0, v3

    if-gez v0, :cond_3

    long-to-int p0, p0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_5

    long-to-int p0, p0

    move v1, v2

    :goto_0
    new-array v0, v1, [C

    sget-object v2, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    :goto_1
    const p1, 0xcccd

    mul-int/2addr p1, p0

    ushr-int/lit8 p1, p1, 0x13

    shl-int/lit8 p2, p1, 0x3

    shl-int/lit8 v3, p1, 0x1

    add-int/2addr p2, v3

    sub-int/2addr p0, p2

    add-int/lit8 v1, v1, -0x1

    aget-char p0, v2, p0

    aput-char p0, v0, v1

    if-nez p1, :cond_4

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_4
    move p0, p1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 v0, 0x10

    if-ne p2, v0, :cond_d

    const-wide/16 v4, 0x10

    cmp-long v0, p0, v4

    if-gez v0, :cond_7

    sget-object p2, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    long-to-int p0, p0

    invoke-static {p2, p0, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-wide/16 v3, 0x100

    cmp-long v0, p0, v3

    if-gez v0, :cond_8

    long-to-int p0, p0

    goto :goto_2

    :cond_8
    const-wide/16 v0, 0x1000

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    long-to-int p0, p0

    move v1, v2

    goto :goto_2

    :cond_9
    const-wide/32 v0, 0x10000

    cmp-long v0, p0, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0xffff

    cmp-long p2, p0, v0

    if-nez p2, :cond_a

    const-string p0, "ffff"

    return-object p0

    :cond_a
    long-to-int p0, p0

    const/4 v1, 0x4

    :goto_2
    new-array v0, v1, [C

    sget-object v2, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    :goto_3
    ushr-int/lit8 p1, p0, 0x4

    shl-int/lit8 p2, p1, 0x4

    sub-int/2addr p0, p2

    add-int/lit8 v1, v1, -0x1

    aget-char p0, v2, p0

    aput-char p0, v0, v1

    if-nez p1, :cond_b

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_b
    move p0, p1

    goto :goto_3

    :cond_c
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toSplitUnsignedString(JIIZCZLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 10

    move-object/from16 v8, p8

    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivision;->appendDigits(JIIZCLjava/lang/String;Ljava/lang/StringBuilder;)V

    if-nez p6, :cond_0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v9, v1

    :goto_0
    if-ge v9, v0, :cond_0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v8, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v8, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v0, v0, -0x2

    add-int/2addr v9, v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static toUnsignedSplitRangeString(JJLjava/lang/String;Ljava/lang/String;IZCZLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static/range {p0 .. p11}, Linet/ipaddr/format/standard/AddressDivision;->appendDigits(JJLjava/lang/String;Ljava/lang/String;IZCZLjava/lang/String;Ljava/lang/StringBuilder;)V

    if-nez p9, :cond_0

    invoke-virtual {p11}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-virtual {p11, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    add-int/lit8 p2, v0, 0x1

    invoke-virtual {p11, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    invoke-virtual {p11, v0, p3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 p3, p0, -0x1

    invoke-virtual {p11, p0, p1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v0, p2

    move p0, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static toUnsignedSplitRangeStringLength(JJLjava/lang/String;Ljava/lang/String;IIZCZLjava/lang/String;)I
    .locals 2

    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result p4

    const/4 p8, -0x1

    :cond_0
    int-to-long p9, p7

    rem-long v0, p2, p9

    long-to-int p11, v0

    rem-long v0, p0, p9

    long-to-int v0, v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p7, -0x1

    if-ne p11, v0, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p11

    add-int/lit8 p11, p11, 0x1

    :goto_0
    add-int/2addr p11, p8

    move p8, p11

    goto :goto_1

    :cond_1
    shl-int/lit8 p11, p4, 0x1

    add-int/lit8 p11, p11, 0x4

    goto :goto_0

    :goto_1
    div-long/2addr p2, p9

    div-long/2addr p0, p9

    cmp-long p9, p2, p0

    if-nez p9, :cond_0

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-static {p2, p3, p7}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedStringLength(JI)I

    move-result p0

    :goto_2
    add-int/2addr p0, p6

    if-lez p0, :cond_3

    add-int/lit8 p4, p4, 0x2

    mul-int/2addr p4, p0

    add-int/2addr p8, p4

    :cond_3
    return p8
.end method


# virtual methods
.method public adjustLowerLeadingZeroCount(II)I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Linet/ipaddr/format/standard/AddressDivision;->adjustLeadingZeroCount(IJI)I

    move-result p1

    return p1
.end method

.method public adjustUpperLeadingZeroCount(II)I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Linet/ipaddr/format/standard/AddressDivision;->adjustLeadingZeroCount(IJI)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/format/standard/AddressDivision;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/format/standard/AddressDivision;

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v1

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, p0}, Linet/ipaddr/format/standard/AddressDivision;->isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getBytesImpl(Z)[B
    .locals 7

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v3

    :goto_0
    aget-byte p1, v2, v1

    int-to-long v5, p1

    or-long/2addr v5, v3

    long-to-int p1, v5

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    const/16 p1, 0x8

    shr-long/2addr v3, p1

    if-gt v0, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getCount()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValueCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLowerString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v2

    invoke-static {v0, v1, v2}, Linet/ipaddr/format/standard/AddressDivision;->toDefaultString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRangeSeparatorString()Ljava/lang/String;
    .locals 1

    sget-object v0, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultRangeString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/AddressDivision;->getDefaultRangeString(JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRangeString(JJI)Ljava/lang/String;
    .locals 20

    .line 2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    const/16 v6, 0xa

    const/16 v7, 0x2d

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v5, v6, :cond_8

    const-wide/16 v11, 0xa

    cmp-long v6, v3, v11

    const-wide/16 v13, 0x3e8

    const-wide/16 v15, 0x64

    if-gez v6, :cond_0

    move v6, v10

    goto :goto_0

    :cond_0
    cmp-long v6, v3, v15

    if-gez v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    cmp-long v6, v3, v13

    if-gez v6, :cond_7

    move v6, v9

    :goto_0
    long-to-int v3, v3

    cmp-long v4, v1, v11

    if-gez v4, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    cmp-long v4, v1, v15

    if-gez v4, :cond_3

    goto :goto_1

    :cond_3
    cmp-long v4, v1, v13

    if-gez v4, :cond_6

    move v8, v9

    :goto_1
    long-to-int v1, v1

    add-int/lit8 v2, v8, 0x1

    add-int/2addr v2, v6

    new-array v4, v2, [C

    aput-char v7, v4, v8

    sget-object v6, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    :goto_2
    const v5, 0xcccd

    mul-int v7, v1, v5

    ushr-int/lit8 v7, v7, 0x13

    shl-int/lit8 v9, v7, 0x3

    shl-int/lit8 v10, v7, 0x1

    add-int/2addr v9, v10

    sub-int/2addr v1, v9

    add-int/lit8 v8, v8, -0x1

    aget-char v1, v6, v1

    aput-char v1, v4, v8

    if-nez v7, :cond_5

    :goto_3
    mul-int v1, v3, v5

    ushr-int/lit8 v1, v1, 0x13

    shl-int/lit8 v7, v1, 0x3

    shl-int/lit8 v8, v1, 0x1

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    add-int/lit8 v2, v2, -0x1

    aget-char v3, v6, v3

    aput-char v3, v4, v2

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_4
    move v3, v1

    goto :goto_3

    :cond_5
    move v1, v7

    goto :goto_2

    :cond_6
    invoke-direct {v0, v5}, Linet/ipaddr/format/standard/AddressDivision;->buildDefaultRangeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    invoke-direct {v0, v5}, Linet/ipaddr/format/standard/AddressDivision;->buildDefaultRangeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_8
    const/16 v6, 0x10

    if-ne v5, v6, :cond_13

    const-wide/16 v11, 0x10

    cmp-long v6, v3, v11

    const-wide/32 v13, 0x10000

    const-wide/16 v15, 0x1000

    const-wide/16 v17, 0x100

    const/16 v19, 0x4

    if-gez v6, :cond_9

    move v6, v10

    goto :goto_4

    :cond_9
    cmp-long v6, v3, v17

    if-gez v6, :cond_a

    move v6, v8

    goto :goto_4

    :cond_a
    cmp-long v6, v3, v15

    if-gez v6, :cond_b

    move v6, v9

    goto :goto_4

    :cond_b
    cmp-long v6, v3, v13

    if-gez v6, :cond_12

    move/from16 v6, v19

    :goto_4
    long-to-int v3, v3

    cmp-long v4, v1, v11

    if-gez v4, :cond_c

    move v8, v10

    goto :goto_5

    :cond_c
    cmp-long v4, v1, v17

    if-gez v4, :cond_d

    goto :goto_5

    :cond_d
    cmp-long v4, v1, v15

    if-gez v4, :cond_e

    move v8, v9

    goto :goto_5

    :cond_e
    cmp-long v4, v1, v13

    if-gez v4, :cond_11

    move/from16 v8, v19

    :goto_5
    long-to-int v1, v1

    add-int/lit8 v2, v8, 0x1

    add-int/2addr v2, v6

    new-array v4, v2, [C

    aput-char v7, v4, v8

    sget-object v6, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    :goto_6
    ushr-int/lit8 v5, v1, 0x4

    shl-int/lit8 v7, v5, 0x4

    sub-int/2addr v1, v7

    add-int/lit8 v8, v8, -0x1

    aget-char v1, v6, v1

    aput-char v1, v4, v8

    if-nez v5, :cond_10

    :goto_7
    ushr-int/lit8 v1, v3, 0x4

    shl-int/lit8 v5, v1, 0x4

    sub-int/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    aget-char v3, v6, v3

    aput-char v3, v4, v2

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_f
    move v3, v1

    goto :goto_7

    :cond_10
    move v1, v5

    goto :goto_6

    :cond_11
    invoke-direct {v0, v5}, Linet/ipaddr/format/standard/AddressDivision;->buildDefaultRangeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_12
    invoke-direct {v0, v5}, Linet/ipaddr/format/standard/AddressDivision;->buildDefaultRangeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_13
    invoke-direct {v0, v5}, Linet/ipaddr/format/standard/AddressDivision;->buildDefaultRangeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDigitCount(I)I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getWildcardString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Linet/ipaddr/format/AddressDivisionBase;->getDigitCount(JI)I

    move-result p1

    return p1
.end method

.method public getDivisionPrefixCount(I)J
    .locals 5

    if-ltz p1, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValueCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sub-int/2addr v0, p1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v1

    ushr-long/2addr v1, v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v3

    ushr-long/2addr v3, v0

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    return-wide v1

    :cond_1
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v0
.end method

.method public abstract getDivisionValue()J
.end method

.method public getDivisionValueCount()J
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLowerString(IIZLjava/lang/StringBuilder;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    if-eqz p3, :cond_0

    sget-object v2, Linet/ipaddr/format/AddressDivisionBase;->UPPERCASE_DIGITS:[C

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    sget-object v2, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    goto :goto_0

    :goto_1
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedString(JIIZ[CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getLowerString(IZLjava/lang/StringBuilder;)V
    .locals 7

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Linet/ipaddr/format/AddressDivisionBase;->UPPERCASE_DIGITS:[C

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    sget-object v2, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    goto :goto_0

    :goto_1
    move v2, p1

    move v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedString(JIIZ[CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getLowerStringLength(I)I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedStringLength(JI)I

    move-result p1

    return p1
.end method

.method public getMaxDigitCount(I)I
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getMaxDigitCount()I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Linet/ipaddr/format/AddressDivisionBase;->getMaxDigitCount(IIJ)I

    move-result p1

    return p1
.end method

.method public getMaxValue()J
    .locals 3

    const-wide/16 v0, -0x1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v2

    shl-long/2addr v0, v2

    not-long v0, v0

    return-wide v0
.end method

.method public getMinPrefixLengthForBlock()I
    .locals 4

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v2

    not-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getPrefixCount(I)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionPrefixCount(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public getPrefixLengthForSingleBlock()Ljava/lang/Integer;
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMinPrefixLengthForBlock()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v3

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v5

    if-ne v0, v5, :cond_0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-static {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    sub-int/2addr v5, v0

    ushr-long/2addr v1, v5

    ushr-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-static {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRangeDigitCount(I)I
    .locals 7

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getRangeDigitCountImpl()I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v5

    move v0, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivision;->calculateRangeDigitCount(IJJJ)I

    move-result p1

    return p1
.end method

.method public getRangeDigitCountImpl()I
    .locals 7

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivision;->calculateRangeDigitCount(IJJJ)I

    move-result v0

    return v0
.end method

.method public getSplitLowerString(IIZCZLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 9

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Linet/ipaddr/format/standard/AddressDivision;->toSplitUnsignedString(JIIZCZLjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public getSplitRangeString(Ljava/lang/String;Ljava/lang/String;IZCZLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 12

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v11}, Linet/ipaddr/format/standard/AddressDivision;->toUnsignedSplitRangeString(JJLjava/lang/String;Ljava/lang/String;IZCZLjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public getSplitRangeStringLength(Ljava/lang/String;Ljava/lang/String;IIZCZLjava/lang/String;)I
    .locals 12

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v11}, Linet/ipaddr/format/standard/AddressDivision;->toUnsignedSplitRangeStringLength(JJLjava/lang/String;Ljava/lang/String;IIZCZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract getUpperDivisionValue()J
.end method

.method public getUpperString(IZLjava/lang/StringBuilder;)V
    .locals 7

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Linet/ipaddr/format/AddressDivisionBase;->UPPERCASE_DIGITS:[C

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    sget-object v2, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    goto :goto_0

    :goto_1
    move v2, p1

    move v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedString(JIIZ[CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getUpperStringLength(I)I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedStringLength(JI)I

    move-result p1

    return p1
.end method

.method public getUpperStringMasked(IZLjava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/standard/AddressDivision;->getUpperString(IZLjava/lang/StringBuilder;)V

    return-void
.end method

.method public getUpperValue()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getWildcardString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionBase;->getWildcardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasUppercaseVariations(IZ)Z
    .locals 16

    move/from16 v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    return v3

    :cond_0
    const/16 v2, 0x10

    const-wide/16 v4, 0x0

    if-eq v0, v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v2, v0

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    const-wide/16 v7, -0x1

    shl-long/2addr v7, v6

    not-long v7, v7

    goto :goto_1

    :cond_2
    move v6, v3

    move-wide v7, v4

    goto :goto_1

    :cond_3
    const/4 v6, 0x4

    const-wide/16 v7, 0xf

    move v2, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v9

    move v11, v3

    :goto_2
    cmp-long v12, v9, v4

    if-lez v12, :cond_7

    if-eqz v2, :cond_4

    and-long v12, v7, v9

    goto :goto_3

    :cond_4
    int-to-long v12, v0

    rem-long v12, v9, v12

    :goto_3
    const-wide/16 v14, 0xa

    cmp-long v12, v12, v14

    if-ltz v12, :cond_5

    return v1

    :cond_5
    if-eqz v2, :cond_6

    ushr-long/2addr v9, v6

    goto :goto_2

    :cond_6
    int-to-long v12, v0

    div-long/2addr v9, v12

    goto :goto_2

    :cond_7
    if-nez v11, :cond_9

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v9

    move v11, v1

    goto :goto_2

    :cond_9
    :goto_4
    return v3

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Linet/ipaddr/format/AddressDivisionBase;->hashCode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Linet/ipaddr/format/AddressDivisionBase;->createHashCode(JJ)I

    move-result v0

    iput v0, p0, Linet/ipaddr/format/AddressDivisionBase;->hashCode:I

    :cond_0
    return v0
.end method

.method public includesMax()Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public includesZero()Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBitwiseOrCompatibleWithRange(I)Z
    .locals 10

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v8

    int-to-long v6, p1

    invoke-static/range {v2 .. v9}, Linet/ipaddr/format/standard/AddressDivision;->bitwiseOrRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBoundedBy(I)Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMaskCompatibleWithRange(I)Z
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v6

    int-to-long v4, p1

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivision;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result p1

    return p1
.end method

.method public isMax()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->includesMax()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiple()Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrefixBlock(JJI)Z
    .locals 12

    if-nez p5, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    const-wide/16 v1, -0x1

    shl-long v3, v1, v0

    not-long v3, v3

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    sub-int v0, v0, p5

    shl-long v0, v1, v0

    not-long v10, v0

    and-long v8, v0, v3

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p3

    invoke-static/range {v2 .. v11}, Linet/ipaddr/format/standard/AddressDivision;->testRange(JJJJJ)Z

    move-result v0

    return v0
.end method

.method public isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z
    .locals 6

    instance-of v0, p1, Linet/ipaddr/format/standard/AddressDivision;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/format/standard/AddressDivision;

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v2

    invoke-virtual {p1}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v2

    invoke-virtual {p1}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSinglePrefixBlock(JJI)Z
    .locals 15

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    const-wide/16 v1, -0x1

    shl-long v3, v1, v0

    not-long v3, v3

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    sub-int v0, v0, p5

    shl-long v0, v1, v0

    not-long v13, v0

    and-long v11, v0, v3

    move-wide/from16 v5, p1

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    invoke-static/range {v5 .. v14}, Linet/ipaddr/format/standard/AddressDivision;->testRange(JJJJJ)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->includesZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(J)Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public matchesWithMask(JJ)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    const-wide/16 v2, -0x1

    ushr-long/2addr v2, v0

    and-long/2addr v2, p3

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v2

    and-long/2addr p3, v2

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public matchesWithMask(JJJ)Z
    .locals 20

    .line 2
    move-wide/from16 v0, p1

    move-wide/from16 v10, p5

    cmp-long v2, v0, p3

    move-object/from16 v12, p0

    if-nez v2, :cond_0

    invoke-virtual {v12, v0, v1, v10, v11}, Linet/ipaddr/format/standard/AddressDivision;->matchesWithMask(JJ)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v2

    const/4 v13, 0x0

    if-nez v2, :cond_1

    return v13

    :cond_1
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v16

    move-wide v2, v14

    move-wide v4, v8

    move-wide/from16 v6, p5

    move-wide/from16 v18, v8

    move-wide/from16 v8, v16

    invoke-static/range {v2 .. v9}, Linet/ipaddr/format/standard/AddressDivision;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v3

    if-nez v3, :cond_2

    return v13

    :cond_2
    invoke-virtual {v2, v14, v15, v10, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1, v10, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_3

    const/4 v13, 0x1

    :cond_3
    return v13
.end method
