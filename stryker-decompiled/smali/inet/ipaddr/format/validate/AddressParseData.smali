.class Linet/ipaddr/format/validate/AddressParseData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BIT_SIZE_SHIFT:I = 0x8

.field public static final FLAGS_INDEX:I = 0x0

.field private static final IPV4_SEGMENT_DATA_SIZE:I = 0x40

.field private static final IPV6_SEGMENT_DATA_SIZE:I = 0x80

.field private static final KEY_BIT_SIZE:I = 0xff00

.field public static final KEY_BIT_SIZE_INDEX:I = 0x0

.field public static final KEY_EXTENDED_LOWER:I = 0x4

.field public static final KEY_EXTENDED_UPPER:I = 0xc

.field public static final KEY_INFERRED_LOWER_BOUNDARY:I = 0x200000

.field public static final KEY_INFERRED_UPPER_BOUNDARY:I = 0x400000

.field public static final KEY_LOWER:I = 0x2

.field public static final KEY_LOWER_RADIX_INDEX:I = 0x0

.field public static final KEY_LOWER_STR_DIGITS_INDEX:I = 0x1

.field public static final KEY_LOWER_STR_END_INDEX:I = 0x7

.field public static final KEY_LOWER_STR_START_INDEX:I = 0x6

.field public static final KEY_MERGED_MIXED:I = 0x800000

.field private static final KEY_RADIX:I = 0xff

.field public static final KEY_RANGE_WILDCARD:I = 0x100000

.field public static final KEY_SINGLE_WILDCARD:I = 0x20000

.field public static final KEY_STANDARD_RANGE_STR:I = 0x80000

.field public static final KEY_STANDARD_STR:I = 0x40000

.field public static final KEY_UPPER:I = 0xa

.field public static final KEY_UPPER_RADIX_INDEX:I = 0x8

.field public static final KEY_UPPER_STR_DIGITS_INDEX:I = 0x9

.field public static final KEY_UPPER_STR_END_INDEX:I = 0xf

.field public static final KEY_UPPER_STR_START_INDEX:I = 0xe

.field public static final KEY_WILDCARD:I = 0x10000

.field private static final SEGMENT_DATA_SIZE:I = 0x10

.field private static final SEGMENT_INDEX_SHIFT:I = 0x4

.field private static final UPPER_ADJUSTMENT:I = 0x8

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private addressEndIndex:I

.field private anyWildcard:Z

.field private consecutiveSepIndex:I

.field private consecutiveSepSegmentIndex:I

.field private isAll:Z

.field private isEmpty:Z

.field private isSingleSegment:Z

.field private segmentCount:I

