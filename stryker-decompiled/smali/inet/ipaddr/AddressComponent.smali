.class public interface abstract Linet/ipaddr/AddressComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressComponentRange;


# virtual methods
.method public abstract getNetwork()Linet/ipaddr/AddressNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/AddressNetwork<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract reverseBits(Z)Linet/ipaddr/AddressComponent;
.end method

.method public abstract reverseBytes()Linet/ipaddr/AddressComponent;
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressComponent;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/AddressComponent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toHexString(Z)Ljava/lang/String;
.end method

.method public abstract toNormalizedString()Ljava/lang/String;
.end method
