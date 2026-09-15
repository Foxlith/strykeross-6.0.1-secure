.class Linet/ipaddr/format/standard/AddressDivisionGrouping$3;
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
.field result:[Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field final synthetic val$excludeFunc:Ljava/util/function/Predicate;

.field final synthetic val$segSupplier:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Predicate;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$3;->val$segSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$3;->val$excludeFunc:Ljava/util/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/AddressSegment;

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$3;->result:[Linet/ipaddr/AddressSegment;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$3;->result:[Linet/ipaddr/AddressSegment;

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$3;->result:[Linet/ipaddr/AddressSegment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$3;->next()[Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public next()[Linet/ipaddr/AddressSegment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$3;->result:[Linet/ipaddr/AddressSegment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$3;->result:[Linet/ipaddr/AddressSegment;

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
