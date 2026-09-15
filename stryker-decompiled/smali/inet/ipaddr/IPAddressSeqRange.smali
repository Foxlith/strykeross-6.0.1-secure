.class public abstract Linet/ipaddr/IPAddressSeqRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/IPAddressRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/IPAddressSeqRange$SegValueComparator;,
        Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;,
        Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient count:Ljava/math/BigInteger;

.field private transient hashCode:I

.field protected final lower:Linet/ipaddr/IPAddress;

.field protected final upper:Linet/ipaddr/IPAddress;


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            ">(TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/IPAddressSeqRange;->lower:Linet/ipaddr/IPAddress;

    iput-object p2, p0, Linet/ipaddr/IPAddressSeqRange;->upper:Linet/ipaddr/IPAddress;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            ">(TT;TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Linet/ipaddr/IPAddress;->contains(Linet/ipaddr/IPAddress;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2, p1}, Linet/ipaddr/IPAddress;->contains(Linet/ipaddr/IPAddress;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddress;

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linet/ipaddr/IPAddress;

    invoke-interface {p4, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddress;

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/IPAddress;

    invoke-static {v0, p3}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p4

    if-lez p4, :cond_1

    move-object v0, p3

    :cond_1
    invoke-static {p1, p2}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p3

    if-gez p3, :cond_2

    move-object p1, p2

    :cond_2
    invoke-interface {p5, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/IPAddress;

    iput-object p2, p0, Linet/ipaddr/IPAddressSeqRange;->lower:Linet/ipaddr/IPAddress;

    invoke-interface {p5, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Linet/ipaddr/IPAddress;

    iput-object p1, p0, Linet/ipaddr/IPAddressSeqRange;->upper:Linet/ipaddr/IPAddress;

    goto :goto_4

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {p5, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    check-cast p1, Linet/ipaddr/IPAddress;

    goto :goto_3

    :cond_4
    invoke-interface {p5, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :goto_3
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/IPAddress;

    iput-object p2, p0, Linet/ipaddr/IPAddressSeqRange;->lower:Linet/ipaddr/IPAddress;

    invoke-interface {p4, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_4
    return-void
.end method

.method public static synthetic a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/IPAddressSeqRange;->lambda$iterator$0(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I
    .locals 0

    invoke-static {p0, p1}, Linet/ipaddr/IPAddress;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p0

    return p0
.end method

.method private containsRange(Linet/ipaddr/format/IPAddressRange;)Z
    .locals 2

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-static {p1, v0}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static createPrefixSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/format/AddressComponentRange;",
            ">(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TS;>;>;",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider<",
            "TS;TS;>;",
            "Ljava/util/function/Function<",
            "TS;",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/function/Predicate<",
            "TS;>;",
            "Ljava/util/function/ToLongFunction<",
            "TS;>;)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-object v7
.end method

.method public static createPrefixSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/format/AddressComponentRange;",
            ">(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TS;>;>;",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider<",
            "TS;TS;>;",
            "Ljava/util/function/ToLongFunction<",
            "TS;>;)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "TS;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;Ljava/util/function/ToLongFunction;)V

    return-object v0
.end method

.method public static createSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/format/AddressComponentRange;",
            "T:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TT;>;>;",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider<",
            "TS;TT;>;",
            "Ljava/util/function/Function<",
            "TS;",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/function/Predicate<",
            "TS;>;",
            "Ljava/util/function/ToLongFunction<",
            "TS;>;)",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-object v7
.end method

.method public static createSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/format/AddressComponentRange;",
            "T:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TT;>;>;",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider<",
            "TS;TT;>;",
            "Ljava/util/function/ToLongFunction<",
            "TS;>;)",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "TS;TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;Ljava/util/function/ToLongFunction;)V

    return-object v0
.end method

.method public static synthetic d([ZILjava/util/Iterator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSegment;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/IPAddressSeqRange;->lambda$iterator$2([ZILjava/util/Iterator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSegment;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/ArrayList;ILjava/util/function/Supplier;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/IPAddressSeqRange;->lambda$iterator$3(Ljava/util/ArrayList;ILjava/util/function/Supplier;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/IPAddressSeqRange;->lambda$iterator$1(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/util/ArrayList;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->lambda$iterator$4(Ljava/util/ArrayList;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static getHostSegmentIndex(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getHostSegmentIndex(III)I

    move-result p0

    return p0
.end method

.method public static getNetworkSegmentIndex(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getNetworkSegmentIndex(III)I

    move-result p0

    return p0
.end method

.method public static iterator(Linet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/Address;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(TT;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "TT;**TS;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Linet/ipaddr/IPAddressSection;->iterator(Linet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static iterator(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/format/standard/AddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSeqRange$SegValueComparator;IILinet/ipaddr/IPAddressSection$SegFunction;)Ljava/util/Iterator;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linet/ipaddr/IPAddress;",
            "S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(TT;TT;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "TT;**TS;>;",
            "Linet/ipaddr/IPAddressSection$SegFunction<",
            "TT;TS;>;",
            "Linet/ipaddr/IPAddressSection$SegFunction<",
            "TS;",
            "Ljava/util/Iterator<",
            "TS;>;>;",
            "Linet/ipaddr/IPAddressSeqRange$SegValueComparator<",
            "TT;>;II",
            "Linet/ipaddr/IPAddressSection$SegFunction<",
            "TS;",
            "Ljava/util/Iterator<",
            "TS;>;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/Address;->getDivisionCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Z

    const/4 v5, 0x0

    const/4 v13, 0x1

    aput-boolean v13, v4, v5

    const/4 v14, 0x0

    move v15, v5

    move/from16 v16, v13

    move-object v7, v14

    :goto_0
    if-ge v15, v2, :cond_4

    move/from16 v12, p6

    if-eqz p8, :cond_0

    if-lt v15, v12, :cond_0

    move-object/from16 v10, p3

    move-object/from16 v11, p8

    goto :goto_1

    :cond_0
    move-object/from16 v10, p3

    move-object/from16 v11, p4

    :goto_1
    invoke-interface {v10, v0, v15}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linet/ipaddr/IPAddressSegment;

    move-object/from16 v9, p5

    if-eqz v16, :cond_2

    invoke-interface {v9, v0, v1, v15}, Linet/ipaddr/IPAddressSeqRange$SegValueComparator;->apply(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v16

    if-eqz v16, :cond_1

    add-int/lit8 v17, v15, 0x1

    aput-boolean v13, v4, v17

    invoke-interface {v11, v8, v15}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Iterator;

    new-instance v11, Linet/ipaddr/m;

    invoke-direct {v11, v8, v5}, Linet/ipaddr/m;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v8}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v8

    invoke-interface {v1, v15}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v5

    invoke-virtual {v6, v8, v5, v14}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v5

    check-cast v5, Linet/ipaddr/IPAddressSegment;

    invoke-interface {v11, v5, v15}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Iterator;

    new-instance v8, Linet/ipaddr/IPAddressSeqRange$4;

    invoke-direct {v8, v5, v4, v15}, Linet/ipaddr/IPAddressSeqRange$4;-><init>(Ljava/util/Iterator;[ZI)V

    new-instance v5, Linet/ipaddr/m;

    invoke-direct {v5, v8, v13}, Linet/ipaddr/m;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddress;->getMaxSegmentValue()I

    move-result v8

    invoke-virtual {v6, v5, v8, v14}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v5

    check-cast v5, Linet/ipaddr/IPAddressSegment;

    invoke-interface {v11, v5, v15}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Iterator;

    invoke-interface {v1, v15}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v8

    invoke-virtual {v8}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v8

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v8, v14}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v8

    check-cast v8, Linet/ipaddr/IPAddressSegment;

    invoke-interface {v11, v8, v15}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Iterator;

    new-instance v13, Linet/ipaddr/IPAddressSeqRange$5;

    invoke-direct {v13, v8, v4, v15}, Linet/ipaddr/IPAddressSeqRange$5;-><init>(Ljava/util/Iterator;[ZI)V

    if-nez v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddress;->getMaxSegmentValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7, v14}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v7

    check-cast v7, Linet/ipaddr/IPAddressSegment;

    :cond_3
    move-object/from16 v18, v7

    new-instance v8, Linet/ipaddr/n;

    move-object v7, v8

    move-object v14, v8

    move-object v8, v4

    move v9, v15

    move-object v10, v13

    move-object/from16 v12, v18

    invoke-direct/range {v7 .. v12}, Linet/ipaddr/n;-><init>([ZILjava/util/Iterator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSegment;)V

    new-instance v7, Linet/ipaddr/o;

    invoke-direct {v7, v3, v15, v14, v5}, Linet/ipaddr/o;-><init>(Ljava/util/ArrayList;ILinet/ipaddr/n;Ljava/util/Iterator;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v18

    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_4
    new-instance v5, Linet/ipaddr/p;

    const/4 v1, 0x0

    invoke-direct {v5, v1, v3}, Linet/ipaddr/p;-><init>(ILjava/io/Serializable;)V

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/Address;->getSegmentCount()I

    move-result v0

    move-object/from16 v1, p2

    move-object v2, v5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v5}, Linet/ipaddr/IPAddressSection;->iterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/IntFunction;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v6, v0}, Linet/ipaddr/IPAddressSection;->iterator(Linet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs join([Linet/ipaddr/IPAddressSeqRange;)[Linet/ipaddr/IPAddressSeqRange;
    .locals 15

    .line 2
    invoke-virtual {p0}, [Linet/ipaddr/IPAddressSeqRange;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Linet/ipaddr/IPAddressSeqRange;

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-gt v3, v0, :cond_2

    aget-object v6, p0, v3

    if-nez v6, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    aget-object v6, p0, v0

    if-nez v6, :cond_0

    if-le v0, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    if-le v0, v3, :cond_1

    aput-object v6, p0, v3

    aput-object v5, p0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v0, p0

    sub-int/2addr v0, v4

    sget-object v3, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {p0, v2, v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_9

    aget-object v6, p0, v3

    if-nez v6, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v6}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v7

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    move v10, v2

    :goto_3
    array-length v11, p0

    if-ge v9, v11, :cond_7

    aget-object v11, p0, v9

    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v11}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v12

    invoke-static {v8, v12}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v13

    if-gez v13, :cond_5

    const-wide/16 v13, 0x1

    invoke-virtual {v8, v13, v14}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object v13

    invoke-virtual {v13, v12}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_5
    invoke-virtual {v11}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v10

    invoke-static {v8, v10}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v11

    if-gez v11, :cond_6

    move-object v8, v10

    :cond_6
    aput-object v5, p0, v9

    add-int/lit8 v4, v4, 0x1

    move v10, v1

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual {v6, v7, v8}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object v6

    aput-object v6, p0, v3

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    if-nez v4, :cond_a

    return-object p0

    :cond_a
    array-length v0, p0

    sub-int/2addr v0, v4

    new-array v1, v0, [Linet/ipaddr/IPAddressSeqRange;

    move v3, v2

    :goto_6
    array-length v4, p0

    if-ge v2, v4, :cond_d

    aget-object v4, p0, v2

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v1, v3

    if-lt v5, v0, :cond_c

    goto :goto_8

    :cond_c
    move v3, v5

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    :goto_8
    return-object v1
.end method

.method private static synthetic lambda$iterator$0(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$iterator$1(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$iterator$2([ZILjava/util/Iterator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSegment;)Ljava/util/Iterator;
    .locals 0

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3, p4, p1}, Linet/ipaddr/IPAddressSection$SegFunction;->apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/util/Iterator;

    :goto_0
    return-object p2
.end method

.method private static synthetic lambda$iterator$3(Ljava/util/ArrayList;ILjava/util/function/Supplier;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method private static synthetic lambda$iterator$4(Ljava/util/ArrayList;I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static rangedIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Linet/ipaddr/IPAddress;",
            ">(",
            "Ljava/util/Iterator<",
            "TA;>;)",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/IPAddressSeqRange$1;

    invoke-direct {v0, p0}, Linet/ipaddr/IPAddressSeqRange$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static split(Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;Ljava/util/function/BiFunction;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Linet/ipaddr/IPAddressSeqRange;",
            "T::",
            "Linet/ipaddr/format/IPAddressRange;",
            "S::",
            "Linet/ipaddr/AddressSegment;",
            ">(",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TI;TT;>;",
            "Ljava/util/function/BiFunction<",
            "[TS;[TS;TI;>;",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;[TS;[TS;II",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p6, :cond_1

    aget-object v3, p3, v1

    aget-object v4, p4, v1

    invoke-interface {v3}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v3

    invoke-interface {v4}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v4

    if-eq v3, v4, :cond_0

    sub-int/2addr v4, v3

    ushr-int/lit8 p6, v4, 0x1

    add-int/2addr v3, p6

    invoke-interface {p2, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p6

    add-int/2addr v3, v2

    invoke-interface {p2, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v3

    move v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p6, 0x0

    move-object v3, p6

    move v4, v0

    :goto_1
    if-ne v1, p5, :cond_2

    if-nez v4, :cond_2

    aget-object p5, p3, v1

    aget-object v5, p4, v1

    invoke-interface {p5}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v6

    invoke-static {v6, p7, v1}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    sub-int/2addr v6, p7

    invoke-interface {p5}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p5

    invoke-interface {v5}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p7

    ushr-int/2addr p5, v6

    ushr-int/2addr p7, v6

    if-eq p5, p7, :cond_2

    sub-int/2addr p7, p5

    ushr-int/lit8 p6, p7, 0x1

    add-int/2addr p5, p6

    add-int/lit8 p6, p5, 0x1

    shl-int/2addr p5, v6

    const/4 p7, -0x1

    shl-int/2addr p7, v6

    not-int p7, p7

    or-int/2addr p5, p7

    shl-int/2addr p6, v6

    invoke-interface {p2, p5}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p5

    invoke-interface {p2, p6}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v3

    move-object p6, p5

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    array-length p5, p3

    invoke-interface {p2, p5}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object p7

    invoke-interface {p2, p5}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object p5

    invoke-static {p3, v0, p7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3, v0, p5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v1, 0x1

    aput-object p6, p7, v1

    aput-object v3, p5, v1

    array-length v1, p7

    invoke-interface {p6}, Linet/ipaddr/AddressSegment;->getMaxSegmentValue()I

    move-result p6

    invoke-interface {p2, p6}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p6

    invoke-static {p7, v4, v1, p6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    array-length p6, p5

    invoke-interface {p2, v0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p2

    invoke-static {p5, v4, p6, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-interface {p1, p3, p7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/IPAddressSeqRange;

    invoke-interface {p1, p5, p4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSeqRange;

    invoke-interface {p0, p2, p1}, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;->setSplitValues(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return v2
.end method


# virtual methods
.method public contains(Linet/ipaddr/IPAddress;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->containsRange(Linet/ipaddr/format/IPAddressRange;)Z

    move-result p1

    return p1
.end method

.method public contains(Linet/ipaddr/IPAddressSeqRange;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->containsRange(Linet/ipaddr/format/IPAddressRange;)Z

    move-result p1

    return p1
.end method

.method public containsPrefixBlock(I)Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-static {p1, v0, v1}, Linet/ipaddr/IPAddressSection;->containsPrefixBlock(ILinet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Z

    move-result p1

    return p1
.end method

.method public containsSinglePrefixBlock(I)Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-static {p1, v0, v1}, Linet/ipaddr/IPAddressSection;->containsSinglePrefixBlock(ILinet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Z

    move-result p1

    return p1
.end method

.method public abstract coverWithPrefixBlock()Linet/ipaddr/IPAddress;
.end method

.method public abstract create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;
.end method

.method public abstract createEmpty()[Linet/ipaddr/IPAddressSeqRange;
.end method

.method public abstract createPair(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;
.end method

.method public abstract createSingle()[Linet/ipaddr/IPAddressSeqRange;
.end method

.method public abstract createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/IPAddressSeqRange;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/IPAddressSeqRange;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public extend(Linet/ipaddr/format/IPAddressRange;)Linet/ipaddr/IPAddressSeqRange;
    .locals 8

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v3

    invoke-static {v2, v0}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v4

    invoke-static {v3, v1}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-lez v4, :cond_2

    if-gtz v5, :cond_0

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressRange;->toSequentialRange()Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v1}, Linet/ipaddr/IPAddress;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getBitCount()I

    move-result v1

    invoke-virtual {p1, v1, v7}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-static {v2, p1}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p1

    if-lez p1, :cond_1

    return-object v6

    :cond_1
    invoke-virtual {p0, v0, v3}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_2
    if-ltz v5, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {v3}, Linet/ipaddr/IPAddress;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getBitCount()I

    move-result v3

    invoke-virtual {p1, v3, v7}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-static {v0, p1}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p1

    if-lez p1, :cond_4

    return-object v6

    :cond_4
    invoke-virtual {p0, v2, v1}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public getBitCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->getBitCount()I

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes([B)[B
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/Address;->getBytes([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getBytes([BI)[B
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/Address;->getBytes([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getCount()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange;->count:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getCountImpl()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/IPAddressSeqRange;->count:Ljava/math/BigInteger;

    :cond_0
    return-object v0
.end method

.method public getCountImpl()Ljava/math/BigInteger;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/AddressItem;->getCount()Ljava/math/BigInteger;

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

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange;->lower:Linet/ipaddr/IPAddress;

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange;->upper:Linet/ipaddr/IPAddress;

    return-object v0
.end method

.method public getUpperBytes()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->getUpperBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getUpperBytes([B)[B
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/Address;->getUpperBytes([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getUpperBytes([BI)[B
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/Address;->getUpperBytes([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getUpperValue()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Linet/ipaddr/IPAddressSeqRange;->hashCode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/Address;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Linet/ipaddr/IPAddressSeqRange;->hashCode:I

    :cond_0
    return v0
.end method

.method public includesMax()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->isMax()Z

    move-result v0

    return v0
.end method

.method public includesZero()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->isZero()Z

    move-result v0

    return v0
.end method

.method public intersect(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;
    .locals 6

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v3

    invoke-static {v2, v0}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_2

    invoke-static {v3, v1}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v1

    if-ltz v1, :cond_0

    return-object p1

    :cond_0
    invoke-static {v3, v0}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p1

    if-gez p1, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {p0, v0, v3}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v1, v3}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p1

    if-ltz p1, :cond_3

    return-object p0

    :cond_3
    invoke-static {v1, v2}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p1

    if-gez p1, :cond_4

    return-object v5

    :cond_4
    invoke-virtual {p0, v2, v1}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public isMax()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->includesMax()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMore(Linet/ipaddr/IPAddressSeqRange;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMultiple()Z
    .locals 2

    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange;->count:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    return v0
.end method

.method public isSequential()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isZero()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->includesZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

.method public join(Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;
    .locals 7

    .line 1
    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v3

    invoke-static {v2, v0}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v4

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSeqRange;->overlaps(Linet/ipaddr/IPAddressSeqRange;)Z

    move-result p1

    if-nez p1, :cond_2

    const-wide/16 v5, 0x1

    if-ltz v4, :cond_0

    invoke-virtual {v1, v5, v6}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p1, v2}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v3}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v3, v5, v6}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p1, v0}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2, v1}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-static {v3, v1}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p1

    if-ltz v4, :cond_3

    if-nez v4, :cond_4

    if-nez p1, :cond_4

    return-object p0

    :cond_3
    move-object v0, v2

    :cond_4
    if-ltz p1, :cond_5

    move-object v1, v3

    :cond_5
    invoke-virtual {p0, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public overlaps(Linet/ipaddr/IPAddressSeqRange;)Z
    .locals 2

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-static {p1, v0}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract prefixBlockIterator(I)Ljava/util/Iterator;
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

.method public abstract prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSeqRange;",
            "+",
            "Linet/ipaddr/IPAddress;",
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
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public prefixIterator(I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSeqRange;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Linet/ipaddr/IPAddressSeqRange$2;

    invoke-direct {p1, p0}, Linet/ipaddr/IPAddressSeqRange$2;-><init>(Linet/ipaddr/IPAddressSeqRange;)V

    return-object p1

    :cond_0
    new-instance v0, Linet/ipaddr/IPAddressSeqRange$3;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/IPAddressSeqRange$3;-><init>(Linet/ipaddr/IPAddressSeqRange;I)V

    return-object v0

    :cond_1
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p1}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v0
.end method

.method public abstract prefixSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSeqRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixStream(I)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSeqRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract spanWithPrefixBlocks()[Linet/ipaddr/IPAddress;
.end method

.method public abstract spanWithSequentialBlocks()[Linet/ipaddr/IPAddress;
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSeqRange;",
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

.method public subtract(Linet/ipaddr/IPAddressSeqRange;)[Linet/ipaddr/IPAddressSeqRange;
    .locals 8

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v2

    invoke-static {v1, v0}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v3

    const-wide/16 v4, 0x1

    if-gez v3, :cond_3

    invoke-static {v2, p1}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v3

    const-wide/16 v6, -0x1

    if-lez v3, :cond_0

    invoke-virtual {v0, v6, v7}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p1, v4, v5}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1, v2}, Linet/ipaddr/IPAddressSeqRange;->createPair(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v2, v0}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result p1

    if-gez p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->createSingle()[Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v2, v6, v7}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Linet/ipaddr/IPAddressSeqRange;->createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0, v6, v7}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Linet/ipaddr/IPAddressSeqRange;->createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1, v2}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->createEmpty()[Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p1, v1}, Linet/ipaddr/IPAddressSeqRange;->compareLowValues(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)I

    move-result v0

    if-gez v0, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->createSingle()[Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {v1, v4, v5}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Linet/ipaddr/IPAddressSeqRange;->createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p1, v4, v5}, Linet/ipaddr/IPAddress;->increment(J)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Linet/ipaddr/IPAddressSeqRange;->createSingle(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)[Linet/ipaddr/IPAddressSeqRange;

    move-result-object p1

    return-object p1
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, " -> "

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSeqRange;->toCanonicalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCanonicalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/material/color/utilities/o;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    invoke-virtual {p0, v0, p1, v0}, Linet/ipaddr/IPAddressSeqRange;->toString(Ljava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, " -> "

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSeqRange;->toNormalizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toNormalizedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/material/color/utilities/o;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    invoke-virtual {p0, v0, p1, v0}, Linet/ipaddr/IPAddressSeqRange;->toString(Ljava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-",
            "Linet/ipaddr/IPAddress;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "-",
            "Linet/ipaddr/IPAddress;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
