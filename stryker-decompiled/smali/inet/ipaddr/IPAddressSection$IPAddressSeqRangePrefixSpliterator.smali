.class Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;
.super Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressComponentSpliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPAddressSeqRangePrefixSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Linet/ipaddr/format/AddressComponentRange;",
        ">",
        "Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator<",
        "TS;TS;>;",
        "Linet/ipaddr/format/util/AddressComponentSpliterator<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TS;>;>;",
            "Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider<",
            "TS;TS;>;",
            "Ljava/util/function/Function<",
            "TS;",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/function/Predicate<",
            "TS;>;",
            "Ljava/util/function/ToLongFunction<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;Ljava/util/function/ToLongFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TS;>;>;",
            "Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider<",
            "TS;TS;>;",
            "Ljava/util/function/ToLongFunction<",
            "TS;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;Ljava/util/function/ToLongFunction;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TS;>;>;",
            "Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider<",
            "TS;TS;>;Z",
            "Ljava/util/function/Function<",
            "TS;",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/function/Predicate<",
            "TS;>;",
            "Ljava/util/function/ToLongFunction<",
            "TS;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p7}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-void
.end method


# virtual methods
.method public createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z",
            "Ljava/util/function/Function<",
            "TS;",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/function/Predicate<",
            "TS;>;",
            "Ljava/util/function/ToLongFunction<",
            "TS;>;)",
            "Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;

    iget-object v2, p0, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;->splitter:Ljava/util/function/Predicate;

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iteratorProvider:Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;

    move-object v3, v0

    check-cast v3, Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;

    move-object v0, v8

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-object v8
.end method

.method public bridge synthetic createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;->createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;
    .locals 0

    .line 3
    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;->createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public trySplit()Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator<",
            "TS;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->trySplit()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;

    return-object v0
.end method

.method public bridge synthetic trySplit()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;->trySplit()Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;->trySplit()Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;->trySplit()Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;->trySplit()Linet/ipaddr/IPAddressSection$IPAddressSeqRangePrefixSpliterator;

    move-result-object v0

    return-object v0
.end method
