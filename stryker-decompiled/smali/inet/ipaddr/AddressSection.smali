.class public interface abstract Linet/ipaddr/AddressSection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/AddressSegmentSeries;


# virtual methods
.method public abstract adjustPrefixBySegment(Z)Linet/ipaddr/AddressSection;
.end method

.method public abstract adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-interface {p0, p1, p2}, Linet/ipaddr/AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract adjustPrefixLength(I)Linet/ipaddr/AddressSection;
.end method

.method public abstract adjustPrefixLength(IZ)Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/AddressSection;->adjustPrefixLength(I)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-interface {p0, p1, p2}, Linet/ipaddr/AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract applyPrefixLength(I)Linet/ipaddr/AddressSection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/AddressSection;->applyPrefixLength(I)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract contains(Linet/ipaddr/AddressSection;)Z
.end method

.method public abstract getIterable()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Linet/ipaddr/AddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->getLower()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLower()Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->getLower()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->getUpper()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUpper()Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->getUpper()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract increment(J)Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Linet/ipaddr/AddressSection;->increment(J)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract incrementBoundary(J)Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Linet/ipaddr/AddressSection;->incrementBoundary(J)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/AddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/AddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/AddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockStream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/AddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixEquals(Linet/ipaddr/AddressSection;)Z
.end method

.method public abstract prefixIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/AddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/AddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixStream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/AddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removePrefixLength()Linet/ipaddr/AddressSection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePrefixLength(Z)Linet/ipaddr/AddressSection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->removePrefixLength()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Linet/ipaddr/AddressSection;->removePrefixLength(Z)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/AddressSection;->reverseBits(Z)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract reverseBits(Z)Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Linet/ipaddr/AddressSection;->reverseBits(Z)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->reverseBytes()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytes()Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->reverseBytes()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytesPerSegment()Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->reverseBytesPerSegment()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseSegments()Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->reverseSegments()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract setPrefixLength(I)Linet/ipaddr/AddressSection;
.end method

.method public abstract setPrefixLength(IZ)Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/AddressSection;->setPrefixLength(I)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-interface {p0, p1, p2}, Linet/ipaddr/AddressSection;->setPrefixLength(IZ)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/AddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/AddressSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toPrefixBlock()Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->toPrefixBlock()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public abstract withoutPrefixLength()Linet/ipaddr/AddressSection;
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSection;->withoutPrefixLength()Linet/ipaddr/AddressSection;

    move-result-object v0

    return-object v0
.end method
