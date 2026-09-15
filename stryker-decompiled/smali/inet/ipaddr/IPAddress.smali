.class public abstract Linet/ipaddr/IPAddress;
.super Linet/ipaddr/Address;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressSegmentSeries;
.implements Linet/ipaddr/format/IPAddressRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/IPAddress$IPAddressValueProvider;,
        Linet/ipaddr/IPAddress$IPVersion;
    }
.end annotation


# static fields
.field public static final BINARY_STR_PREFIX:Ljava/lang/String; = "0b"

.field public static final DEFAULT_ADDRESS_CONVERTER:Linet/ipaddr/IPAddressConverter;

.field public static final PREFIX_LEN_SEPARATOR:C = '/'

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private canonicalHost:Linet/ipaddr/HostName;

.field fromHost:Linet/ipaddr/HostName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Linet/ipaddr/IPAddressConverter$DefaultAddressConverter;

    invoke-direct {v0}, Linet/ipaddr/IPAddressConverter$DefaultAddressConverter;-><init>()V

    sput-object v0, Linet/ipaddr/IPAddress;->DEFAULT_ADDRESS_CONVERTER:Linet/ipaddr/IPAddressConverter;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddressSection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/Address;-><init>(Linet/ipaddr/AddressSection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Linet/ipaddr/Address;",
            "Linet/ipaddr/AddressSection;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Linet/ipaddr/Address;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public static synthetic a(Linet/ipaddr/IPAddressSection$SeriesCreator;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/IPAddress;->lambda$getSpanningSequentialBlocks$1(Linet/ipaddr/IPAddressSection$SeriesCreator;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static checkPrefixBlockContainment(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            ">(TT;TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->contains(Linet/ipaddr/IPAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Linet/ipaddr/IPAddress;->checkPrefixBlockFormat(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;ZLjava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    :goto_0
    check-cast p0, [Linet/ipaddr/IPAddress;

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Linet/ipaddr/IPAddress;->contains(Linet/ipaddr/IPAddress;)Z

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

.method public static checkPrefixBlockFormat(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;ZLjava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">(TT;TT;Z",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSinglePrefixBlock()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->isSinglePrefixBlock()Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p0, p1

    goto :goto_0

    :cond_2
    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegmentSeries;

    :goto_0
    if-eqz p0, :cond_3

    const/4 p1, 0x1

    invoke-interface {p4, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/IPAddressSegmentSeries;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    return-object p1

    :cond_3
    return-object v1
.end method

.method private static checkSequentialBlockContainment(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            ">(TT;TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->contains(Linet/ipaddr/IPAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Linet/ipaddr/IPAddress;->checkSequentialBlockFormat(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;ZLjava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    :goto_0
    check-cast p0, [Linet/ipaddr/IPAddress;

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Linet/ipaddr/IPAddress;->contains(Linet/ipaddr/IPAddress;)Z

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

.method public static checkSequentialBlockFormat(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;ZLjava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">(TT;TT;Z",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result p0

    if-eqz p0, :cond_2

    move-object p0, p1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/IPAddressSegmentSeries;

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    const/4 p1, 0x1

    invoke-interface {p4, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/IPAddressSegmentSeries;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I
    .locals 1

    sget-object v0, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-virtual {v0, p0, p1}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddress;->lambda$getSpanningPrefixBlocks$0(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBitCount(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    :goto_0
    return p0
.end method

.method public static getBitsPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    .line 2
    invoke-static {p0}, Linet/ipaddr/IPAddressSegment;->getBitCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result p0

    return p0
.end method

.method public static getByteCount(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    return p0
.end method

.method public static getBytesPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    .line 2
    invoke-static {p0}, Linet/ipaddr/IPAddressSegment;->getByteCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result p0

    return p0
.end method

.method public static getMaxSegmentValue(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    .line 2
    invoke-static {p0}, Linet/ipaddr/IPAddressSegment;->getMaxSegmentValue(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result p0

    return p0
.end method

.method public static getMergedPrefixBlocks([Linet/ipaddr/IPAddressSegmentSeries;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">([",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ")",
            "Ljava/util/List<",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Linet/ipaddr/IPAddressSection;->getMergedPrefixBlocks([Linet/ipaddr/IPAddressSegmentSeries;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getMergedSequentialBlocks([Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">([",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;**TS;*>;)",
            "Ljava/util/List<",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Linet/ipaddr/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linet/ipaddr/b;-><init>(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;I)V

    invoke-static {p0, v0}, Linet/ipaddr/IPAddressSection;->getMergedSequentialBlocks([Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSection$SeriesCreator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSegmentCount(Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method public static getSpanningPrefixBlocks(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddress;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            ">(TT;TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    invoke-static {p0, p1, p5, p7}, Linet/ipaddr/IPAddress;->checkPrefixBlockContainment(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddress;

    move-result-object p5

    if-eqz p5, :cond_0

    return-object p5

    :cond_0
    new-instance v6, Lv1/n;

    const/4 p5, 0x4

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

    check-cast p1, [Linet/ipaddr/IPAddress;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Linet/ipaddr/IPAddress;

    return-object p0
.end method

.method public static getSpanningSequentialBlocks(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;)[Linet/ipaddr/IPAddress;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TT;TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;**TS;*>;)[TT;"
        }
    .end annotation

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Linet/ipaddr/a;

    const/4 v1, 0x0

    invoke-direct {v0, p6, v1}, Linet/ipaddr/a;-><init>(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;I)V

    invoke-static {p0, p1, p5, v0}, Linet/ipaddr/IPAddress;->checkSequentialBlockContainment(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Linet/ipaddr/b;

    invoke-direct {v0, p6, v1}, Linet/ipaddr/b;-><init>(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;I)V

    new-instance v8, Lv/f;

    const/16 v1, 0x14

    invoke-direct {v8, v0, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v8}, Linet/ipaddr/IPAddressSection;->applyOperatorToLowerUpper(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/Function;Linet/ipaddr/IPAddressSection$TriFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p6, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressArray(I)[Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Linet/ipaddr/IPAddress;

    return-object p0
.end method

.method private static synthetic lambda$getSpanningPrefixBlocks$0(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2}, Linet/ipaddr/IPAddressSection;->splitIntoPrefixBlocks(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSpanningSequentialBlocks$1(Linet/ipaddr/IPAddressSection$SeriesCreator;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Ljava/util/List;
    .locals 0

    invoke-static {p2, p3, p0}, Linet/ipaddr/IPAddressSection;->splitIntoSequentialBlocks(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSection$SeriesCreator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static spanWithBlocks(Linet/ipaddr/IPAddressSegmentSeries;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "Z)",
            "Ljava/util/List<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->sequentialBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/IPAddressSegmentSeries;

    if-eqz p1, :cond_0

    invoke-interface {v1}, Linet/ipaddr/IPAddressSegmentSeries;->spanWithPrefixBlocks()[Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Linet/ipaddr/IPAddressSegmentSeries;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toDelimitedSQLStrs([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const/16 v5, 0x27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\',"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toNormalizedString(Linet/ipaddr/AddressNetwork$PrefixConfiguration;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;IIIICILjava/lang/CharSequence;Ljava/lang/StringBuilder;)I
    .locals 18

    .line 1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gtz v10, :cond_0

    :goto_0
    const/4 v10, 0x1

    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_3

    :cond_0
    const/16 v10, 0x8

    if-ne v4, v10, :cond_1

    shl-int/lit8 v10, v3, 0x3

    goto :goto_2

    :cond_1
    const/16 v10, 0x10

    if-ne v4, v10, :cond_2

    shl-int/lit8 v10, v3, 0x4

    goto :goto_2

    :cond_2
    mul-int v10, v3, v4

    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    :goto_3
    invoke-static {v4, v2, v11}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, -0x1

    if-eqz v10, :cond_6

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_6

    if-nez v7, :cond_5

    add-int/lit8 v12, v12, 0x1

    :goto_4
    move/from16 v9, p7

    goto/16 :goto_7

    :cond_5
    const/16 v13, 0x30

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    if-nez v0, :cond_8

    invoke-interface {v1, v11}, Linet/ipaddr/Address$SegmentValueProvider;->getValue(I)I

    move-result v15

    :cond_7
    const/16 v16, 0x0

    goto :goto_5

    :cond_8
    invoke-interface {v0, v11}, Linet/ipaddr/Address$SegmentValueProvider;->getValue(I)I

    move-result v15

    if-eqz v1, :cond_7

    invoke-interface {v1, v11}, Linet/ipaddr/Address$SegmentValueProvider;->getValue(I)I

    move-result v16

    :goto_5
    if-eqz v0, :cond_9

    if-nez v1, :cond_a

    :cond_9
    move/from16 v9, p7

    goto :goto_6

    :cond_a
    if-eqz v10, :cond_b

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int v13, v4, v13

    shl-int v13, v14, v13

    and-int/2addr v15, v13

    and-int v16, v16, v13

    :cond_b
    move/from16 v13, v16

    if-ne v15, v13, :cond_d

    if-nez v7, :cond_c

    invoke-static {v15, v5}, Linet/ipaddr/IPAddressSegment;->toUnsignedStringLength(II)I

    move-result v13

    add-int/2addr v12, v13

    goto :goto_4

    :cond_c
    invoke-static {v15, v5, v7}, Linet/ipaddr/IPAddressSegment;->toUnsignedString(IILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    if-le v15, v13, :cond_e

    move/from16 v17, v15

    move v15, v13

    move/from16 v13, v17

    :cond_e
    move/from16 v9, p7

    if-nez v15, :cond_10

    if-ne v13, v9, :cond_10

    sget-object v13, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    if-nez v7, :cond_f

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    goto :goto_7

    :cond_f
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    if-nez v7, :cond_11

    invoke-static {v15, v5}, Linet/ipaddr/IPAddressSegment;->toUnsignedStringLength(II)I

    move-result v15

    invoke-static {v13, v5}, Linet/ipaddr/IPAddressSegment;->toUnsignedStringLength(II)I

    move-result v13

    add-int/2addr v13, v15

    sget-object v15, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v13

    add-int/2addr v12, v15

    goto :goto_7

    :cond_11
    invoke-static {v15, v5, v7}, Linet/ipaddr/IPAddressSegment;->toUnsignedString(IILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v8, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v5, v15}, Linet/ipaddr/IPAddressSegment;->toUnsignedString(IILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_7

    :goto_6
    if-eqz v10, :cond_12

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v4, v8

    shl-int v8, v14, v8

    and-int/2addr v15, v8

    :cond_12
    if-nez v7, :cond_13

    invoke-static {v15, v5}, Linet/ipaddr/IPAddressSegment;->toUnsignedStringLength(II)I

    move-result v8

    add-int/2addr v12, v8

    goto :goto_7

    :cond_13
    invoke-static {v15, v5, v7}, Linet/ipaddr/IPAddressSegment;->toUnsignedString(IILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v11, v11, 0x1

    if-lt v11, v3, :cond_19

    if-nez v7, :cond_14

    add-int/2addr v12, v3

    add-int/2addr v12, v14

    :cond_14
    if-eqz v6, :cond_16

    invoke-interface/range {p10 .. p10}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_16

    if-nez v7, :cond_15

    invoke-interface/range {p10 .. p10}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    goto :goto_8

    :cond_15
    const/16 v0, 0x25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_16
    :goto_8
    if-eqz v2, :cond_18

    if-nez v7, :cond_17

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressSegment;->toUnsignedStringLength(II)I

    move-result v0

    const/4 v8, 0x1

    add-int/2addr v0, v8

    add-int/2addr v12, v0

    goto :goto_9

    :cond_17
    const/16 v0, 0x2f

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_9
    return v12

    :cond_19
    const/4 v8, 0x1

    move/from16 v13, p8

    if-eqz v7, :cond_4

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public static toNormalizedString(Linet/ipaddr/AddressNetwork$PrefixConfiguration;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;IIIICILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 14

    .line 2
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v11}, Linet/ipaddr/IPAddress;->toNormalizedString(Linet/ipaddr/AddressNetwork$PrefixConfiguration;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;IIIICILjava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    move-result v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v12, v13

    invoke-static/range {v1 .. v12}, Linet/ipaddr/IPAddress;->toNormalizedString(Linet/ipaddr/AddressNetwork$PrefixConfiguration;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;IIIICILjava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    invoke-static {v0, v13}, Linet/ipaddr/IPAddressSection;->checkLengths(ILjava/lang/StringBuilder;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toNormalizedString(Linet/ipaddr/IPAddress$IPAddressValueProvider;)Ljava/lang/String;
    .locals 4

    .line 3
    invoke-interface {p0}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-interface {p0}, Linet/ipaddr/Address$AddressValueProvider;->getValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v1

    invoke-interface {p0}, Linet/ipaddr/Address$AddressValueProvider;->getUpperValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v2

    invoke-interface {p0}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Linet/ipaddr/ipv4/IPv4Address;->toNormalizedString(Linet/ipaddr/ipv4/IPv4AddressNetwork;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-interface {p0}, Linet/ipaddr/Address$AddressValueProvider;->getValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v1

    invoke-interface {p0}, Linet/ipaddr/Address$AddressValueProvider;->getUpperValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v2

    invoke-interface {p0}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getZone()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, v3, p0}, Linet/ipaddr/ipv6/IPv6Address;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressNetwork;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static toNormalizedString(Linet/ipaddr/IPAddress$IPAddressValueProvider;Ljava/lang/StringBuilder;)V
    .locals 13

    .line 5
    invoke-interface {p0}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-interface {p0}, Linet/ipaddr/Address$AddressValueProvider;->getValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v2

    invoke-interface {p0}, Linet/ipaddr/Address$AddressValueProvider;->getUpperValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v3

    invoke-interface {p0}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/16 v8, 0xff

    const/16 v9, 0x2e

    const/16 v10, 0xa

    const/4 v11, 0x0

    :goto_0
    move-object v12, p1

    invoke-static/range {v1 .. v12}, Linet/ipaddr/IPAddress;->toNormalizedString(Linet/ipaddr/AddressNetwork$PrefixConfiguration;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;IIIICILjava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-interface {p0}, Linet/ipaddr/Address$AddressValueProvider;->getValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v2

    invoke-interface {p0}, Linet/ipaddr/Address$AddressValueProvider;->getUpperValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v3

    invoke-interface {p0}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/16 v7, 0x10

    const v8, 0xffff

    const/16 v9, 0x3a

    const/16 v10, 0x10

    invoke-interface {p0}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getZone()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->adjustPrefixBySegment(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->adjustPrefixBySegment(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract adjustPrefixBySegment(Z)Linet/ipaddr/IPAddress;
.end method

.method public abstract adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->adjustPrefixBySegment(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->adjustPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->adjustPrefixLength(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->adjustPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->adjustPrefixLength(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract adjustPrefixLength(I)Linet/ipaddr/IPAddress;
.end method

.method public abstract adjustPrefixLength(IZ)Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->adjustPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->adjustPrefixLength(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/Address;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->applyPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->applyPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract applyPrefixLength(I)Linet/ipaddr/IPAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->applyPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public varargs applyToBounds(Ljava/util/function/BiFunction;[Linet/ipaddr/IPAddress;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-",
            "Linet/ipaddr/IPAddress;",
            "-",
            "Linet/ipaddr/IPAddress;",
            "TV;>;[",
            "Linet/ipaddr/IPAddress;",
            ")TV;"
        }
    .end annotation

    sget-object v0, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    sget-object v1, Linet/ipaddr/Address;->ADDRESS_HIGH_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v3

    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_3

    aget-object v5, p2, v2

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v5}, Linet/ipaddr/IPAddress;->convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result v6

    if-gez v6, :cond_1

    move-object v3, v5

    :cond_1
    invoke-virtual {v1, v5, v4}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result v6

    if-lez v6, :cond_2

    move-object v4, v5

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object p2

    invoke-virtual {v4}, Linet/ipaddr/IPAddress;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public assignMinPrefixForBlock()Linet/ipaddr/IPAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->getMinPrefixLengthForBlock()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Linet/ipaddr/IPAddress;->setPrefixLength(IZ)Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->assignMinPrefixForBlock()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public assignPrefixForSingleBlock()Linet/ipaddr/IPAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->getPrefixLengthForSingleBlock()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Linet/ipaddr/IPAddress;->setPrefixLength(IZ)Linet/ipaddr/IPAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->assignPrefixForSingleBlock()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract bitwiseOr(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
.end method

.method public abstract bitwiseOr(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/IPAddress;
.end method

.method public abstract bitwiseOrNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/IPAddress;
.end method

.method public abstract blockIterator(I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddress;",
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
            "Linet/ipaddr/IPAddress;",
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
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public cache(Linet/ipaddr/HostIdentifierString;)V
    .locals 2

    instance-of v0, p1, Linet/ipaddr/HostName;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/HostName;

    iput-object p1, p0, Linet/ipaddr/IPAddress;->fromHost:Linet/ipaddr/HostName;

    new-instance p1, Linet/ipaddr/IPAddressString;

    iget-object v0, p0, Linet/ipaddr/IPAddress;->fromHost:Linet/ipaddr/HostName;

    invoke-virtual {v0}, Linet/ipaddr/HostName;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/IPAddress;->fromHost:Linet/ipaddr/HostName;

    iget-object v1, v1, Linet/ipaddr/HostName;->validationOptions:Linet/ipaddr/HostNameParameters;

    iget-object v1, v1, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-direct {p1, v0, p0, v1}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddressStringParameters;)V

    :goto_0
    iput-object p1, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Linet/ipaddr/IPAddressString;

    if-eqz v0, :cond_1

    check-cast p1, Linet/ipaddr/IPAddressString;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public cacheNormalizedString(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->cacheNormalizedString(Ljava/lang/String;)V

    return-void
.end method

.method public contains(Linet/ipaddr/IPAddress;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/Address;->contains(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public contains(Linet/ipaddr/IPAddressSeqRange;)Z
    .locals 3

    .line 2
    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-static {v0, v1}, Linet/ipaddr/IPAddress;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-static {v0, v1}, Linet/ipaddr/IPAddress;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/Address;->isSequential()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->sequentialBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/IPAddress;

    invoke-virtual {v2, p1}, Linet/ipaddr/IPAddress;->contains(Linet/ipaddr/IPAddressSeqRange;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public containsNonZeroHosts(Linet/ipaddr/IPAddress;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->containsNonZeroHosts(Linet/ipaddr/IPAddressSection;)Z

    move-result p1

    return p1
.end method

.method public abstract convertArg(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
.end method

.method public abstract coverWithPrefixBlock(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
.end method

.method public abstract createFromStringParams()Linet/ipaddr/IPAddressStringParameters;
.end method

.method public getAddressfromString()Linet/ipaddr/IPAddressString;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    check-cast v0, Linet/ipaddr/IPAddressString;

    return-object v0
.end method

.method public getBitsPerSegment()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-static {v0}, Linet/ipaddr/IPAddressSegment;->getBitCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v0

    return v0
.end method

.method public getBlockMaskPrefixLength(Z)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getByteCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->getByteCount()I

    move-result v0

    return v0
.end method

.method public getBytesPerSegment()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-static {v0}, Linet/ipaddr/IPAddressSegment;->getByteCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v0

    return v0
.end method

.method public getHostMask()Linet/ipaddr/IPAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getHostMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIterable()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public getLeadingBitCount(Z)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getLeadingBitCount(Z)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getLower()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLower()Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLowerNonZeroHost()Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getLowerNonZeroHost()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMatchesSQLClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/IPAddressSection;->getStartsWithSQLClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public getMatchesSQLClause(Ljava/lang/StringBuilder;Ljava/lang/String;Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linet/ipaddr/IPAddressSection;->getStartsWithSQLClause(Ljava/lang/StringBuilder;Ljava/lang/String;Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V

    return-void
.end method

.method public getMaxSegmentValue()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-static {v0}, Linet/ipaddr/IPAddressSegment;->getMaxSegmentValue(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetwork()Linet/ipaddr/IPAddressNetwork;

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

.method public getNetworkMask()Linet/ipaddr/IPAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/Address;->getBitCount()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetworkMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNonZeroHostCount()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->getNonZeroHostCount()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getParts(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    const/4 v0, 0x0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method public getProvider()Linet/ipaddr/format/validate/IPAddressProvider;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->prefixedSubnetsAreExplicit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixBlock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddress;->toZeroHost(Z)Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->withoutPrefixLength()Linet/ipaddr/IPAddress;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderFor(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->withoutPrefixLength()Linet/ipaddr/IPAddress;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderFor(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->getSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->getSection(II)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSection;

    return-object v0
.end method

.method public getSection(I)Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->getSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection(II)Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/IPAddressSection;->getSection(II)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSequentialBlockCount()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->getSequentialBlockCount()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getTrailingBitCount(Z)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getTrailingBitCount(Z)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUpper()Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public includesMaxHost()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->includesMaxHost()Z

    move-result v0

    return v0
.end method

.method public includesMaxHost(I)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->includesMaxHost(I)Z

    move-result p1

    return p1
.end method

.method public includesZeroHost()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->includesZeroHost()Z

    move-result v0

    return v0
.end method

.method public includesZeroHost(I)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->includesZeroHost(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract increment(J)Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->incrementBoundary(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->incrementBoundary(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract incrementBoundary(J)Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->incrementBoundary(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract intersect(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
.end method

.method public isAnyLocal()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->isZero()Z

    move-result v0

    return v0
.end method

.method public isFromSameString(Linet/ipaddr/HostIdentifierString;)Z
    .locals 4

    iget-object v0, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v2, p1, Linet/ipaddr/IPAddressString;

    if-eqz v2, :cond_1

    check-cast v0, Linet/ipaddr/IPAddressString;

    check-cast p1, Linet/ipaddr/IPAddressString;

    if-eq v0, p1, :cond_0

    iget-object v2, v0, Linet/ipaddr/IPAddressString;->fullAddr:Ljava/lang/String;

    iget-object v3, p1, Linet/ipaddr/IPAddressString;->fullAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    iget-object p1, p1, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isIPv4()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->isIPv4()Z

    move-result v0

    return v0
.end method

.method public abstract isIPv4Convertible()Z
.end method

.method public isIPv6()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->isIPv6()Z

    move-result v0

    return v0
.end method

.method public abstract isIPv6Convertible()Z
.end method

.method public abstract isLinkLocal()Z
.end method

.method public abstract isLocal()Z
.end method

.method public abstract isLoopback()Z
.end method

.method public isSingleNetwork()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->isSingleNetwork()Z

    move-result v0

    return v0
.end method

.method public isUnspecified()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->isZero()Z

    move-result v0

    return v0
.end method

.method public isZeroHost()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->isZeroHost()Z

    move-result v0

    return v0
.end method

.method public isZeroHost(I)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->isZeroHost(I)Z

    move-result p1

    return p1
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mask(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;
.end method

.method public abstract mask(Linet/ipaddr/IPAddress;Z)Linet/ipaddr/IPAddress;
.end method

.method public abstract maskNetwork(Linet/ipaddr/IPAddress;I)Linet/ipaddr/IPAddress;
.end method

.method public matches(Linet/ipaddr/IPAddressString;)Z
    .locals 2

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->isFromSameString(Linet/ipaddr/HostIdentifierString;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Linet/ipaddr/Address;->isSameAddress(Linet/ipaddr/Address;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public matchesWithMask(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p2}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/IPAddressSection;->matchesWithMask(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Z

    move-result p1

    return p1
.end method

.method public varargs abstract mergeToPrefixBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
.end method

.method public varargs abstract mergeToSequentialBlocks([Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
.end method

.method public abstract nonZeroHostIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddress;",
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
            "Linet/ipaddr/IPAddress;",
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
            "Linet/ipaddr/IPAddress;",
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
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public prefixContains(Linet/ipaddr/IPAddress;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->prefixContains(Linet/ipaddr/IPAddressSection;)Z

    move-result p1

    return p1
.end method

.method public abstract prefixIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddress;",
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
            "Linet/ipaddr/IPAddress;",
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
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public removeBitCountPrefixLength()Linet/ipaddr/IPAddress;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/Address;->getBitCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->withoutPrefixLength()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->removePrefixLength()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/Address;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->removePrefixLength(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->removePrefixLength()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->removePrefixLength(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract removePrefixLength()Linet/ipaddr/IPAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePrefixLength(Z)Linet/ipaddr/IPAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->removePrefixLength()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->removePrefixLength(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->reverseBits(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->reverseBits(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->reverseBits(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract reverseBits(Z)Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->reverseBits(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->reverseBytes()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->reverseBytes()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->reverseBytes()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytes()Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->reverseBytes()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->reverseBytesPerSegment()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->reverseBytesPerSegment()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytesPerSegment()Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->reverseBytesPerSegment()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->reverseSegments()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->reverseSegments()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseSegments()Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->reverseSegments()Linet/ipaddr/IPAddress;

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
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getSequentialBlockIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddress;->blockIterator(I)Ljava/util/Iterator;

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
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getSequentialBlockIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddress;->blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

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
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getSequentialBlockIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddress;->blockStream(I)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/Address;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->setPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/Address;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->setPrefixLength(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->setPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->setPrefixLength(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract setPrefixLength(I)Linet/ipaddr/IPAddress;
.end method

.method public abstract setPrefixLength(IZ)Linet/ipaddr/IPAddress;
.end method

.method public abstract setPrefixLength(IZZ)Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->setPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddress;->setPrefixLength(IZ)Linet/ipaddr/IPAddress;

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

    .line 2
    invoke-static {p0, p1}, Linet/ipaddr/IPAddress;->spanWithBlocks(Linet/ipaddr/IPAddressSegmentSeries;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract spanWithPrefixBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
.end method

.method public abstract spanWithRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract spanWithSequentialBlocks(Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddress;",
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
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subtract(Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic toAddressString()Linet/ipaddr/HostIdentifierString;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toAddressString()Linet/ipaddr/IPAddressString;

    move-result-object v0

    return-object v0
.end method

.method public toAddressString()Linet/ipaddr/IPAddressString;
    .locals 3

    .line 2
    iget-object v0, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->createFromStringParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    new-instance v1, Linet/ipaddr/IPAddressString;

    invoke-virtual {p0}, Linet/ipaddr/Address;->toCanonicalString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddressStringParameters;)V

    iput-object v1, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getAddressfromString()Linet/ipaddr/IPAddressString;

    move-result-object v0

    return-object v0
.end method

.method public toAllStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->toAllStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toAllStrings()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toAllStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->toStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBinaryString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->toBinaryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCanonicalHostName()Linet/ipaddr/HostName;
    .locals 4

    iget-object v0, p0, Linet/ipaddr/IPAddress;->canonicalHost:Linet/ipaddr/HostName;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/Address;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Linet/ipaddr/HostName;

    new-instance v2, Linet/ipaddr/format/validate/ParsedHost;

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;Linet/ipaddr/format/validate/IPAddressProvider;)V

    invoke-direct {v0, v1, v2}, Linet/ipaddr/HostName;-><init>(Ljava/lang/String;Linet/ipaddr/format/validate/ParsedHost;)V

    iput-object p0, v0, Linet/ipaddr/HostName;->resolvedAddress:Linet/ipaddr/IPAddress;

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/HostName;

    invoke-direct {v0, v1}, Linet/ipaddr/HostName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    const-string v1, "ipaddress.error.unavailable.numeric"

    invoke-direct {v0, p0, v1}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public toCanonicalWildcardString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->toCanonicalWildcardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCompressedWildcardString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->toCompressedWildcardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toConvertedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toFullString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->toFullString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHostName()Linet/ipaddr/HostName;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddress;->fromHost:Linet/ipaddr/HostName;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toCanonicalHostName()Linet/ipaddr/HostName;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/IPAddress;->fromHost:Linet/ipaddr/HostName;

    :cond_0
    return-object v0
.end method

.method public toIPv4()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toIPv6()Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toInetAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p0}, Linet/ipaddr/IPAddressSection;->toInetAddress(Linet/ipaddr/IPAddress;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public toInetAddressImpl()Ljava/net/InetAddress;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->getBytesInternal()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract toMaxHost()Linet/ipaddr/IPAddress;
.end method

.method public abstract toMaxHost(I)Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toMaxHost()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->toMaxHost(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedWildcardString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->toNormalizedWildcardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toOctalString(Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressSection;->toOctalString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toPrefixBlock()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toPrefixBlock()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract toPrefixBlock()Linet/ipaddr/IPAddress;
.end method

.method public abstract toPrefixBlock(I)Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toPrefixBlock()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->toPrefixBlock(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public toPrefixLengthString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->toPrefixLengthString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toReverseDNSLookupString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->toReverseDNSLookupString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSQLWildcardString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->toSQLWildcardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toSequentialRange()Linet/ipaddr/IPAddressSeqRange;
.end method

.method public abstract toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;
.end method

.method public toStandardStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->toStandardStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toStandardStrings()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toStandardStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->toStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object p1

    return-object p1
.end method

.method public toStrings(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->toStrings()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSubnetString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->toSubnetString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toUNCHostName()Ljava/lang/String;
.end method

.method public toUpperInetAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract toZeroHost()Linet/ipaddr/IPAddress;
.end method

.method public abstract toZeroHost(I)Linet/ipaddr/IPAddress;
.end method

.method public abstract toZeroHost(Z)Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toZeroHost()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddress;->toZeroHost(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract toZeroNetwork()Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toZeroNetwork()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->withoutPrefixLength()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->withoutPrefixLength()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract withoutPrefixLength()Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->withoutPrefixLength()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method
