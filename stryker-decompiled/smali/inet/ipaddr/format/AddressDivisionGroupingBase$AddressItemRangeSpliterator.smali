.class public Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;
.super Linet/ipaddr/format/AddressItemSpliteratorBase;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/AddressDivisionGroupingBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressItemRangeSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Linet/ipaddr/format/AddressComponentRange;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Linet/ipaddr/format/AddressItemSpliteratorBase<",
        "TS;TT;>;",
        "Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink<",
        "TS;TT;>;"
    }
.end annotation


# instance fields
.field private bigSize:Ljava/math/BigInteger;

.field private downSizer:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "TS;>;"
        }
    .end annotation
.end field

.field private forIteration:Linet/ipaddr/format/AddressComponentRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final isHighest:Z

.field private isLowest:Z

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final iteratorProvider:Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private longSize:J

.field private final longSizer:Ljava/util/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongFunction<",
            "TS;>;"
        }
    .end annotation
.end field

.field private sizer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TS;",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private split1:Linet/ipaddr/format/AddressComponentRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private split2:Linet/ipaddr/format/AddressComponentRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field final splitter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink<",
            "TS;TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink<",
            "TS;TT;>;>;",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider<",
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
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;ZZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->updateSizers()V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;ZZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink<",
            "TS;TT;>;>;",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider<",
            "TS;TT;>;ZZ",
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

    .line 2
    invoke-direct {p0}, Linet/ipaddr/format/AddressItemSpliteratorBase;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->forIteration:Linet/ipaddr/format/AddressComponentRange;

    iput-object p3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iteratorProvider:Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;

    iput-boolean p4, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->isLowest:Z

    iput-boolean p5, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->isHighest:Z

    iput-object p8, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->longSizer:Ljava/util/function/ToLongFunction;

    iput-object p6, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->sizer:Ljava/util/function/Function;

    iput-object p7, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->downSizer:Ljava/util/function/Predicate;

    iput-object p2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->splitter:Ljava/util/function/Predicate;

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->updateSizers()V

    return-void
.end method

.method private currentBigSize()Ljava/math/BigInteger;
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->originalBigSize()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private currentLongSize()J
    .locals 4

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->originalLongSize()J

    move-result-wide v0

    iget-wide v2, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private originalBigSize()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->bigSize:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->sizer:Ljava/util/function/Function;

    iget-object v1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->forIteration:Linet/ipaddr/format/AddressComponentRange;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->bigSize:Ljava/math/BigInteger;

    :cond_0
    return-object v0
.end method

