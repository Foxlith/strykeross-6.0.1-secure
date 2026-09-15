.class public interface abstract Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Linet/ipaddr/format/AddressComponentRange;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getAddressItem()Linet/ipaddr/format/AddressComponentRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSize()Ljava/math/BigInteger;
.end method

.method public abstract trySplit()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "TS;TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/format/util/AddressComponentRangeSpliterator;->trySplit()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    return-object v0
.end method
