.class public Linet/ipaddr/ipv4/IPv4AddressSeqRange;
.super Linet/ipaddr/IPAddressSeqRange;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressSeqRange;",
        "Ljava/lang/Iterable<",
        "Linet/ipaddr/ipv4/IPv4Address;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:[Linet/ipaddr/ipv4/IPv4AddressSeqRange;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->EMPTY:[Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    return-void
.end method

.method private constructor <init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/IPAddressSeqRange;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)V
    .locals 6

    .line 2
    new-instance v3, Linet/ipaddr/ipv4/f;

    const/16 v0, 0x12

    invoke-direct {v3, v0}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v4, Linet/ipaddr/ipv4/f;

    const/16 v0, 0x13

    invoke-direct {v4, v0}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v5, Linet/ipaddr/ipv4/f;

    const/16 v0, 0x14

    invoke-direct {v5, v0}, Linet/ipaddr/ipv4/f;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressSeqRange;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->isCompatible(Linet/ipaddr/ipv4/IPv4AddressNetwork;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)V

    throw v0
.end method

.method private getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(ZZLinet/ipaddr/ipv4/IPv4AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$spliterator$4(ZZLinet/ipaddr/ipv4/IPv4AddressSeqRange;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixSpliterator$12(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$iterator$0(Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$iterator$1(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(ILinet/ipaddr/ipv4/IPv4AddressSeqRange;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixBlockSpliterator$11(ILinet/ipaddr/ipv4/IPv4AddressSeqRange;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$iterator$0(Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$iterator$1(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;I)Z
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$prefixBlockIterator$5(Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixBlockIterator$6([Ljava/lang/Integer;[ILinet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;I)Z
    .locals 2

    aget-object p0, p0, p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    invoke-virtual {p2, p4}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    invoke-virtual {p3, p4}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    if-ne p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    aget p0, p1, p4

    invoke-virtual {p2, p4}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    ushr-int/2addr p1, p0

    invoke-virtual {p3, p4}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p2

    invoke-virtual {p2}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p2

    ushr-int p0, p2, p0

    if-ne p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method private static synthetic lambda$prefixBlockIterator$7([Ljava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    aget-object p0, p0, p2

    if-nez p0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSegment;->prefixBlockIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$10(IZZLinet/ipaddr/ipv4/IPv4AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p3, p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->prefixBlockIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$11(ILinet/ipaddr/ipv4/IPv4AddressSeqRange;)J
    .locals 0

    invoke-virtual {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getIPv4PrefixCount(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$8(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 1

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;-><init>(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)V

    return-object v0
.end method

.method private static synthetic lambda$prefixBlockSpliterator$9(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 9

    invoke-interface {p4}, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    new-instance v2, Linet/ipaddr/ipv4/g0;

    const/4 v1, 0x1

    invoke-direct {v2, v1, p0}, Linet/ipaddr/ipv4/g0;-><init>(ILjava/io/Serializable;)V

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v4

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$prefixSpliterator$12(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 1

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;-><init>(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)V

    return-object v0
.end method

.method private static synthetic lambda$prefixSpliterator$13(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 9

    invoke-interface {p4}, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    new-instance v2, Linet/ipaddr/ipv4/g0;

    const/4 v1, 0x2

    invoke-direct {v2, v1, p0}, Linet/ipaddr/ipv4/g0;-><init>(ILjava/io/Serializable;)V

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v4

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$prefixSpliterator$14(IZZLinet/ipaddr/ipv4/IPv4AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->prefixBlockIterator(I)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Linet/ipaddr/IPAddressSeqRange;->rangedIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p3, p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->prefixIterator(I)Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$15(ILinet/ipaddr/ipv4/IPv4AddressSeqRange;)J
    .locals 0

    invoke-virtual {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getIPv4PrefixCount(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$spliterator$2(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 1

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;-><init>(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)V

    return-object v0
.end method

.method private static synthetic lambda$spliterator$3(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILinet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 9

    invoke-interface {p3}, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    new-instance v2, Linet/ipaddr/ipv4/g0;

    const/4 v1, 0x0

    invoke-direct {v2, v1, p0}, Linet/ipaddr/ipv4/g0;-><init>(ILjava/io/Serializable;)V

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v4

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$spliterator$4(ZZLinet/ipaddr/ipv4/IPv4AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(IZZLinet/ipaddr/ipv4/IPv4AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixBlockSpliterator$10(IZZLinet/ipaddr/ipv4/IPv4AddressSeqRange;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(IZZLinet/ipaddr/ipv4/IPv4AddressSeqRange;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixSpliterator$14(IZZLinet/ipaddr/ipv4/IPv4AddressSeqRange;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixBlockSpliterator$9(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixBlockIterator$5(Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixBlockSpliterator$8(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$spliterator$2(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILinet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$spliterator$3(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILinet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t([Ljava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixBlockIterator$7([Ljava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(ILinet/ipaddr/ipv4/IPv4AddressSeqRange;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixSpliterator$15(ILinet/ipaddr/ipv4/IPv4AddressSeqRange;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic v(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixSpliterator$13(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w([Ljava/lang/Integer;[ILinet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->lambda$prefixBlockIterator$6([Ljava/lang/Integer;[ILinet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->coverWithPrefixBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public coverWithPrefixBlock()Linet/ipaddr/ipv4/IPv4Address;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4Address;->coverWithPrefixBlock(Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V

    return-object v0
.end method

.method public bridge synthetic createEmpty()[Linet/ipaddr/IPAddressSeqRange;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->createEmpty()[Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public createEmpty()[Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 1

    .line 2
    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->EMPTY:[Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    return-object v0
.end method

.method public bridge synthetic createPair(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->createPair(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public createPair(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 2

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p2

    aput-object p2, v0, p1

    return-object v0
.end method

.method public bridge synthetic createSingle()[Linet/ipaddr/IPAddressSeqRange;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->createSingle()[Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public createSingle()[Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 2

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 2

    .line 4
    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    aput-object p1, v0, v1

    return-object v0
.end method

.method public getCountImpl()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getIPv4Count()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getIPv4Count()J
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4Address;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getIPv4PrefixCount(I)J
    .locals 5

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getBitCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getIPv4Count()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sub-int/2addr v0, p1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->longValue()J

    move-result-wide v1

    ushr-long/2addr v1, v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->longValue()J

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

.method public getIterable()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method

.method public getMinPrefixLengthForBlock()I
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getBitCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4Address;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4Address;->intValue()I

    move-result v2

    not-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

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

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getIPv4PrefixCount(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public getPrefixLengthForSingleBlock()Ljava/lang/Integer;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getMinPrefixLengthForBlock()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4Address;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4Address;->intValue()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getBitCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    sub-int/2addr v3, v0

    ushr-int/2addr v1, v3

    ushr-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method

.method public bridge synthetic intersect(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->intersect(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->intersect(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->isMultiple()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v2}, Linet/ipaddr/IPAddressSeqRange;->iterator(Linet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getSegmentCount()I

    move-result v7

    new-instance v3, Lv1/n;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Lv1/n;-><init>(I)V

    new-instance v4, Lv1/n;

    const/16 v5, 0x19

    invoke-direct {v4, v5}, Lv1/n;-><init>(I)V

    new-instance v5, Lv1/n;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lv1/n;-><init>(I)V

    add-int/lit8 v6, v7, -0x1

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Linet/ipaddr/IPAddressSeqRange;->iterator(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/format/standard/AddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSeqRange$SegValueComparator;IILinet/ipaddr/IPAddressSection$SegFunction;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic join(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->join(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public join(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->join(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    return-object p1
.end method

.method public prefixBlockIterator(I)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v2

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBitsPerSegment()I

    move-result v3

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getSegmentCount()I

    move-result v5

    new-array v6, v5, [Ljava/lang/Integer;

    new-array v7, v5, [I

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v5, :cond_1

    invoke-static {v3, p1, v9}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int v10, v3, v10

    aput v10, v7, v9

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v4, v3}, Linet/ipaddr/IPAddressSeqRange;->getNetworkSegmentIndex(III)I

    move-result v9

    invoke-static {p1, v4, v3}, Linet/ipaddr/IPAddressSeqRange;->getHostSegmentIndex(III)I

    move-result p1

    new-instance v3, Lv1/n;

    const/16 v4, 0x1b

    invoke-direct {v3, v4}, Lv1/n;-><init>(I)V

    new-instance v4, Lv1/n;

    const/16 v5, 0x1c

    invoke-direct {v4, v5}, Lv1/n;-><init>(I)V

    new-instance v5, Linet/ipaddr/ipv4/h0;

    invoke-direct {v5, v6, v7, v8}, Linet/ipaddr/ipv4/h0;-><init>([Ljava/lang/Integer;[II)V

    new-instance v10, Linet/ipaddr/ipv4/i0;

    invoke-direct {v10, v6, v8}, Linet/ipaddr/ipv4/i0;-><init>([Ljava/lang/Integer;I)V

    move v6, v9

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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSeqRange;",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBitsPerSegment()I

    move-result v1

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBytesPerSegment()I

    move-result v0

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v3

    invoke-static {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->getNetworkSegmentIndex(III)I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->getHostSegmentIndex(III)I

    move-result v5

    new-instance v0, Linet/ipaddr/ipv4/w;

    const/16 v7, 0x9

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Linet/ipaddr/ipv4/w;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;I)V

    new-instance v1, Linet/ipaddr/ipv4/f0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Linet/ipaddr/ipv4/f0;-><init>(II)V

    new-instance v2, Linet/ipaddr/ipv4/v;

    const/16 v3, 0x9

    invoke-direct {v2, p1, v3}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static {p0, v0, v1, v2}, Linet/ipaddr/IPAddressSeqRange;->createSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

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
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressSeqRange;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->prefixIterator(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSeqRange;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBitsPerSegment()I

    move-result v1

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getBytesPerSegment()I

    move-result v0

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v3

    invoke-static {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->getNetworkSegmentIndex(III)I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->getHostSegmentIndex(III)I

    move-result v5

    new-instance v0, Linet/ipaddr/ipv4/w;

    const/16 v7, 0x8

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Linet/ipaddr/ipv4/w;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;I)V

    new-instance v1, Linet/ipaddr/ipv4/f0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Linet/ipaddr/ipv4/f0;-><init>(II)V

    new-instance v2, Linet/ipaddr/ipv4/v;

    const/16 v3, 0x8

    invoke-direct {v2, p1, v3}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static {p0, v0, v1, v2}, Linet/ipaddr/IPAddressSeqRange;->createPrefixSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressSeqRange;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->prefixSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithPrefixBlocks()[Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->spanWithPrefixBlocks()[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public spanWithPrefixBlocks()[Linet/ipaddr/ipv4/IPv4Address;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4Address;->spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spanWithSequentialBlocks()[Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->spanWithSequentialBlocks()[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public spanWithSequentialBlocks()[Linet/ipaddr/ipv4/IPv4Address;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4Address;->spanWithSequentialBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSeqRange;",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getSegmentCount()I

    move-result v0

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    new-instance v3, Linet/ipaddr/ipv4/c0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v0, v4}, Linet/ipaddr/ipv4/c0;-><init>(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;III)V

    new-instance v0, Linet/ipaddr/ipv4/d0;

    invoke-direct {v0, v4}, Linet/ipaddr/ipv4/d0;-><init>(I)V

    new-instance v1, Linet/ipaddr/ipv4/e0;

    invoke-direct {v1, v4}, Linet/ipaddr/ipv4/e0;-><init>(I)V

    invoke-static {p0, v3, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->createSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Linet/ipaddr/IPAddressSeqRange;)[Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->subtract(Linet/ipaddr/IPAddressSeqRange;)[Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Linet/ipaddr/IPAddressSeqRange;)[Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->subtract(Linet/ipaddr/IPAddressSeqRange;)[Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    return-object p1
.end method

.method public toIPv4String(Ljava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

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
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->toSequentialRange()Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public toSequentialRange()Linet/ipaddr/ipv4/IPv4AddressSeqRange;
    .locals 0

    .line 2
    return-object p0
.end method
