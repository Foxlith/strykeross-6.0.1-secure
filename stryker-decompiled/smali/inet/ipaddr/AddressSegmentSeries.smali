.class public interface abstract Linet/ipaddr/AddressSegmentSeries;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionSeries;
.implements Linet/ipaddr/AddressComponent;


# virtual methods
.method public abstract adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBitsPerSegment()I
.end method

.method public abstract getBytesPerSegment()I
.end method

.method public abstract getIterable()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Linet/ipaddr/AddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getLower()Linet/ipaddr/AddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLower()Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract getMaxSegmentValue()I
.end method

.method public abstract getSection()Linet/ipaddr/AddressSection;
.end method

.method public abstract getSection(I)Linet/ipaddr/AddressSection;
.end method

.method public abstract getSection(II)Linet/ipaddr/AddressSection;
.end method

.method public abstract getSegment(I)Linet/ipaddr/AddressSegment;
.end method

.method public abstract getSegmentCount()I
.end method

.method public abstract getSegmentStrings()[Ljava/lang/String;
.end method

.method public abstract getSegments(II[Linet/ipaddr/AddressSegment;I)V
.end method

.method public abstract getSegments([Linet/ipaddr/AddressSegment;)V
.end method

.method public abstract getSegments()[Linet/ipaddr/AddressSegment;
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getUpper()Linet/ipaddr/AddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUpper()Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract increment(J)Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
.end method

.method public isOneBit(I)Z
    .locals 3

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v0

    div-int v1, p1, v0

    invoke-interface {p0, v1}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v1

    rem-int/2addr p1, v0

    invoke-interface {v1}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    sub-int/2addr v0, p1

    shl-int p1, v2, v0

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/AddressSegmentSeries;",
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
            "Linet/ipaddr/AddressSegmentSeries;",
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
            "Linet/ipaddr/AddressSegmentSeries;",
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
            "Linet/ipaddr/AddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/AddressSegmentSeries;",
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
            "Linet/ipaddr/AddressSegmentSeries;",
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
            "Linet/ipaddr/AddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/AddressSegmentSeries;->reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public abstract reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->reverseBytes()Linet/ipaddr/AddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytes()Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract reverseSegments()Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract segmentsIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+[",
            "Linet/ipaddr/AddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "+",
            "Linet/ipaddr/AddressSegmentSeries;",
            "+[",
            "Linet/ipaddr/AddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract segmentsStream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+[",
            "Linet/ipaddr/AddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/AddressSegmentSeries;",
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
            "Linet/ipaddr/AddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public testBit(I)Z
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    invoke-interface {p0, v0}, Linet/ipaddr/AddressSegmentSeries;->isOneBit(I)Z

    move-result p1

    return p1
.end method

.method public abstract toCanonicalString()Ljava/lang/String;
.end method

.method public abstract toCompressedString()Ljava/lang/String;
.end method

.method public abstract toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
.end method

.method public abstract withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
.end method
