.class Linet/ipaddr/format/AddressSeriesSpliterator;
.super Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressComponentSpliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/AddressComponent;",
        ">",
        "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator<",
        "TT;TT;>;",
        "Linet/ipaddr/format/util/AddressComponentSpliterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink<",
            "TT;TT;>;>;",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider<",
            "TT;TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/util/function/ToLongFunction<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink<",
            "TT;TT;>;>;",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider<",
            "TT;TT;>;Z",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/util/function/ToLongFunction<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;ZZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/AddressComponent;

    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/format/AddressSeriesSpliterator;->createSpliterator(Linet/ipaddr/AddressComponent;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/AddressSeriesSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public createSpliterator(Linet/ipaddr/AddressComponent;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/AddressSeriesSpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/util/function/ToLongFunction<",
            "TT;>;)",
            "Linet/ipaddr/format/AddressSeriesSpliterator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v8, Linet/ipaddr/format/AddressSeriesSpliterator;

    iget-object v2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->splitter:Ljava/util/function/Predicate;

    iget-object v3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iteratorProvider:Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;

    move-object v0, v8

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/AddressSeriesSpliterator;-><init>(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-object v8
.end method

.method public bridge synthetic trySplit()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressSeriesSpliterator;->trySplit()Linet/ipaddr/format/AddressSeriesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Linet/ipaddr/format/AddressSeriesSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/AddressSeriesSpliterator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->trySplit()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/AddressSeriesSpliterator;

    return-object v0
.end method

.method public bridge synthetic trySplit()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/AddressSeriesSpliterator;->trySplit()Linet/ipaddr/format/AddressSeriesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/format/AddressSeriesSpliterator;->trySplit()Linet/ipaddr/format/AddressSeriesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/format/AddressSeriesSpliterator;->trySplit()Linet/ipaddr/format/AddressSeriesSpliterator;

    move-result-object v0

    return-object v0
.end method
