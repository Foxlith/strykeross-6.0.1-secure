.class Linet/ipaddr/format/standard/AddressDivisionGrouping$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[TS;>;"
    }
.end annotation


# instance fields
.field private done:Z

.field private nextSet:[Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field final synthetic val$divCount:I

.field final synthetic val$excludeFunc:Ljava/util/function/Predicate;

.field final synthetic val$hostSegIteratorProducer:Ljava/util/function/IntFunction;

.field final synthetic val$hostSegmentIndex:I

.field final synthetic val$networkSegmentIndex:I

.field final synthetic val$segIteratorProducer:Ljava/util/function/IntFunction;

.field final synthetic val$segmentCreator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

.field private final variations:[Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;ILjava/util/function/IntFunction;Ljava/util/function/Predicate;ILjava/util/function/IntFunction;)V
    .locals 0

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$divCount:I

    iput-object p2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$segmentCreator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    iput p3, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$networkSegmentIndex:I

    iput-object p4, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$hostSegIteratorProducer:Ljava/util/function/IntFunction;

    iput-object p5, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$excludeFunc:Ljava/util/function/Predicate;

    iput p6, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$hostSegmentIndex:I

    iput-object p7, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$segIteratorProducer:Ljava/util/function/IntFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p4, p1, [Ljava/util/Iterator;

    iput-object p4, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->variations:[Ljava/util/Iterator;

    invoke-interface {p2, p1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->nextSet:[Linet/ipaddr/AddressSegment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->updateVariations(I)V

    :goto_0
    add-int/lit8 p3, p3, 0x1

    iget p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$divCount:I

    if-ge p3, p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->variations:[Ljava/util/Iterator;

    iget-object p2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$hostSegIteratorProducer:Ljava/util/function/IntFunction;

    invoke-interface {p2, p3}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Iterator;

    aput-object p2, p1, p3

    iget-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->nextSet:[Linet/ipaddr/AddressSegment;

    iget-object p2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->variations:[Ljava/util/Iterator;

    aget-object p2, p2, p3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/AddressSegment;

    aput-object p2, p1, p3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$excludeFunc:Ljava/util/function/Predicate;

    if-eqz p1, :cond_1

    iget-object p2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->nextSet:[Linet/ipaddr/AddressSegment;

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->increment()[Linet/ipaddr/AddressSegment;

    :cond_1
    return-void
.end method

.method private increment()[Linet/ipaddr/AddressSegment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    iget v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$networkSegmentIndex:I

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_3

    :goto_1
    iget-object v2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->variations:[Ljava/util/Iterator;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->nextSet:[Linet/ipaddr/AddressSegment;

    invoke-virtual {v1}, [Linet/ipaddr/AddressSegment;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Linet/ipaddr/AddressSegment;

    :cond_0
    iget-object v2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->nextSet:[Linet/ipaddr/AddressSegment;

    iget-object v3, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->variations:[Ljava/util/Iterator;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/AddressSegment;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->updateVariations(I)V

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$excludeFunc:Ljava/util/function/Predicate;

    if-eqz v0, :cond_1

    iget-object v2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->nextSet:[Linet/ipaddr/AddressSegment;

    invoke-interface {v0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$networkSegmentIndex:I

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->done:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->nextSet:[Linet/ipaddr/AddressSegment;

    :cond_4
    return-object v1
.end method

.method private updateVariations(I)V
    .locals 2

    :goto_0
    iget v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$hostSegmentIndex:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->variations:[Ljava/util/Iterator;

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$segIteratorProducer:Ljava/util/function/IntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    aput-object v1, v0, p1

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->nextSet:[Linet/ipaddr/AddressSegment;

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->variations:[Ljava/util/Iterator;

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/AddressSegment;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$networkSegmentIndex:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->variations:[Ljava/util/Iterator;

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->val$hostSegIteratorProducer:Ljava/util/function/IntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    aput-object v1, v0, p1

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->nextSet:[Linet/ipaddr/AddressSegment;

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->variations:[Ljava/util/Iterator;

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/AddressSegment;

    aput-object v1, v0, p1

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->done:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->next()[Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public next()[Linet/ipaddr/AddressSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->done:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$4;->increment()[Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
