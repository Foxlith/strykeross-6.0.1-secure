.class public Linet/ipaddr/format/large/IPAddressLargeDivision;
.super Linet/ipaddr/format/AddressDivisionBase;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/IPAddressGenericDivision;


# static fields
.field public static final EXTENDED_DIGITS:[C

.field public static final EXTENDED_DIGITS_RANGE_SEPARATOR:C = '\u00bb'

.field public static final EXTENDED_DIGITS_RANGE_SEPARATOR_STR:Ljava/lang/String;

.field private static final LONG_MAX:Ljava/math/BigInteger;

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final bitCount:I

.field protected transient cachedString:Ljava/lang/String;

.field private final defaultRadix:Ljava/math/BigInteger;

.field private final isPrefixBlock:Z

.field private final isSinglePrefixBlock:Z

.field private final maxValue:Ljava/math/BigInteger;

.field private final networkPrefixLength:Ljava/lang/Integer;

.field private final upperValue:Ljava/math/BigInteger;

.field private final upperValueMasked:Ljava/math/BigInteger;

.field private final value:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->LONG_MAX:Ljava/math/BigInteger;

    const/16 v0, 0xbb

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->EXTENDED_DIGITS_RANGE_SEPARATOR_STR:Ljava/lang/String;

    const/16 v0, 0x55

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->EXTENDED_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x21s
        0x23s
        0x24s
        0x25s
        0x26s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2ds
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5es
        0x5fs
        0x60s
        0x7bs
        0x7cs
        0x7ds
        0x7es
    .end array-data
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionBase;-><init>()V

    array-length v0, p1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p2}, Linet/ipaddr/format/AddressDivisionBase;->getMaxValue(I)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->maxValue:Ljava/math/BigInteger;

    iput p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->bitCount:I

    int-to-long p2, p3

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    const/4 p2, 0x0

    iput-boolean p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    iput-boolean p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock:Z

    new-instance p2, Ljava/math/BigInteger;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->value:Ljava/math/BigInteger;

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValueMasked:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->networkPrefixLength:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Linet/ipaddr/AddressValueException;

    invoke-direct {p1, p2}, Linet/ipaddr/AddressValueException;-><init>(Ljava/math/BigInteger;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>([BIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionBase;-><init>()V

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p2}, Linet/ipaddr/format/AddressDivisionBase;->getMaxValue(I)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->maxValue:Ljava/math/BigInteger;

    iput p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->bitCount:I

    int-to-long v1, p3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p2, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, p2}, Linet/ipaddr/format/large/IPAddressLargeDivision;->extend([BI)[B

    move-result-object p1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr p2, v3

    add-int/lit8 v3, p2, 0x7

    div-int/lit8 v3, v3, 0x8

    array-length v4, p1

    sub-int/2addr v4, v3

    sub-int/2addr p2, v1

    rem-int/lit8 p2, p2, 0x8

    add-int/2addr p2, v1

    const/4 v3, -0x1

    shl-int p2, v3, p2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p4}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p4

    invoke-virtual {p4}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result p4

    if-eqz p4, :cond_3

    aget-byte p4, p1, v4

    and-int/2addr p4, p2

    int-to-byte p4, p4

    aput-byte p4, p1, v4

    add-int/lit8 p4, v4, 0x1

    array-length v5, p1

    invoke-static {p1, p4, v5, p3}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->value:Ljava/math/BigInteger;

    iput-object p3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValueMasked:Ljava/math/BigInteger;

    aget-byte p3, v2, v4

    not-int p2, p2

    or-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, v2, v4

    array-length p1, p1

    invoke-static {v2, p4, p1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p1, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    iput-boolean v1, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    iput-boolean v1, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock:Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    aget-byte v2, p4, v4

    and-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, p4, v4

    add-int/2addr v4, v1

    array-length p2, p1

    invoke-static {p4, v4, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p4}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValueMasked:Ljava/math/BigInteger;

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->value:Ljava/math/BigInteger;

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    iput-boolean p3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    iput-boolean p3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock:Z

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-le p4, p2, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    :cond_5
    if-eqz p5, :cond_6

    move p3, v1

    :cond_6
    iput-boolean p3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    iput-boolean p3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock:Z

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->value:Ljava/math/BigInteger;

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValueMasked:Ljava/math/BigInteger;

    :goto_2
    iget-object p1, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_7

    iput-object p5, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->networkPrefixLength:Ljava/lang/Integer;

    return-void

    :cond_7
    new-instance p1, Linet/ipaddr/AddressValueException;

    iget-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Linet/ipaddr/AddressValueException;-><init>(Ljava/math/BigInteger;)V

    throw p1
.end method

.method public constructor <init>([B[BIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BII",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 3
    move-object/from16 v0, p0

    move/from16 v7, p3

    invoke-direct/range {p0 .. p0}, Linet/ipaddr/format/AddressDivisionBase;-><init>()V

    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    :cond_0
    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    new-instance v1, Linet/ipaddr/PrefixLenException;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v1

    :goto_0
    invoke-static {v1, v7}, Linet/ipaddr/format/large/IPAddressLargeDivision;->extend([BI)[B

    move-result-object v8

    invoke-static/range {p2 .. p3}, Linet/ipaddr/format/large/IPAddressLargeDivision;->extend([BI)[B

    move-result-object v9

    invoke-static/range {p3 .. p3}, Linet/ipaddr/format/AddressDivisionBase;->getMaxValue(I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->maxValue:Ljava/math/BigInteger;

    iput v7, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->bitCount:I

    move/from16 v1, p4

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p6, :cond_8

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v7, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v7, v1

    add-int/lit8 v2, v1, 0x7

    div-int/lit8 v2, v2, 0x8

    array-length v3, v8

    sub-int v12, v3, v2

    sub-int/2addr v1, v11

    rem-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v11

    const/4 v3, -0x1

    shl-int v1, v3, v1

    and-int/lit16 v13, v1, 0xff

    array-length v1, v9

    sub-int/2addr v1, v2

    invoke-virtual/range {p5 .. p5}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v9

    :goto_1
    aget-byte v4, v8, v12

    and-int/2addr v4, v13

    int-to-byte v4, v4

    aput-byte v4, v8, v12

    add-int/lit8 v4, v12, 0x1

    array-length v5, v8

    invoke-static {v8, v4, v5, v10}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v11, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    aget-byte v5, v2, v1

    not-int v6, v13

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    add-int/lit8 v5, v1, 0x1

    array-length v6, v2

    invoke-static {v2, v5, v6, v3}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v11, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    aget-byte v14, v9, v1

    and-int/2addr v14, v13

    int-to-byte v14, v14

    aput-byte v14, v9, v1

    array-length v14, v2

    invoke-static {v9, v5, v14, v10}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v11, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-lez v9, :cond_3

    move-object/from16 v16, v8

    move-object v8, v2

    move-object/from16 v2, v16

    goto :goto_1

    :cond_3
    iput-object v4, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->value:Ljava/math/BigInteger;

    iput-object v6, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    iput-object v5, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValueMasked:Ljava/math/BigInteger;

    iput-boolean v11, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v8

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-static/range {v1 .. v6}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixSubnetBlock([B[BILjava/lang/Integer;ZZ)Z

    move-result v1

    iput-boolean v1, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    goto/16 :goto_4

    :cond_4
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v11, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-boolean v10, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    iput-boolean v10, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock:Z

    move-object v14, v1

    goto :goto_3

    :cond_5
    new-instance v14, Ljava/math/BigInteger;

    invoke-direct {v14, v11, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v15, Ljava/math/BigInteger;

    invoke-direct {v15, v11, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-static/range {v1 .. v6}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixSubnetBlock([B[BILjava/lang/Integer;ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v11, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-static/range {v1 .. v6}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixSubnetBlock([B[BILjava/lang/Integer;ZZ)Z

    move-result v1

    iput-boolean v1, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    goto :goto_2

    :cond_6
    iput-boolean v10, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    iput-boolean v10, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock:Z

    :goto_2
    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_7

    move-object v1, v15

    goto :goto_3

    :cond_7
    move-object v1, v14

    move-object v14, v15

    :goto_3
    iput-object v1, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->value:Ljava/math/BigInteger;

    iput-object v14, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aget-byte v2, v1, v12

    and-int/2addr v2, v13

    int-to-byte v2, v2

    aput-byte v2, v1, v12

    add-int/2addr v12, v11

    array-length v2, v8

    invoke-static {v1, v12, v2, v10}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v2, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValueMasked:Ljava/math/BigInteger;

    :goto_4
    move-object/from16 v1, p6

    goto :goto_9

    :cond_8
    :goto_5
    if-eqz p6, :cond_9

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v7, :cond_9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    :cond_9
    move-object/from16 v1, p6

    :goto_6
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v11, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    if-eqz v1, :cond_a

    move v3, v11

    goto :goto_7

    :cond_a
    move v3, v10

    :goto_7
    iput-boolean v3, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    move-object v3, v2

    goto :goto_8

    :cond_b
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v11, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v11, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_c

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :cond_c
    iput-boolean v10, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    :goto_8
    if-eqz v1, :cond_d

    move v10, v11

    :cond_d
    iput-boolean v10, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock:Z

    iput-object v2, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->value:Ljava/math/BigInteger;

    iput-object v3, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    iput-object v3, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValueMasked:Ljava/math/BigInteger;

    :goto_9
    iget-object v2, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    iget-object v3, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->maxValue:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_e

    iput-object v1, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->networkPrefixLength:Ljava/lang/Integer;

    return-void

    :cond_e
    new-instance v1, Linet/ipaddr/AddressValueException;

    iget-object v2, v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Linet/ipaddr/AddressValueException;-><init>(Ljava/math/BigInteger;)V

    throw v1
.end method

.method private adjustLeadingZeroCount(ILjava/math/BigInteger;I)I
    .locals 0

    if-gez p1, :cond_0

    invoke-direct {p0, p2, p3}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDigitCount(Ljava/math/BigInteger;I)I

    move-result p1

    invoke-virtual {p0, p3}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getMaxDigitCount(I)I

    move-result p2

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method private static convert([BILjava/lang/String;)[B
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_1

    new-array p2, p1, [B

    array-length v0, p0

    sub-int/2addr p1, v0

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_0
    array-length v0, p0

    invoke-static {p0, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p2

    goto :goto_1

    :cond_1
    if-le v0, p1, :cond_4

    :goto_0
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-gt v0, p1, :cond_2

    array-length p1, p0

    invoke-static {p0, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    new-instance p0, Linet/ipaddr/AddressValueException;

    int-to-long v0, v0

    invoke-direct {p0, p2, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(Ljava/lang/String;J)V

    throw p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method private static extend([BI)[B
    .locals 1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    const-string v0, ""

    invoke-static {p0, p1, v0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->convert([BILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private getDigitCount(Ljava/math/BigInteger;I)I
    .locals 2

    .line 2
    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Linet/ipaddr/format/AddressDivisionBase;->getDigitCount(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method private static getDigitCountStatic(Ljava/math/BigInteger;I)I
    .locals 2

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionBase;->getDigitCount(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result p0

    return p0
.end method

.method private static getDigits(IZ)[C
    .locals 0

    invoke-static {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isExtendedDigits(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->EXTENDED_DIGITS:[C

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Linet/ipaddr/format/AddressDivisionBase;->UPPERCASE_DIGITS:[C

    goto :goto_0

    :cond_1
    sget-object p0, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    :goto_0
    return-object p0
.end method

.method private isExtendedDigits()Z
    .locals 1

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isExtendedDigits(I)Z

    move-result v0

    return v0
.end method

.method private static isExtendedDigits(I)Z
    .locals 1

    .line 2
    const/16 v0, 0x24

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPrefixSubnetBlock([B[BILjava/lang/Integer;ZZ)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x7

    div-int/lit8 p3, p3, 0x8

    array-length v1, p0

    sub-int/2addr v1, p3

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    rem-int/lit8 p2, p2, 0x8

    add-int/2addr p2, p3

    const/4 v2, -0x1

    shl-int p2, v2, p2

    and-int/lit16 p2, p2, 0xff

    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eqz p4, :cond_3

    and-int p4, v3, p2

    and-int v5, v4, p2

    if-eq p4, v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 p4, v1, -0x1

    :goto_0
    if-ltz p4, :cond_3

    aget-byte v5, p0, p4

    aget-byte v6, p1, p4

    if-eq v5, v6, :cond_2

    return v0

    :cond_2
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_7

    not-int p2, p2

    and-int/lit16 p2, p2, 0xff

    and-int p4, v3, p2

    and-int p5, v4, p2

    if-nez p4, :cond_6

    if-eq p5, p2, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v1, p3

    :goto_1
    array-length p2, p0

    if-ge v1, p2, :cond_7

    aget-byte p2, p0, v1

    if-nez p2, :cond_6

    aget-byte p2, p1, v1

    if-eq p2, v2, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v0

    :cond_7
    return p3
.end method

.method private toDefaultString(Ljava/math/BigInteger;IZI)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    iget v1, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->bitCount:I

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Linet/ipaddr/format/AddressDivisionBase;->getMaxDigitCount(IILjava/math/BigInteger;)I

    move-result p2

    invoke-static {p1, v0, p3, p4, p2}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultString(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static toDefaultString(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII)Ljava/lang/String;
    .locals 9

    .line 2
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "1"

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0, p2}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDigits(IZ)[C

    move-result-object v6

    const-string v0, ""

    if-lez p4, :cond_3

    if-gt p4, p3, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultStringRecursive(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII[CZLjava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p4

    const/4 v1, 0x0

    aget-object v1, p4, v1

    const/4 v2, 0x1

    aget-object p4, p4, v2

    if-lez p3, :cond_5

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_6
    invoke-virtual {p4}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    aget-char p0, v6, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object p0, v1

    :goto_0
    sget-object p4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    if-nez p2, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-object v0, p2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toDefaultStringRecursive(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII[CZLjava/lang/StringBuilder;)V
    .locals 14

    move-object v0, p0

    move/from16 v3, p3

    move/from16 v1, p4

    sget-object v2, Linet/ipaddr/format/large/IPAddressLargeDivision;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-nez p6, :cond_0

    invoke-static {v4, v5, v2}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedStringLength(JI)I

    move-result v0

    sub-int v0, v1, v0

    move-object/from16 v12, p7

    invoke-static {v0, v12}, Linet/ipaddr/format/AddressDivisionBase;->getLeadingZeros(ILjava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    move-object/from16 v12, p7

    :goto_0
    move-wide v0, v4

    move/from16 v3, p3

    move/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedString(JIIZ[CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move-object/from16 v12, p7

    ushr-int/lit8 v13, v1, 0x1

    if-le v13, v3, :cond_4

    move-object v2, p1

    invoke-static {p1, v13}, Linet/ipaddr/format/AddressDivisionBase;->getRadixPower(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v5, v0, v4

    const/4 v6, 0x1

    aget-object v0, v0, v6

    if-eqz p6, :cond_2

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v13

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultStringRecursive(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII[CZLjava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    if-le v1, v3, :cond_3

    sub-int v6, v3, v13

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v8, v1, v13

    move-object v4, v5

    move-object v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v4 .. v11}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultStringRecursive(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII[CZLjava/lang/StringBuilder;)V

    :cond_3
    const/4 v6, 0x0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v13

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultStringRecursive(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII[CZLjava/lang/StringBuilder;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public adjustLowerLeadingZeroCount(II)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/format/large/IPAddressLargeDivision;->adjustLeadingZeroCount(ILjava/math/BigInteger;I)I

    move-result p1

    return p1
.end method

.method public adjustUpperLeadingZeroCount(II)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/format/large/IPAddressLargeDivision;->adjustLeadingZeroCount(ILjava/math/BigInteger;I)I

    move-result p1

    return p1
.end method

.method public appendUppercase(Ljava/lang/CharSequence;ILjava/lang/StringBuilder;)V
    .locals 2

    const/16 v0, 0xa

    if-le p2, v0, :cond_1

    invoke-direct {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isExtendedDigits()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/format/large/IPAddressLargeDivision;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/format/large/IPAddressLargeDivision;

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getBitCount()I

    move-result v1

    invoke-virtual {p1}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getBitCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z

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

.method public getBitCount()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->bitCount:I

    return v0
.end method

.method public getBytesImpl(Z)[B
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->bitCount:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    const-string v1, ""

    invoke-static {p1, v0, v1}, Linet/ipaddr/format/large/IPAddressLargeDivision;->convert([BILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getCachedDefaultLowerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDefaultLowerString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->cachedString:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getDefaultLowerString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getMaxDigitCount()I

    move-result v3

    invoke-static {v0, v1, v2, v2, v3}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultString(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaskedRangeString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getMaxDigitCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4, v0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultString(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDefaultRangeSeparatorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValueMasked:Ljava/math/BigInteger;

    iget-object v3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    invoke-static {v2, v3, v4, v4, v0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultString(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRangeSeparatorString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isExtendedDigits()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Linet/ipaddr/format/large/IPAddressLargeDivision;->EXTENDED_DIGITS_RANGE_SEPARATOR_STR:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getDefaultRangeString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getMaxDigitCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4, v0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultString(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDefaultRangeSeparatorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    invoke-static {v2, v3, v4, v4, v0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultString(Ljava/math/BigInteger;Ljava/math/BigInteger;ZII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTextualRadix()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getDigitCount(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDefaultTextualRadix()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDigitCountStatic(Ljava/math/BigInteger;I)I

    move-result p1

    return p1
.end method

.method public getDivisionPrefixLength()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->networkPrefixLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLowerString(IIZLjava/lang/StringBuilder;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3, p2}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultString(Ljava/math/BigInteger;IZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getLowerString(IZLjava/lang/StringBuilder;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultString(Ljava/math/BigInteger;IZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getLowerStringLength(I)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    invoke-static {p1, v0}, Linet/ipaddr/format/AddressDivisionBase;->getDigitCount(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public getMaxDigitCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iget v1, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->bitCount:I

    iget-object v2, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->maxValue:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2}, Linet/ipaddr/format/AddressDivisionBase;->getMaxDigitCount(IILjava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public getMaxDigitCount(I)I
    .locals 2

    .line 2
    iget v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->bitCount:I

    iget-object v1, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->maxValue:Ljava/math/BigInteger;

    invoke-static {p1, v0, v1}, Linet/ipaddr/format/AddressDivisionBase;->getMaxDigitCount(IILjava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public getPrefixAdjustedRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Linet/ipaddr/format/AddressDivisionBase;->getPrefixAdjustedRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public getRangeDigitCount(I)I
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isMultiple()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr p1, v4

    int-to-long v5, p1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    move v5, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    aget-object v6, v0, v1

    aget-object v0, v0, v4

    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    aget-object v2, v0, v1

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object v0, v6

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getSplitLowerString(IIZCZLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getLowerString(IIZLjava/lang/StringBuilder;)V

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-ge p2, p3, :cond_3

    if-lez p2, :cond_0

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    move p3, p2

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getSplitRangeString(Ljava/lang/String;Ljava/lang/String;IZCZLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2, v5}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getLowerString(IZLjava/lang/StringBuilder;)V

    invoke-virtual {v0, v1, v2, v6}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperString(IZLjava/lang/StringBuilder;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/lit8 v9, v7, -0x1

    if-lez v7, :cond_0

    const/16 v7, 0x30

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object v5, v8

    :cond_1
    invoke-static/range {p3 .. p4}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDigits(IZ)[C

    move-result-object v2

    const/4 v7, 0x0

    aget-char v8, v2, v7

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    aget-char v1, v2, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v10

    move v11, v7

    move v12, v11

    move v13, v9

    :goto_1
    if-ge v11, v2, :cond_d

    if-eqz p6, :cond_2

    sub-int v14, v2, v11

    sub-int/2addr v14, v9

    goto :goto_2

    :cond_2
    move v14, v11

    :goto_2
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    move/from16 v7, p5

    if-lez v11, :cond_3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-ne v15, v14, :cond_6

    if-nez v12, :cond_5

    if-lez v10, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    goto :goto_5

    :cond_5
    new-instance v1, Linet/ipaddr/IncompatibleAddressException;

    int-to-long v2, v15

    int-to-long v4, v14

    const-string v21, "ipaddress.error.splitMismatch"

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    invoke-direct/range {v16 .. v21}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJLjava/lang/String;)V

    throw v1

    :cond_6
    if-ne v15, v8, :cond_7

    if-ne v14, v1, :cond_7

    move/from16 v16, v9

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v9, p2

    if-eqz v16, :cond_8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    goto :goto_4

    :cond_8
    if-nez v12, :cond_c

    if-lez v10, :cond_9

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    if-eqz p6, :cond_b

    if-eqz v13, :cond_a

    move/from16 v13, v16

    goto :goto_5

    :cond_a
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    int-to-long v1, v15

    int-to-long v3, v14

    const-string v23, "ipaddress.error.splitMismatch"

    move-object/from16 v18, v0

    move-wide/from16 v19, v1

    move-wide/from16 v21, v3

    invoke-direct/range {v18 .. v23}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJLjava/lang/String;)V

    throw v0

    :cond_b
    const/4 v12, 0x1

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto :goto_1

    :cond_c
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    int-to-long v1, v15

    int-to-long v3, v14

    const-string v23, "ipaddress.error.splitMismatch"

    move-object/from16 v18, v0

    move-wide/from16 v19, v1

    move-wide/from16 v21, v3

    invoke-direct/range {v18 .. v23}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJLjava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method public getSplitRangeStringLength(Ljava/lang/String;Ljava/lang/String;IIZCZLjava/lang/String;)I
    .locals 6

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result p1

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4, p5, p6}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getLowerString(IZLjava/lang/StringBuilder;)V

    invoke-virtual {p0, p4, p5, p7}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperString(IZLjava/lang/StringBuilder;)V

    invoke-static {p4, p5}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDigits(IZ)[C

    move-result-object p5

    const/4 p8, 0x0

    aget-char v0, p5, p8

    const/4 v1, 0x1

    sub-int/2addr p4, v1

    aget-char p4, p5, p4

    const/4 p5, -0x1

    move v2, v1

    :goto_0
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_0
    move v3, p8

    :goto_1
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v3, v0, :cond_1

    if-ne v5, p4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    :goto_2
    add-int/2addr v3, p5

    move p5, v3

    goto :goto_3

    :cond_1
    if-eq v3, v5, :cond_2

    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v4, v1

    add-int/2addr p3, v4

    :cond_3
    if-lez p3, :cond_4

    add-int/lit8 p1, p1, 0x2

    mul-int/2addr p1, p3

    add-int/2addr p5, p1

    :cond_4
    return p5
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultSegmentWildcardString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDefaultMaskedRangeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDefaultRangeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDefaultLowerString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    iput-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->cachedString:Ljava/lang/String;

    :cond_5
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_4
    return-object v0
.end method

.method public getUpperString(IZLjava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultString(Ljava/math/BigInteger;IZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getUpperStringLength(I)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->defaultRadix:Ljava/math/BigInteger;

    invoke-static {p1, v0}, Linet/ipaddr/format/AddressDivisionBase;->getDigitCount(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public getUpperStringMasked(IZLjava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValueMasked:Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Linet/ipaddr/format/large/IPAddressLargeDivision;->toDefaultString(Ljava/math/BigInteger;IZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getUpperValue()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->upperValue:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getWildcardString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultSegmentWildcardString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDefaultRangeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    :cond_4
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_4
    return-object v0
.end method

.method public includesMax()Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->maxValue:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public includesZero()Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBoundedBy(I)Z
    .locals 2

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMax()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->includesMax()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiple()Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPrefixBlock()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isPrefixBlock:Z

    return v0
.end method

.method public isPrefixed()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->networkPrefixLength:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/large/IPAddressLargeDivision;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/AddressDivisionBase;->isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSinglePrefixBlock()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;->isSinglePrefixBlock:Z

    return v0
.end method

.method public isZero()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->includesZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
