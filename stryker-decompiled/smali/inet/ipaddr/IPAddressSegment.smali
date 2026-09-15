.class public abstract Linet/ipaddr/IPAddressSegment;
.super Linet/ipaddr/format/standard/IPAddressDivision;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/AddressSegment;


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final upperValue:I

.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Linet/ipaddr/format/standard/IPAddressDivision;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Linet/ipaddr/IPAddressSegment;->upperValue:I

    iput p1, p0, Linet/ipaddr/IPAddressSegment;->value:I

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/AddressValueException;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw v0
.end method

.method public constructor <init>(IILjava/lang/Integer;)V
    .locals 3

    .line 2
    invoke-direct {p0, p3}, Linet/ipaddr/format/standard/IPAddressDivision;-><init>(Ljava/lang/Integer;)V

    if-ltz p1, :cond_4

    if-gez p2, :cond_0

    goto :goto_2

    :cond_0
    if-le p1, p2, :cond_1

    move v2, p2

    move p2, p1

    move p1, v2

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSegment;->getSegmentNetworkMask(I)I

    move-result v0

    and-int/2addr p1, v0

    iput p1, p0, Linet/ipaddr/IPAddressSegment;->value:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->getSegmentHostMask(I)I

    move-result p1

    or-int/2addr p1, p2

    iput p1, p0, Linet/ipaddr/IPAddressSegment;->upperValue:I

    goto :goto_1

    :cond_3
    :goto_0
    iput p1, p0, Linet/ipaddr/IPAddressSegment;->value:I

    iput p2, p0, Linet/ipaddr/IPAddressSegment;->upperValue:I

    :goto_1
    return-void

    :cond_4
    :goto_2
    new-instance p3, Linet/ipaddr/AddressValueException;

    if-gez p1, :cond_5

    int-to-long p1, p1

    goto :goto_3

    :cond_5
    int-to-long p1, p2

    :goto_3
    invoke-direct {p3, p1, p2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p3
.end method

.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p1, p2}, Linet/ipaddr/IPAddressSegment;-><init>(IILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic a(IIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Linet/ipaddr/IPAddressSegment;->lambda$prefixBlockSpliterator$2(IIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static bitwiseOrRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;
    .locals 0

    .line 2
    invoke-static/range {p0 .. p7}, Linet/ipaddr/format/standard/AddressDivision;->bitwiseOrRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(IIIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;III)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Linet/ipaddr/IPAddressSegment;->lambda$prefixSpliterator$1(IIIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;III)Linet/ipaddr/IPAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;IILjava/lang/Integer;II)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Linet/ipaddr/IPAddressSegment;->lambda$prefixBlockSpliterator$3(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;IILjava/lang/Integer;II)Linet/ipaddr/IPAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(IIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Linet/ipaddr/IPAddressSegment;->lambda$prefixSpliterator$0(IIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static getBitCount(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    return p0
.end method

.method public static getByteCount(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static getDefaultTextualRadix(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    return p0
.end method

.method public static getLowestOrHighest(Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Z)Linet/ipaddr/IPAddressSegment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TS;",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;Z)TS;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p2

    :goto_0
    if-eqz v0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-interface {p1, p2, p0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegment;

    return-object p0
.end method

.method public static getMaxSegmentValue(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xff

    goto :goto_0

    :cond_0
    const p0, 0xffff

    :goto_0
    return p0
.end method

.method public static getSplitSegmentPrefix(ILjava/lang/Integer;I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static hash(III)I
    .locals 0

    shl-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static highByte(I)I
    .locals 0

    .line 2
    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$2(IIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;
    .locals 8

    const/4 v0, 0x0

    shl-int v1, p7, p0

    shl-int v2, p8, p0

    or-int/2addr v2, p1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;IIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$3(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;IILjava/lang/Integer;II)Linet/ipaddr/IPAddressSegment;
    .locals 0

    shl-int/2addr p4, p1

    shl-int p1, p5, p1

    or-int/2addr p1, p2

    invoke-virtual {p0, p4, p1, p3}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegment;

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$0(IIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;
    .locals 9

    if-nez p7, :cond_1

    if-eqz p8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    shl-int v1, p9, p1

    shl-int v2, p10, p1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;IIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    if-eqz p7, :cond_2

    move v2, p0

    goto :goto_1

    :cond_2
    shl-int v0, p9, p1

    move v2, v0

    :goto_1
    if-eqz p8, :cond_3

    move v3, p2

    goto :goto_2

    :cond_3
    shl-int v0, p10, p1

    or-int/2addr v0, p3

    move v3, v0

    :goto_2
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v8}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;IIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$prefixSpliterator$1(IIIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;III)Linet/ipaddr/IPAddressSegment;
    .locals 0

    if-ne p8, p0, :cond_0

    goto :goto_0

    :cond_0
    shl-int p1, p8, p2

    :goto_0
    if-ne p9, p3, :cond_1

    goto :goto_1

    :cond_1
    shl-int p0, p9, p2

    or-int p4, p0, p5

    :goto_1
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p6, p1, p4, p0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegment;

    return-object p0
.end method

.method public static lowByte(I)I
    .locals 0

    .line 2
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;
    .locals 0

    .line 2
    invoke-static/range {p0 .. p7}, Linet/ipaddr/format/standard/AddressDivision;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object p0

    return-object p0
.end method

.method public static prefixBlockSpliterator(Linet/ipaddr/IPAddressSegment;ILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/Supplier;)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TS;I",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "***TS;*>;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Iterator<",
            "TS;>;>;)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "TS;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    sub-int v6, v3, p1

    if-lez v6, :cond_0

    const/4 v0, -0x1

    shl-int/2addr v0, v6

    not-int v0, v0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static/range {p1 .. p1}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    ushr-int v10, v0, v6

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v0

    ushr-int v11, v0, v6

    new-instance v13, Linet/ipaddr/k;

    move-object v0, v13

    move v1, v6

    move v2, v7

    move-object/from16 v4, p2

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/k;-><init>(IIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;)V

    new-instance v14, Linet/ipaddr/l;

    move-object/from16 v0, p2

    invoke-direct {v14, v6, v7, v0, v8}, Linet/ipaddr/l;-><init>(IILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;)V

    move-object v9, p0

    move-object/from16 v12, p3

    invoke-static/range {v9 .. v14}, Linet/ipaddr/format/AddressDivisionBase;->createSegmentSpliterator(Linet/ipaddr/AddressSegment;IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public static prefixSpliterator(Linet/ipaddr/IPAddressSegment;ILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/Supplier;)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TS;I",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "***TS;*>;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Iterator<",
            "TS;>;>;)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "TS;>;"
        }
    .end annotation

    .line 1
    invoke-interface/range {p0 .. p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v5

    sub-int v9, v5, p1

    if-lez v9, :cond_0

    const/4 v0, -0x1

    shl-int/2addr v0, v9

    not-int v0, v0

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v11

    ushr-int v15, v8, v9

    ushr-int v16, v11, v9

    invoke-static/range {p1 .. p1}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v17, Linet/ipaddr/i;

    move-object/from16 v0, v17

    move v1, v8

    move v2, v9

    move v3, v11

    move v4, v12

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/i;-><init>(IIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;)V

    new-instance v18, Linet/ipaddr/j;

    move-object/from16 v6, v18

    move v7, v15

    move/from16 v10, v16

    move-object/from16 v13, p2

    move/from16 v14, p1

    invoke-direct/range {v6 .. v14}, Linet/ipaddr/j;-><init>(IIIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;I)V

    move-object/from16 v13, p0

    move v14, v15

    move/from16 v15, v16

    move-object/from16 v16, p3

    invoke-static/range {v13 .. v18}, Linet/ipaddr/format/AddressDivisionBase;->createSegmentSpliterator(Linet/ipaddr/AddressSegment;IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public static removePrefix(Linet/ipaddr/IPAddressSegment;ZLinet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TS;Z",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;)TS;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->getSegmentNetworkMask(I)I

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getDivisionValue()J

    move-result-wide v3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperDivisionValue()J

    move-result-wide v5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getMaxValue()J

    move-result-wide v9

    int-to-long v11, p1

    move-wide v7, v11

    invoke-static/range {v3 .. v10}, Linet/ipaddr/IPAddressSegment;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v4

    if-eqz v4, :cond_0

    int-to-long p0, v0

    invoke-virtual {v3, p0, p1, v11, v12}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-long v0, v1

    invoke-virtual {v3, v0, v1, v11, v12}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-interface {p2, p0, p1, v2}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    :goto_0
    check-cast p0, Linet/ipaddr/IPAddressSegment;

    return-object p0

    :cond_0
    new-instance p2, Linet/ipaddr/IncompatibleAddressException;

    const-string v0, "ipaddress.error.maskMismatch"

    invoke-direct {p2, p0, p1, v0}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;ILjava/lang/String;)V

    throw p2

    :cond_1
    invoke-interface {p2, v0, v1, v2}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static toUnsignedString(IILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7

    int-to-long v0, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    move v2, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedString(JIIZ[CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedStringLength(II)I
    .locals 2

    int-to-long v0, p0

    invoke-static {v0, v1, p1}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedStringLength(JI)I

    move-result p0

    return p0
.end method

.method public static toZeroHost(Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TS;",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Linet/ipaddr/IPAddressSegment;->getSegmentNetworkMask(I)I

    move-result v4

    and-int v5, v0, v4

    and-int/2addr v4, v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v6

    invoke-virtual {v6}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1, v5, v4, v1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    :goto_0
    check-cast p0, Linet/ipaddr/IPAddressSegment;

    return-object p0

    :cond_0
    if-ne v5, v0, :cond_1

    if-ne v4, v2, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p1, v5, v4, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    invoke-interface {p1, p0, v1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public bitwiseOrRange(I)Linet/ipaddr/format/standard/AddressDivision$BitwiseOrResult;
    .locals 14

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    int-to-long v10, v0

    int-to-long v0, v1

    int-to-long v12, p1

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getMaxSegmentValue()I

    move-result p1

    int-to-long v8, p1

    move-wide v2, v10

    move-wide v4, v0

    move-wide v6, v12

    invoke-static/range {v2 .. v9}, Linet/ipaddr/format/standard/AddressDivision;->bitwiseOrRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    move-result-object v9

    new-instance p1, Linet/ipaddr/format/standard/AddressDivision$BitwiseOrResult;

    move-object v2, p1

    move-wide v3, v10

    move-wide v5, v0

    move-wide v7, v12

    invoke-direct/range {v2 .. v9}, Linet/ipaddr/format/standard/AddressDivision$BitwiseOrResult;-><init>(JJJLinet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;)V

    return-object p1
.end method

.method public containsPrefixBlock(III)Z
    .locals 6

    int-to-long v1, p1

    int-to-long v3, p2

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixBlock(JJI)Z

    move-result p1

    return p1
.end method

.method public containsSeg(Linet/ipaddr/AddressSegment;)Z
    .locals 2

    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsSinglePrefixBlock(III)Z
    .locals 6

    int-to-long v1, p1

    int-to-long v3, p2

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/IPAddressDivision;->isSinglePrefixBlock(JJI)Z

    move-result p1

    return p1
.end method

.method public getDefaultSegmentWildcardString()Ljava/lang/String;
    .locals 1

    sget-object v0, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisionHostMask(I)J
    .locals 2

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->getSegmentHostMask(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getDivisionNetworkMask(I)J
    .locals 2

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->getSegmentNetworkMask(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getDivisionValue()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDivisionValueCount()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getValueCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public abstract getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
.end method

.method public abstract getIterable()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getLower()Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getLower()Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLower()Linet/ipaddr/IPAddressSegment;
.end method

.method public getMaxValue()J
    .locals 2

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getMaxSegmentValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinPrefixLengthForBlock()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMinPrefixLengthForBlock()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public abstract getNetwork()Linet/ipaddr/IPAddressNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;"
        }
    .end annotation
.end method

.method public getPrefixValueCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getValueCount()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Linet/ipaddr/format/standard/AddressDivision;->getPrefixValueCount(Linet/ipaddr/AddressSegment;I)I

    move-result v0

    return v0
.end method

.method public abstract getSegmentHostMask(I)I
.end method

.method public abstract getSegmentNetworkMask(I)I
.end method

.method public getSegmentPrefixLength()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentValue()I
    .locals 1

    iget v0, p0, Linet/ipaddr/IPAddressSegment;->value:I

    return v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpper()Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpper()Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUpper()Linet/ipaddr/IPAddressSegment;
.end method

.method public getUpperDivisionValue()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getUpperSegmentValue()I
    .locals 1

    iget v0, p0, Linet/ipaddr/IPAddressSegment;->upperValue:I

    return v0
.end method

.method public getValueCount()I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Linet/ipaddr/IPAddressSegment;->hash(III)I

    move-result v0

    return v0
.end method

.method public highByte()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/IPAddressSegment;->highByte(I)I

    move-result v0

    return v0
.end method

.method public includesMax()Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getMaxSegmentValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public includesZero()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBoundedBy(I)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isChangedBy(IILjava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    if-ne v0, p1, :cond_2

    if-ne v1, p2, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isChangedByPrefix(Ljava/lang/Integer;Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v4

    if-gt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw p2

    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    return v0

    :cond_7
    return v2
.end method

.method public isHostChangedByPrefix(Ljava/lang/Integer;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v4

    if-gt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    if-nez v2, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->getSegmentHostMask(I)I

    move-result p1

    :goto_2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v3

    and-int v4, v2, p1

    if-ne v2, v4, :cond_5

    and-int/2addr p1, v3

    if-eq v3, p1, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    return v0
.end method

.method public isIPv4()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIPv6()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiple()Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkChangedByPrefix(Ljava/lang/Integer;Z)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw p2

    :cond_2
    :goto_1
    and-int/2addr p2, v1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v2

    if-eq p2, v2, :cond_3

    return v0

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object p2

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivision;->containsPrefixBlock(I)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_5
    :goto_2
    return v0
.end method

.method public isNetworkChangedByPrefixNonNull(I)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivision;->containsPrefixBlock(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isPrefixBlock()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameValues(Linet/ipaddr/AddressSegment;)Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v0

    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public lowByte()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/IPAddressSegment;->lowByte(I)I

    move-result v0

    return v0
.end method

.method public maskRange(I)Linet/ipaddr/format/standard/AddressDivision$MaskResult;
    .locals 14

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    int-to-long v10, v0

    int-to-long v0, v1

    int-to-long v12, p1

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getMaxSegmentValue()I

    move-result p1

    int-to-long v8, p1

    move-wide v2, v10

    move-wide v4, v0

    move-wide v6, v12

    invoke-static/range {v2 .. v9}, Linet/ipaddr/format/standard/AddressDivision;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v9

    new-instance p1, Linet/ipaddr/format/standard/AddressDivision$MaskResult;

    move-object v2, p1

    move-wide v3, v10

    move-wide v5, v0

    move-wide v7, v12

    invoke-direct/range {v2 .. v9}, Linet/ipaddr/format/standard/AddressDivision$MaskResult;-><init>(JJJLinet/ipaddr/format/validate/ParsedIPAddress$Masker;)V

    return-object p1
.end method

.method public matches(I)Z
    .locals 2

    int-to-long v0, p1

    invoke-super {p0, v0, v1}, Linet/ipaddr/format/standard/AddressDivision;->matches(J)Z

    move-result p1

    return p1
.end method

.method public matchesWithMask(II)Z
    .locals 2

    .line 1
    int-to-long v0, p1

    int-to-long p1, p2

    invoke-super {p0, v0, v1, p1, p2}, Linet/ipaddr/format/standard/AddressDivision;->matchesWithMask(JJ)Z

    move-result p1

    return p1
.end method

.method public matchesWithMask(III)Z
    .locals 7

    .line 2
    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    invoke-super/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivision;->matchesWithMask(JJJ)Z

    move-result p1

    return p1
.end method

.method public matchesWithPrefixMask(ILjava/lang/Integer;)Z
    .locals 2

    int-to-long v0, p1

    invoke-super {p0, v0, v1, p2}, Linet/ipaddr/format/standard/IPAddressDivision;->matchesWithPrefixMask(JLjava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public abstract prefixBlockIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockIterator(I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockStream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockStream(I)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public prefixContains(Linet/ipaddr/IPAddressSegment;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/AddressDivision;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/IPAddressSegment;->prefixContains(Linet/ipaddr/IPAddressSegment;I)Z

    move-result p1

    return p1
.end method

.method public prefixContains(Linet/ipaddr/IPAddressSegment;I)Z
    .locals 2

    .line 2
    if-ltz p2, :cond_2

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    sub-int/2addr v0, p2

    if-gtz v0, :cond_0

    invoke-interface {p0, p1}, Linet/ipaddr/AddressSegment;->contains(Linet/ipaddr/AddressSegment;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p2

    ushr-int/2addr p2, v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v1

    ushr-int/2addr v1, v0

    if-lt p2, v1, :cond_1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p1

    ushr-int/2addr p1, v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p2

    ushr-int/2addr p2, v0

    if-gt p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_2
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1
.end method

.method public prefixEquals(Linet/ipaddr/AddressSegment;I)Z
    .locals 2

    .line 1
    if-ltz p2, :cond_2

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    sub-int/2addr v0, p2

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->isSameValues(Linet/ipaddr/AddressSegment;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p2

    ushr-int/2addr p2, v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v1

    ushr-int/2addr v1, v0

    if-ne p2, v1, :cond_1

    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result p1

    ushr-int/2addr p1, v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p2

    ushr-int/2addr p2, v0

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_2
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1
.end method

.method public prefixEquals(Linet/ipaddr/IPAddressSegment;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/AddressDivision;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/IPAddressSegment;->prefixEquals(Linet/ipaddr/AddressSegment;I)Z

    move-result p1

    return p1
.end method

.method public abstract prefixIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixStream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removePrefixLength()Linet/ipaddr/IPAddressSegment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePrefixLength(Z)Linet/ipaddr/IPAddressSegment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->reverseBits(Z)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->reverseBits(Z)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public abstract reverseBits(Z)Linet/ipaddr/IPAddressSegment;
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->reverseBytes()Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->reverseBytes()Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytes()Linet/ipaddr/IPAddressSegment;
.end method

.method public setStandardString(Ljava/lang/CharSequence;ZIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    int-to-long v0, p5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getDivisionValue()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    invoke-interface {p1, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/standard/IPAddressDivision;->cachedString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setStandardString(Ljava/lang/CharSequence;ZZIIIII)V
    .locals 2

    .line 2
    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    int-to-long p2, p7

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getDivisionValue()J

    move-result-wide p6

    cmp-long p2, p2, p6

    if-nez p2, :cond_3

    invoke-interface {p1, p4, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Linet/ipaddr/format/standard/IPAddressDivision;->cachedString:Ljava/lang/String;

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    int-to-long p2, p7

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getDivisionValue()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperDivisionValue()J

    move-result-wide p2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p0, p5}, Linet/ipaddr/IPAddressSegment;->getDivisionNetworkMask(I)J

    move-result-wide v0

    and-long/2addr p2, v0

    :cond_2
    int-to-long p7, p8

    cmp-long p2, p7, p2

    if-nez p2, :cond_3

    invoke-interface {p1, p4, p6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public setWildcardString(Ljava/lang/CharSequence;ZIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    int-to-long v0, p5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getDivisionValue()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperDivisionValue()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    invoke-interface {p1, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setWildcardString(Ljava/lang/CharSequence;ZIIII)V
    .locals 4

    .line 2
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    int-to-long v0, p5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getDivisionValue()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    int-to-long p5, p6

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperDivisionValue()J

    move-result-wide v0

    cmp-long p2, p5, v0

    if-nez p2, :cond_1

    invoke-interface {p1, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public toHexString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_0

    :cond_0
    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    :goto_0
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract toHostSegment(Ljava/lang/Integer;)Linet/ipaddr/IPAddressSegment;
.end method

.method public toHostSegment(Ljava/lang/Integer;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->getSegmentHostMask(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    and-int/2addr v0, p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    and-int/2addr p1, v1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    :goto_1
    check-cast p1, Linet/ipaddr/IPAddressSegment;

    return-object p1

    :cond_1
    invoke-interface {p2, v0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p1

    goto :goto_1
.end method

.method public toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/IPAddressSegment;->toNetworkSegment(Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public abstract toNetworkSegment(Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSegment;
.end method

.method public toNetworkSegment(Ljava/lang/Integer;ZLinet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(",
            "Ljava/lang/Integer;",
            "Z",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSegment;->getSegmentNetworkMask(I)I

    move-result v2

    and-int/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSegment;->getSegmentHostMask(I)I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    and-int/2addr p2, v2

    if-eq v0, v1, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    invoke-interface {p3, v0, v1, p1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSegment;

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p3, v0, p1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    :goto_1
    check-cast p1, Linet/ipaddr/IPAddressSegment;

    goto :goto_2

    :cond_4
    invoke-interface {p3, v0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-object p1
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Linet/ipaddr/IPAddressSection$IPStringCache;->canonicalSegmentParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSegment;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Linet/ipaddr/format/util/AddressDivisionWriter;->getDivisionStringLength(Linet/ipaddr/format/string/AddressStringDivision;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p1, v0, p0}, Linet/ipaddr/format/util/AddressDivisionWriter;->appendDivision(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivision;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toPrefixedSegment(Ljava/lang/Integer;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;)TS;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-interface {p2, v0, v1, p1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSegment;

    return-object p1

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {p2, v0, p1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    :goto_1
    check-cast p1, Linet/ipaddr/IPAddressSegment;

    goto :goto_2

    :cond_3
    invoke-interface {p2, v0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-object p1
.end method

.method public abstract toZeroHost()Linet/ipaddr/IPAddressSegment;
.end method

.method public abstract withoutPrefixLength()Linet/ipaddr/IPAddressSegment;
.end method
