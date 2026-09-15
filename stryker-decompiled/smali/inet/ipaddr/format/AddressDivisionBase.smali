.class public abstract Linet/ipaddr/format/AddressDivisionBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressGenericDivision;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;,
        Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;
    }
.end annotation


# static fields
.field private static final DECIMAL_PARAMS:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field protected static final DIGITS:[C

.field private static final HEX_PARAMS:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field private static final OCTAL_PARAMS:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field protected static final UPPERCASE_DIGITS:[C

.field private static maxDigitMap:Ljava/util/TreeMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static radixPowerMap:Ljava/util/TreeMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4L

.field private static final zeros:[Ljava/lang/String;


# instance fields
.field protected transient cachedWildcardString:Ljava/lang/String;

.field protected transient hashCode:I

.field private transient lowerBytes:[B

.field private transient upperBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    sget-object v1, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    invoke-direct {v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;)V

    new-instance v1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/format/AddressDivisionBase;->OCTAL_PARAMS:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/format/AddressDivisionBase;->HEX_PARAMS:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/AddressDivisionBase;->DECIMAL_PARAMS:Linet/ipaddr/IPAddressSection$IPStringOptions;

    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Linet/ipaddr/format/AddressDivisionBase;->zeros:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Linet/ipaddr/format/AddressDivisionBase;->zeros:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Linet/ipaddr/format/AddressDivisionBase;->UPPERCASE_DIGITS:[C

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Linet/ipaddr/format/AddressDivisionBase;->maxDigitMap:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Linet/ipaddr/format/AddressDivisionBase;->radixPowerMap:Ljava/util/TreeMap;

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
    .end array-data

    :array_1
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustHashCode(IJJ)I
    .locals 6

    const/16 v0, 0x20

    ushr-long v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    move-wide v1, p1

    goto :goto_0

    :cond_0
    xor-long/2addr v1, p1

    :goto_0
    long-to-int v1, v1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v1

    cmp-long p1, p3, p1

    if-eqz p1, :cond_2

    ushr-long p1, p3, v0

    cmp-long v0, p1, v3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    xor-long/2addr p3, p1

    :goto_1
    long-to-int p1, p3

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    :cond_2
    return p0
.end method

.method private static appendDigits(JII[CLjava/lang/StringBuilder;)V
    .locals 10

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    long-to-int v4, p0

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    if-lt v4, p2, :cond_6

    if-eqz v2, :cond_3

    div-int v5, v4, p2

    if-lez p3, :cond_2

    add-int/lit8 p3, p3, -0x1

    :goto_2
    move v4, v5

    goto :goto_1

    :cond_2
    rem-int/2addr v4, p2

    goto :goto_3

    :cond_3
    int-to-long v5, p2

    div-long v7, p0, v5

    cmp-long v9, v7, v0

    if-gtz v9, :cond_4

    long-to-int v2, v7

    move v4, v2

    move v2, v3

    :cond_4
    if-lez p3, :cond_5

    add-int/lit8 p3, p3, -0x1

    move-wide p0, v7

    goto :goto_1

    :cond_5
    rem-long/2addr p0, v5

    long-to-int p0, p0

    move v5, v4

    move v4, p0

    move-wide p0, v7

    :goto_3
    aget-char v4, p4, v4

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    if-nez p3, :cond_7

    aget-char p0, p4, v4

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method

.method public static createHashCode(JJ)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Linet/ipaddr/format/AddressDivisionBase;->adjustHashCode(IJJ)I

    move-result p0

    return p0
.end method

.method public static createSegmentSpliterator(Linet/ipaddr/AddressSegment;IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linet/ipaddr/AddressSegment;",
            ">(TT;II",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Iterator<",
            "TT;>;>;",
            "Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider<",
            "TT;>;",
            "Linet/ipaddr/format/AddressDivisionBase$SegmentCreator<",
            "TT;>;)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v7, Linet/ipaddr/format/AddressSegmentSpliterator;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/AddressSegmentSpliterator;-><init>(Linet/ipaddr/AddressSegment;IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;)V

    return-object v7
.end method

.method private getBytes([BI[B)[B
    .locals 4

    .line 4
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    add-int v3, v0, p2

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    :goto_0
    if-lez p2, :cond_3

    add-int/2addr v0, p2

    new-array v0, v0, [B

    if-eqz p1, :cond_2

    array-length v2, p1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    array-length p1, p3

    invoke-static {p3, v1, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_3
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public static getDigitCount(JI)I
    .locals 7

    .line 1
    const/16 v0, 0x10

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne p2, v0, :cond_1

    :goto_0
    const/4 p2, 0x4

    ushr-long/2addr p0, p2

    cmp-long p2, p0, v1

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    const/4 v4, 0x3

    if-ne p2, v0, :cond_5

    const-wide/16 v5, 0xa

    cmp-long v0, p0, v5

    if-gez v0, :cond_2

    return v3

    :cond_2
    const-wide/16 v5, 0x64

    cmp-long v0, p0, v5

    if-gez v0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const-wide/16 v5, 0x3e8

    cmp-long v0, p0, v5

    if-gez v0, :cond_4

    return v4

    :cond_4
    div-long/2addr p0, v5

    move v3, v4

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    if-ne p2, v0, :cond_7

    :goto_1
    ushr-long/2addr p0, v4

    cmp-long p2, p0, v1

    if-nez p2, :cond_6

    return v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    int-to-long v4, p2

    div-long/2addr p0, v4

    cmp-long v0, p0, v1

    if-nez v0, :cond_8

    :goto_3
    return v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getDigitCount(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 2

    .line 2
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static getFullRangeString(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    return p0
.end method

.method public static getLeadingZeros(ILjava/lang/StringBuilder;)V
    .locals 3

    if-lez p0, :cond_2

    sget-object v0, Linet/ipaddr/format/AddressDivisionBase;->zeros:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v0, v1

    :goto_0
    if-lt p0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v1

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public static getMaxDigitCount(IIJ)I
    .locals 4

    .line 1
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    sget-object p1, Linet/ipaddr/format/AddressDivisionBase;->maxDigitMap:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    invoke-static {p2, p3, p0}, Linet/ipaddr/format/AddressDivisionBase;->getDigitCount(JI)I

    move-result p0

    invoke-static {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p0, Linet/ipaddr/format/AddressDivisionBase;->maxDigitMap:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getMaxDigitCount(IILjava/math/BigInteger;)I
    .locals 6

    .line 2
    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long v2, v0, p0

    int-to-long v4, p1

    or-long/2addr v2, v4

    sget-object p0, Linet/ipaddr/format/AddressDivisionBase;->maxDigitMap:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Linet/ipaddr/format/AddressDivisionBase;->getMaxValue(I)Ljava/math/BigInteger;

    move-result-object p2

    :cond_0
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2, p0}, Linet/ipaddr/format/AddressDivisionBase;->getDigitCount(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p1, Linet/ipaddr/format/AddressDivisionBase;->maxDigitMap:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getMaxValue(I)Ljava/math/BigInteger;
    .locals 4

    add-int/lit8 v0, p0, 0x7

    const/16 v1, 0x8

    div-int/2addr v0, v1

    rem-int/2addr p0, v1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    new-array p0, v0, [B

    const/4 v2, -0x1

    shl-int v1, v2, v1

    not-int v1, v1

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, p0, v3

    const/4 v1, 0x1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    aput-byte v2, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static getRadixPower(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    sget-object v2, Linet/ipaddr/format/AddressDivisionBase;->radixPowerMap:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_1

    shr-int/2addr p1, v2

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionBase;->getRadixPower(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v2

    shr-int/2addr p1, v2

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionBase;->getRadixPower(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    sget-object p1, Linet/ipaddr/format/AddressDivisionBase;->radixPowerMap:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    :cond_2
    return-object v2
.end method

.method private static getSplitChar(ICCLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v1, p0, -0x1

    if-lez p0, :cond_1

    if-lez v0, :cond_0

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private static getSplitChar(ICLjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 2
    :goto_0
    add-int/lit8 v0, p0, -0x1

    if-lez p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private static getSplitLeadingZeros(ICLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0x30

    invoke-static {p0, p1, v0, p2, p3}, Linet/ipaddr/format/AddressDivisionBase;->getSplitChar(ICCLjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static testRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)Z
    .locals 1

    .line 1
    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->ALL_ONES:Ljava/math/BigInteger;

    sub-int/2addr p3, p4

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/format/AddressDivisionBase;->testRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p0

    return p0
.end method

.method public static testRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p3}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p4}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressSection$IPStringOptions;",
            ")",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams<",
            "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;)Linet/ipaddr/format/util/AddressDivisionWriter;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->base:I

    iget-object v2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->separator:Ljava/lang/Character;

    iget-boolean v3, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->uppercase:Z

    invoke-direct {v0, v1, v2, v3}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;-><init>(ILjava/lang/Character;Z)V

    iget-boolean v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->expandSegments:Z

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->expandSegments(Z)V

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->segmentStrPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSegmentStrPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->addrLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setAddressLabel(Ljava/lang/String;)V

    iget-boolean v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->reverse:Z

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setReverse(Z)V

    iget-boolean v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->splitDigits:Z

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSplitDigits(Z)V

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->base:I

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setRadix(I)V

    iget-boolean v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->uppercase:Z

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setUppercase(Z)V

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->separator:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSeparator(Ljava/lang/Character;)V

    iget-char v1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions;->zoneSeparator:C

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setZoneSeparator(C)V

    invoke-static {p0, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;Linet/ipaddr/format/util/AddressDivisionWriter;)V

    :cond_0
    return-object v0
.end method

.method public static toUnsignedString(JIIZ[CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7

    .line 1
    const-wide/32 v0, 0xffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    long-to-int v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedStringFast(IIIZ[CLjava/lang/StringBuilder;)Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedString(JII[CLjava/lang/StringBuilder;)V

    :cond_1
    return-object p6
.end method

.method private static toUnsignedString(JII[CLjava/lang/StringBuilder;)V
    .locals 1

    .line 2
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static/range {p0 .. p5}, Linet/ipaddr/format/AddressDivisionBase;->appendDigits(JII[CLjava/lang/StringBuilder;)V

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    add-int/lit8 p2, v0, 0x1

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    invoke-virtual {p5, v0, p3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 p3, p0, -0x1

    invoke-virtual {p5, p0, p1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v0, p2

    move p0, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static toUnsignedStringFast(IIIZ[CLjava/lang/StringBuilder;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p3, p4, p5}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedStringFast(IIZ[CLjava/lang/StringBuilder;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-lez p2, :cond_0

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, p2

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static toUnsignedStringFast(IIZ[CLjava/lang/StringBuilder;)Z
    .locals 9

    .line 2
    const/16 v0, 0x31

    const/4 v1, 0x1

    if-gt p0, v1, :cond_1

    if-nez p0, :cond_0

    const/16 p0, 0x30

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return v1

    :cond_1
    const-string v2, "     "

    const-string v3, "    "

    const-string v4, "   "

    const-string v5, "  "

    const/16 v6, 0xa

    if-ne p1, v6, :cond_9

    if-ge p0, v6, :cond_2

    aget-char p0, p3, p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_2
    const/16 p1, 0x64

    if-ge p0, p1, :cond_3

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 p1, 0x3e8

    if-ge p0, p1, :cond_6

    const/16 p1, 0x7f

    if-ne p0, p1, :cond_4

    const-string p0, "127"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1

    :cond_4
    const/16 p1, 0xff

    if-ne p0, p1, :cond_5

    const-string p0, "255"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1

    :cond_5
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 p1, 0x2710

    if-ge p0, p1, :cond_7

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    :goto_2
    const p2, 0xcccd

    mul-int/2addr p2, p0

    ushr-int/lit8 p2, p2, 0x13

    shl-int/lit8 v0, p2, 0x3

    shl-int/lit8 v2, p2, 0x1

    add-int/2addr v0, v2

    sub-int/2addr p0, v0

    add-int/lit8 p1, p1, -0x1

    aget-char p0, p3, p0

    invoke-virtual {p4, p1, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    if-nez p2, :cond_8

    return v1

    :cond_8
    move p0, p2

    goto :goto_2

    :cond_9
    const/16 v7, 0x1000

    const/16 v8, 0x10

    if-ne p1, v8, :cond_11

    if-ge p0, v6, :cond_a

    aget-char p0, p3, p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_a
    if-ge p0, v8, :cond_b

    aget-char p0, p3, p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_b
    const/16 p1, 0x100

    if-ge p0, p1, :cond_c

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    if-ge p0, v7, :cond_d

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    const p1, 0xffff

    if-ne p0, p1, :cond_f

    if-eqz p2, :cond_e

    const-string p0, "FFFF"

    goto :goto_3

    :cond_e
    const-string p0, "ffff"

    :goto_3
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1

    :cond_f
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    :goto_5
    ushr-int/lit8 p2, p0, 0x4

    shl-int/lit8 v0, p2, 0x4

    sub-int/2addr p0, v0

    add-int/lit8 p1, p1, -0x1

    aget-char p0, p3, p0

    invoke-virtual {p4, p1, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    if-nez p2, :cond_10

    return v1

    :cond_10
    move p0, p2

    goto :goto_5

    :cond_11
    const/16 p2, 0x8

    if-ne p1, p2, :cond_18

    if-ge p0, p2, :cond_12

    aget-char p0, p3, p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_12
    const/16 p1, 0x40

    if-ge p0, p1, :cond_13

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_13
    const/16 p1, 0x200

    if-ge p0, p1, :cond_14

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_14
    if-ge p0, v7, :cond_15

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_15
    const p1, 0x8000

    if-ge p0, p1, :cond_16

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_16
    const-string p1, "      "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    :goto_7
    ushr-int/lit8 p2, p0, 0x3

    shl-int/lit8 v0, p2, 0x3

    sub-int/2addr p0, v0

    add-int/lit8 p1, p1, -0x1

    aget-char p0, p3, p0

    invoke-virtual {p4, p1, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    if-nez p2, :cond_17

    return v1

    :cond_17
    move p0, p2

    goto :goto_7

    :cond_18
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1e

    ushr-int/lit8 p1, p0, 0x8

    if-nez p1, :cond_19

    const/4 p1, 0x7

    move v2, p1

    move p1, p0

    goto :goto_8

    :cond_19
    const/16 v2, 0xf

    :goto_8
    ushr-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_1a

    add-int/lit8 v2, v2, -0x4

    goto :goto_9

    :cond_1a
    move p1, v3

    :goto_9
    ushr-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_1b

    add-int/lit8 v2, v2, -0x2

    goto :goto_a

    :cond_1b
    move p1, v3

    :goto_a
    and-int/2addr p1, p2

    if-nez p1, :cond_1c

    add-int/lit8 v2, v2, -0x1

    :cond_1c
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    if-lez v2, :cond_1d

    add-int/lit8 v2, v2, -0x1

    ushr-int p1, p0, v2

    and-int/2addr p1, v1

    aget-char p1, p3, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1d
    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static toUnsignedStringLength(JI)I
    .locals 2

    const-wide/32 v0, 0xffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    long-to-int v0, p0

    invoke-static {v0, p2}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedStringLengthFast(II)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedStringLengthSlow(JI)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static toUnsignedStringLengthFast(II)I
    .locals 8

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne p1, v2, :cond_5

    if-ge p0, v2, :cond_1

    return v0

    :cond_1
    const/16 p1, 0x64

    if-ge p0, p1, :cond_2

    return v5

    :cond_2
    const/16 p1, 0x3e8

    if-ge p0, p1, :cond_3

    return v3

    :cond_3
    const/16 p1, 0x2710

    if-ge p0, p1, :cond_4

    return v4

    :cond_4
    return v1

    :cond_5
    const/16 v2, 0x1000

    const/16 v6, 0x10

    if-ne p1, v6, :cond_9

    if-ge p0, v6, :cond_6

    return v0

    :cond_6
    const/16 p1, 0x100

    if-ge p0, p1, :cond_7

    return v5

    :cond_7
    if-ge p0, v2, :cond_8

    return v3

    :cond_8
    return v4

    :cond_9
    const/16 v6, 0x8

    if-ne p1, v6, :cond_f

    if-ge p0, v6, :cond_a

    return v0

    :cond_a
    const/16 p1, 0x40

    if-ge p0, p1, :cond_b

    return v5

    :cond_b
    const/16 p1, 0x200

    if-ge p0, p1, :cond_c

    return v3

    :cond_c
    if-ge p0, v2, :cond_d

    return v4

    :cond_d
    const p1, 0x8000

    if-ge p0, p1, :cond_e

    return v1

    :cond_e
    const/4 p0, 0x6

    return p0

    :cond_f
    if-ne p1, v5, :cond_14

    ushr-int/lit8 p1, p0, 0x8

    if-nez p1, :cond_10

    const/4 p1, 0x7

    goto :goto_0

    :cond_10
    const/16 p0, 0xf

    move v7, p1

    move p1, p0

    move p0, v7

    :goto_0
    ushr-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_11

    add-int/lit8 p1, p1, -0x4

    goto :goto_1

    :cond_11
    move p0, v0

    :goto_1
    ushr-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_12

    add-int/lit8 p1, p1, -0x2

    goto :goto_2

    :cond_12
    move p0, v0

    :goto_2
    and-int/2addr p0, v5

    if-eqz p0, :cond_13

    add-int/lit8 p1, p1, 0x1

    :cond_13
    return p1

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method private static toUnsignedStringLengthSlow(JI)I
    .locals 8

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    long-to-int v4, p0

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    move v5, v3

    :goto_2
    if-lt v4, p2, :cond_4

    if-eqz v2, :cond_2

    div-int/2addr v4, p2

    goto :goto_3

    :cond_2
    int-to-long v6, p2

    div-long/2addr p0, v6

    cmp-long v6, p0, v0

    if-gtz v6, :cond_3

    long-to-int v2, p0

    move v4, v2

    move v2, v3

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return v5
.end method


# virtual methods
.method public abstract adjustLowerLeadingZeroCount(II)I
.end method

.method public adjustRangeDigits(I)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->includesZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract adjustUpperLeadingZeroCount(II)I
.end method

.method public appendUppercase(Ljava/lang/CharSequence;ILjava/lang/StringBuilder;)V
    .locals 2

    const/16 v0, 0xa

    if-le p2, v0, :cond_1

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
    instance-of v1, p1, Linet/ipaddr/format/AddressDivisionBase;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/format/AddressDivisionBase;

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v1

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, p0}, Linet/ipaddr/format/AddressDivisionBase;->isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z

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

.method public getBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->lowerBytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/AddressDivisionBase;->getBytesImpl(Z)[B

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->lowerBytes:[B

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getBytes([B)[B
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionBase;->getBytes([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getBytes([BI)[B
    .locals 1

    .line 3
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->lowerBytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/AddressDivisionBase;->getBytesImpl(Z)[B

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->lowerBytes:[B

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/format/AddressDivisionBase;->getBytes([BI[B)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract getBytesImpl(Z)[B
.end method

.method public getCachedDefaultLowerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultLowerString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

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

.method public abstract getDefaultLowerString()Ljava/lang/String;
.end method

.method public abstract getDefaultRangeSeparatorString()Ljava/lang/String;
.end method

.method public abstract getDefaultRangeString()Ljava/lang/String;
.end method

.method public getDefaultSegmentWildcardString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDefaultTextualRadix()I
.end method

.method public getLowerStandardString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I
    .locals 3

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getRadix()I

    move-result v0

    invoke-interface {p2, p1}, Linet/ipaddr/format/util/AddressSegmentParams;->getLeadingZeros(I)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionBase;->adjustLowerLeadingZeroCount(II)I

    move-result p1

    if-eqz p1, :cond_4

    if-nez p3, :cond_3

    if-gez p1, :cond_2

    invoke-interface {p0, v0}, Linet/ipaddr/format/string/AddressStringDivision;->getMaxDigitCount(I)I

    move-result p1

    :goto_1
    add-int/2addr p1, v1

    return p1

    :cond_2
    add-int/2addr v1, p1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionBase;->adjustLowerLeadingZeroCount(II)I

    move-result p1

    invoke-static {p1, p3}, Linet/ipaddr/format/AddressDivisionBase;->getLeadingZeros(ILjava/lang/StringBuilder;)V

    :cond_4
    :goto_2
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isUppercase()Z

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result p2

    if-ne v0, p2, :cond_7

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getCachedDefaultLowerString()Ljava/lang/String;

    move-result-object p2

    if-nez p3, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0, p2, v0, p3}, Linet/ipaddr/format/AddressDivisionBase;->appendUppercase(Ljava/lang/CharSequence;ILjava/lang/StringBuilder;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    if-nez p3, :cond_8

    invoke-virtual {p0, v0}, Linet/ipaddr/format/AddressDivisionBase;->getLowerStringLength(I)I

    move-result p1

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0, p1, p3}, Linet/ipaddr/format/AddressDivisionBase;->getLowerString(IZLjava/lang/StringBuilder;)V

    :goto_3
    return v2
.end method

.method public abstract getLowerString(IIZLjava/lang/StringBuilder;)V
.end method

.method public abstract getLowerString(IZLjava/lang/StringBuilder;)V
.end method

.method public abstract getLowerStringLength(I)I
.end method

.method public abstract getMaxDigitCount()I
.end method

.method public getPrefixAdjustedRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I
    .locals 9

    invoke-interface {p2, p1}, Linet/ipaddr/format/util/AddressSegmentParams;->getLeadingZeros(I)I

    move-result v0

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getRadix()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Linet/ipaddr/format/AddressDivisionBase;->adjustLowerLeadingZeroCount(II)I

    move-result v5

    invoke-virtual {p0, v0, v1}, Linet/ipaddr/format/AddressDivisionBase;->adjustUpperLeadingZeroCount(II)I

    move-result v6

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getWildcards()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    move-result-object v2

    iget-object v3, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->rangeSeparator:Ljava/lang/String;

    iget-object v2, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->singleWildcard:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionBase;->getRangeDigitCount(I)I

    move-result v2

    :goto_0
    if-nez v2, :cond_a

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v7

    if-ne v1, v7, :cond_a

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultRangeSeparatorString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v7, :cond_3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_1
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isUppercase()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, v1, p3}, Linet/ipaddr/format/AddressDivisionBase;->appendUppercase(Ljava/lang/CharSequence;ILjava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return v4

    :cond_3
    if-nez p3, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p1

    add-int/2addr p2, v5

    add-int/2addr p2, v6

    if-lez v7, :cond_4

    shl-int/lit8 p1, v7, 0x1

    add-int/2addr p2, p1

    :cond_4
    return p2

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez v7, :cond_6

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-lez v5, :cond_7

    invoke-static {v5, p3}, Linet/ipaddr/format/AddressDivisionBase;->getLeadingZeros(ILjava/lang/StringBuilder;)V

    :cond_7
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v7, :cond_8

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-lez v6, :cond_9

    invoke-static {v6, p3}, Linet/ipaddr/format/AddressDivisionBase;->getLeadingZeros(ILjava/lang/StringBuilder;)V

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4

    :cond_a
    invoke-virtual {p0, v2}, Linet/ipaddr/format/AddressDivisionBase;->adjustRangeDigits(I)I

    move-result v2

    if-gez v0, :cond_e

    if-nez p3, :cond_e

    invoke-interface {p0, v1}, Linet/ipaddr/format/string/AddressStringDivision;->getMaxDigitCount(I)I

    move-result p1

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz v2, :cond_c

    if-lez p2, :cond_b

    add-int/2addr p1, p2

    :cond_b
    return p1

    :cond_c
    shl-int/lit8 p1, p1, 0x1

    if-lez p2, :cond_d

    shl-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    return p2

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/AddressDivisionBase;->getRangeDigitString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1

    :cond_f
    const/4 v7, 0x1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Linet/ipaddr/format/AddressDivisionBase;->getRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;IIZLjava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public abstract getRangeDigitCount(I)I
.end method

.method public getRangeDigitString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I
    .locals 5

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getRadix()I

    move-result v0

    invoke-interface {p2, p1}, Linet/ipaddr/format/util/AddressSegmentParams;->getLeadingZeros(I)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionBase;->adjustLowerLeadingZeroCount(II)I

    move-result p1

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getWildcards()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    move-result-object v3

    invoke-virtual {p0, v0}, Linet/ipaddr/format/AddressDivisionBase;->getRangeDigitCount(I)I

    move-result v4

    invoke-virtual {p0, v4}, Linet/ipaddr/format/AddressDivisionBase;->adjustRangeDigits(I)I

    move-result v4

    if-nez p3, :cond_0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/AddressDivisionBase;->getLowerStringLength(I)I

    move-result p2

    add-int/2addr p2, p1

    add-int/2addr p2, v2

    return p2

    :cond_0
    if-lez v2, :cond_1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-lez p1, :cond_2

    invoke-static {p1, p3}, Linet/ipaddr/format/AddressDivisionBase;->getLeadingZeros(ILjava/lang/StringBuilder;)V

    :cond_2
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isUppercase()Z

    move-result p1

    invoke-virtual {p0, v0, v4, p1, p3}, Linet/ipaddr/format/AddressDivisionBase;->getLowerString(IIZLjava/lang/StringBuilder;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, v4, :cond_3

    iget-object v0, v3, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->singleWildcard:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public getRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;IIZLjava/lang/StringBuilder;)I
    .locals 9

    .line 1
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getRadix()I

    move-result v5

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getWildcards()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    move-result-object p1

    iget-object v1, p1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->rangeSeparator:Ljava/lang/String;

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isUppercase()Z

    move-result v6

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Linet/ipaddr/format/AddressDivisionBase;->getRangeString(Ljava/lang/String;IILjava/lang/String;IZZLjava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public getRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I
    .locals 13

    .line 2
    move-object v7, p0

    move-object/from16 v6, p3

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isSplitDigits()Z

    move-result v0

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getRadix()I

    move-result v1

    move v2, p1

    move-object v3, p2

    invoke-interface {p2, p1}, Linet/ipaddr/format/util/AddressSegmentParams;->getLeadingZeros(I)I

    move-result v4

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getWildcards()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    move-result-object v5

    iget-object v8, v5, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->rangeSeparator:Ljava/lang/String;

    iget-object v5, v5, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->singleWildcard:Ljava/lang/String;

    const/4 v9, 0x0

    if-nez v5, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionBase;->getRangeDigitCount(I)I

    move-result v5

    :goto_0
    invoke-virtual {p0, v4, v1}, Linet/ipaddr/format/AddressDivisionBase;->adjustLowerLeadingZeroCount(II)I

    move-result v10

    invoke-virtual {p0, v4, v1}, Linet/ipaddr/format/AddressDivisionBase;->adjustUpperLeadingZeroCount(II)I

    move-result v11

    if-nez v5, :cond_9

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v12

    if-ne v1, v12, :cond_9

    if-nez v0, :cond_9

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getWildcardString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultRangeSeparatorString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v10, :cond_2

    if-nez v11, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v9

    :cond_2
    if-nez v6, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    add-int/2addr v2, v10

    add-int/2addr v2, v11

    if-lez v3, :cond_3

    shl-int/lit8 v0, v3, 0x1

    add-int/2addr v2, v0

    :cond_3
    return v2

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v3, :cond_5

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-lez v10, :cond_6

    invoke-static {v10, v6}, Linet/ipaddr/format/AddressDivisionBase;->getLeadingZeros(ILjava/lang/StringBuilder;)V

    :cond_6
    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v3, :cond_7

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-lez v11, :cond_8

    invoke-static {v11, v6}, Linet/ipaddr/format/AddressDivisionBase;->getLeadingZeros(ILjava/lang/StringBuilder;)V

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v9

    :cond_9
    if-nez v0, :cond_d

    if-gez v4, :cond_d

    if-nez v6, :cond_d

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p0, v1}, Linet/ipaddr/format/string/AddressStringDivision;->getMaxDigitCount(I)I

    move-result v1

    if-eqz v5, :cond_b

    if-lez v0, :cond_a

    add-int/2addr v1, v0

    :cond_a
    return v1

    :cond_b
    shl-int/lit8 v1, v1, 0x1

    if-lez v0, :cond_c

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    :cond_c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_d
    invoke-virtual {p0, v5}, Linet/ipaddr/format/AddressDivisionBase;->adjustRangeDigits(I)I

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p3}, Linet/ipaddr/format/AddressDivisionBase;->getSplitRangeDigitString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result v0

    return v0

    :cond_e
    invoke-virtual/range {p0 .. p3}, Linet/ipaddr/format/AddressDivisionBase;->getRangeDigitString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result v0

    return v0

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p3}, Linet/ipaddr/format/AddressDivisionBase;->getSplitRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result v0

    return v0

    :cond_10
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v10

    move v4, v11

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Linet/ipaddr/format/AddressDivisionBase;->getRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;IIZLjava/lang/StringBuilder;)I

    move-result v0

    return v0
.end method

.method public getRangeString(Ljava/lang/String;IILjava/lang/String;IZZLjava/lang/StringBuilder;)I
    .locals 4

    .line 3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez p8, :cond_2

    add-int/2addr p2, p3

    invoke-virtual {p0, p5}, Linet/ipaddr/format/AddressDivisionBase;->getLowerStringLength(I)I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0, p5}, Linet/ipaddr/format/AddressDivisionBase;->getUpperStringLength(I)I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    if-eqz v3, :cond_1

    shl-int/lit8 p2, v0, 0x1

    add-int/2addr p1, p2

    :cond_1
    return p1

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-lez p2, :cond_4

    invoke-static {p2, p8}, Linet/ipaddr/format/AddressDivisionBase;->getLeadingZeros(ILjava/lang/StringBuilder;)V

    :cond_4
    invoke-virtual {p0, p5, p6, p8}, Linet/ipaddr/format/AddressDivisionBase;->getLowerString(IZLjava/lang/StringBuilder;)V

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    invoke-virtual {p8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-lez p3, :cond_6

    invoke-static {p3, p8}, Linet/ipaddr/format/AddressDivisionBase;->getLeadingZeros(ILjava/lang/StringBuilder;)V

    :cond_6
    if-eqz p7, :cond_7

    invoke-virtual {p0, p5, p6, p8}, Linet/ipaddr/format/AddressDivisionBase;->getUpperStringMasked(IZLjava/lang/StringBuilder;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p5, p6, p8}, Linet/ipaddr/format/AddressDivisionBase;->getUpperString(IZLjava/lang/StringBuilder;)V

    :goto_1
    return v1
.end method

.method public abstract getSplitLowerString(IIZCZLjava/lang/String;Ljava/lang/StringBuilder;)V
.end method

.method public getSplitRangeDigitString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getRadix()I

    move-result v1

    move/from16 v0, p1

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Linet/ipaddr/format/util/AddressSegmentParams;->getLeadingZeros(I)I

    move-result v0

    invoke-virtual {v8, v0, v1}, Linet/ipaddr/format/AddressDivisionBase;->adjustLowerLeadingZeroCount(II)I

    move-result v10

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v11

    if-nez v9, :cond_1

    invoke-virtual {v8, v1}, Linet/ipaddr/format/AddressDivisionBase;->getLowerStringLength(I)I

    move-result v0

    add-int/2addr v0, v10

    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_0
    return v1

    :cond_1
    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getWildcards()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    move-result-object v12

    invoke-virtual {v8, v1}, Linet/ipaddr/format/AddressDivisionBase;->getRangeDigitCount(I)I

    move-result v0

    invoke-virtual {v8, v0}, Linet/ipaddr/format/AddressDivisionBase;->adjustRangeDigits(I)I

    move-result v13

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSplitDigitSeparator()Ljava/lang/Character;

    move-result-object v0

    const/4 v14, 0x0

    if-nez v0, :cond_2

    move v15, v14

    goto :goto_0

    :cond_2
    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSplitDigitSeparator()Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    move v15, v0

    :goto_0
    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isReverseSplitDigits()Z

    move-result v5

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isUppercase()Z

    move-result v3

    if-eqz v5, :cond_3

    iget-object v0, v12, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->singleWildcard:Ljava/lang/String;

    invoke-static {v13, v15, v0, v11, v9}, Linet/ipaddr/format/AddressDivisionBase;->getSplitChar(ICLjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move v2, v13

    move v4, v15

    move-object v6, v11

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Linet/ipaddr/format/AddressDivisionBase;->getSplitLowerString(IIZCZLjava/lang/String;Ljava/lang/StringBuilder;)V

    if-lez v10, :cond_5

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v10, v15, v11, v9}, Linet/ipaddr/format/AddressDivisionBase;->getSplitLeadingZeros(ICLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_4

    invoke-static {v10, v15, v11, v9}, Linet/ipaddr/format/AddressDivisionBase;->getSplitLeadingZeros(ICLjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    move-object/from16 v0, p0

    move v2, v13

    move v4, v15

    move-object v6, v11

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Linet/ipaddr/format/AddressDivisionBase;->getSplitLowerString(IIZCZLjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v12, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->singleWildcard:Ljava/lang/String;

    invoke-static {v13, v15, v0, v11, v9}, Linet/ipaddr/format/AddressDivisionBase;->getSplitChar(ICLjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_5
    :goto_1
    return v14
.end method

.method public getSplitRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I
    .locals 16

    .line 1
    move-object/from16 v9, p3

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getRadix()I

    move-result v4

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Linet/ipaddr/format/util/AddressSegmentParams;->getLeadingZeros(I)I

    move-result v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v0, v4}, Linet/ipaddr/format/AddressDivisionBase;->adjustUpperLeadingZeroCount(II)I

    move-result v12

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getWildcards()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isUppercase()Z

    move-result v5

    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSplitDigitSeparator()Ljava/lang/Character;

    move-result-object v2

    const/4 v13, 0x0

    if-nez v2, :cond_0

    move v14, v13

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSplitDigitSeparator()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    move v14, v2

    :goto_0
    invoke-interface/range {p2 .. p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isReverseSplitDigits()Z

    move-result v7

    iget-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->rangeSeparator:Ljava/lang/String;

    if-nez v9, :cond_1

    iget-object v2, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->wildcard:Ljava/lang/String;

    move-object/from16 v0, p0

    move v3, v12

    move v6, v14

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Linet/ipaddr/format/AddressDivisionBase;->getSplitRangeStringLength(Ljava/lang/String;Ljava/lang/String;IIZCZLjava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    if-eqz v12, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v13

    :goto_1
    if-eqz v2, :cond_3

    if-nez v7, :cond_3

    invoke-static {v12, v14, v10, v9}, Linet/ipaddr/format/AddressDivisionBase;->getSplitLeadingZeros(ICLjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v15, v13

    goto :goto_2

    :cond_3
    move v15, v2

    :goto_2
    iget-object v2, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->wildcard:Ljava/lang/String;

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move v5, v14

    move v6, v7

    move-object v7, v10

    move-object/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Linet/ipaddr/format/AddressDivisionBase;->getSplitRangeString(Ljava/lang/String;Ljava/lang/String;IZCZLjava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz v15, :cond_4

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v12, v14, v10, v9}, Linet/ipaddr/format/AddressDivisionBase;->getSplitLeadingZeros(ICLjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_4
    return v13
.end method

.method public abstract getSplitRangeString(Ljava/lang/String;Ljava/lang/String;IZCZLjava/lang/String;Ljava/lang/StringBuilder;)V
.end method

.method public abstract getSplitRangeStringLength(Ljava/lang/String;Ljava/lang/String;IIZCZLjava/lang/String;)I
.end method

.method public getStandardString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I
    .locals 11

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isSplitDigits()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getRadix()I

    move-result v3

    invoke-interface {p2, p1}, Linet/ipaddr/format/util/AddressSegmentParams;->getLeadingZeros(I)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Linet/ipaddr/format/AddressDivisionBase;->adjustLowerLeadingZeroCount(II)I

    move-result p1

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_3

    if-eqz p1, :cond_1

    if-gez p1, :cond_0

    invoke-interface {p0, v3}, Linet/ipaddr/format/string/AddressStringDivision;->getMaxDigitCount(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Linet/ipaddr/format/AddressDivisionBase;->getLowerStringLength(I)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Linet/ipaddr/format/AddressDivisionBase;->getLowerStringLength(I)I

    move-result p1

    :goto_0
    shl-int/lit8 p2, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    if-lez v2, :cond_2

    mul-int/2addr p1, v2

    add-int/2addr p2, p1

    :cond_2
    return p2

    :cond_3
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSplitDigitSeparator()Ljava/lang/Character;

    move-result-object v2

    if-nez v2, :cond_4

    move v10, v1

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSplitDigitSeparator()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    move v10, v2

    :goto_1
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isReverseSplitDigits()Z

    move-result v7

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isUppercase()Z

    move-result v5

    if-eqz v7, :cond_5

    const/4 v4, 0x0

    move-object v2, p0

    move v6, v10

    move-object v8, v0

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Linet/ipaddr/format/AddressDivisionBase;->getSplitLowerString(IIZCZLjava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz p1, :cond_7

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, v10, v0, p3}, Linet/ipaddr/format/AddressDivisionBase;->getSplitLeadingZeros(ICLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {p1, v10, v0, p3}, Linet/ipaddr/format/AddressDivisionBase;->getSplitLeadingZeros(ICLjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v4, 0x0

    move-object v2, p0

    move v6, v10

    move-object v8, v0

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Linet/ipaddr/format/AddressDivisionBase;->getSplitLowerString(IIZCZLjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_7
    :goto_2
    return v1

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/AddressDivisionBase;->getLowerStandardString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1

    :cond_9
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getWildcards()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->wildcard:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultSegmentWildcardString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->setDefaultAsFullRangeWildcardString()V

    :cond_a
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->isSplitDigits()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getRadix()I

    move-result p1

    if-nez p3, :cond_b

    invoke-interface {p0, p1}, Linet/ipaddr/format/string/AddressStringDivision;->getMaxDigitCount(I)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_b
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSplitDigitSeparator()Ljava/lang/Character;

    move-result-object v2

    if-nez v2, :cond_c

    move p2, v1

    goto :goto_3

    :cond_c
    invoke-interface {p2}, Linet/ipaddr/format/util/AddressSegmentParams;->getSplitDigitSeparator()Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    :goto_3
    invoke-interface {p0, p1}, Linet/ipaddr/format/string/AddressStringDivision;->getMaxDigitCount(I)I

    move-result p1

    const-string v2, ""

    invoke-static {p1, p2, v0, v2, p3}, Linet/ipaddr/format/AddressDivisionBase;->getSplitChar(ICLjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v1

    :cond_d
    invoke-static {v0, p3}, Linet/ipaddr/format/AddressDivisionBase;->getFullRangeString(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1

    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/AddressDivisionBase;->getRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultLowerString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultSegmentWildcardString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultRangeString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    :cond_3
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getUpperBytes()[B
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->upperBytes:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/AddressDivisionBase;->getBytesImpl(Z)[B

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->upperBytes:[B

    :cond_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getUpperBytes([B)[B
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionBase;->getUpperBytes([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getUpperBytes([BI)[B
    .locals 1

    .line 3
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/AddressDivisionBase;->getBytes([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->upperBytes:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/AddressDivisionBase;->getBytesImpl(Z)[B

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->upperBytes:[B

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/format/AddressDivisionBase;->getBytes([BI[B)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract getUpperString(IZLjava/lang/StringBuilder;)V
.end method

.method public abstract getUpperStringLength(I)I
.end method

.method public abstract getUpperStringMasked(IZLjava/lang/StringBuilder;)V
.end method

.method public getWildcardString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Linet/ipaddr/format/AddressDivisionBase;->hashCode:I

    if-nez v0, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    const/16 v7, 0x40

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v2, v3, v4, v5, v6}, Linet/ipaddr/format/AddressDivisionBase;->adjustHashCode(IJJ)I

    move-result v2

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Linet/ipaddr/format/AddressDivisionBase;->hashCode:I

    move v0, v2

    :cond_1
    return v0
.end method

.method public isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z
    .locals 2

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setDefaultAsFullRangeWildcardString()V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultSegmentWildcardString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    invoke-direct {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    new-instance v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    sget-object v2, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    invoke-direct {v0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Linet/ipaddr/format/AddressDivisionBase;->HEX_PARAMS:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_0

    :cond_1
    sget-object v0, Linet/ipaddr/format/AddressDivisionBase;->DECIMAL_PARAMS:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_0

    :cond_2
    sget-object v0, Linet/ipaddr/format/AddressDivisionBase;->OCTAL_PARAMS:Linet/ipaddr/IPAddressSection$IPStringOptions;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0}, Linet/ipaddr/format/AddressDivisionBase;->toParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendSingleDivision(Linet/ipaddr/format/string/AddressStringDivision;Ljava/lang/StringBuilder;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
