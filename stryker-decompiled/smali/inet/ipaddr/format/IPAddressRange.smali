.class public interface abstract Linet/ipaddr/format/IPAddressRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressComponentRange;


# virtual methods
.method public abstract contains(Linet/ipaddr/IPAddress;)Z
.end method

.method public abstract contains(Linet/ipaddr/IPAddressSeqRange;)Z
.end method

.method public abstract coverWithPrefixBlock()Linet/ipaddr/IPAddress;
.end method

.method public abstract getIterable()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/format/IPAddressRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLower()Linet/ipaddr/IPAddress;
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/format/IPAddressRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUpper()Linet/ipaddr/IPAddress;
.end method

.method public abstract isSequential()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockIterator(I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "+",
            "Linet/ipaddr/format/IPAddressRange;",
            "+",
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockStream(I)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixIterator(I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/IPAddressRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/format/IPAddressRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixStream(I)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/format/IPAddressRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract spanWithPrefixBlocks()[Linet/ipaddr/IPAddress;
.end method

.method public abstract spanWithSequentialBlocks()[Linet/ipaddr/IPAddress;
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "+",
            "Linet/ipaddr/format/IPAddressRange;",
            "+",
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toCanonicalString()Ljava/lang/String;
.end method

.method public abstract toNormalizedString()Ljava/lang/String;
.end method

.method public abstract toSequentialRange()Linet/ipaddr/IPAddressSeqRange;
.end method
