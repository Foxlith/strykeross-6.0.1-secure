.class public interface abstract Linet/ipaddr/format/util/AddressComponentSpliterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressComponentRangeSpliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/format/AddressComponentRange;",
        ">",
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
        "TT;TT;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic trySplit()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/format/util/AddressComponentSpliterator;->trySplit()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract trySplit()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .line 2
    invoke-interface {p0}, Linet/ipaddr/format/util/AddressComponentSpliterator;->trySplit()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method
