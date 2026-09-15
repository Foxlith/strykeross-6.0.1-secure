.class public abstract Linet/ipaddr/IPAddressSection;
.super Linet/ipaddr/format/standard/IPAddressDivisionGrouping;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressSegmentSeries;
.implements Linet/ipaddr/AddressSection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;,
        Linet/ipaddr/IPAddressSection$IPStringOptions;,
        Linet/ipaddr/IPAddressSection$WildcardOptions;,
        Linet/ipaddr/IPAddressSection$IPStringCache;,
        Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;,
        Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;,
        Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;,
        Linet/ipaddr/IPAddressSection$SeriesStack;,
        Linet/ipaddr/IPAddressSection$SeriesCreator;,
        Linet/ipaddr/IPAddressSection$TriFunction;,
        Linet/ipaddr/IPAddressSection$SegFunction;,
        Linet/ipaddr/IPAddressSection$PrefixCache;
    }
.end annotation


# static fields
.field private static final EMPTY_PARTS:[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

.field private static final REVERSE_HIGH_COMPARATOR:Linet/ipaddr/AddressComparator$ValueComparator;

.field private static final REVERSE_LOW_COMPARATOR:Linet/ipaddr/AddressComparator$ValueComparator;

.field static final mergeListComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private transient cachedNonzeroHostCount:Ljava/math/BigInteger;

.field private transient prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    sput-object v1, Linet/ipaddr/IPAddressSection;->EMPTY_PARTS:[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    new-instance v1, Le0/b;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Le0/b;-><init>(I)V

    sput-object v1, Linet/ipaddr/IPAddressSection;->mergeListComparator:Ljava/util/Comparator;

    new-instance v1, Linet/ipaddr/AddressComparator$ValueComparator;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, v2}, Linet/ipaddr/AddressComparator$ValueComparator;-><init>(ZZZ)V

    sput-object v1, Linet/ipaddr/IPAddressSection;->REVERSE_LOW_COMPARATOR:Linet/ipaddr/AddressComparator$ValueComparator;

    new-instance v0, Linet/ipaddr/AddressComparator$ValueComparator;

    invoke-direct {v0, v2, v2, v2}, Linet/ipaddr/AddressComparator$ValueComparator;-><init>(ZZZ)V

    sput-object v0, Linet/ipaddr/IPAddressSection;->REVERSE_HIGH_COMPARATOR:Linet/ipaddr/AddressComparator$ValueComparator;

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/IPAddressSegment;ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p1}, [Linet/ipaddr/IPAddressSegment;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Linet/ipaddr/format/standard/IPAddressDivision;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-direct {p0, p2, p3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Z)V

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object p2

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    aget-object v2, p1, v1

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSegment;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v3

    invoke-virtual {p2, v3}, Linet/ipaddr/AddressNetwork;->isCompatible(Linet/ipaddr/AddressNetwork;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p3, v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkPrefixLength(III)I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_1

    :cond_3
    new-instance p2, Linet/ipaddr/InconsistentPrefixException;

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-direct {p2, p1, v2, v3}, Linet/ipaddr/InconsistentPrefixException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;Ljava/lang/Integer;)V

    throw p2

    :cond_4
    new-instance p1, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {p1, v2}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;)V

    throw p1

    :cond_5
    if-nez v0, :cond_6

    sget-object p1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    :cond_6
    return-void
.end method

