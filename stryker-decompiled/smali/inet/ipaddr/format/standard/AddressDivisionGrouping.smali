.class public Linet/ipaddr/format/standard/AddressDivisionGrouping;
.super Linet/ipaddr/format/AddressDivisionGroupingBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;,
        Linet/ipaddr/format/standard/AddressDivisionGrouping$PrefixedGroupingCreator;,
        Linet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;,
        Linet/ipaddr/format/standard/AddressDivisionGrouping$SegPrefFunction;,
        Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;,
        Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;,
        Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionLengthProvider;,
        Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# direct methods
.method public constructor <init>([Linet/ipaddr/format/standard/AddressDivision;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;-><init>([Linet/ipaddr/format/AddressDivisionBase;)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/format/standard/AddressDivision;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase;-><init>([Linet/ipaddr/format/AddressDivisionBase;Z)V

    return-void
.end method

.method public static add(Linet/ipaddr/AddressSection;JJLinet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;JJ",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    invoke-virtual {p5, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v0

    const-wide/16 v2, 0x0

    add-long v4, p1, p3

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v6

    invoke-virtual {p5}, Linet/ipaddr/format/standard/AddressCreator;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v7

    move-object v1, v0

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createSegments([Linet/ipaddr/AddressSegment;JJILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;

    invoke-static {v0, p5, p6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static add(Linet/ipaddr/AddressSection;Ljava/math/BigInteger;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;",
            "Ljava/math/BigInteger;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, v0, p3, p1}, Linet/ipaddr/format/standard/AddressCreator;->createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static append(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;)Linet/ipaddr/AddressSection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;TR;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p2, v2}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v4, v1, v3, v4}, Linet/ipaddr/AddressSegmentSeries;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v4, p0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    invoke-static {v3, v1, v2, p0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v4, v0, v3, v1}, Linet/ipaddr/AddressSegmentSeries;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    :goto_0
    invoke-virtual {p2, v3}, Linet/ipaddr/format/standard/AddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static cacheBits(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static checkOverflow(JJJJLjava/util/function/LongSupplier;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    neg-long p4, p0

    cmp-long p2, p2, p4

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Linet/ipaddr/AddressValueException;

    invoke-direct {p2, p0, p1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2

    :cond_1
    const-wide/16 p2, 0x1

    cmp-long v0, p6, p2

    if-lez v0, :cond_2

    sub-long/2addr p6, p2

    sub-long/2addr p0, p6

    :cond_2
    invoke-interface {p8}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide p2

    sub-long/2addr p2, p4

    cmp-long p2, p0, p2

    if-gtz p2, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance p2, Linet/ipaddr/AddressValueException;

    invoke-direct {p2, p0, p1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2
.end method

.method public static checkOverflow(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/util/function/Supplier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/util/function/Supplier<",
            "Ljava/math/BigInteger;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    invoke-virtual {p2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Linet/ipaddr/AddressValueException;

    invoke-direct {p2, p0, p1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p5, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    :cond_3
    invoke-interface {p6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/math/BigInteger;

    invoke-virtual {p3, p4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gtz p2, :cond_4

    :goto_1
    return-void

    :cond_4
    new-instance p2, Linet/ipaddr/AddressValueException;

    invoke-direct {p2, p0, p1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2
.end method

.method public static createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/Address;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">([TS;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "TT;**TS;>;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Linet/ipaddr/format/standard/AddressCreator;->createAddressInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/Address;

    move-result-object p0

    return-object p0
.end method

.method public static createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">([TS;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Linet/ipaddr/format/standard/AddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static createSectionInternal(Linet/ipaddr/format/standard/AddressCreator;[Linet/ipaddr/AddressSegment;IZ)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;[TS;IZ)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/standard/AddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;IZ)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static createSegments([Linet/ipaddr/AddressSegment;JJILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">([TS;JJI",
            "Linet/ipaddr/AddressNetwork<",
            "TS;>;",
            "Ljava/lang/Integer;",
            ")[TS;"
        }
    .end annotation

    .line 1
    invoke-virtual {p6}, Linet/ipaddr/AddressNetwork;->getAddressCreator()Linet/ipaddr/format/standard/AddressCreator;

    move-result-object v0

    const/4 v1, -0x1

    shl-int/2addr v1, p5

    not-int v1, v1

    array-length v2, p0

    const/16 v3, 0x40

    div-int/2addr v3, p5

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    :goto_0
    invoke-static {p5, p7, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    long-to-int v6, p3

    and-int/2addr v6, v1

    invoke-interface {v0, v6, v5}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v5

    invoke-interface {v5}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v6

    invoke-static {p6, v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isCompatibleNetworks(Linet/ipaddr/AddressNetwork;Linet/ipaddr/AddressNetwork;)Z

    move-result v6

    if-eqz v6, :cond_2

    aput-object v5, p0, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v4, v2, :cond_1

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    move-wide p3, p1

    move v2, v3

    goto :goto_0

    :cond_1
    ushr-long/2addr p3, p5

    goto :goto_0

    :cond_2
    new-instance p0, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {p0, v5}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;)V

    throw p0
.end method

.method public static createSegments([Linet/ipaddr/AddressSegment;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">([TS;",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "II",
            "Linet/ipaddr/AddressNetwork<",
            "TS;>;",
            "Ljava/lang/Integer;",
            ")[TS;"
        }
    .end annotation

    .line 2
    invoke-virtual {p5}, Linet/ipaddr/AddressNetwork;->getAddressCreator()Linet/ipaddr/format/standard/AddressCreator;

    move-result-object p3

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-static {p4, p6, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p5}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object p2

    invoke-static {p5, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isCompatibleNetworks(Linet/ipaddr/AddressNetwork;Linet/ipaddr/AddressNetwork;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0, v2, v0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {p0, p1}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;)V

    throw p0

    :cond_1
    if-nez p1, :cond_3

    invoke-interface {p2, v2}, Linet/ipaddr/Address$SegmentValueProvider;->getValue(I)I

    move-result v4

    :cond_2
    move v5, v1

    goto :goto_1

    :cond_3
    invoke-interface {p1, v2}, Linet/ipaddr/Address$SegmentValueProvider;->getValue(I)I

    move-result v4

    if-eqz p2, :cond_2

    invoke-interface {p2, v2}, Linet/ipaddr/Address$SegmentValueProvider;->getValue(I)I

    move-result v5

    :goto_1
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p3, v4, v5, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-interface {p3, v4, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v4

    invoke-static {p5, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isCompatibleNetworks(Linet/ipaddr/AddressNetwork;Linet/ipaddr/AddressNetwork;)Z

    move-result v4

    if-eqz v4, :cond_5

    aput-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {p0, v3}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;)V

    throw p0

    :cond_6
    :goto_3
    return-object p0
.end method

.method public static createSingle(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/AddressSegment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;",
            "Ljava/util/function/IntFunction<",
            "TS;>;)[TS;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result p0

    invoke-interface {p1, p0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/AddressSegment;

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static synthetic d(ZIIILinet/ipaddr/AddressSection;I)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->lambda$longPrefixCount$0(ZIIILinet/ipaddr/AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Linet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->lambda$createNewDivisions$2(Linet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Linet/ipaddr/AddressSection;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->lambda$longCount$1(Linet/ipaddr/AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static fastIncrement(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;J",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_3

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_1

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/AddressSection;

    return-object v0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->incrementRange(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_3

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_3

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {v0 .. v12}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->increment(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;JJJLjava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_3

    invoke-interface/range {p4 .. p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/AddressSection;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    move-object v0, v1

    move-wide v1, v2

    move-wide v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->add(Linet/ipaddr/AddressSection;JJLinet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getHostSegmentIndex(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getHostSegmentIndex(III)I

    move-result p0

    return p0
.end method

.method public static getLongCount(Ljava/util/function/IntUnaryOperator;I)J
    .locals 5

    if-nez p1, :cond_0

    const-wide/16 p0, 0x1

    return-wide p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static getNetworkPrefixLength(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getNetworkPrefixLength(III)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getNetworkSegmentIndex(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getNetworkSegmentIndex(III)I

    move-result p0

    return p0
.end method

.method public static getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getSection(IILinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;)Linet/ipaddr/AddressSection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(IITR;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;)TR;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-interface {p2}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p2

    :cond_0
    sub-int v0, p1, p0

    if-ltz v0, :cond_1

    invoke-virtual {p3, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, p0, p1, v0, v1}, Linet/ipaddr/AddressSegmentSeries;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    invoke-virtual {p3, v0}, Linet/ipaddr/format/standard/AddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static getSegmentPrefixLength(II)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getDivisionPrefixLength(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleLowestOrHighestSection(Linet/ipaddr/AddressSegmentSeries;)Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSegmentSeries;",
            ">(TR;)TR;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static increment(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;JJJLjava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;J",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;JJJ",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-wide/from16 v1, p6

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p12

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->add(Linet/ipaddr/AddressSection;JJLinet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    invoke-interface/range {p10 .. p10}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/AddressSection;

    move-wide/from16 v1, p6

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p12

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->add(Linet/ipaddr/AddressSection;JJLinet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0

    :cond_1
    cmp-long v0, p4, p1

    const-wide/16 v1, 0x1

    if-lez v0, :cond_3

    add-long v0, p1, v1

    cmp-long v0, p4, v0

    if-nez v0, :cond_2

    invoke-interface/range {p11 .. p11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/AddressSection;

    return-object v0

    :cond_2
    move-object/from16 p4, p0

    move-wide/from16 p5, p1

    move-object/from16 p7, p3

    move-object/from16 p8, p10

    move-object/from16 p9, p12

    invoke-static/range {p4 .. p9}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->incrementRange(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0

    :cond_3
    const-wide v3, 0x7fffffffffffffffL

    sub-long v3, v3, p8

    cmp-long v0, p1, v3

    if-gtz v0, :cond_4

    invoke-interface/range {p11 .. p11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Linet/ipaddr/AddressSection;

    sub-long v0, p4, v1

    sub-long v8, p1, v0

    move-wide/from16 v6, p8

    move-object v10, p3

    move-object/from16 v11, p12

    invoke-static/range {v5 .. v11}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->add(Linet/ipaddr/AddressSection;JJLinet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-interface/range {p11 .. p11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/AddressSection;

    sub-long v1, p4, v1

    sub-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    move-object v2, p3

    move-object/from16 v3, p12

    invoke-static {v0, v1, p3, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->add(Linet/ipaddr/AddressSection;Ljava/math/BigInteger;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public static increment(Linet/ipaddr/AddressSection;JLjava/math/BigInteger;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;J",
            "Ljava/math/BigInteger;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p3, p4, p7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->add(Linet/ipaddr/AddressSection;Ljava/math/BigInteger;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/AddressSection;

    invoke-static {p0, p3, p4, p7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->add(Linet/ipaddr/AddressSection;Ljava/math/BigInteger;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_3

    invoke-interface {p6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/AddressSection;

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1, p4, p7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->add(Linet/ipaddr/AddressSection;Ljava/math/BigInteger;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0

    :cond_3
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->incrementRange(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static incrementRange(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;J",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/AddressSection;

    return-object p0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result p4

    invoke-virtual {p3, p4}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v2

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-ltz p4, :cond_2

    invoke-interface {p0, p4}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/AddressSegment;->getValueCount()I

    move-result v4

    int-to-long v4, v4

    div-long v6, p1, v4

    rem-long/2addr p1, v4

    long-to-int p1, p1

    invoke-interface {v3}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p2

    add-int/2addr p2, p1

    invoke-interface {p3, p2}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p1

    aput-object p1, v2, p4

    cmp-long p1, v6, v0

    add-int/lit8 p4, p4, -0x1

    if-nez p1, :cond_1

    :goto_1
    if-ltz p4, :cond_2

    invoke-interface {p0, p4}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p1

    invoke-interface {p3, p1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p1

    aput-object p1, v2, p4

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_1
    move-wide p1, v6

    goto :goto_0

    :cond_2
    invoke-static {v2, p3, p5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static isCompatibleNetworks(Linet/ipaddr/AddressNetwork;Linet/ipaddr/AddressNetwork;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/AddressNetwork<",
            "*>;",
            "Linet/ipaddr/AddressNetwork<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p0

    invoke-virtual {p1}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/Address;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(ZTT;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "TT;**TS;>;",
            "Ljava/util/Iterator<",
            "[TS;>;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    new-instance p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$5;

    invoke-direct {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$5;-><init>(Linet/ipaddr/Address;)V

    return-object p0

    :cond_0
    new-instance p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;

    invoke-direct {p0, p3, p2, p4}, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;-><init>(Ljava/util/Iterator;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public static iterator(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(ZTR;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;",
            "Ljava/util/Iterator<",
            "[TS;>;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 2
    if-eqz p0, :cond_0

    new-instance p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$1;

    invoke-direct {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$1;-><init>(Linet/ipaddr/AddressSection;)V

    return-object p0

    :cond_0
    new-instance p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$2;

    invoke-direct {p0, p3, p2, p4}, Linet/ipaddr/format/standard/AddressDivisionGrouping$2;-><init>(Ljava/util/Iterator;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)V

    return-object p0
.end method

.method private static synthetic lambda$createNewDivisions$2(Linet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    invoke-interface/range {p0 .. p6}, Linet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;->createDivision(JJII)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$longCount$1(Linet/ipaddr/AddressSection;I)I
    .locals 0

    invoke-interface {p0, p1}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p0

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getValueCount()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$longPrefixCount$0(ZIIILinet/ipaddr/AddressSection;I)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p5, p1, :cond_0

    invoke-static {p2, p3, p5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p4, p5}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivision;->getPrefixValueCount(Linet/ipaddr/AddressSegment;I)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p4, p5}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p0

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getValueCount()I

    move-result p0

    return p0
.end method

.method public static longCount(Linet/ipaddr/AddressSection;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    invoke-static {p0, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static longCount(Linet/ipaddr/AddressSection;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;I)J"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/format/standard/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Linet/ipaddr/format/standard/b;-><init>(ILjava/io/Serializable;)V

    invoke-static {v0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getLongCount(Ljava/util/function/IntUnaryOperator;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static longPrefixCount(Linet/ipaddr/AddressSection;I)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;I)J"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v3

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v0

    invoke-static {p1, v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result v6

    invoke-static {p1, v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getHostSegmentIndex(III)I

    move-result v0

    const/4 v7, 0x1

    if-ne v6, v0, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    new-instance v8, Linet/ipaddr/format/standard/a;

    move-object v0, v8

    move v2, v6

    move v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/standard/a;-><init>(ZIIILinet/ipaddr/AddressSection;)V

    add-int/2addr v6, v7

    invoke-static {v8, v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getLongCount(Ljava/util/function/IntUnaryOperator;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static normalizePrefixBoundary(I[Linet/ipaddr/IPAddressSegment;IILjava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(I[TS;II",
            "Ljava/util/function/Function<",
            "TS;TS;>;)V"
        }
    .end annotation

    invoke-static {p0, p3, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result p0

    if-ltz p0, :cond_0

    aget-object p2, p1, p0

    invoke-virtual {p2}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/IPAddressSegment;

    aput-object p2, p1, p0

    :cond_0
    return-void
.end method

.method public static prefixEquals(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;I)Z
    .locals 6

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v1

    add-int v2, v1, p2

    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v3

    if-le v2, v3, :cond_4

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v3

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v4

    invoke-static {v2, v3, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result v2

    if-ltz v2, :cond_3

    add-int v3, v2, p2

    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    return v0

    :cond_2
    invoke-interface {p0, v2}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v4

    invoke-interface {p1, v3}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v3

    invoke-interface {v4}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v3, v1}, Linet/ipaddr/AddressSegment;->prefixEquals(Linet/ipaddr/AddressSegment;I)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    move v1, v2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    invoke-interface {p0, v1}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v2

    add-int v3, v1, p2

    invoke-interface {p1, v3}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v3

    invoke-interface {v2, v3}, Linet/ipaddr/AddressSegment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static removePrefix(Linet/ipaddr/AddressSection;[Linet/ipaddr/AddressSegment;ILinet/ipaddr/format/standard/AddressDivisionGrouping$SegPrefFunction;)[Linet/ipaddr/AddressSegment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;[TS;I",
            "Linet/ipaddr/format/standard/AddressDivisionGrouping$SegPrefFunction<",
            "TS;>;)[TS;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, [Linet/ipaddr/AddressSegment;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/AddressSegment;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2, v1, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v1

    aget-object v2, p1, v0

    const/4 v3, 0x0

    invoke-interface {p3, v2, v1, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping$SegPrefFunction;->apply(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/AddressSegment;

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static replace(Linet/ipaddr/AddressSection;IILinet/ipaddr/AddressSection;IILinet/ipaddr/format/standard/AddressCreator;ZZ)Linet/ipaddr/AddressSection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;IITR;II",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;ZZ)TR;"
        }
    .end annotation

    sub-int v0, p5, p4

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v1

    add-int v2, v1, v0

    sub-int v3, p2, p1

    sub-int/2addr v2, v3

    invoke-virtual {p6, v2}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v4, p1, v3, v4}, Linet/ipaddr/AddressSegmentSeries;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    if-ge p1, v2, :cond_5

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p7, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v5

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v6

    invoke-static {p7, v5, v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getHostSegmentIndex(III)I

    move-result p7

    if-ge p7, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v5

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v6

    invoke-static {p7, v5, v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result p7

    if-ge p7, p1, :cond_2

    :goto_0
    if-nez p8, :cond_1

    if-lez p1, :cond_2

    :cond_1
    invoke-static {v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p6, v4, p0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    invoke-static {v3, p1, v2, p0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {p6, v3}, Linet/ipaddr/format/standard/AddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p3, p4, p5, v3, p1}, Linet/ipaddr/AddressSegmentSeries;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    add-int/2addr p1, v0

    if-ge p1, v2, :cond_5

    invoke-interface {p3}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p0}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object p4

    invoke-virtual {p4}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p4

    invoke-virtual {p4}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-interface {p3}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result p7

    invoke-interface {p3}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result p3

    invoke-static {p4, p7, p3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result p3

    if-ge p3, p5, :cond_4

    if-nez p8, :cond_3

    if-lez v0, :cond_4

    :cond_3
    invoke-static {v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p6, v4, p0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p0

    invoke-static {v3, p1, v2, p0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-interface {p0, p2, v1, v3, p1}, Linet/ipaddr/AddressSegmentSeries;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    :cond_5
    :goto_1
    invoke-virtual {p6, v3}, Linet/ipaddr/format/standard/AddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static reverseBits(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(ZTR;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;",
            "Ljava/util/function/IntFunction<",
            "TS;>;Z)TR;"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    if-eqz p4, :cond_1

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    invoke-virtual {p2, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    move v2, p0

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-interface {p3, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/AddressSegment;

    aput-object v3, v1, v2

    if-eqz p4, :cond_2

    invoke-interface {p1, v2}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v4

    invoke-interface {v3, v4}, Linet/ipaddr/AddressSegment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move p4, p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {p2, v1}, Linet/ipaddr/format/standard/AddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p1, p2, p3, p4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->reverseSegments(Linet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static reverseBytes(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(ZTR;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;",
            "Ljava/util/function/IntFunction<",
            "TS;>;Z)TR;"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    if-eqz p4, :cond_1

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    invoke-virtual {p2, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    move v2, p0

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-interface {p3, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/AddressSegment;

    aput-object v3, v1, v2

    if-eqz p4, :cond_2

    invoke-interface {p1, v2}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v4

    invoke-interface {v3, v4}, Linet/ipaddr/AddressSegment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move p4, p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {p2, v1}, Linet/ipaddr/format/standard/AddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p1, p2, p3, p4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->reverseSegments(Linet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static reverseSegments(Linet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/AddressSection;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TR;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "*TR;*TS;>;",
            "Ljava/util/function/IntFunction<",
            "TS;>;Z)TR;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    invoke-virtual {p1, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    ushr-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v3

    :goto_1
    add-int/lit8 v5, v0, -0x1

    move v6, v4

    :goto_2
    if-ge v6, v2, :cond_4

    invoke-interface {p2, v6}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linet/ipaddr/AddressSegment;

    aput-object v7, v1, v5

    invoke-interface {p2, v5}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linet/ipaddr/AddressSegment;

    aput-object v7, v1, v6

    if-eqz p3, :cond_3

    invoke-interface {p0, v6}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v8

    invoke-interface {v7, v8}, Linet/ipaddr/AddressSegment;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, v1, v5

    invoke-interface {p0, v5}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v8

    invoke-interface {v7, v8}, Linet/ipaddr/AddressSegment;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    move p3, v4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_4
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    invoke-interface {p2, v6}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/AddressSegment;

    aput-object p2, v1, v6

    if-eqz p3, :cond_5

    invoke-interface {p0, v6}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v0

    invoke-interface {p2, v0}, Linet/ipaddr/AddressSegment;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    return-object p0

    :cond_6
    :goto_3
    invoke-virtual {p1, v1}, Linet/ipaddr/format/standard/AddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">(I",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;",
            "Ljava/util/function/Supplier<",
            "[TS;>;",
            "Ljava/util/function/IntFunction<",
            "Ljava/util/Iterator<",
            "TS;>;>;",
            "Ljava/util/function/Predicate<",
            "[TS;>;)",
            "Ljava/util/Iterator<",
            "[TS;>;"
        }
    .end annotation

    .line 1
    add-int/lit8 v5, p0, -0x1

    const/4 v7, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p0

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">(I",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;",
            "Ljava/util/function/Supplier<",
            "[TS;>;",
            "Ljava/util/function/IntFunction<",
            "Ljava/util/Iterator<",
            "TS;>;>;",
            "Ljava/util/function/Predicate<",
            "[TS;>;II",
            "Ljava/util/function/IntFunction<",
            "Ljava/util/Iterator<",
            "TS;>;>;)",
            "Ljava/util/Iterator<",
            "[TS;>;"
        }
    .end annotation

    .line 2
    if-eqz p2, :cond_0

    new-instance p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$3;

    invoke-direct {p0, p2, p4}, Linet/ipaddr/format/standard/AddressDivisionGrouping$3;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Predicate;)V

    return-object p0

    :cond_0
    new-instance p2, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;

    move-object v0, p2

    move v1, p0

    move-object v2, p1

    move v3, p5

    move-object v4, p7

    move-object v5, p4

    move v6, p6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;-><init>(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;ILjava/util/function/IntFunction;Ljava/util/function/Predicate;ILjava/util/function/IntFunction;)V

    return-object p2
.end method

.method public static setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">(",
            "Linet/ipaddr/AddressNetwork<",
            "*>;I[TS;II",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;",
            "Ljava/util/function/BiFunction<",
            "TS;",
            "Ljava/lang/Integer;",
            "TS;>;)[TS;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p4, p3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result p4

    :goto_0
    array-length v1, p2

    if-ge p4, v1, :cond_2

    invoke-static {p3, p1, p4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    aget-object v2, p2, p4

    invoke-interface {p6, v2, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/AddressSegment;

    aput-object v1, p2, p4

    if-eqz p0, :cond_1

    add-int/lit8 p4, p4, 0x1

    array-length v1, p2

    if-ge p4, v1, :cond_1

    invoke-static {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v1

    array-length v2, p2

    invoke-static {p2, p4, v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public static split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Linet/ipaddr/AddressSegmentSeries;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink<",
            "TI;*>;",
            "Ljava/util/function/Function<",
            "[TS;TI;>;",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;[TS;II",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p5, :cond_1

    aget-object v3, p3, v1

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p5

    invoke-interface {v3}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result v4

    sub-int v5, v4, p5

    ushr-int/2addr v5, v2

    add-int/2addr v5, p5

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    invoke-static {v3, p6, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, p5, v5, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p5

    add-int/2addr v5, v2

    invoke-interface {p2, v5, v4, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v3

    move v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    move-object v3, p5

    move v4, v0

    :goto_1
    if-ne v1, p4, :cond_2

    if-nez v4, :cond_2

    aget-object p4, p3, v1

    invoke-interface {p4}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v5

    invoke-static {v5, p6, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {p4}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v6

    invoke-interface {p4}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result p4

    ushr-int v7, v6, v5

    ushr-int v8, p4, v5

    if-eq v7, v8, :cond_2

    sub-int/2addr v8, v7

    ushr-int/lit8 p5, v8, 0x1

    add-int/2addr v7, p5

    add-int/lit8 p5, v7, 0x1

    shl-int v3, v7, v5

    const/4 v4, -0x1

    shl-int/2addr v4, v5

    not-int v4, v4

    or-int/2addr v3, v4

    shl-int/2addr p5, v5

    invoke-interface {p2, v6, v3, p6}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v3

    invoke-interface {p2, p5, p4, p6}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p4

    move-object p5, v3

    move-object v3, p4

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    array-length p4, p3

    invoke-interface {p2, p4}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object p6

    invoke-interface {p2, p4}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object p2

    invoke-static {p3, v0, p6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, 0x1

    aput-object p5, p6, v1

    aput-object v3, p2, v1

    sub-int/2addr p4, v0

    invoke-static {p3, v0, p6, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3, v0, p2, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, p6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linet/ipaddr/AddressSegmentSeries;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/AddressSegmentSeries;

    invoke-interface {p0, p3, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->setSplitValues(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return v2
.end method

.method public static toNormalizedStringRange(Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;Linet/ipaddr/format/string/AddressStringDivisionSeries;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linet/ipaddr/format/string/AddressStringDivisionSeries;",
            "E::",
            "Linet/ipaddr/format/string/AddressStringDivisionSeries;",
            ">(",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams<",
            "TT;>;TT;TT;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, p2, p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getWildcards()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    move-result-object v1

    iget-object v1, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->rangeSeparator:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v3, p1, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v3, p1, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-static {v2, v3}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->checkLengths(ILjava/lang/StringBuilder;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSegments([Linet/ipaddr/AddressSegment;[BIIIILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">([TS;[BIIII",
            "Linet/ipaddr/AddressNetwork<",
            "TS;>;",
            "Ljava/lang/Integer;",
            ")[TS;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    if-ltz v3, :cond_f

    array-length v5, v1

    if-gt v3, v5, :cond_f

    if-ltz v2, :cond_e

    if-gt v2, v3, :cond_e

    invoke-virtual/range {p6 .. p6}, Linet/ipaddr/AddressNetwork;->getAddressCreator()Linet/ipaddr/format/standard/AddressCreator;

    move-result-object v5

    array-length v6, v0

    mul-int v7, v6, p4

    add-int v8, v7, v2

    sub-int/2addr v8, v3

    const/4 v9, 0x0

    if-gez v8, :cond_5

    sub-int/2addr v3, v7

    add-int/lit8 v8, v3, -0x1

    aget-byte v10, v1, v8

    if-eqz v10, :cond_2

    aget-byte v11, v1, v3

    ushr-int/lit8 v11, v11, 0x7

    if-eqz v11, :cond_1

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/AddressValueException;

    int-to-long v1, v10

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw v0

    :cond_1
    new-instance v0, Linet/ipaddr/AddressValueException;

    int-to-long v1, v10

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw v0

    :cond_2
    :goto_0
    if-ge v2, v8, :cond_4

    add-int/lit8 v8, v8, -0x1

    aget-byte v11, v1, v8

    if-ne v11, v10, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Linet/ipaddr/AddressValueException;

    int-to-long v1, v10

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw v0

    :cond_4
    move v2, v3

    move v8, v9

    :cond_5
    invoke-virtual/range {p6 .. p6}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v3

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v10, v7, :cond_d

    move/from16 v12, p5

    move-object/from16 v13, p7

    invoke-static {v12, v13, v11}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v3, :cond_7

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_7

    invoke-static {v9}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v9, v1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v1

    invoke-interface {v1}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v2

    invoke-static {v4, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isCompatibleNetworks(Linet/ipaddr/AddressNetwork;Linet/ipaddr/AddressNetwork;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0, v11, v6, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance v0, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {v0, v1}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;)V

    throw v0

    :cond_7
    add-int v15, p4, v10

    if-ge v10, v8, :cond_a

    aget-byte v16, v1, v2

    ushr-int/lit8 v16, v16, 0x7

    if-nez v16, :cond_8

    move/from16 p2, v3

    move v10, v8

    goto :goto_3

    :cond_8
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/16 v17, 0x0

    :goto_2
    if-ge v10, v9, :cond_9

    move/from16 p2, v3

    shl-int/lit8 v3, v17, 0x8

    or-int/lit16 v3, v3, 0xff

    add-int/lit8 v10, v10, 0x1

    move/from16 v17, v3

    move/from16 v3, p2

    goto :goto_2

    :cond_9
    move/from16 p2, v3

    move/from16 v9, v17

    goto :goto_3

    :cond_a
    move/from16 p2, v3

    const/4 v9, 0x0

    :goto_3
    if-ge v10, v15, :cond_b

    add-int v3, v2, v10

    sub-int/2addr v3, v8

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_b
    invoke-interface {v5, v9, v14}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v9

    invoke-static {v4, v9}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isCompatibleNetworks(Linet/ipaddr/AddressNetwork;Linet/ipaddr/AddressNetwork;)Z

    move-result v9

    if-eqz v9, :cond_c

    aput-object v3, v0, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, p2

    move v10, v15

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_c
    new-instance v0, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {v0, v3}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;)V

    throw v0

    :cond_d
    :goto_4
    return-object v0

    :cond_e
    new-instance v0, Linet/ipaddr/AddressValueException;

    int-to-long v1, v2

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw v0

    :cond_f
    new-instance v0, Linet/ipaddr/AddressValueException;

    int-to-long v1, v3

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw v0
.end method


# virtual methods
.method public containsPrefixBlock(I)Z
    .locals 11

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v5

    invoke-interface {v5}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v6

    add-int/2addr v6, v3

    if-ge p1, v6, :cond_3

    sub-int/2addr p1, v3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v5}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v6

    invoke-virtual {v5}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v8

    invoke-virtual/range {v5 .. v10}, Linet/ipaddr/format/standard/AddressDivision;->isPrefixBlock(JJI)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    add-int/2addr v2, v4

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_4
    return v4
.end method

.method public containsSinglePrefixBlock(I)Z
    .locals 11

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v5

    invoke-interface {v5}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v6

    add-int/2addr v6, v3

    if-lt p1, v6, :cond_1

    invoke-virtual {v5}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v5}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v6

    invoke-virtual {v5}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v8

    invoke-virtual/range {v5 .. v10}, Linet/ipaddr/format/standard/AddressDivision;->isSinglePrefixBlock(JJI)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    add-int/2addr v2, v4

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v4
.end method

.method public createNewDivisions(ILinet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/format/AddressDivisionBase;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/format/AddressDivisionBase;",
            ">(I",
            "Linet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator<",
            "TS;>;",
            "Ljava/util/function/IntFunction<",
            "[TS;>;)[TS;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lv/f;

    const/16 v0, 0x15

    invoke-direct {v4, p2, v0}, Lv/f;-><init>(Ljava/lang/Object;I)V

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createNewPrefixedDivisions(ILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;Linet/ipaddr/format/standard/AddressDivisionGrouping$PrefixedGroupingCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object p1

    return-object p1
.end method

.method public createNewPrefixedDivisions(ILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;Linet/ipaddr/format/standard/AddressDivisionGrouping$PrefixedGroupingCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/format/AddressDivisionBase;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/format/AddressDivisionBase;",
            ">(I",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/format/standard/AddressDivisionGrouping$PrefixedGroupingCreator<",
            "TS;>;",
            "Ljava/util/function/IntFunction<",
            "[TS;>;)[TS;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_7

    invoke-interface/range {p0 .. p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v4, 0x3f

    rem-int v5, v4, v1

    sub-int/2addr v4, v5

    :goto_0
    if-gt v2, v4, :cond_6

    rem-int v4, v2, v1

    sub-int/2addr v2, v4

    if-lez v2, :cond_0

    invoke-static {v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez v4, :cond_1

    invoke-static {v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v5, p5

    invoke-interface {v5, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Linet/ipaddr/format/AddressDivisionBase;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v6

    invoke-virtual {v6}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v7

    invoke-virtual {v6}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v9

    invoke-interface {v6}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v6

    const-wide/16 v11, 0x2

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-static {v11, v1}, Linet/ipaddr/format/standard/AddressDivision;->getRadixPower(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    add-int/lit8 v11, v2, -0x1

    move v14, v11

    move-wide v10, v9

    move-wide v8, v7

    move v7, v6

    move v6, v5

    :goto_1
    if-ltz v14, :cond_5

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-wide/16 v12, 0x0

    move-wide/from16 v16, v12

    move/from16 p1, v14

    move v14, v15

    :goto_2
    if-lt v7, v14, :cond_4

    sub-int/2addr v7, v14

    ushr-long v18, v8, v7

    or-long v12, v12, v18

    const-wide/16 v18, -0x1

    move-object/from16 v20, v3

    move-object/from16 p5, v4

    shl-long v3, v18, v7

    not-long v3, v3

    and-long/2addr v8, v3

    ushr-long v18, v10, v7

    or-long v16, v16, v18

    and-long/2addr v3, v10

    if-nez p3, :cond_2

    const/4 v10, 0x0

    :goto_3
    move-object/from16 v19, v10

    goto :goto_4

    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-static {v15, v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(II)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :goto_4
    move-object/from16 v11, p4

    move/from16 v21, p1

    move/from16 v22, v15

    move-wide/from16 v14, v16

    move/from16 v16, v22

    move/from16 v17, v1

    move-object/from16 v18, p2

    invoke-interface/range {v11 .. v19}, Linet/ipaddr/format/standard/AddressDivisionGrouping$PrefixedGroupingCreator;->createDivision(JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v10

    sub-int v11, v2, v21

    add-int/lit8 v11, v11, -0x1

    aput-object v10, p5, v11

    if-nez v7, :cond_3

    if-lez v21, :cond_3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v7

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v9

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    move-wide v10, v9

    move-wide v8, v7

    move v7, v3

    goto :goto_5

    :cond_3
    move-wide v10, v3

    :goto_5
    add-int v6, v6, v22

    add-int/lit8 v14, v21, -0x1

    move-object/from16 v4, p5

    move-object/from16 v3, v20

    goto :goto_1

    :cond_4
    move/from16 v21, p1

    move-object/from16 v20, v3

    move-object/from16 p5, v4

    move/from16 v22, v15

    sub-int/2addr v14, v7

    shl-long v3, v8, v14

    or-long/2addr v12, v3

    shl-long v3, v10, v14

    or-long v16, v16, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v8

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v10

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v7

    move-object/from16 v4, p5

    move-object/from16 v3, v20

    goto/16 :goto_2

    :cond_5
    move-object/from16 p5, v4

    return-object p5

    :cond_6
    move-object/from16 v5, p5

    move-object/from16 v20, v3

    sub-int/2addr v2, v4

    invoke-static {v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v6, v20

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    goto/16 :goto_0

    :cond_7
    new-instance v2, Linet/ipaddr/AddressValueException;

    int-to-long v3, v1

    invoke-direct {v2, v3, v4}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Linet/ipaddr/format/standard/AddressDivisionGrouping;

    if-eqz v0, :cond_1

    check-cast p1, Linet/ipaddr/format/standard/AddressDivisionGrouping;

    invoke-virtual {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAdjustedPrefix(IZZ)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getMinPrefixLengthForBlock()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    if-eqz p3, :cond_2

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    return v0
.end method

.method public getAdjustedPrefix(ZIZ)I
    .locals 3

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getMinPrefixLengthForBlock()I

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int p3, p1, p2

    add-int/2addr p1, p2

    :goto_0
    sub-int/2addr p1, p3

    return p1

    :cond_3
    if-nez v0, :cond_6

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getMinPrefixLengthForBlock()I

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    if-eqz p3, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p3, p1, -0x1

    rem-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method public getBytesImpl(Z)[B
    .locals 12

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    new-array v1, v0, [B

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x8

    move v4, v3

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-virtual {v5}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v6

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v6

    :goto_1
    invoke-interface {v5}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v5

    :goto_2
    if-lez v5, :cond_2

    aget-byte v8, v1, v0

    int-to-long v8, v8

    rsub-int/lit8 v10, v4, 0x8

    shl-long v10, v6, v10

    or-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v0

    ushr-long/2addr v6, v4

    if-ge v5, v4, :cond_1

    sub-int/2addr v4, v5

    goto :goto_3

    :cond_1
    sub-int/2addr v5, v4

    add-int/lit8 v0, v0, -0x1

    move v4, v3

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object p1

    return-object p1
.end method

.method public getDivision(I)Linet/ipaddr/format/standard/AddressDivision;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/standard/AddressDivision;

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->hashCode:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v4

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v6

    invoke-static {v1, v4, v5, v6, v7}, Linet/ipaddr/format/AddressDivisionGroupingBase;->adjustHashCode(IJJ)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->hashCode:I

    move v0, v1

    :cond_1
    return v0
.end method

.method public isDualString()Z
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_4

    invoke-virtual {p0, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    move-object v5, v3

    move v3, v2

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object v6

    invoke-virtual {v6}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v6}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v3

    goto :goto_2

    :cond_0
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    add-int/lit8 v1, v4, 0x1

    const-string v7, "ipaddress.error.segmentMismatch"

    move-object v2, v0

    move-object v3, v6

    move v6, v1

    invoke-direct/range {v2 .. v7}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;ILinet/ipaddr/format/AddressItem;ILjava/lang/String;)V

    throw v0

    :cond_1
    move v3, v1

    :goto_2
    add-int/lit8 v0, v0, -0x1

    move-object v5, v6

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/standard/AddressDivisionGrouping;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
