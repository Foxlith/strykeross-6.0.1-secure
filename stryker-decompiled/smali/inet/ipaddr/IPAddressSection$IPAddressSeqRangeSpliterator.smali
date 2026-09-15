.class Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;
.super Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPAddressSeqRangeSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Linet/ipaddr/format/AddressComponentRange;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator<",
        "TS;TT;>;",
        "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
        "TS;TT;>;"
    }
.end annotation


# instance fields
.field final splitter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TT;>;>;",
            "Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider<",
            "TS;TT;>;",
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
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    iput-object p2, p0, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;->splitter:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;Ljava/util/function/ToLongFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TT;>;>;",
            "Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider<",
            "TS;TT;>;",
            "Ljava/util/function/ToLongFunction<",
            "TS;>;)V"
        }
    .end annotation

    .line 2
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    iput-object p2, p0, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;->splitter:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink<",
            "TS;TT;>;>;",
            "Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider<",
            "TS;TT;>;Z",
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
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;ZZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    move-object v1, p2

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;->splitter:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;
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
            "Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;

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

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/IPAddressSection$SeqRangeIteratorProvider;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-object v8
.end method

.method public bridge synthetic createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;->createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public split()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressSection$IPAddressSeqRangeSpliterator;->splitter:Ljava/util/function/Predicate;

    invoke-interface {v0, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