.method public static adjustPrefixLength(Linet/ipaddr/IPAddressSection;IZLinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;IZ",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "*TR;*TS;*>;",
            "Linet/ipaddr/IPAddressSection$SegFunction<",
            "TR;TS;>;)",
            "Linet/ipaddr/IPAddressSection;"
        }
    .end annotation

    .line 5
    if-nez p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getAdjustedPrefix(IZZ)I

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v1

    if-le p1, v1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Linet/ipaddr/IPAddressNetwork;->getNetworkMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    const/4 v1, 0x0

    new-instance v4, Linet/ipaddr/c;

    const/4 v0, 0x1

    invoke-direct {v4, p4, p0, v0}, Linet/ipaddr/c;-><init>(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)V

    new-instance v5, Linet/ipaddr/d;

    invoke-direct {v5, p4, p1, v0}, Linet/ipaddr/d;-><init>(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p3

    move v3, p2

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p0

    return-object p0

    :cond_3
    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, p1

    :goto_1
    invoke-virtual {p0, v0, p2}, Linet/ipaddr/IPAddressSection;->setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static applyOperatorToLowerUpper(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/Function;Linet/ipaddr/IPAddressSection$TriFunction;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "OperatorResult:",
            "Ljava/lang/Object;",
            ">(TR;TR;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Ljava/util/Comparator<",
            "TR;>;",
            "Ljava/util/function/Function<",
            "TR;TR;>;",
            "Linet/ipaddr/IPAddressSection$TriFunction<",
            "TR;TOperatorResult;>;)TOperatorResult;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p5, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Linet/ipaddr/IPAddressSegmentSeries;

    move v2, v1

    goto :goto_0

    :cond_0
    move-object p4, p1

    goto :goto_0

    :cond_1
    move-object p4, p0

    move v5, v2

    move v2, v1

    move v1, v5

    :goto_0
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {p2, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/IPAddressSegmentSeries;

    goto :goto_3

    :cond_2
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {p4, v0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_3

    move v0, v2

    move v2, v1

    goto :goto_1

    :cond_3
    move-object p2, v0

    move v0, v1

    :goto_1
    invoke-interface {p4, v3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p4

    if-gez p4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    move v1, v2

    move-object p3, v3

    :goto_2
    if-eqz p5, :cond_5

    invoke-interface {p5, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {p5, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linet/ipaddr/IPAddressSegmentSeries;

    :cond_5
    move v2, v0

    :goto_3
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    move-object p0, p1

    goto :goto_4

    :cond_7
    const/4 p0, 0x0

    :goto_4
    invoke-interface {p6, p0, p2, p3}, Linet/ipaddr/IPAddressSection$TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bitsPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    invoke-static {p0}, Linet/ipaddr/IPAddressSegment;->getBitCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result p0

    return p0
.end method

.method public static bytesPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    invoke-static {p0}, Linet/ipaddr/IPAddressSegment;->getBitCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result p0

    return p0
.end method

.method public static cacheBits(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private checkForPrefixMask(Z)Ljava/lang/Integer;
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/AddressSegment;->getMaxSegmentValue()I

    move-result v3

    if-eqz p1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    move v3, v2

    :goto_0
    move v5, v2

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v6

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v7

    if-eq v7, v3, :cond_5

    invoke-virtual {v6, p1}, Linet/ipaddr/format/standard/IPAddressDivision;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v5

    if-eq v5, v4, :cond_3

    return-object v1

    :cond_4
    :goto_2
    move v5, v6

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v6

    add-int/2addr v6, v5

    goto :goto_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v5}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public static checkLengths(ILjava/lang/StringBuilder;)V
    .locals 0

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->checkLengths(ILjava/lang/StringBuilder;)V

    return-void
.end method

.method private static checkPrefixBlockContainment(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Linet/ipaddr/IPAddressSection;",
            ">(TR;TR;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Ljava/util/function/IntFunction<",
            "[TR;>;)[TR;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Linet/ipaddr/IPAddress;->checkPrefixBlockFormat(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;ZLjava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    :goto_0
    check-cast p0, [Linet/ipaddr/IPAddressSection;

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Linet/ipaddr/IPAddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, p2, p3}, Linet/ipaddr/IPAddress;->checkPrefixBlockFormat(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;ZLjava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static checkSequentialBlockContainment(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Linet/ipaddr/IPAddressSection;",
            ">(TR;TR;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Ljava/util/function/IntFunction<",
            "[TR;>;)[TR;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Linet/ipaddr/IPAddress;->checkSequentialBlockFormat(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;ZLjava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    :goto_0
    check-cast p0, [Linet/ipaddr/IPAddressSection;

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Linet/ipaddr/IPAddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, p2, p3}, Linet/ipaddr/IPAddress;->checkSequentialBlockFormat(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;ZLjava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static containsPrefixBlock(ILinet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Z
    .locals 6

    .line 2
    invoke-static {p1, p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v1

    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v2

    invoke-static {p0, v2, v1}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-interface {p2, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v5

    invoke-static {v1, p0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v1

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v5

    invoke-virtual {v4, v1, v5, p0}, Linet/ipaddr/IPAddressSegment;->containsPrefixBlock(III)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    add-int/2addr v2, v3

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p0

    invoke-interface {p2, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->includesZero()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->includesMax()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v3
.end method

.method public static containsSinglePrefixBlock(ILinet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Z
    .locals 8

    invoke-static {p1, p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_5

    invoke-interface {p1, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v5

    invoke-interface {p2, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v6

    invoke-interface {v5}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v7

    add-int/2addr v7, v3

    if-lt p0, v7, :cond_1

    invoke-virtual {v5, v6}, Linet/ipaddr/IPAddressSegment;->isSameValues(Linet/ipaddr/AddressSegment;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v7

    goto :goto_0

    :cond_1
    sub-int/2addr p0, v3

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v6

    invoke-virtual {v5, v3, v6, p0}, Linet/ipaddr/IPAddressSegment;->containsSinglePrefixBlock(III)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    add-int/2addr v2, v4

    :goto_1
    if-ge v2, v0, :cond_5

    invoke-interface {p1, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p0

    invoke-interface {p2, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->includesZero()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->includesMax()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1

    :cond_5
    return v4
.end method

.method public static coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 6

    .line 2
    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-interface {p2, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v5

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v4

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p2

    rsub-int/lit8 v0, v1, 0x20

    sub-int/2addr p2, v0

    add-int/2addr p2, v3

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, p1

    :goto_1
    invoke-interface {p0, p2}, Linet/ipaddr/IPAddressSegmentSeries;->toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, p1

    :goto_2
    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result p1

    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    return-object p0
.end method

.method public static coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">(TT;TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    const/4 v5, 0x0

    new-instance v6, Lv1/n;

    const/4 v0, 0x5

    invoke-direct {v6, v0}, Lv1/n;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->applyOperatorToLowerUpper(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/Function;Linet/ipaddr/IPAddressSection$TriFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegmentSeries;

    return-object p0
.end method

.method private static createDiffSection(Linet/ipaddr/IPAddressSection;IIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/IntFunction;[Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;III",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;TR;*TS;*>;",
            "Ljava/util/function/IntFunction<",
            "TS;>;[TS;)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result p0

    invoke-virtual {p4, p0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/IPAddressSegment;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    aget-object v2, p6, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    invoke-virtual {p4, p1, p2, p6}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSegment;

    aput-object p1, v0, p3

    :goto_1
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p0, :cond_1

    invoke-interface {p5, p3}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSegment;

    aput-object p1, v0, p3

    goto :goto_1

    :cond_1
    invoke-virtual {p4, v0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedSection(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;TR;*TS;*>;[TS;",
            "Linet/ipaddr/IPAddressSection;",
            ")TR;"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createEmbeddedSectionInternal(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/IPAddressSection;->lambda$setPrefixLength$3(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;I)I

    move-result p0

    return p0
.end method

.method public static getHostSection(Linet/ipaddr/IPAddressSection;IILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;II",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;TR;*TS;*>;",
            "Linet/ipaddr/IPAddressSection$SegFunction<",
            "Ljava/lang/Integer;",
            "TS;>;)TR;"
        }
    .end annotation

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v0

    if-gt p1, v0, :cond_2

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->isHostSection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p3, p2}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    check-cast v1, [Linet/ipaddr/IPAddressSegment;

    if-lez p2, :cond_1

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result p0

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz p2, :cond_1

    invoke-static {p0, p1, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2, v0}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/IPAddressSegment;

    aput-object v2, v1, p2

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p2, Linet/ipaddr/PrefixLenException;

    invoke-direct {p2, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw p2
.end method

.method public static getHostSegmentIndex(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getHostSegmentIndex(III)I

    move-result p0

    return p0
.end method

.method public static getLowestOrHighestSection(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;ZZ)Linet/ipaddr/IPAddressSection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "*TR;*TS;*>;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Iterator<",
            "[TS;>;>;",
            "Ljava/util/function/IntFunction<",
            "TS;>;ZZ)TR;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->includesZeroHost()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p2, 0x0

    move-object p3, v1

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Linet/ipaddr/IPAddressSegment;

    move-object p3, p2

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createSingle(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/AddressSegment;

    move-result-object p2

    move-object p3, p2

    check-cast p3, [Linet/ipaddr/IPAddressSegment;

    :goto_0
    move p2, v0

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object p2

    invoke-virtual {p2}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1, p3, p0, v0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p0

    :goto_2
    move-object v1, p0

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {p1, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p0

    goto :goto_2

    :cond_4
    :goto_4
    return-object v1
.end method

.method public static getMergedPrefixBlocks([Linet/ipaddr/IPAddressSegmentSeries;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ")",
            "Ljava/util/List<",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    shl-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressSection;->organizeSequentially([Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Linet/ipaddr/IPAddressSection;->REVERSE_LOW_COMPARATOR:Linet/ipaddr/AddressComparator$ValueComparator;

    sget-object v3, Linet/ipaddr/IPAddressSection;->REVERSE_HIGH_COMPARATOR:Linet/ipaddr/AddressComparator$ValueComparator;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v5

    invoke-interface {v0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v6

    invoke-interface {v0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    add-int/lit8 v7, v7, -0x2

    move v9, v4

    :goto_0
    if-lez v8, :cond_e

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-virtual {v3, v10, v11}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result v12

    const/4 v13, 0x0

    if-lez v12, :cond_3

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v8, 0x1

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-virtual {v1, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v10, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {v1, v8, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v8, v7, -0x1

    move/from16 v20, v8

    move v8, v7

    move/from16 v7, v20

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v10, v11}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result v12

    if-ltz v12, :cond_4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-interface {v10}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_3

    :cond_5
    if-nez v12, :cond_6

    add-int/lit8 v12, v5, -0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_4
    if-nez v12, :cond_7

    move v14, v4

    move v15, v14

    goto :goto_5

    :cond_7
    invoke-static {v12, v0, v6}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v14

    invoke-static {v12, v0, v6}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v15

    :goto_5
    invoke-interface {v10, v14}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v16

    invoke-interface {v11, v14}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v16

    invoke-virtual/range {v17 .. v17}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v17

    add-int/lit8 v18, v6, -0x1

    if-ne v15, v14, :cond_8

    rem-int v15, v12, v6

    sub-int v18, v18, v15

    ushr-int v15, v16, v18

    ushr-int v16, v17, v18

    move/from16 v4, v16

    goto :goto_6

    :cond_8
    invoke-interface {v10, v15}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v19

    invoke-interface {v11, v15}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v15

    invoke-virtual {v15}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v15

    shl-int/lit8 v16, v16, 0x1

    ushr-int v19, v19, v18

    or-int v16, v16, v19

    shl-int/lit8 v17, v17, 0x1

    ushr-int v15, v15, v18

    or-int v15, v17, v15

    move v4, v15

    move/from16 v15, v16

    :goto_6
    if-eq v15, v4, :cond_9

    xor-int/lit8 v15, v15, 0x1

    if-eq v15, v4, :cond_9

    :goto_7
    add-int/lit8 v4, v7, -0x1

    move v8, v7

    move v7, v4

    :goto_8
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v14, v14, -0x1

    :goto_9
    if-ltz v14, :cond_b

    invoke-interface {v10, v14}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-interface {v11, v14}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v15

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v4

    invoke-virtual {v15}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v15

    if-eq v4, v15, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v14, v14, -0x1

    goto :goto_9

    :cond_b
    invoke-interface {v11, v12}, Linet/ipaddr/IPAddressSegmentSeries;->toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v8, 0x1

    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_c

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-virtual {v1, v8, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    invoke-virtual {v1, v8, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    if-lez v9, :cond_12

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_b
    if-ge v4, v0, :cond_11

    move/from16 v2, v16

    :goto_c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_f

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_f
    if-eq v4, v2, :cond_10

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v16, v2, 0x1

    goto :goto_b

    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_d
    add-int/lit8 v2, v9, -0x1

    if-lez v9, :cond_12

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v9, v2

    goto :goto_d

    :cond_12
    return-object v1
.end method

.method public static getMergedSequentialBlocks([Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSection$SeriesCreator;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "Linet/ipaddr/IPAddressSection$SeriesCreator;",
            ")",
            "Ljava/util/List<",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressSection;->organizeSequentialMerge([Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/List;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    sget-object v0, Linet/ipaddr/IPAddressSection;->REVERSE_LOW_COMPARATOR:Linet/ipaddr/AddressComparator$ValueComparator;

    sget-object v3, Linet/ipaddr/IPAddressSection;->REVERSE_HIGH_COMPARATOR:Linet/ipaddr/AddressComparator$ValueComparator;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v4, v4, -0x2

    move v7, v2

    const/4 v8, -0x1

    :goto_0
    const/4 v9, -0x1

    :goto_1
    if-lez v5, :cond_f

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-virtual {v3, v10, v11}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result v12

    const/4 v13, 0x0

    if-lez v12, :cond_3

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v5, 0x1

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-virtual {v1, v5, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_3
    invoke-virtual {v1, v5, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v5, v4, -0x1

    move v9, v8

    const/4 v8, -0x1

    move/from16 v17, v5

    move v5, v4

    move/from16 v4, v17

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v10, v11}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result v12

    if-ltz v12, :cond_4

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    if-gez v8, :cond_5

    invoke-interface {v10}, Linet/ipaddr/format/AddressDivisionSeries;->getSequentialBlockIndex()I

    move-result v8

    :cond_5
    if-gez v9, :cond_6

    invoke-interface {v11}, Linet/ipaddr/format/AddressDivisionSeries;->getSequentialBlockIndex()I

    move-result v9

    :cond_6
    if-eq v8, v9, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v10, v8}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v12

    invoke-interface {v11, v8}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v14

    invoke-virtual {v14}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v15

    invoke-virtual {v12}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v2

    if-ge v2, v15, :cond_8

    add-int/lit8 v6, v2, 0x1

    if-eq v6, v15, :cond_8

    :goto_5
    add-int/lit8 v2, v4, -0x1

    move v5, v4

    const/4 v8, -0x1

    move v4, v2

    :goto_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    add-int/lit8 v6, v8, -0x1

    :goto_7
    if-ltz v6, :cond_a

    invoke-interface {v10, v6}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v15

    invoke-interface {v11, v6}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v16

    invoke-virtual {v15}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v15

    invoke-virtual/range {v16 .. v16}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v13

    if-eq v15, v13, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v6, v6, -0x1

    const/4 v13, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v12}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v6

    invoke-virtual {v14}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v9, p1

    invoke-interface {v9, v10, v8, v6, v2}, Linet/ipaddr/IPAddressSection$SeriesCreator;->apply(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v8}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v6

    invoke-interface {v6}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v6

    if-eqz v6, :cond_c

    if-nez v8, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_b
    add-int/lit8 v8, v8, -0x1

    :cond_c
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v5, 0x1

    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    goto :goto_9

    :cond_e
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v4, -0x1

    move v5, v4

    move v4, v2

    move v2, v8

    const/4 v8, -0x1

    :goto_9
    move v9, v2

    goto :goto_6

    :cond_f
    if-lez v7, :cond_12

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v2, v0, :cond_11

    :goto_b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_10

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {v4}, Linet/ipaddr/IPAddressSegmentSeries;->withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    add-int/lit8 v2, v7, -0x1

    if-lez v7, :cond_13

    const/4 v3, -0x1

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v7, v2

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_13

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_13
    return-object v1
.end method

.method public static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/HostIdentifierException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkSection(Linet/ipaddr/IPAddressSection;IZLinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;IZ",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;TR;*TS;*>;",
            "Linet/ipaddr/IPAddressSection$SegFunction<",
            "Ljava/lang/Integer;",
            "TS;>;)TR;"
        }
    .end annotation

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v0

    if-gt p1, v0, :cond_2

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->isNetworkSection(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result p2

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentCount(I)I

    move-result p0

    invoke-virtual {p3, p0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/IPAddressSegment;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v2, v1}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2, v1}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/IPAddressSegment;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p2, Linet/ipaddr/PrefixLenException;

    invoke-direct {p2, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw p2
.end method

.method public static getNetworkSegmentIndex(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getNetworkSegmentIndex(III)I

    move-result p0

    return p0
.end method

.method public static getNoZerosRange()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
    .locals 1

    invoke-static {}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNoZerosRange()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v0

    return-object v0
.end method

.method public static getOredSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;)Linet/ipaddr/IPAddressSection;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "*TR;*TS;*>;Z",
            "Ljava/util/function/IntFunction<",
            "TS;>;",
            "Ljava/util/function/IntUnaryOperator;",
            ")TR;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v6

    if-gt v5, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Linet/ipaddr/PrefixLenException;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v0, v1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v2

    :cond_1
    :goto_0
    invoke-interface/range {p0 .. p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v7

    invoke-virtual {v7}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_d

    invoke-static {v5, v1, v9}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v9}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linet/ipaddr/IPAddressSegment;

    invoke-interface {v4, v9}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v12

    invoke-virtual {v11}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v13

    invoke-virtual {v11}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v14

    const-string v15, "ipaddress.error.maskMismatch"

    if-eqz p3, :cond_4

    if-eqz v7, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v11, v8}, Linet/ipaddr/IPAddressSegment;->getSegmentNetworkMask(I)I

    move-result v8

    and-int/2addr v12, v8

    :cond_2
    int-to-long v3, v13

    int-to-long v13, v14

    move v8, v5

    move/from16 v24, v6

    int-to-long v5, v12

    invoke-virtual {v11}, Linet/ipaddr/IPAddressSegment;->getMaxValue()J

    move-result-wide v22

    move-wide/from16 v16, v3

    move-wide/from16 v18, v13

    move-wide/from16 v20, v5

    invoke-static/range {v16 .. v23}, Linet/ipaddr/IPAddressSegment;->bitwiseOrRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    move-result-object v12

    invoke-virtual {v12}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;->isSequential()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v12, v3, v4, v5, v6}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;->getOredLower(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v12, v13, v14, v5, v6}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;->getOredUpper(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    goto :goto_2

    :cond_3
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v0, v11, v15}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v0

    :cond_4
    move v8, v5

    move/from16 v24, v6

    or-int v3, v13, v12

    or-int v4, v14, v12

    :goto_2
    invoke-virtual {v11, v3, v4, v10}, Linet/ipaddr/IPAddressSegment;->isChangedBy(IILjava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v5

    invoke-virtual {v2, v5}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v5

    check-cast v5, [Linet/ipaddr/IPAddressSegment;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v9, v5, v6}, Linet/ipaddr/IPAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    invoke-virtual {v2, v3, v4, v10}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegment;

    aput-object v0, v5, v9

    if-eqz v7, :cond_5

    if-eqz v10, :cond_5

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v24

    if-ge v9, v3, :cond_b

    invoke-static {v6}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v6, v0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    :goto_3
    check-cast v0, Linet/ipaddr/IPAddressSegment;

    invoke-static {v5, v9, v3, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    move/from16 v3, v24

    :goto_4
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v3, :cond_b

    invoke-static {v8, v1, v9}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, p4

    invoke-interface {v4, v9}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linet/ipaddr/IPAddressSegment;

    move-object/from16 v10, p5

    invoke-interface {v10, v9}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v11

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v12

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v13

    if-eqz p3, :cond_8

    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v6, v14}, Linet/ipaddr/IPAddressSegment;->getSegmentNetworkMask(I)I

    move-result v14

    and-int/2addr v11, v14

    :cond_6
    move/from16 v24, v3

    int-to-long v3, v12

    int-to-long v12, v13

    int-to-long v10, v11

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSegment;->getMaxValue()J

    move-result-wide v22

    move-wide/from16 v16, v3

    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    invoke-static/range {v16 .. v23}, Linet/ipaddr/IPAddressSegment;->bitwiseOrRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    move-result-object v14

    invoke-virtual {v14}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;->isSequential()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v14, v3, v4, v10, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;->getOredLower(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v14, v12, v13, v10, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;->getOredUpper(JJ)J

    move-result-wide v10

    long-to-int v4, v10

    goto :goto_5

    :cond_7
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v0, v6, v15}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v0

    :cond_8
    move/from16 v24, v3

    or-int v3, v12, v11

    or-int v4, v13, v11

    :goto_5
    invoke-virtual {v6, v3, v4, v0}, Linet/ipaddr/IPAddressSegment;->isChangedBy(IILjava/lang/Integer;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v2, v3, v4, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v3

    check-cast v3, Linet/ipaddr/IPAddressSegment;

    aput-object v3, v5, v9

    goto :goto_6

    :cond_9
    aput-object v6, v5, v9

    :goto_6
    if-eqz v7, :cond_a

    if-eqz v0, :cond_a

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v24

    if-ge v9, v3, :cond_b

    const/4 v4, 0x0

    invoke-static {v4}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    goto/16 :goto_3

    :cond_a
    move/from16 v3, v24

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_b
    :goto_7
    invoke-virtual {v2, v5, v1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0

    :cond_c
    move/from16 v3, v24

    const/4 v4, 0x0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p5

    move v6, v3

    move v5, v8

    move-object/from16 v3, p4

    goto/16 :goto_1

    :cond_d
    return-object v0
.end method

.method public static getSegmentPrefixLength(II)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleRange(II)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
    .locals 0

    invoke-static {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getSingleRange(II)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object p0

    return-object p0
.end method

.method public static getSpanningPrefixBlocks(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Linet/ipaddr/IPAddressSection;",
            ">(TR;TR;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Ljava/util/Comparator<",
            "TR;>;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Ljava/util/function/IntFunction<",
            "[TR;>;)[TR;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkSectionCount(Linet/ipaddr/IPAddressSection;)V

    invoke-static {p0, p1, p5, p7}, Linet/ipaddr/IPAddressSection;->checkPrefixBlockContainment(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSection;

    move-result-object p5

    if-eqz p5, :cond_0

    return-object p5

    :cond_0
    new-instance v6, Lv1/n;

    const/4 p5, 0x6

    invoke-direct {v6, p5}, Lv1/n;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->applyOperatorToLowerUpper(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/Function;Linet/ipaddr/IPAddressSection$TriFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p7, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/IPAddressSection;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Linet/ipaddr/IPAddressSection;

    return-object p0
.end method

.method public static getSpanningSequentialBlocks(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;)[Linet/ipaddr/IPAddressSection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;TR;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Ljava/util/Comparator<",
            "TR;>;",
            "Ljava/util/function/UnaryOperator<",
            "TR;>;",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "*TR;*TS;*>;)[TR;"
        }
    .end annotation

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Linet/ipaddr/a;

    const/4 v1, 0x1

    invoke-direct {v0, p6, v1}, Linet/ipaddr/a;-><init>(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;I)V

    invoke-static {p0, p1, p5, v0}, Linet/ipaddr/IPAddressSection;->checkSequentialBlockContainment(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSection;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v7, Linet/ipaddr/b;

    const/4 v0, 0x3

    invoke-direct {v7, p6, v0}, Linet/ipaddr/b;-><init>(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;I)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Linet/ipaddr/IPAddressSection;->applyOperatorToLowerUpper(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/Function;Linet/ipaddr/IPAddressSection$TriFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p6, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionArray(I)[Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Linet/ipaddr/IPAddressSection;

    return-object p0
.end method

.method private getStartsWithSQLClause(Ljava/lang/StringBuilder;Ljava/lang/String;ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V
    .locals 8

    .line 3
    const-string v0, " OR "

    const/16 v1, 0x29

    const/4 v2, 0x0

    const/16 v3, 0x28

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linet/ipaddr/IPAddressSection;

    invoke-direct {v5, p1, p2, v2, p4}, Linet/ipaddr/IPAddressSection;->getStartsWithSQLClause(Ljava/lang/StringBuilder;Ljava/lang/String;ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V

    goto :goto_0

    :cond_1
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->toDatabaseSearchStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object p3

    invoke-virtual {p3}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->size()I

    move-result v5

    if-le v5, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->isEntireAddress()Z

    move-result v5

    invoke-virtual {p3}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_4
    invoke-virtual {v7, v5, p4}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getNetworkStringMatcher(ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)Linet/ipaddr/format/util/sql/SQLStringMatcher;

    move-result-object v7

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Linet/ipaddr/format/util/sql/SQLStringMatcher;->getSQLCondition(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->size()I

    move-result p2

    if-le p2, v4, :cond_6

    goto :goto_2

    :cond_6
    :goto_5
    return-void
.end method

.method public static getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "*TR;*TS;*>;Z",
            "Ljava/util/function/IntFunction<",
            "TS;>;",
            "Ljava/util/function/IntUnaryOperator;",
            "Z)TR;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v7

    if-gt v6, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Linet/ipaddr/PrefixLenException;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v0, v1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v2

    :cond_1
    :goto_0
    invoke-interface/range {p0 .. p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v8

    invoke-virtual {v8}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v5, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v7, :cond_e

    invoke-static {v6, v1, v11}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v11}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Linet/ipaddr/IPAddressSegment;

    invoke-interface {v4, v11}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v14

    invoke-virtual {v13}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v15

    invoke-virtual {v13}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v9

    const-string v10, "ipaddress.error.maskMismatch"

    if-eqz p3, :cond_5

    if-eqz v8, :cond_3

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v13, v5}, Linet/ipaddr/IPAddressSegment;->getSegmentHostMask(I)I

    move-result v5

    or-int/2addr v14, v5

    :cond_3
    int-to-long v4, v15

    move/from16 v24, v6

    move/from16 v25, v7

    int-to-long v6, v9

    int-to-long v14, v14

    invoke-virtual {v13}, Linet/ipaddr/IPAddressSegment;->getMaxValue()J

    move-result-wide v22

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v14

    invoke-static/range {v16 .. v23}, Linet/ipaddr/IPAddressSegment;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v9

    invoke-virtual {v9}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v9, v4, v5, v14, v15}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v9, v6, v7, v14, v15}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    goto :goto_3

    :cond_4
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v0, v13, v10}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v0

    :cond_5
    move/from16 v24, v6

    move/from16 v25, v7

    and-int v4, v15, v14

    and-int v5, v9, v14

    :goto_3
    invoke-virtual {v13, v4, v5, v12}, Linet/ipaddr/IPAddressSegment;->isChangedBy(IILjava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v6

    invoke-virtual {v2, v6}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v6

    check-cast v6, [Linet/ipaddr/IPAddressSegment;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v11, v6, v7}, Linet/ipaddr/IPAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    invoke-virtual {v2, v4, v5, v12}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegment;

    aput-object v0, v6, v11

    if-eqz v8, :cond_7

    if-eqz v12, :cond_7

    const/4 v0, 0x1

    add-int/2addr v11, v0

    move/from16 v4, v25

    if-ge v11, v4, :cond_6

    :goto_4
    invoke-static {v7}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegment;

    invoke-static {v6, v11, v4, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_6
    move/from16 v8, p6

    goto/16 :goto_8

    :cond_7
    move/from16 v4, v25

    const/4 v0, 0x1

    add-int/2addr v11, v0

    :goto_5
    if-ge v11, v4, :cond_6

    move/from16 v5, v24

    invoke-static {v5, v1, v11}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v11}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linet/ipaddr/IPAddressSegment;

    move-object/from16 v9, p5

    invoke-interface {v9, v11}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v12

    invoke-virtual {v7}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v13

    invoke-virtual {v7}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v14

    if-eqz p3, :cond_a

    if-eqz v8, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Linet/ipaddr/IPAddressSegment;->getSegmentHostMask(I)I

    move-result v15

    or-int/2addr v12, v15

    :cond_8
    move/from16 v25, v4

    int-to-long v3, v13

    int-to-long v13, v14

    move v15, v8

    int-to-long v8, v12

    invoke-virtual {v7}, Linet/ipaddr/IPAddressSegment;->getMaxValue()J

    move-result-wide v22

    move-wide/from16 v16, v3

    move-wide/from16 v18, v13

    move-wide/from16 v20, v8

    invoke-static/range {v16 .. v23}, Linet/ipaddr/IPAddressSegment;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v12

    invoke-virtual {v12}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v12, v3, v4, v8, v9}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v12, v13, v14, v8, v9}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    goto :goto_6

    :cond_9
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v0, v7, v10}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v0

    :cond_a
    move/from16 v25, v4

    move v15, v8

    and-int v3, v13, v12

    and-int v4, v14, v12

    :goto_6
    invoke-virtual {v7, v3, v4, v0}, Linet/ipaddr/IPAddressSegment;->isChangedBy(IILjava/lang/Integer;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v2, v3, v4, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v3

    check-cast v3, Linet/ipaddr/IPAddressSegment;

    aput-object v3, v6, v11

    goto :goto_7

    :cond_b
    aput-object v7, v6, v11

    :goto_7
    if-eqz v15, :cond_c

    if-eqz v0, :cond_c

    const/4 v3, 0x1

    add-int/2addr v11, v3

    move/from16 v4, v25

    if-ge v11, v4, :cond_6

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_c
    move/from16 v4, v25

    const/4 v3, 0x1

    const/4 v7, 0x0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p4

    move/from16 v24, v5

    move v8, v15

    goto/16 :goto_5

    :goto_8
    invoke-virtual {v2, v6, v1, v8}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0

    :cond_d
    move v15, v8

    move/from16 v5, v24

    move/from16 v4, v25

    const/4 v3, 0x1

    const/4 v7, 0x0

    move/from16 v8, p6

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p4

    move v7, v4

    move v6, v5

    move v5, v8

    move v8, v15

    move-object/from16 v4, p5

    goto/16 :goto_2

    :cond_e
    return-object v0
.end method

.method public static synthetic h(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->lambda$setPrefixLength$4(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I

    move-result p0

    return p0
.end method

.method private hasNoPrefixCache()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-direct {v0}, Linet/ipaddr/IPAddressSection$PrefixCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic i([Linet/ipaddr/IPAddressSegment;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/IPAddressSection;->lambda$isPrefixSubnet$1([Linet/ipaddr/IPAddressSegment;I)I

    move-result p0

    return p0
.end method

.method public static intersect(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)Linet/ipaddr/IPAddressSection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;TR;",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;TR;*TS;*>;",
            "Ljava/util/function/IntFunction<",
            "TS;>;",
            "Ljava/util/function/IntFunction<",
            "TS;>;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkSectionCount(Linet/ipaddr/IPAddressSection;)V

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Linet/ipaddr/IPAddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object p1

    :cond_4
    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v1

    if-nez v1, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_8

    invoke-virtual {p0, v4}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v5

    invoke-virtual {p1, v4}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v6

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v7

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v5

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v8

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v6

    if-gt v8, v5, :cond_7

    if-le v7, v6, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-object v2

    :cond_8
    invoke-virtual {p2, v1}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object p0

    check-cast p0, [Linet/ipaddr/IPAddressSegment;

    move p1, v3

    :goto_3
    if-ge p1, v1, :cond_b

    invoke-interface {p3, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/IPAddressSegment;

    invoke-interface {p4, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linet/ipaddr/IPAddressSegment;

    invoke-interface {v2}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v5

    invoke-static {v5, v0, p1}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4}, Linet/ipaddr/AddressSegment;->contains(Linet/ipaddr/AddressSegment;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4, v5, v3}, Linet/ipaddr/IPAddressSegment;->isChangedByPrefix(Ljava/lang/Integer;Z)Z

    move-result v6

    if-nez v6, :cond_9

    aput-object v4, p0, p1

    goto :goto_4

    :cond_9
    invoke-interface {v4, v2}, Linet/ipaddr/AddressSegment;->contains(Linet/ipaddr/AddressSegment;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2, v5, v3}, Linet/ipaddr/IPAddressSegment;->isChangedByPrefix(Ljava/lang/Integer;Z)Z

    move-result v6

    if-nez v6, :cond_a

    aput-object v2, p0, p1

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v6

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v2

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v7

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2, v6, v2, v5}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v2

    check-cast v2, Linet/ipaddr/IPAddressSegment;

    aput-object v2, p0, p1

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p2, p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSection([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

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

    invoke-static {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isCompatibleNetworks(Linet/ipaddr/AddressNetwork;Linet/ipaddr/AddressNetwork;)Z

    move-result p0

    return p0
.end method

.method public static isPrefixSubnet([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linet/ipaddr/IPAddressSegment;",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;Z)Z"
        }
    .end annotation

    array-length v2, p0

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return v0

    :cond_0
    aget-object v1, p0, v0

    new-instance v3, Linet/ipaddr/h;

    invoke-direct {v3, p0, v0}, Linet/ipaddr/h;-><init>([Linet/ipaddr/IPAddressSegment;I)V

    new-instance v4, Linet/ipaddr/h;

    const/4 v0, 0x1

    invoke-direct {v4, p0, v0}, Linet/ipaddr/h;-><init>([Linet/ipaddr/IPAddressSegment;I)V

    invoke-interface {v1}, Linet/ipaddr/format/AddressItem;->getByteCount()I

    move-result p0

    invoke-interface {v1}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v5

    invoke-interface {v1}, Linet/ipaddr/AddressSegment;->getMaxSegmentValue()I

    move-result v6

    invoke-virtual {p2}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v7

    move-object v0, v3

    move-object v1, v4

    move v3, p0

    move v4, v5

    move v5, v6

    move-object v6, p1

    move v8, p3

    invoke-static/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->isPrefixSubnet(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IIIILjava/lang/Integer;Linet/ipaddr/AddressNetwork$PrefixConfiguration;Z)Z

    move-result p0

    return p0
.end method

.method public static isZeroHost(I[Linet/ipaddr/IPAddressSegment;III)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(I[TS;III)Z"
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-lt p0, p4, :cond_1

    return v1

    :cond_1
    array-length p4, p1

    invoke-static {p0, p2, p3}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result p2

    move v0, p2

    :goto_0
    const/4 v2, 0x1

    if-ge v0, p4, :cond_5

    invoke-static {p3, p0, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, p1, v0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Linet/ipaddr/IPAddressSegment;->getSegmentHostMask(I)I

    move-result v3

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p4, :cond_4

    aget-object v3, p1, v0

    invoke-virtual {v3}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    :goto_1
    return v1

    :cond_4
    add-int/2addr v0, v2

    goto :goto_0

    :cond_5
    return v2
.end method

.method public static iterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/IntFunction;IILjava/util/function/IntFunction;)Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">(I",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;",
            "Ljava/util/function/IntFunction<",
            "Ljava/util/Iterator<",
            "TS;>;>;II",
            "Ljava/util/function/IntFunction<",
            "Ljava/util/Iterator<",
            "TS;>;>;)",
            "Ljava/util/Iterator<",
            "[TS;>;"
        }
    .end annotation

    .line 1
    const/4 v2, 0x0

    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static iterator(Linet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/Address;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TT;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "TT;**TS;>;",
            "Ljava/util/Iterator<",
            "[TS;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->lambda$adjustPrefixLength$11(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)Linet/ipaddr/IPAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->lambda$getSpanningPrefixBlocks$6(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/IPAddressSection;->lambda$static$8(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$adjustPrefixLength$11(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegment;

    return-object p0
.end method

.method private static synthetic lambda$adjustPrefixLength$12(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I
    .locals 0

    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getSpanningPrefixBlocks$6(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2}, Linet/ipaddr/IPAddressSection;->splitIntoPrefixBlocks(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSpanningSequentialBlocks$7(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Linet/ipaddr/b;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Linet/ipaddr/b;-><init>(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;I)V

    invoke-static {p2, p3, p1}, Linet/ipaddr/IPAddressSection;->splitIntoSequentialBlocks(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSection$SeriesCreator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isPrefixSubnet$1([Linet/ipaddr/IPAddressSegment;I)I
    .locals 0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isPrefixSubnet$2([Linet/ipaddr/IPAddressSegment;I)I
    .locals 0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$longZeroHostCount$0(IIII)I
    .locals 1

    if-ne p4, p1, :cond_0

    invoke-virtual {p0, p4}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    invoke-static {p2, p3, p4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p2

    ushr-int/2addr p2, v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    ushr-int/2addr p1, v0

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    invoke-virtual {p0, p4}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getValueCount()I

    move-result p1

    return p1
.end method

.method private static synthetic lambda$removePrefixLength$10(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I
    .locals 0

    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$removePrefixLength$9(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegment;

    return-object p0
.end method

.method private static synthetic lambda$setPrefixLength$3(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;I)I
    .locals 0

    invoke-interface {p0, p1, p3}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    invoke-interface {p0, p2, p3}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$setPrefixLength$4(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I
    .locals 0

    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setPrefixLength$5(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegment;

    return-object p0
.end method

.method private static synthetic lambda$static$8(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)I
    .locals 8

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_a

    :cond_4
    if-nez v0, :cond_5

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v4

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v5

    invoke-static {v3, v4, v5}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v4

    :goto_1
    if-nez v0, :cond_6

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v3

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v5

    invoke-static {v0, v3, v5}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v0

    :goto_2
    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_8

    invoke-interface {p0, v3}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    invoke-interface {p1, v3}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v5

    invoke-interface {v1}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v6

    invoke-interface {v5}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v7

    invoke-interface {v1}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result v1

    invoke-interface {v5}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result v5

    sub-int/2addr v1, v6

    sub-int/2addr v5, v7

    sub-int/2addr v1, v5

    if-eqz v1, :cond_7

    return v1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-gt v2, v4, :cond_a

    invoke-interface {p0, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    invoke-interface {p1, v2}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    invoke-interface {v0}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v0

    invoke-interface {v1}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v1

    sub-int v1, v0, v1

    if-eqz v1, :cond_9

    return v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return v1
.end method

.method private static synthetic lambda$toOctalString$13(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    new-array p0, p0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    return-object p0
.end method

.method private static synthetic lambda$toOctalString$14(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    new-array p0, p0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    return-object p0
.end method

.method private static synthetic lambda$toOctalString$15(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    new-array p0, p0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    return-object p0
.end method

.method public static synthetic m(Linet/ipaddr/IPAddressSection;IIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/IPAddressSection;->lambda$longZeroHostCount$0(IIII)I

    move-result p0

    return p0
.end method

.method public static synthetic n(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/IPAddressSection;->lambda$toOctalString$13(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->lambda$setPrefixLength$5(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)Linet/ipaddr/IPAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method private static organizeSequentialMerge([Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "Ljava/util/List<",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Linet/ipaddr/IPAddressSegmentSeries;->sequentialBlockIterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_4

    return v1

    :cond_4
    sget-object p0, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return v0
.end method

.method private static organizeSequentially([Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "Ljava/util/List<",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v3}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Linet/ipaddr/IPAddressSegmentSeries;->sequentialBlockIterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez v0, :cond_8

    move v0, v1

    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_b

    aget-object v2, p0, v0

    if-eqz v2, :cond_7

    invoke-interface {v2}, Linet/ipaddr/format/AddressDivisionSeries;->isSinglePrefixBlock()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    invoke-interface {v2}, Linet/ipaddr/IPAddressSegmentSeries;->spanWithPrefixBlocks()[Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v2

    move v3, v1

    :goto_5
    array-length v4, v2

    if-ge v3, v4, :cond_7

    aget-object v4, v2, v3

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    move p0, v1

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_b

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {v2}, Linet/ipaddr/format/AddressDivisionSeries;->isSinglePrefixBlock()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    invoke-interface {v2}, Linet/ipaddr/IPAddressSegmentSeries;->spanWithPrefixBlocks()[Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v2

    move v3, v1

    :goto_8
    array-length v4, v2

    if-ge v3, v4, :cond_a

    aget-object v4, v2, v3

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    return v0

    :cond_c
    sget-object p0, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return v1
.end method

.method public static synthetic p([Linet/ipaddr/IPAddressSegment;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/IPAddressSection;->lambda$isPrefixSubnet$2([Linet/ipaddr/IPAddressSegment;I)I

    move-result p0

    return p0
.end method

.method public static synthetic q(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/IPAddressSection;->lambda$toOctalString$15(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->lambda$removePrefixLength$9(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)Linet/ipaddr/IPAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static removePrefixLength(Linet/ipaddr/IPAddressSection;ZLinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;Z",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "*TR;*TS;*>;",
            "Linet/ipaddr/IPAddressSection$SegFunction<",
            "TR;TS;>;)TR;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getNetworkMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v5, Linet/ipaddr/c;

    const/4 v1, 0x0

    invoke-direct {v5, p3, p0, v1}, Linet/ipaddr/c;-><init>(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)V

    new-instance v6, Linet/ipaddr/d;

    invoke-direct {v6, p3, v0, v1}, Linet/ipaddr/d;-><init>(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p1

    invoke-static/range {v1 .. v7}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/IPAddressSection;->lambda$toOctalString$14(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p0

    return-object p0
.end method

.method private setHostMaskPrefix(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    invoke-static {p1, v0}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$402(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v0, p1}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$402(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    sget-object v1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$302(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    :goto_0
    return-object p1
.end method

.method private setNetworkMaskPrefix(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    invoke-static {p1, v0}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$302(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v0, p1}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$302(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    sget-object v1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$402(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    :goto_0
    return-object p1
.end method

.method public static setPrefixLength(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;IZZZLinet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "*TR;*TS;*>;IZZZ",
            "Linet/ipaddr/IPAddressSection$SegFunction<",
            "TR;TS;>;)TR;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p2, v4, :cond_0

    return-object p0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le p2, v4, :cond_1

    invoke-static {p0, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    return-object p0

    :cond_1
    invoke-static {p0, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-virtual {p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le p2, v5, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, p2

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le p2, v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Linet/ipaddr/IPAddressNetwork;->getNetworkMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object v3

    invoke-virtual {v4, p2}, Linet/ipaddr/IPAddressNetwork;->getHostMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object v5

    goto :goto_0

    :cond_4
    invoke-virtual {v4, p2}, Linet/ipaddr/IPAddressNetwork;->getNetworkMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Linet/ipaddr/IPAddressNetwork;->getHostMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object v3

    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    :goto_0
    new-instance v6, Linet/ipaddr/f;

    invoke-direct {v6, p6, v3, v5}, Linet/ipaddr/f;-><init>(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)V

    :cond_5
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v3

    :goto_1
    const/4 v5, 0x2

    if-nez v6, :cond_6

    invoke-virtual {v4, v3}, Linet/ipaddr/IPAddressNetwork;->getNetworkMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object v3

    new-instance v4, Linet/ipaddr/d;

    invoke-direct {v4, p6, v3, v5}, Linet/ipaddr/d;-><init>(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)V

    move-object v6, v4

    :cond_6
    invoke-static {p2}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    new-instance v4, Linet/ipaddr/c;

    invoke-direct {v4, p6, p0, v5}, Linet/ipaddr/c;-><init>(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v6

    move v6, p5

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public static splitIntoPrefixBlocks(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ")",
            "Ljava/util/List<",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v5

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v6

    move v7, v1

    :goto_1
    if-ge v4, v5, :cond_1

    invoke-interface {p0, v4}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v7

    invoke-interface {p1, v4}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v8

    invoke-virtual {v7}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v7

    invoke-virtual {v8}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v8

    xor-int/2addr v7, v8

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v7, :cond_2

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result p1

    :goto_3
    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_2
    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    move v9, v8

    goto :goto_5

    :cond_3
    move v9, v1

    :goto_5
    if-eqz v9, :cond_4

    add-int/lit8 v10, v4, 0x1

    if-ne v10, v5, :cond_4

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result p1

    sub-int/2addr p1, v8

    goto :goto_3

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v7, v6, 0x20

    sub-int/2addr v5, v7

    add-int/2addr v5, v3

    invoke-interface {p0, v5}, Linet/ipaddr/IPAddressSegmentSeries;->includesZeroHost(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p1, v5}, Linet/ipaddr/IPAddressSegmentSeries;->includesMaxHost(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p0, v5}, Linet/ipaddr/IPAddressSegmentSeries;->toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    goto :goto_4

    :goto_6
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSection$SeriesStack;->pop()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_7

    :cond_5
    iget-object p0, v2, Linet/ipaddr/IPAddressSection$SeriesStack;->lower:Linet/ipaddr/IPAddressSegmentSeries;

    iget-object p1, v2, Linet/ipaddr/IPAddressSection$SeriesStack;->upper:Linet/ipaddr/IPAddressSegmentSeries;

    iget v3, v2, Linet/ipaddr/IPAddressSection$SeriesStack;->previousSegmentBits:I

    iget v4, v2, Linet/ipaddr/IPAddressSection$SeriesStack;->currentSegment:I

    goto :goto_0

    :cond_6
    :goto_7
    return-object v0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    invoke-interface {p1, v5}, Linet/ipaddr/IPAddressSegmentSeries;->toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v5

    const-wide/16 v7, -0x1

    invoke-interface {v5, v7, v8}, Linet/ipaddr/IPAddressSegmentSeries;->increment(J)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v7

    if-eqz v9, :cond_8

    add-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    :cond_8
    if-nez v2, :cond_9

    new-instance v2, Linet/ipaddr/IPAddressSection$SeriesStack;

    const/16 v6, 0x80

    invoke-direct {v2, v6}, Linet/ipaddr/IPAddressSection$SeriesStack;-><init>(I)V

    :cond_9
    invoke-virtual {v2, v5, p1, v3, v4}, Linet/ipaddr/IPAddressSection$SeriesStack;->push(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;II)V

    move-object p1, v7

    goto/16 :goto_0
.end method

.method public static splitIntoSequentialBlocks(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSection$SeriesCreator;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "Linet/ipaddr/IPAddressSection$SeriesCreator;",
            ")",
            "Ljava/util/List<",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p0 .. p0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v3

    move-object/from16 v4, p0

    if-nez v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    invoke-interface/range {p0 .. p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v6

    move v9, v7

    move v10, v9

    move-object/from16 v6, p1

    move-object v7, v8

    :goto_0
    invoke-interface {v4, v9}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-interface {v6, v9}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v13

    invoke-virtual {v11}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v11

    invoke-virtual {v13}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v13

    add-int/2addr v10, v5

    if-ne v11, v13, :cond_2

    if-lt v12, v3, :cond_1

    goto :goto_1

    :cond_1
    move v9, v12

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v11, v13, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v3

    goto :goto_2

    :cond_3
    invoke-interface {v4, v10}, Linet/ipaddr/IPAddressSegmentSeries;->includesZeroHost(I)Z

    move-result v14

    invoke-interface {v6, v10}, Linet/ipaddr/IPAddressSegmentSeries;->includesMaxHost(I)Z

    move-result v15

    move/from16 v16, v3

    const-wide/16 v2, -0x1

    if-eqz v14, :cond_9

    if-eqz v15, :cond_8

    invoke-interface {v0, v4, v9, v11, v13}, Linet/ipaddr/IPAddressSection$SeriesCreator;->apply(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz v7, :cond_5

    :goto_3
    invoke-interface {v7}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/IPAddressSegmentSeries;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Linet/ipaddr/IPAddressSection$SeriesStack;->pop()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    iget-object v4, v8, Linet/ipaddr/IPAddressSection$SeriesStack;->lower:Linet/ipaddr/IPAddressSegmentSeries;

    iget-object v6, v8, Linet/ipaddr/IPAddressSection$SeriesStack;->upper:Linet/ipaddr/IPAddressSegmentSeries;

    iget v10, v8, Linet/ipaddr/IPAddressSection$SeriesStack;->previousSegmentBits:I

    iget v9, v8, Linet/ipaddr/IPAddressSection$SeriesStack;->currentSegment:I

    :goto_5
    move/from16 v3, v16

    const/16 v2, 0x8

    goto :goto_0

    :cond_7
    :goto_6
    return-object v1

    :cond_8
    invoke-interface {v6, v10}, Linet/ipaddr/IPAddressSegmentSeries;->toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Linet/ipaddr/IPAddressSegmentSeries;->increment(J)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v2

    invoke-interface {v2, v9}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v2

    invoke-interface {v0, v4, v9, v11, v2}, Linet/ipaddr/IPAddressSection$SeriesCreator;->apply(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v12

    move-object v4, v13

    goto :goto_5

    :cond_9
    const-wide/16 v2, 0x1

    if-eqz v15, :cond_b

    invoke-interface {v4, v10}, Linet/ipaddr/IPAddressSegmentSeries;->toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Linet/ipaddr/IPAddressSegmentSeries;->increment(J)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v2

    invoke-interface {v2, v9}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    invoke-interface {v0, v2, v9, v3, v13}, Linet/ipaddr/IPAddressSection$SeriesCreator;->apply(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v2

    if-nez v7, :cond_a

    new-instance v3, Ljava/util/ArrayDeque;

    const/16 v7, 0x8

    invoke-direct {v3, v7}, Ljava/util/ArrayDeque;-><init>(I)V

    move-object v7, v3

    :cond_a
    invoke-interface {v7, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    move v9, v12

    goto :goto_5

    :cond_b
    invoke-interface {v6, v10}, Linet/ipaddr/IPAddressSegmentSeries;->toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v11

    const-wide/16 v13, -0x1

    invoke-interface {v11, v13, v14}, Linet/ipaddr/IPAddressSegmentSeries;->increment(J)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v13

    invoke-interface {v4, v10}, Linet/ipaddr/IPAddressSegmentSeries;->toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v14

    invoke-interface {v14, v2, v3}, Linet/ipaddr/IPAddressSegmentSeries;->increment(J)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v2

    invoke-interface {v2, v13}, Linet/ipaddr/format/AddressItem;->compareTo(Linet/ipaddr/format/AddressItem;)I

    move-result v3

    if-gtz v3, :cond_d

    invoke-interface {v2, v9}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    invoke-interface {v13, v9}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v13

    invoke-virtual {v13}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v13

    invoke-interface {v0, v2, v9, v3, v13}, Linet/ipaddr/IPAddressSection$SeriesCreator;->apply(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v2

    if-nez v7, :cond_c

    new-instance v7, Ljava/util/ArrayDeque;

    const/16 v3, 0x8

    invoke-direct {v7, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    goto :goto_7

    :cond_c
    const/16 v3, 0x8

    :goto_7
    invoke-interface {v7, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    const/16 v3, 0x8

    :goto_8
    if-nez v8, :cond_e

    new-instance v2, Linet/ipaddr/IPAddressSection$SeriesStack;

    invoke-direct {v2, v3}, Linet/ipaddr/IPAddressSection$SeriesStack;-><init>(I)V

    move-object v8, v2

    :cond_e
    invoke-virtual {v8, v11, v6, v10, v12}, Linet/ipaddr/IPAddressSection$SeriesStack;->push(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;II)V

    move v2, v3

    move v9, v12

    move-object v6, v14

    move/from16 v3, v16

    goto/16 :goto_0
.end method

.method public static subtract(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/IntFunction;Linet/ipaddr/IPAddressSection$SegFunction;)[Linet/ipaddr/IPAddressSection;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;TR;",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;TR;*TS;*>;",
            "Ljava/util/function/IntFunction<",
            "TS;>;",
            "Linet/ipaddr/IPAddressSection$SegFunction<",
            "TR;TR;>;)[TR;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p0 .. p1}, Linet/ipaddr/IPAddressSection;->checkSectionCount(Linet/ipaddr/IPAddressSection;)V

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_1

    invoke-virtual {v8, v7}, Linet/ipaddr/IPAddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v11

    :cond_0
    invoke-virtual {v9, v12}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionArray(I)[Linet/ipaddr/IPAddressSection;

    move-result-object v0

    aput-object v7, v0, v10

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v13

    move v0, v10

    :goto_0
    if-ge v0, v13, :cond_4

    invoke-virtual {v7, v0}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    invoke-virtual {v8, v0}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v2

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v4

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v2

    if-gt v4, v1, :cond_3

    if-le v3, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v9, v12}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionArray(I)[Linet/ipaddr/IPAddressSection;

    move-result-object v0

    aput-object v7, v0, v10

    return-object v0

    :cond_4
    invoke-virtual {v9, v13}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Linet/ipaddr/IPAddressSegment;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move v6, v10

    :goto_2
    if-ge v6, v13, :cond_9

    move-object/from16 v5, p3

    invoke-interface {v5, v6}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegment;

    invoke-virtual {v8, v6}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v2

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v4

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    if-lt v2, v3, :cond_7

    if-gt v4, v1, :cond_6

    invoke-virtual {v0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v9, v2, v4, v11}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegment;

    aput-object v0, v14, v6

    :goto_3
    move/from16 v16, v6

    goto/16 :goto_5

    :cond_5
    aput-object v0, v14, v6

    goto :goto_3

    :cond_6
    invoke-virtual {v9, v2, v1, v11}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegment;

    aput-object v0, v14, v6

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move v2, v4

    move v3, v6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v16, v6

    move-object v6, v14

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->createDiffSection(Linet/ipaddr/IPAddressSection;IIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/IntFunction;[Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    :goto_4
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move/from16 v16, v6

    add-int/lit8 v5, v3, -0x1

    move-object/from16 v0, p0

    move v6, v1

    move v1, v2

    move v2, v5

    move v5, v3

    move/from16 v3, v16

    move v10, v4

    move-object/from16 v4, p2

    move v12, v5

    move-object/from16 v5, p3

    move v11, v6

    move-object v6, v14

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->createDiffSection(Linet/ipaddr/IPAddressSection;IIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/IntFunction;[Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    if-gt v10, v11, :cond_8

    invoke-virtual {v9, v12, v10, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v1

    check-cast v1, Linet/ipaddr/IPAddressSegment;

    aput-object v1, v14, v16

    goto :goto_5

    :cond_8
    invoke-virtual {v9, v12, v11, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v1

    check-cast v1, Linet/ipaddr/IPAddressSegment;

    aput-object v1, v14, v16

    add-int/lit8 v1, v11, 0x1

    move-object/from16 v0, p0

    move v2, v10

    move/from16 v3, v16

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v14

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->createDiffSection(Linet/ipaddr/IPAddressSection;IIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/IntFunction;[Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    goto :goto_4

    :goto_5
    add-int/lit8 v6, v16, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/IPAddressSection;

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v5, v2

    :goto_7
    if-ltz v3, :cond_d

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v6

    invoke-interface {v6}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v8

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSegment;->getMinPrefixLengthForBlock()I

    move-result v6

    if-ne v6, v8, :cond_b

    goto :goto_8

    :cond_b
    sub-int/2addr v5, v8

    if-eqz v6, :cond_c

    add-int/2addr v5, v6

    goto :goto_8

    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_d
    :goto_8
    if-eq v5, v2, :cond_f

    move-object/from16 v2, p4

    if-ge v5, v0, :cond_e

    move v5, v0

    :cond_e
    invoke-interface {v2, v1, v5}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/IPAddressSection;

    invoke-virtual {v15, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    move-object/from16 v2, p4

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionArray(I)[Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic t(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->lambda$adjustPrefixLength$12(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I

    move-result p0

    return p0
.end method

.method public static toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressSection$IPStringOptions;",
            ")",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams<",
            "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;)Linet/ipaddr/format/util/AddressDivisionWriter;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

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

    iget-object v1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->setWildcardOption(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)V

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->segmentStrPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSegmentStrPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions;->addrSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->setAddressSuffix(Ljava/lang/String;)V

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->addrLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setAddressLabel(Ljava/lang/String;)V

    iget-boolean v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->reverse:Z

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setReverse(Z)V

    iget-boolean v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->splitDigits:Z

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSplitDigits(Z)V

    iget-char v1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions;->zoneSeparator:C

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setZoneSeparator(C)V

    invoke-static {p0, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;Linet/ipaddr/format/util/AddressDivisionWriter;)V

    :cond_0
    return-object v0
.end method

.method public static toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toPrefixBlock(Linet/ipaddr/IPAddressSection;ILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "R:",
            "Linet/ipaddr/IPAddressSection;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TR;I",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;TR;*TS;*>;",
            "Linet/ipaddr/IPAddressSection$SegFunction<",
            "Ljava/lang/Integer;",
            "TS;>;)TR;"
        }
    .end annotation

    .line 3
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v0

    if-gt p1, v0, :cond_2

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->isNetworkSubnet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result p0

    invoke-virtual {p2, p0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    check-cast v1, [Linet/ipaddr/IPAddressSegment;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    invoke-static {v0, p1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3, v2}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/IPAddressSegment;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p2, Linet/ipaddr/PrefixLenException;

    invoke-direct {p2, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw p2
.end method

.method public static synthetic u(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/IPAddressSection;->lambda$getSpanningSequentialBlocks$7(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->lambda$removePrefixLength$10(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSection;
.end method

.method public adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSection;
    .locals 2

    .line 5
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getAdjustedPrefix(ZIZ)I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Linet/ipaddr/IPAddressSection;->removePrefixLength(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, v0, p2}, Linet/ipaddr/IPAddressSection;->setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->adjustPrefixLength(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->adjustPrefixLength(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract adjustPrefixLength(I)Linet/ipaddr/IPAddressSection;
.end method

.method public abstract adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->adjustPrefixLength(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->applyPrefixLength(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->applyPrefixLength(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract applyPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->applyPrefixLength(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public assignMinPrefixForBlock()Linet/ipaddr/IPAddressSection;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getMinPrefixLengthForBlock()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Linet/ipaddr/IPAddressSection;->setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->assignMinPrefixForBlock()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSection;
    .locals 4

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getPrefixLengthForSingleBlock()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Linet/ipaddr/IPAddressSection;->setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;

    move-result-object v1

    invoke-direct {v1}, Linet/ipaddr/IPAddressSection;->hasNoPrefixCache()Z

    iget-object v2, v1, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$102(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v2, v1, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v2, v0}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$202(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-object v1
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract blockIterator(I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blockStream(I)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cacheNormalizedString(Ljava/lang/String;)V
.end method

.method public checkMaskSectionCount(Linet/ipaddr/IPAddressSection;)V
    .locals 2

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/SizeMismatchException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/SizeMismatchException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)V

    throw v0
.end method

.method public checkSectionCount(Linet/ipaddr/IPAddressSection;)V
    .locals 2

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/SizeMismatchException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/SizeMismatchException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)V

    throw v0
.end method

.method public checkSegments([Linet/ipaddr/ipv6/IPv6AddressSegment;)V
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v4

    invoke-virtual {v0, v4}, Linet/ipaddr/AddressNetwork;->isCompatible(Linet/ipaddr/AddressNetwork;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {p1, v3}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;)V

    throw p1

    :cond_1
    return-void
.end method

.method public contains(Linet/ipaddr/AddressSection;)Z
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v1

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v4

    invoke-static {v0, v1, v4}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    invoke-interface {p1, v0}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v4

    invoke-interface {v1, v4}, Linet/ipaddr/AddressSegment;->contains(Linet/ipaddr/AddressSegment;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public containsNonZeroHosts(Linet/ipaddr/IPAddressSection;)Z
    .locals 2

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1, v0}, Linet/ipaddr/IPAddressSection;->containsNonZeroHostsImpl(Linet/ipaddr/IPAddressSection;I)Z

    move-result p1

    return p1
.end method

.method public abstract containsNonZeroHostsImpl(Linet/ipaddr/IPAddressSection;I)Z
.end method

.method public containsPrefixBlock(I)Z
    .locals 6

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v2

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v3

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v4

    invoke-static {p1, v4, v3}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v4

    if-ge v4, v2, :cond_5

    invoke-virtual {p0, v4}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v5

    invoke-static {v3, p1, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v5, p1}, Linet/ipaddr/format/standard/IPAddressDivision;->containsPrefixBlock(I)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    return v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v5}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    add-int/2addr v4, v1

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {p0, v4}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v5

    if-nez v5, :cond_3

    return v3

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public abstract coverWithPrefixBlock()Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->coverWithPrefixBlock()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getBitCount()I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method public getBlockCount(I)Ljava/math/BigInteger;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getCountImpl(I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getBlockMaskPrefixLength(Z)Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/IPAddressSection;->hasNoPrefixCache()Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v0}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$300(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSection;->checkForPrefixMask(Z)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSection;->setNetworkMaskPrefix(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v0}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$400(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSection;->checkForPrefixMask(Z)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSection;->setHostMaskPrefix(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    return-object v0
.end method

.method public getByteCount()I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method public getBytesInternal()[B
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytesInternal()[B

    move-result-object v0

    return-object v0
.end method

.method public getCountImpl()Ljava/math/BigInteger;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->getCountImpl(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCountImpl(I)Ljava/math/BigInteger;
.end method

.method public getDivision(I)Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentsInternal()[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/AddressDivision;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getHostMask()Linet/ipaddr/IPAddressSection;
    .locals 3

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Linet/ipaddr/IPAddress;->getSection(II)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getHostMask()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getHostSegmentCount(I)I
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v1

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v2

    invoke-static {p1, v1, v2}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public abstract getIterable()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getLower()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getLower()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getLower()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLower()Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getLower()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLowerNonZeroHost()Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getLowerNonZeroHost()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSegmentValue()I
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-static {v0}, Linet/ipaddr/IPAddressSegment;->getMaxSegmentValue(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v0

    return v0
.end method

.method public getMinPrefixLengthForBlock()I
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/IPAddressSection;->hasNoPrefixCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v0}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$000(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getMinPrefixLengthForBlock()I

    move-result v1

    invoke-static {v1}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$002(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkMask()Linet/ipaddr/IPAddressSection;
    .locals 3

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/IPAddress;->getSection(II)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getNetworkMask()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSegmentCount(I)I
    .locals 2

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v1

    invoke-static {p1, v0, v1}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getNonZeroHostCount()Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->cachedNonzeroHostCount:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Linet/ipaddr/IPAddressSection;->getZeroHostCountImpl(II)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/IPAddressSection;->cachedNonzeroHostCount:Ljava/math/BigInteger;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getParts(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    return-object p1

    :cond_0
    sget-object p1, Linet/ipaddr/IPAddressSection;->EMPTY_PARTS:[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    return-object p1
.end method

.method public getPrefixLengthForSingleBlock()Ljava/lang/Integer;
    .locals 3

    invoke-direct {p0}, Linet/ipaddr/IPAddressSection;->hasNoPrefixCache()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v0}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$200(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    invoke-super {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLengthForSingleBlock()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    sget-object v2, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    invoke-static {v0, v2}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$202(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$102(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-object v1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$102(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_3
    iget-object v1, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v1, v0}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$202(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->getSection(II)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSection(I)Linet/ipaddr/IPAddressSection;
.end method

.method public abstract getSection(II)Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getSegment(I)Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentsInternal()[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSegmentCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    return v0
.end method

.method public getSegmentStrings()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegments(II[Linet/ipaddr/AddressSegment;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getSegments([Linet/ipaddr/AddressSegment;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, v0}, Linet/ipaddr/IPAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    return-void
.end method

.method public getSegmentsInternal()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/IPAddressSegment;

    return-object v0
.end method

.method public getSequentialBlockCount()Ljava/math/BigInteger;
    .locals 2

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getSequentialBlockIndex()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-interface {p0, v1}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getStartsWithSQLClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Linet/ipaddr/format/util/sql/MySQLTranslator;

    invoke-direct {v0}, Linet/ipaddr/format/util/sql/MySQLTranslator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Linet/ipaddr/IPAddressSection;->getStartsWithSQLClause(Ljava/lang/StringBuilder;Ljava/lang/String;Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V

    return-void
.end method

.method public getStartsWithSQLClause(Ljava/lang/StringBuilder;Ljava/lang/String;Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Linet/ipaddr/IPAddressSection;->getStartsWithSQLClause(Ljava/lang/StringBuilder;Ljava/lang/String;ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V

    return-void
.end method

.method public abstract getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getUpper()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getUpper()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getUpper()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUpper()Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getUpper()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract getZeroHostCountImpl(II)Ljava/math/BigInteger;
.end method

.method public abstract hasNoStringCache()Z
.end method

.method public includesMaxHost()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->includesMaxHost(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public includesMaxHost(I)Z
    .locals 7

    .line 2
    if-ltz p1, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v0

    if-gt p1, v0, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, p1, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v2

    invoke-static {p1, v2, v0}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-static {v0, p1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Linet/ipaddr/IPAddressSegment;->getSegmentHostMask(I)I

    move-result v5

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v4

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    return v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->includesMax()Z

    move-result v4

    if-nez v4, :cond_1

    return v6

    :cond_2
    add-int/2addr v2, v1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v0
.end method

.method public includesZeroHost()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->includesZeroHost(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public includesZeroHost(I)Z
    .locals 9

    .line 2
    if-ltz p1, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v0

    if-gt p1, v0, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, p1, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v2

    invoke-static {p1, v2, v0}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-static {v0, p1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Linet/ipaddr/IPAddressSegment;->getSegmentHostMask(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getDivisionValue()J

    move-result-wide v7

    and-long v4, v5, v7

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->includesZero()Z

    move-result v4

    if-nez v4, :cond_1

    return v5

    :cond_2
    add-int/2addr v2, v1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v0
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->increment(J)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->increment(J)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract increment(J)Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->increment(J)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->incrementBoundary(J)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->incrementBoundary(J)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract incrementBoundary(J)Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->incrementBoundary(J)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public initCachedValues(Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/math/BigInteger;Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;)V
    .locals 0

    iget-object p7, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    if-nez p7, :cond_0

    new-instance p7, Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-direct {p7}, Linet/ipaddr/IPAddressSection$PrefixCache;-><init>()V

    iput-object p7, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSection;->setNetworkMaskPrefix(Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSection;->setHostMaskPrefix(Ljava/lang/Integer;)Ljava/lang/Integer;

    :goto_0
    invoke-super {p0, p3, p6}, Linet/ipaddr/format/AddressDivisionGroupingBase;->initCachedValues(Ljava/lang/Integer;Ljava/math/BigInteger;)V

    iget-object p1, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {p1, p4}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$002(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {p5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$102(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object p1, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {p1, p5}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$202(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method public isEntireAddress()Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v1

    invoke-static {v1}, Linet/ipaddr/IPAddress;->getSegmentCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullRange()Z
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    :cond_0
    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isFullRange()Z

    move-result v0

    return v0
.end method

.method public isHostSection(I)Z
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v0

    const/4 v2, 0x0

    if-lt p1, v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSegment;->isHostChangedByPrefix(Ljava/lang/Integer;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
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

.method public isMultiple(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isNetworkSection(IZ)Z
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v2

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v3

    invoke-static {p1, v3, v2}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {v2, p1, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/IPAddressSegment;->isNetworkChangedByPrefix(Ljava/lang/Integer;Z)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public isNetworkSubnet(I)Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v2

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v3

    invoke-static {p1, v3, v2}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v3

    if-lt v3, v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v2

    if-ne p1, v2, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    invoke-virtual {p1, v0}, Linet/ipaddr/IPAddressSegment;->isNetworkChangedByPrefixNonNull(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    return v1

    :cond_2
    invoke-static {v2, p1, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v3}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v2

    invoke-virtual {v2, p1}, Linet/ipaddr/IPAddressSegment;->isNetworkChangedByPrefixNonNull(I)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result p1

    if-nez p1, :cond_5

    add-int/2addr v3, v1

    :goto_0
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public isSingleNetwork()Z
    .locals 7

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v3

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v4

    invoke-static {v2, v3, v4}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v2

    if-gez v2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {p0, v4}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v5

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v6

    xor-int/2addr v5, v6

    if-nez v5, :cond_4

    return v1

    :cond_4
    invoke-interface {v4}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v4

    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v6, v4, 0x20

    sub-int/2addr v5, v6

    invoke-static {v4, v0, v2}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v5, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    return v1

    :cond_6
    :goto_2
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSinglePrefixBlock()Z
    .locals 3

    invoke-direct {p0}, Linet/ipaddr/IPAddressSection;->hasNoPrefixCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v0}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$100(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v0}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$100(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->isSinglePrefixBlock()Z

    move-result v0

    iget-object v1, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$102(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v1, p0, Linet/ipaddr/IPAddressSection;->prefixCache:Linet/ipaddr/IPAddressSection$PrefixCache;

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Linet/ipaddr/IPAddressSection$PrefixCache;->access$202(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_1
    return v0
.end method

.method public isZeroHost()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->isZeroHost(I)Z

    move-result v0

    return v0
.end method

.method public isZeroHost(I)Z
    .locals 4

    .line 2
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->getSegments()[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v1

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Linet/ipaddr/IPAddressSection;->isZeroHost(I[Linet/ipaddr/IPAddressSegment;III)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v0
.end method

.method public isZeroHost([Linet/ipaddr/IPAddressSegment;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">([TS;)Z"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v1

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Linet/ipaddr/IPAddressSection;->isZeroHost(I[Linet/ipaddr/IPAddressSegment;III)Z

    move-result p1

    return p1
.end method

.method public isZeroHost([Linet/ipaddr/IPAddressSegment;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">([TS;I)Z"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getBitCount()I

    move-result v2

    invoke-static {p2, p1, v0, v1, v2}, Linet/ipaddr/IPAddressSection;->isZeroHost(I[Linet/ipaddr/IPAddressSegment;III)Z

    move-result p1

    return p1
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public longCount(I)J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public longPrefixCount(I)J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longPrefixCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public longZeroHostCount(II)J
    .locals 2

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->includesZeroHost(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result p2

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v0

    invoke-static {p1, v0, p2}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v0

    new-instance v1, Linet/ipaddr/e;

    invoke-direct {v1, p0, v0, p2, p1}, Linet/ipaddr/e;-><init>(Linet/ipaddr/IPAddressSection;III)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getLongCount(Ljava/util/function/IntUnaryOperator;I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x1

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public matchesWithMask(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Z
    .locals 7

    invoke-virtual {p0, p2}, Linet/ipaddr/IPAddressSection;->checkMaskSectionCount(Linet/ipaddr/IPAddressSection;)V

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkSectionCount(Linet/ipaddr/IPAddressSection;)V

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    invoke-virtual {p2, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-virtual {p1, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v6

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v5

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v4

    invoke-virtual {v3, v6, v5, v4}, Linet/ipaddr/IPAddressSegment;->matchesWithMask(III)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public abstract nonZeroHostIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
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
            "Linet/ipaddr/IPAddressSection;",
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
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixContains(Linet/ipaddr/IPAddressSection;)Z
.end method

.method public abstract prefixIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
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
            "Linet/ipaddr/IPAddressSection;",
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
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->removePrefixLength()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->removePrefixLength(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->removePrefixLength()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->removePrefixLength(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract removePrefixLength()Linet/ipaddr/IPAddressSection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePrefixLength(Z)Linet/ipaddr/IPAddressSection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->removePrefixLength()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->removePrefixLength(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->reverseBits(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->reverseBits(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->reverseBits(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract reverseBits(Z)Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->reverseBits(Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->reverseBytes()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->reverseBytes()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->reverseBytes()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytes()Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->reverseBytes()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->reverseBytesPerSegment()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->reverseBytesPerSegment()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytesPerSegment()Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->reverseBytesPerSegment()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->reverseSegments()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->reverseSegments()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseSegments()Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->reverseSegments()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public sequentialBlockIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getSequentialBlockIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->blockIterator(I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sequentialBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getSequentialBlockIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public sequentialBlockStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getSequentialBlockIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->blockStream(I)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->setPrefixLength(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->setPrefixLength(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract setPrefixLength(I)Linet/ipaddr/IPAddressSection;
.end method

.method public abstract setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;
.end method

.method public abstract setPrefixLength(IZZ)Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->setPrefixLength(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public spanWithBlocks(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Linet/ipaddr/IPAddress;->spanWithBlocks(Linet/ipaddr/IPAddressSegmentSeries;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSection;",
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
            "Linet/ipaddr/IPAddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public toAllStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 2

    new-instance v0, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;-><init>(I)V

    invoke-interface {p0, v0}, Linet/ipaddr/IPAddressSegmentSeries;->toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toBinaryString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->binaryString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->toBinaryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->binaryString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toBinaryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isDualString()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Linet/ipaddr/IPAddressSection$IPStringCache;->binaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-static {v0}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getLower()Linet/ipaddr/IPAddressSection;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getUpper()Linet/ipaddr/IPAddressSection;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->toNormalizedStringRange(Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;Linet/ipaddr/format/string/AddressStringDivisionSeries;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Linet/ipaddr/IPAddressSection$IPStringCache;->binaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-static {v0}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toDatabaseSearchStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    new-instance v0, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    invoke-direct {v0}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;-><init>()V

    invoke-interface {p0, v0}, Linet/ipaddr/IPAddressSegmentSeries;->toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toHexString(Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexStringPrefixed:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexString:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Linet/ipaddr/IPAddressSection;->toHexString(ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    iput-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexStringPrefixed:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexString:Ljava/lang/String;

    :goto_1
    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public toHexString(ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isDualString()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_0

    :cond_0
    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    :goto_0
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getLower()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getUpper()Linet/ipaddr/IPAddressSection;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->toNormalizedStringRange(Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;Linet/ipaddr/format/string/AddressStringDivisionSeries;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_1

    :cond_2
    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    :goto_1
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toInetAddress(Linet/ipaddr/IPAddress;)Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->hasNoValueCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    iget-object v0, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->inetAddress:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toInetAddressImpl()Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->inetAddress:Ljava/net/InetAddress;

    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method public abstract toMaxHost()Linet/ipaddr/IPAddressSection;
.end method

.method public abstract toMaxHost(I)Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->toMaxHost()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->toMaxHost(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toOctalString(Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->octalStringPrefixed:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->octalString:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Linet/ipaddr/IPAddressSection;->toOctalString(ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->octalStringPrefixed:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->octalString:Ljava/lang/String;

    :goto_1
    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public toOctalString(ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 6

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isDualString()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getLower()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getUpper()Linet/ipaddr/IPAddressSection;

    move-result-object v1

    new-instance v2, Lv1/n;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lv1/n;-><init>(I)V

    new-instance v3, Linet/ipaddr/g;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Linet/ipaddr/g;-><init>(I)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createNewDivisions(ILinet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    new-instance v2, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V

    new-instance v0, Lv1/n;

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Lv1/n;-><init>(I)V

    new-instance v3, Linet/ipaddr/g;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Linet/ipaddr/g;-><init>(I)V

    invoke-virtual {v1, v4, v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createNewDivisions(ILinet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    new-instance v1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V

    if-eqz p1, :cond_0

    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->octalPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_0

    :cond_0
    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->octalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    :goto_0
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p1

    invoke-static {p1, v2, v1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->toNormalizedStringRange(Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;Linet/ipaddr/format/string/AddressStringDivisionSeries;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lv1/n;

    const/16 v0, 0x9

    invoke-direct {v4, v0}, Lv1/n;-><init>(I)V

    new-instance v5, Linet/ipaddr/g;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Linet/ipaddr/g;-><init>(I)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createNewPrefixedDivisions(ILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;Linet/ipaddr/format/standard/AddressDivisionGrouping$PrefixedGroupingCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    new-instance v1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V

    if-eqz p1, :cond_2

    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->octalPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_1

    :cond_2
    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->octalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    :goto_1
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->toPrefixBlock()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->toPrefixBlock()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract toPrefixBlock()Linet/ipaddr/IPAddressSection;
.end method

.method public abstract toPrefixBlock(I)Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->toPrefixBlock()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->toPrefixBlock(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public toStandardStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 2

    new-instance v0, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;-><init>(I)V

    invoke-interface {p0, v0}, Linet/ipaddr/IPAddressSegmentSeries;->toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/AddressComponent;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toZeroHost()Linet/ipaddr/IPAddressSection;
.end method

.method public abstract toZeroHost(I)Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->toZeroHost()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->toZeroHost(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract toZeroNetwork()Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->toZeroNetwork()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->withoutPrefixLength()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->withoutPrefixLength()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract withoutPrefixLength()Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->withoutPrefixLength()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method
