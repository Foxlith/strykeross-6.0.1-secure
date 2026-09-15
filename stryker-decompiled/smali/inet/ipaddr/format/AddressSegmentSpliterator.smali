.class Linet/ipaddr/format/AddressSegmentSpliterator;
.super Linet/ipaddr/format/SpliteratorBase;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressComponentSpliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/AddressSegment;",
        ">",
        "Linet/ipaddr/format/SpliteratorBase<",
        "TT;TT;>;",
        "Linet/ipaddr/format/util/AddressComponentSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private currentForIteration:Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final isHighest:Z

.field protected isLowest:Z

.field private final itemProvider:Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/AddressDivisionBase$SegmentCreator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private iteratorProvider:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Iterator<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private splitForIteration:Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final subIteratorProvider:Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private upperValue:I

.field private value:I


# direct methods
.method public constructor <init>(IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Iterator<",
            "TT;>;>;",
            "Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider<",
            "TT;>;",
            "Linet/ipaddr/format/AddressDivisionBase$SegmentCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/AddressSegmentSpliterator;-><init>(Linet/ipaddr/AddressSegment;IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;)V

    return-void
.end method

.method private constructor <init>(IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;ZZLinet/ipaddr/format/AddressDivisionBase$SegmentCreator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Iterator<",
            "TT;>;>;",
            "Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider<",
            "TT;>;ZZ",
            "Linet/ipaddr/format/AddressDivisionBase$SegmentCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Linet/ipaddr/format/SpliteratorBase;-><init>()V

    iput-object p3, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->iteratorProvider:Ljava/util/function/Supplier;

    iput-object p4, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->subIteratorProvider:Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;

    iput-boolean p5, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->isLowest:Z

    iput-boolean p6, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->isHighest:Z

    iput-object p7, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->itemProvider:Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;

    iput p1, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->value:I

    iput p2, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->upperValue:I

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/AddressSegment;IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Iterator<",
            "TT;>;>;",
            "Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider<",
            "TT;>;",
            "Linet/ipaddr/format/AddressDivisionBase$SegmentCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/AddressSegmentSpliterator;-><init>(IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;ZZLinet/ipaddr/format/AddressDivisionBase$SegmentCreator;)V

    iput-object p1, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->splitForIteration:Linet/ipaddr/AddressSegment;

    return-void
.end method

.method private getCurrentValue()I
    .locals 3

    iget v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->value:I

    iget-wide v1, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private provideIterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->iterator:Ljava/util/Iterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->iteratorProvider:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    :goto_0
    iput-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->iterator:Ljava/util/Iterator;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->subIteratorProvider:Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;

    iget-boolean v1, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->isLowest:Z

    iget-boolean v2, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->isHighest:Z

    iget v3, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->value:I

    iget v4, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->upperValue:I

    invoke-interface {v0, v1, v2, v3, v4}, Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;->applyAsInt(ZZII)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public estimateSize()J
    .locals 4

    iget v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->upperValue:I

    int-to-long v0, v0

    invoke-direct {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->getCurrentValue()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 5
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

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput-object v1, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->currentForIteration:Linet/ipaddr/AddressSegment;

    invoke-direct {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->provideIterator()Ljava/util/Iterator;

    move-result-object v1

    iget v3, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->upperValue:I

    iget v4, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->value:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    int-to-long v3, v3

    invoke-virtual {p0, v1, p1, v3, v4}, Linet/ipaddr/format/SpliteratorBase;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Linet/ipaddr/format/SpliteratorBase;->inForEach:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v2, p0, Linet/ipaddr/format/SpliteratorBase;->inForEach:Z

    throw p1
.end method

.method public getAddressItem()Linet/ipaddr/AddressSegment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->splitForIteration:Linet/ipaddr/AddressSegment;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->itemProvider:Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;

    iget v1, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->value:I

    iget v2, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->upperValue:I

    invoke-interface {v0, v1, v2}, Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;->applyAsInt(II)Linet/ipaddr/AddressSegment;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->splitForIteration:Linet/ipaddr/AddressSegment;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getAddressItem()Linet/ipaddr/format/AddressComponentRange;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->getAddressItem()Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()Linet/ipaddr/AddressSegment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->currentForIteration:Linet/ipaddr/AddressSegment;

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->itemProvider:Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;

    invoke-direct {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->getCurrentValue()I

    move-result v1

    iget v2, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->upperValue:I

    invoke-interface {v0, v1, v2}, Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;->applyAsInt(II)Linet/ipaddr/AddressSegment;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->currentForIteration:Linet/ipaddr/AddressSegment;

    :cond_1
    return-object v0
.end method

.method public getSize()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->estimateSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/SpliteratorBase;->inForEach:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->getCurrentValue()I

    move-result v0

    iget v1, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->upperValue:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->currentForIteration:Linet/ipaddr/AddressSegment;

    invoke-direct {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->provideIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Linet/ipaddr/format/SpliteratorBase;->tryAdvance(Ljava/util/Iterator;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic trySplit()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->trySplit()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Linet/ipaddr/format/SpliteratorBase;->inForEach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->getCurrentValue()I

    move-result v3

    iget v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->upperValue:I

    sub-int/2addr v0, v3

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    return-object v1

    :cond_1
    iput-object v1, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->splitForIteration:Linet/ipaddr/AddressSegment;

    iput-object v1, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->currentForIteration:Linet/ipaddr/AddressSegment;

    iput-object v1, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->iteratorProvider:Ljava/util/function/Supplier;

    ushr-int/2addr v0, v2

    add-int v4, v3, v0

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->value:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    new-instance v0, Linet/ipaddr/format/AddressSegmentSpliterator;

    const/4 v5, 0x0

    iget-object v6, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->subIteratorProvider:Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;

    iget-boolean v7, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->isLowest:Z

    const/4 v8, 0x0

    iget-object v9, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->itemProvider:Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Linet/ipaddr/format/AddressSegmentSpliterator;-><init>(IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;ZZLinet/ipaddr/format/AddressDivisionBase$SegmentCreator;)V

    iget-object v2, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->iterator:Ljava/util/Iterator;

    iput-object v2, v0, Linet/ipaddr/format/AddressSegmentSpliterator;->iterator:Ljava/util/Iterator;

    const/4 v2, 0x0

    iput-boolean v2, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->isLowest:Z

    iput-object v1, p0, Linet/ipaddr/format/AddressSegmentSpliterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/AddressSegmentSpliterator;->trySplit()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method