.field private segmentData:[I

.field protected final str:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Linet/ipaddr/format/validate/AddressParseData;->consecutiveSepIndex:I

    iput v0, p0, Linet/ipaddr/format/validate/AddressParseData;->consecutiveSepSegmentIndex:I

    iput-object p1, p0, Linet/ipaddr/format/validate/AddressParseData;->str:Ljava/lang/CharSequence;

    return-void
.end method

.method public static getIndex(II[I)I
    .locals 0

    .line 2
    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p1

    aget p0, p2, p0

    return p0
.end method

.method public static getValue(II[I)J
    .locals 4

    .line 2
    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p1

    aget p1, p2, p0

    int-to-long v0, p1

    or-int/lit8 p0, p0, 0x1

    aget p0, p2, p0

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static setIndexValuesFlags(I[IIIIIIIIIIIIIIIIJIJ)V
    .locals 8

    .line 5
    move-wide/from16 v0, p17

    move-wide/from16 v2, p20

    or-int v4, p0, p2

    aput p3, p1, v4

    or-int v4, p0, p4

    aput p5, p1, v4

    or-int v4, p0, p6

    aput p7, p1, v4

    or-int v4, p0, p8

    aput p9, p1, v4

    or-int v4, p0, p10

    aput p11, p1, v4

    or-int v4, p0, p12

    aput p13, p1, v4

    or-int v4, p0, p14

    aput p15, p1, v4

    or-int v4, p0, p16

    const/16 v5, 0x20

    ushr-long v6, v0, v5

    long-to-int v6, v6

    aput v6, p1, v4

    or-int/lit8 v4, v4, 0x1

    long-to-int v0, v0

    aput v0, p1, v4

    or-int v0, p0, p19

    ushr-long v4, v2, v5

    long-to-int v1, v4

    aput v1, p1, v0

    or-int/lit8 v0, v0, 0x1

    long-to-int v1, v2

    aput v1, p1, v0

    return-void
.end method


# virtual methods
.method public getAddressEndIndex()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/validate/AddressParseData;->addressEndIndex:I

    return v0
.end method

.method public getBitLength(I)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    shl-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    const v0, 0xff00

    and-int/2addr p1, v0

    ushr-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public getConsecutiveSeparatorIndex()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/validate/AddressParseData;->consecutiveSepIndex:I

    return v0
.end method

.method public getConsecutiveSeparatorSegmentIndex()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/validate/AddressParseData;->consecutiveSepSegmentIndex:I

    return v0
.end method

.method public getFlag(II)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    shl-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getIndex(II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result p1

    return p1
.end method

.method public getRadix(II)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, p2

    aget p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_0

    const/16 p1, 0x10

    :cond_0
    return p1
.end method

.method public getSegmentCount()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/validate/AddressParseData;->segmentCount:I

    return v0
.end method

.method public getSegmentData()[I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/AddressParseData;->segmentData:[I

    return-object v0
.end method

.method public getString()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/AddressParseData;->str:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue(II)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II[I)J

    move-result-wide p1

    return-wide p1
.end method

.method public hasEitherFlag(III)Z
    .locals 0

    or-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result p1

    return p1
.end method

.method public hasRange(I)Z
    .locals 2

    const/high16 v0, 0x20000

    const/high16 v1, 0x100000

    invoke-virtual {p0, p1, v0, v1}, Linet/ipaddr/format/validate/AddressParseData;->hasEitherFlag(III)Z

    move-result p1

    return p1
.end method

.method public hasWildcard()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/AddressParseData;->anyWildcard:Z

    return v0
.end method

.method public incrementSegmentCount()V
    .locals 1

    iget v0, p0, Linet/ipaddr/format/validate/AddressParseData;->segmentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linet/ipaddr/format/validate/AddressParseData;->segmentCount:I

    return-void
.end method

.method public initSegmentData(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 p1, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/16 p1, 0x80

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x10

    if-ne p1, v0, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    mul-int/2addr p1, v1

    :goto_0
    new-array p1, p1, [I

    iput-object p1, p0, Linet/ipaddr/format/validate/AddressParseData;->segmentData:[I

    return-void
.end method

.method public isAll()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/AddressParseData;->isAll:Z

    return v0
.end method

.method public isInferredUpperBoundary(I)Z
    .locals 1

    const/high16 v0, 0x400000

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result p1

    return p1
.end method

.method public isMergedMixed(I)Z
    .locals 1

    const/high16 v0, 0x800000

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result p1

    return p1
.end method

.method public isProvidingEmpty()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/AddressParseData;->isEmpty:Z

    return v0
.end method

.method public isSingleSegment()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/AddressParseData;->isSingleSegment:Z

    return v0
.end method

.method public isWildcard(I)Z
    .locals 1

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result p1

    return p1
.end method

.method public releaseSegmentData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/validate/AddressParseData;->segmentData:[I

    return-void
.end method

.method public setAddressEndIndex(I)V
    .locals 0

    iput p1, p0, Linet/ipaddr/format/validate/AddressParseData;->addressEndIndex:I

    return-void
.end method

.method public setAll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/format/validate/AddressParseData;->isAll:Z

    return-void
.end method

.method public setBitLength(II)V
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    shl-int/lit8 p1, p1, 0x4

    aget v1, v0, p1

    shl-int/lit8 p2, p2, 0x8

    const v2, 0xff00

    and-int/2addr p2, v2

    or-int/2addr p2, v1

    aput p2, v0, p1

    return-void
.end method

.method public setConsecutiveSeparatorIndex(I)V
    .locals 0

    iput p1, p0, Linet/ipaddr/format/validate/AddressParseData;->consecutiveSepIndex:I

    return-void
.end method

.method public setConsecutiveSeparatorSegmentIndex(I)V
    .locals 0

    iput p1, p0, Linet/ipaddr/format/validate/AddressParseData;->consecutiveSepSegmentIndex:I

    return-void
.end method

.method public setEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/AddressParseData;->isEmpty:Z

    return-void
.end method

.method public setHasWildcard()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/format/validate/AddressParseData;->anyWildcard:Z

    return-void
.end method

.method public setIndex(IIIIIIIIIIIII)V
    .locals 1

    shl-int/lit8 p1, p1, 0x4

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    or-int/2addr p2, p1

    aput p3, v0, p2

    or-int p2, p1, p4

    aput p5, v0, p2

    or-int p2, p1, p6

    aput p7, v0, p2

    or-int p2, p1, p8

    aput p9, v0, p2

    or-int p2, p1, p10

    aput p11, v0, p2

    or-int/2addr p1, p12

    aput p13, v0, p1

    return-void
.end method

.method public setIndexFlags(IIIIIIIIIIIIIII)V
    .locals 3

    .line 1
    shl-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v1

    or-int v2, v0, p2

    aput p3, v1, v2

    or-int v2, v0, p4

    aput p5, v1, v2

    or-int v2, v0, p6

    aput p7, v1, v2

    or-int v2, v0, p8

    aput p9, v1, v2

    or-int v2, v0, p10

    aput p11, v1, v2

    or-int v2, v0, p12

    aput p13, v1, v2

    or-int v0, v0, p14

    aput p15, v1, v0

    return-void
.end method

.method public setIndexFlags(IIIIIIIIIIIIIIIII)V
    .locals 3

    .line 2
    shl-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v1

    or-int v2, v0, p2

    aput p3, v1, v2

    or-int v2, v0, p4

    aput p5, v1, v2

    or-int v2, v0, p6

    aput p7, v1, v2

    or-int v2, v0, p8

    aput p9, v1, v2

    or-int v2, v0, p10

    aput p11, v1, v2

    or-int v2, v0, p12

    aput p13, v1, v2

    or-int v2, v0, p14

    aput p15, v1, v2

    or-int v0, v0, p16

    aput p17, v1, v0

    return-void
.end method

.method public setIndexValuesFlags(IIIIIIIIIIIIIIIIIIJIJ)V
    .locals 24

    .line 1
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p18

    move-wide/from16 v17, p19

    move/from16 v19, p21

    move-wide/from16 v20, p22

    shl-int/lit8 v22, p1, 0x4

    move/from16 v0, v22

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v23

    move-object/from16 v1, v23

    invoke-static/range {v0 .. v21}, Linet/ipaddr/format/validate/AddressParseData;->setIndexValuesFlags(I[IIIIIIIIIIIIIIIIJIJ)V

    or-int v0, v22, p16

    aput p17, v23, v0

    return-void
.end method

.method public setIndexValuesFlags(IIIIIIIIIIIIIIIIIIJIJIJIJ)V
    .locals 28

    .line 2
    move-wide/from16 v0, p25

    move-wide/from16 v2, p28

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v20, p18

    move-wide/from16 v21, p19

    move/from16 v23, p21

    move-wide/from16 v24, p22

    shl-int/lit8 v26, p1, 0x4

    move/from16 v4, v26

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v27

    move-object/from16 v5, v27

    invoke-static/range {v4 .. v25}, Linet/ipaddr/format/validate/AddressParseData;->setIndexValuesFlags(I[IIIIIIIIIIIIIIIIJIJ)V

    or-int v4, v26, p16

    aput p17, v27, v4

    or-int v4, v26, p24

    const/16 v5, 0x20

    ushr-long v6, v0, v5

    long-to-int v6, v6

    aput v6, v27, v4

    or-int/lit8 v4, v4, 0x1

    long-to-int v0, v0

    aput v0, v27, v4

    or-int v0, v26, p27

    ushr-long v4, v2, v5

    long-to-int v1, v4

    aput v1, v27, v0

    or-int/lit8 v0, v0, 0x1

    long-to-int v1, v2

    aput v1, v27, v0

    return-void
.end method

.method public setIndexValuesFlags(IIIIIIIIIIIIIIIIJIJ)V
    .locals 22

    .line 3
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-wide/from16 v17, p17

    move/from16 v19, p19

    move-wide/from16 v20, p20

    shl-int/lit8 v0, p1, 0x4

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v1

    invoke-static/range {v0 .. v21}, Linet/ipaddr/format/validate/AddressParseData;->setIndexValuesFlags(I[IIIIIIIIIIIIIIIIJIJ)V

    return-void
.end method

.method public setIndexValuesFlags(IIIIIIIIIIIIIIIIJIJIJIJ)V
    .locals 28

    .line 4
    move-wide/from16 v0, p23

    move-wide/from16 v2, p26

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v20, p16

    move-wide/from16 v21, p17

    move/from16 v23, p19

    move-wide/from16 v24, p20

    shl-int/lit8 v26, p1, 0x4

    move/from16 v4, v26

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v27

    move-object/from16 v5, v27

    invoke-static/range {v4 .. v25}, Linet/ipaddr/format/validate/AddressParseData;->setIndexValuesFlags(I[IIIIIIIIIIIIIIIIJIJ)V

    or-int v4, v26, p22

    const/16 v5, 0x20

    ushr-long v6, v0, v5

    long-to-int v6, v6

    aput v6, v27, v4

    or-int/lit8 v4, v4, 0x1

    long-to-int v0, v0

    aput v0, v27, v4

    or-int v0, v26, p25

    ushr-long v4, v2, v5

    long-to-int v1, v4

    aput v1, v27, v0

    or-int/lit8 v0, v0, 0x1

    long-to-int v1, v2

    aput v1, v27, v0

    return-void
.end method

.method public setSingleSegment()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/format/validate/AddressParseData;->isSingleSegment:Z

    return-void
.end method

.method public setValue(IIJ)V
    .locals 2

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, p2

    const/16 p2, 0x20

    ushr-long v0, p3, p2

    long-to-int p2, v0

    long-to-int p3, p3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object p4

    aput p2, p4, p1

    or-int/lit8 p1, p1, 0x1

    aput p3, p4, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "address string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->getString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->getAddressEndIndex()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    const-string v5, "address end: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v2, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v4

    const-string v5, "segment count: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v4, :cond_8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    const-string v7, "segment "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "\tis wildcard\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v4

    goto/16 :goto_3

    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v7

    invoke-virtual {v0, v6, v3}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v9

    const/16 v11, 0xc

    invoke-virtual {v0, v6, v11}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v11

    const/4 v13, 0x4

    invoke-virtual {v0, v6, v13}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    const-string v5, "\n\tvalue in hex: "

    const-string v3, "\tvalue: "

    const/16 v15, 0x40

    if-eqz v17, :cond_2

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-virtual {v13, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0xa

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v14, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    :goto_1
    const-string v3, "\tstring: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-virtual {v0, v6, v3}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v3

    const/4 v5, 0x7

    invoke-virtual {v0, v6, v5}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v5

    invoke-interface {v2, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tradix: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3}, Linet/ipaddr/format/validate/AddressParseData;->getRadix(II)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n\tis standard: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v5, 0x40000

    invoke-virtual {v0, v6, v5}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    const-string v3, "\n\tis standard range: "

    const-string v14, "\n\tupper radix: "

    const-string v15, "\n\tupper string: "

    move/from16 v18, v4

    const-string v4, "\n\tupper value in hex: "

    move-wide/from16 v19, v7

    const-string v7, "\tupper value: "

    if-eqz v5, :cond_3

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const/16 v8, 0x40

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    cmp-long v5, v9, v19

    if-eqz v5, :cond_4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xe

    invoke-virtual {v0, v6, v4}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v4

    const/16 v5, 0xf

    invoke-virtual {v0, v6, v5}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v5

    invoke-interface {v2, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-virtual {v0, v6, v4}, Linet/ipaddr/format/validate/AddressParseData;->getRadix(II)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x80000

    invoke-virtual {v0, v6, v3}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const/high16 v3, 0x20000

    invoke-virtual {v0, v6, v3}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "\thas single wildcard: \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v18

    const/16 v3, 0xa

    goto/16 :goto_0

    :cond_6
    const-string v2, "has a wildcard segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->hasWildcard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->getConsecutiveSeparatorIndex()I

    move-result v3

    if-ltz v3, :cond_7

    const-string v4, "has compressed segment(s) at character "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->isSingleSegment()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "is single segment\n"

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->isProvidingEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "is empty\n"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->isAll()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "is all addresses\n"

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unsetFlag(II)V
    .locals 2

    shl-int/lit8 p1, p1, 0x4

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    aget v1, v0, p1

    not-int p2, p2

    and-int/2addr p2, v1

    aput p2, v0, p1

    return-void
.end method
