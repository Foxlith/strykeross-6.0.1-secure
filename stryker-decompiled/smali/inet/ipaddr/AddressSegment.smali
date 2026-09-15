.class public interface abstract Linet/ipaddr/AddressSegment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/AddressComponent;
.implements Linet/ipaddr/format/AddressGenericDivision;


# virtual methods
.method public abstract contains(Linet/ipaddr/AddressSegment;)Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getIterable()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Linet/ipaddr/AddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getLower()Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLower()Linet/ipaddr/AddressSegment;
.end method

.method public abstract getMaxSegmentValue()I
.end method

.method public abstract getSegmentValue()I
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getUpper()Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUpper()Linet/ipaddr/AddressSegment;
.end method

.method public abstract getUpperSegmentValue()I
.end method

.method public abstract getValueCount()I
.end method

.method public isOneBit(I)Z
    .locals 3

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v1

    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    sub-int/2addr v1, p1

    shl-int p1, v2, v1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/AddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract matches(I)Z
.end method

.method public abstract matchesWithMask(II)Z
.end method

.method public abstract matchesWithMask(III)Z
.end method

.method public abstract prefixEquals(Linet/ipaddr/AddressSegment;I)Z
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/AddressSegment;->reverseBits(Z)Linet/ipaddr/AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public abstract reverseBits(Z)Linet/ipaddr/AddressSegment;
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->reverseBytes()Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytes()Linet/ipaddr/AddressSegment;
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/AddressSegment;",
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
            "Linet/ipaddr/AddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public testBit(I)Z
    .locals 2

    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v1

    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