.method private originalLongSize()J
    .locals 4

    iget-wide v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->longSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->longSizer:Ljava/util/function/ToLongFunction;

    iget-object v1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->forIteration:Linet/ipaddr/format/AddressComponentRange;

    invoke-interface {v0, v1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->longSize:J

    :cond_0
    return-wide v0
.end method

.method private provideIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iteratorProvider:Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;

    iget-boolean v1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->isLowest:Z

    iget-boolean v2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->isHighest:Z

    iget-object v3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->forIteration:Linet/ipaddr/format/AddressComponentRange;

    invoke-interface {v0, v1, v2, v3}, Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;->apply(ZZLjava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iterator:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public canSplit()Z
    .locals 7

    iget-boolean v0, p0, Linet/ipaddr/format/SpliteratorBase;->inForEach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->originalBigSize()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-wide v3, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->originalLongSize()J

    move-result-wide v5

    shr-long/2addr v5, v2

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public characteristics()I
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1115

    return v0

    :cond_0
    invoke-super {p0}, Linet/ipaddr/format/SpliteratorBase;->characteristics()I

    move-result v0

    return v0
.end method

.method public createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;
    .locals 10
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
            "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator<",
            "TS;TT;>;"
        }
    .end annotation

    new-instance v9, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;

    iget-object v2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->splitter:Ljava/util/function/Predicate;

    iget-object v3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iteratorProvider:Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p1

    move v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;ZZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-object v9
.end method

.method public estimateSize()J
    .locals 2

    iget-boolean v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->currentBigSize()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->currentBigSize()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_1
    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->currentLongSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/SpliteratorBase;->inForEach:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/format/SpliteratorBase;->inForEach:Z

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->provideIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->originalBigSize()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Linet/ipaddr/format/AddressItemSpliteratorBase;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;Ljava/math/BigInteger;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->provideIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->originalLongSize()J

    move-result-wide v2

    invoke-virtual {p0, v1, p1, v2, v3}, Linet/ipaddr/format/SpliteratorBase;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v0, p0, Linet/ipaddr/format/SpliteratorBase;->inForEach:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Linet/ipaddr/format/SpliteratorBase;->inForEach:Z

    throw p1
.end method

.method public getAddressItem()Linet/ipaddr/format/AddressComponentRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->forIteration:Linet/ipaddr/format/AddressComponentRange;

    return-object v0
.end method

.method public bridge synthetic getAddressItem()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->getAddressItem()Linet/ipaddr/format/AddressComponentRange;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/math/BigInteger;
    .locals 3

    iget-boolean v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->currentBigSize()Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v1, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountI:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->currentLongSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public setSplitValues(Linet/ipaddr/format/AddressComponentRange;Linet/ipaddr/format/AddressComponentRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->split1:Linet/ipaddr/format/AddressComponentRange;

    iput-object p2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->split2:Linet/ipaddr/format/AddressComponentRange;

    return-void
.end method

.method public bridge synthetic setSplitValues(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/format/AddressComponentRange;

    check-cast p2, Linet/ipaddr/format/AddressComponentRange;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->setSplitValues(Linet/ipaddr/format/AddressComponentRange;Linet/ipaddr/format/AddressComponentRange;)V

    return-void
.end method

.method public split()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->splitter:Ljava/util/function/Predicate;

    invoke-interface {v0, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/SpliteratorBase;->inForEach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->originalBigSize()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->originalLongSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    :cond_2
    :goto_0
    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->provideIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Linet/ipaddr/format/AddressItemSpliteratorBase;->tryAdvance(Ljava/util/Iterator;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public trySplit()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->canSplit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->split()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    :goto_0
    const-wide/16 v6, -0x1

    if-eqz v4, :cond_4

    iget-boolean v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->sizer:Ljava/util/function/Function;

    iget-object v8, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->split1:Linet/ipaddr/format/AddressComponentRange;

    invoke-interface {v0, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iget-object v8, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ltz v8, :cond_5

    return-object v1

    :cond_3
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->longSizer:Ljava/util/function/ToLongFunction;

    iget-object v6, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->split1:Linet/ipaddr/format/AddressComponentRange;

    invoke-interface {v0, v6}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v6

    iget-wide v8, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    cmp-long v0, v8, v6

    if-ltz v0, :cond_4

    return-object v1

    :cond_4
    move-object v0, v1

    :cond_5
    iget-object v9, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->split1:Linet/ipaddr/format/AddressComponentRange;

    iget-boolean v10, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->isLowest:Z

    iget-object v11, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->sizer:Ljava/util/function/Function;

    iget-object v12, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->downSizer:Ljava/util/function/Predicate;

    iget-object v13, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->longSizer:Ljava/util/function/ToLongFunction;

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->createSpliterator(Linet/ipaddr/format/AddressComponentRange;ZLjava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;

    move-result-object v8

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    if-eqz v4, :cond_7

    iget-boolean v2, v8, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    iput-object v2, v8, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    iput-wide v2, v8, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    :goto_1
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v2, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    goto :goto_2

    :cond_7
    iget-wide v9, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    iput-wide v9, v8, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    iput-wide v2, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    :goto_2
    iget-object v2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iterator:Ljava/util/Iterator;

    iput-object v2, v8, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iterator:Ljava/util/Iterator;

    iput-object v1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->iterator:Ljava/util/Iterator;

    iput-object v0, v8, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->bigSize:Ljava/math/BigInteger;

    iput-wide v6, v8, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->longSize:J

    :cond_8
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->split2:Linet/ipaddr/format/AddressComponentRange;

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->forIteration:Linet/ipaddr/format/AddressComponentRange;

    iput-boolean v5, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->isLowest:Z

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->updateSizers()V

    return-object v8

    :cond_9
    :goto_3
    return-object v1
.end method

.method public bridge synthetic trySplit()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->trySplit()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->trySplit()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public updateSizers()V
    .locals 4

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->sizer:Ljava/util/function/Function;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->downSizer:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    iget-object v3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->forIteration:Linet/ipaddr/format/AddressComponentRange;

    invoke-interface {v0, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    if-nez v1, :cond_3

    iput-object v2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->sizer:Ljava/util/function/Function;

    iput-object v2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->downSizer:Ljava/util/function/Predicate;

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    :cond_3
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->longSize:J

    iput-object v2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;->bigSize:Ljava/math/BigInteger;

    return-void
.end method
