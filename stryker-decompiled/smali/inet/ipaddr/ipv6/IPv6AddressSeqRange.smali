.class public Linet/ipaddr/ipv6/IPv6AddressSeqRange;
.super Linet/ipaddr/IPAddressSeqRange;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressSeqRange;",
        "Ljava/lang/Iterable<",
        "Linet/ipaddr/ipv6/IPv6Address;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:[Linet/ipaddr/ipv6/IPv6AddressSeqRange;

.field private static final LONG_MAX:Ljava/math/BigInteger;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->LONG_MAX:Ljava/math/BigInteger;

    const/4 v0, 0x0

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->EMPTY:[Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    return-void
.end method

.method private constructor <init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/IPAddressSeqRange;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;)V
    .locals 6

    .line 2
    new-instance v3, Linet/ipaddr/ipv6/c;

    const/16 v0, 0x9

    invoke-direct {v3, v0}, Linet/ipaddr/ipv6/c;-><init>(I)V

    new-instance v4, Linet/ipaddr/ipv6/c;

    const/16 v0, 0xa

    invoke-direct {v4, v0}, Linet/ipaddr/ipv6/c;-><init>(I)V

    new-instance v5, Linet/ipaddr/ipv6/c;

    const/16 v0, 0xb

    invoke-direct {v5, v0}, Linet/ipaddr/ipv6/c;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressSeqRange;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->isCompatible(Linet/ipaddr/ipv6/IPv6AddressNetwork;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)V

    throw v0
.end method

.method public static synthetic A(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixSpliterator$22(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic B(Linet/ipaddr/ipv6/IPv6AddressSeqRange;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$spliterator$6(Linet/ipaddr/ipv6/IPv6AddressSeqRange;)Z

    move-result p0

    return p0
.end method

.method public static synthetic C(Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixBlockIterator$8(Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D([Ljava/lang/Integer;[ILinet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixBlockIterator$9([Ljava/lang/Integer;[ILinet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;I)Z

    move-result p0

    return p0
.end method

.method private getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixBlockSpliterator$14(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixSpliterator$20(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$spliterator$3(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixSpliterator$17(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixSpliterator$18(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$iterator$1(Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$iterator$2(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;I)Z
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$new$0(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address;->removeZone()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixBlockIterator$10([Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    aget-object p0, p0, p2

    if-nez p0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixBlockIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixBlockIterator$8(Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixBlockIterator$9([Ljava/lang/Integer;[ILinet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;I)Z
    .locals 2

    aget-object p0, p0, p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    invoke-virtual {p2, p4}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    invoke-virtual {p3, p4}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    if-ne p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    aget p0, p1, p4

    invoke-virtual {p2, p4}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    ushr-int/2addr p1, p0

    invoke-virtual {p3, p4}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p2

    invoke-virtual {p2}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p2

    ushr-int p0, p2, p0

    if-ne p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$11(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 1

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;-><init>(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;)V

    return-object v0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$12(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 9

    invoke-interface {p4}, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    new-instance v2, Linet/ipaddr/ipv6/u;

    const/4 v1, 0x2

    invoke-direct {v2, p0, v1}, Linet/ipaddr/ipv6/u;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;I)V

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v4

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v5

    move-object v1, p4

    move-object v3, p0

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Linet/ipaddr/IPAddressSeqRange;->split(Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;Ljava/util/function/BiFunction;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$13(IZZLinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p3, p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->prefixBlockIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$14(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/math/BigInteger;
    .locals 0

    invoke-interface {p1, p0}, Linet/ipaddr/format/AddressItem;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$15(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Z
    .locals 0

    invoke-interface {p1, p0}, Linet/ipaddr/format/AddressItem;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$16(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)J
    .locals 0

    invoke-interface {p1, p0}, Linet/ipaddr/format/AddressItem;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$prefixSpliterator$17(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 1

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;-><init>(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;)V

    return-object v0
.end method

.method private static synthetic lambda$prefixSpliterator$18(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 9

    invoke-interface {p4}, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    new-instance v2, Linet/ipaddr/ipv6/u;

    const/4 v1, 0x1

    invoke-direct {v2, p0, v1}, Linet/ipaddr/ipv6/u;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;I)V

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v4

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v5

    move-object v1, p4

    move-object v3, p0

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Linet/ipaddr/IPAddressSeqRange;->split(Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;Ljava/util/function/BiFunction;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$prefixSpliterator$19(IZZLinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->prefixBlockIterator(I)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Linet/ipaddr/IPAddressSeqRange;->rangedIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p3, p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->prefixIterator(I)Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$20(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/math/BigInteger;
    .locals 0

    invoke-interface {p1, p0}, Linet/ipaddr/format/AddressItem;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$21(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Z
    .locals 0

    invoke-interface {p1, p0}, Linet/ipaddr/format/AddressItem;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$prefixSpliterator$22(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)J
    .locals 0

    invoke-interface {p1, p0}, Linet/ipaddr/format/AddressItem;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$spliterator$3(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 1

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;-><init>(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;)V

    return-object v0
.end method

.method private static synthetic lambda$spliterator$4(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILinet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 9

    invoke-interface {p3}, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    new-instance v2, Linet/ipaddr/ipv6/u;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Linet/ipaddr/ipv6/u;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;I)V

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v4

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v5

    const/4 v8, 0x0

    move-object v1, p3

    move-object v3, p0

    move v6, p1

    move v7, p2

    invoke-static/range {v1 .. v8}, Linet/ipaddr/IPAddressSeqRange;->split(Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;Ljava/util/function/BiFunction;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$spliterator$5(ZZLinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$6(Linet/ipaddr/ipv6/IPv6AddressSeqRange;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$spliterator$7(Linet/ipaddr/ipv6/IPv6AddressSeqRange;)J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getCount()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic m(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixBlockSpliterator$12(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixSpliterator$21(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$iterator$1(Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p([Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixBlockIterator$10([Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(IZZLinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixSpliterator$19(IZZLinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(IZZLinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixBlockSpliterator$13(IZZLinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$iterator$2(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(ZZLinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$spliterator$5(ZZLinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixBlockSpliterator$11(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Linet/ipaddr/ipv6/IPv6AddressSeqRange;)J
    .locals 2

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$spliterator$7(Linet/ipaddr/ipv6/IPv6AddressSeqRange;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic w(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$new$0(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILinet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$spliterator$4(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILinet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic y(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixBlockSpliterator$16(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic z(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->lambda$prefixBlockSpliterator$15(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->coverWithPrefixBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public coverWithPrefixBlock()Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6Address;->coverWithPrefixBlock(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V

    return-object v0
.end method

.method public bridge synthetic createEmpty()[Linet/ipaddr/IPAddressSeqRange;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->createEmpty()[Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public createEmpty()[Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 1

    .line 2
    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->EMPTY:[Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    return-object v0
.end method

.method public bridge synthetic createPair(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->createPair(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public createPair(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 2

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p2

    aput-object p2, v0, p1

    return-object v0
.end method

.method public bridge synthetic createSingle()[Linet/ipaddr/IPAddressSeqRange;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->createSingle()[Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public createSingle()[Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 2

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 2

    .line 4
    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    aput-object p1, v0, v1

    return-object v0
.end method

.method public getIterable()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    return-object v0
.end method

.method public bridge synthetic intersect(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->intersect(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->intersect(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->isMultiple()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v2}, Linet/ipaddr/IPAddressSeqRange;->iterator(Linet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegmentCount()I

    move-result v7

    new-instance v3, Linet/ipaddr/ipv6/h;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v4, Linet/ipaddr/ipv6/h;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v5, Linet/ipaddr/ipv6/h;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Linet/ipaddr/ipv6/h;-><init>(I)V

    add-int/lit8 v6, v7, -0x1

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Linet/ipaddr/IPAddressSeqRange;->iterator(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/format/standard/AddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSeqRange$SegValueComparator;IILinet/ipaddr/IPAddressSection$SegFunction;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic join(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->join(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public join(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->join(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    return-object p1
.end method

.method public prefixBlockIterator(I)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v2

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBitsPerSegment()I

    move-result v3

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegmentCount()I

    move-result v5

    new-array v6, v5, [Ljava/lang/Integer;

    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_1

    invoke-static {v3, p1, v8}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int v9, v3, v9

    aput v9, v7, v8

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v4, v3}, Linet/ipaddr/IPAddressSeqRange;->getNetworkSegmentIndex(III)I

    move-result v8

    invoke-static {p1, v4, v3}, Linet/ipaddr/IPAddressSeqRange;->getHostSegmentIndex(III)I

    move-result p1

    new-instance v3, Linet/ipaddr/ipv6/h;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v4, Linet/ipaddr/ipv6/h;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v5, Linet/ipaddr/ipv4/h0;

    const/4 v9, 0x1

    invoke-direct {v5, v6, v7, v9}, Linet/ipaddr/ipv4/h0;-><init>([Ljava/lang/Integer;[II)V

    new-instance v10, Linet/ipaddr/ipv4/i0;

    invoke-direct {v10, v6, v9}, Linet/ipaddr/ipv4/i0;-><init>([Ljava/lang/Integer;I)V

    move v6, v8

    move v7, p1

    move-object v8, v10

    invoke-static/range {v0 .. v8}, Linet/ipaddr/IPAddressSeqRange;->iterator(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/format/standard/AddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSeqRange$SegValueComparator;IILinet/ipaddr/IPAddressSection$SegFunction;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p1}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v0
.end method

.method public prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSeqRange;",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBitsPerSegment()I

    move-result v1

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBytesPerSegment()I

    move-result v0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v3

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->getNetworkSegmentIndex(III)I

    move-result v4

    invoke-static {p1, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->getHostSegmentIndex(III)I

    move-result v5

    new-instance v8, Linet/ipaddr/ipv6/s;

    const/16 v7, 0x8

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Linet/ipaddr/ipv6/s;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;I)V

    new-instance v9, Linet/ipaddr/ipv4/f0;

    const/4 v0, 0x2

    invoke-direct {v9, p1, v0}, Linet/ipaddr/ipv4/f0;-><init>(II)V

    new-instance v10, Lcom/google/android/material/color/utilities/f;

    const/4 v1, 0x5

    invoke-direct {v10, p1, v1}, Lcom/google/android/material/color/utilities/f;-><init>(II)V

    new-instance v11, Linet/ipaddr/ipv6/e;

    invoke-direct {v11, p1, v0}, Linet/ipaddr/ipv6/e;-><init>(II)V

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/16 v0, 0x12

    invoke-direct {v12, p1, v0}, Linet/ipaddr/ipv4/v;-><init>(II)V

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Linet/ipaddr/IPAddressSeqRange;->createSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p1}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v0
.end method

.method public prefixBlockStream(I)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public prefixIterator(I)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSeqRange;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->prefixIterator(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSeqRange;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBitsPerSegment()I

    move-result v1

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBytesPerSegment()I

    move-result v0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v3

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->getNetworkSegmentIndex(III)I

    move-result v4

    invoke-static {p1, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->getHostSegmentIndex(III)I

    move-result v5

    new-instance v8, Linet/ipaddr/ipv6/s;

    const/16 v7, 0x9

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Linet/ipaddr/ipv6/s;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;I)V

    new-instance v9, Linet/ipaddr/ipv4/f0;

    const/4 v0, 0x3

    invoke-direct {v9, p1, v0}, Linet/ipaddr/ipv4/f0;-><init>(II)V

    new-instance v10, Lcom/google/android/material/color/utilities/f;

    const/4 v1, 0x6

    invoke-direct {v10, p1, v1}, Lcom/google/android/material/color/utilities/f;-><init>(II)V

    new-instance v11, Linet/ipaddr/ipv6/e;

    invoke-direct {v11, p1, v0}, Linet/ipaddr/ipv6/e;-><init>(II)V

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/16 v0, 0x13

    invoke-direct {v12, p1, v0}, Linet/ipaddr/ipv4/v;-><init>(II)V

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Linet/ipaddr/IPAddressSeqRange;->createPrefixSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p1}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v0
.end method

.method public prefixStream(I)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6AddressSeqRange;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->prefixSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithPrefixBlocks()[Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->spanWithPrefixBlocks()[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public spanWithPrefixBlocks()[Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6Address;->spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spanWithSequentialBlocks()[Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->spanWithSequentialBlocks()[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public spanWithSequentialBlocks()[Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6Address;->spanWithSequentialBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSeqRange;",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getSegmentCount()I

    move-result v0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    new-instance v4, Linet/ipaddr/ipv4/c0;

    const/4 v3, 0x1

    invoke-direct {v4, v1, v2, v0, v3}, Linet/ipaddr/ipv4/c0;-><init>(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;III)V

    new-instance v5, Linet/ipaddr/ipv4/d0;

    invoke-direct {v5, v3}, Linet/ipaddr/ipv4/d0;-><init>(I)V

    new-instance v6, Lcom/google/android/material/color/utilities/o;

    const/16 v0, 0x15

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v7, Linet/ipaddr/format/util/h;

    const/4 v0, 0x7

    invoke-direct {v7, v0}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v8, Linet/ipaddr/ipv4/e0;

    invoke-direct {v8, v3}, Linet/ipaddr/ipv4/e0;-><init>(I)V

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Linet/ipaddr/IPAddressSeqRange;->createSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Linet/ipaddr/IPAddressSeqRange;)[Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->subtract(Linet/ipaddr/IPAddressSeqRange;)[Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Linet/ipaddr/IPAddressSeqRange;)[Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->subtract(Linet/ipaddr/IPAddressSeqRange;)[Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    return-object p1
.end method

.method public toIPv6String(Ljava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSequentialRange()Linet/ipaddr/IPAddressSeqRange;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->toSequentialRange()Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public toSequentialRange()Linet/ipaddr/ipv6/IPv6AddressSeqRange;
    .locals 0

    .line 2
    return-object p0
.end method
