.class public interface abstract Linet/ipaddr/format/AddressItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Linet/ipaddr/format/AddressItem;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public compareTo(Linet/ipaddr/format/AddressItem;)I
    .locals 1

    .line 1
    sget-object v0, Linet/ipaddr/Address;->DEFAULT_ADDRESS_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-virtual {v0, p0, p1}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/format/AddressItem;

    invoke-interface {p0, p1}, Linet/ipaddr/format/AddressItem;->compareTo(Linet/ipaddr/format/AddressItem;)I

    move-result p1

    return p1
.end method

.method public containsPrefixBlock(I)Z
    .locals 3

    if-nez p1, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v2

    invoke-static {v1, v0, v0, v2, p1}, Linet/ipaddr/format/AddressDivisionBase;->testRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)Z

    move-result p1

    return p1
.end method

.method public containsSinglePrefixBlock(I)Z
    .locals 3

    if-nez p1, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v2

    invoke-static {v0, v0, v1, v2, p1}, Linet/ipaddr/format/AddressDivisionBase;->testRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)Z

    move-result p1

    return p1
.end method

.method public abstract getBitCount()I
.end method

.method public getByteCount()I
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public abstract getBytes()[B
.end method

.method public abstract getBytes([B)[B
.end method

.method public abstract getBytes([BI)[B
.end method

.method public getCount()Ljava/math/BigInteger;
    .locals 2

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getMinPrefixLengthForBlock()I
    .locals 6

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    not-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v0, v3

    const/16 v4, 0x40

    if-ge v3, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v0
.end method

.method public getPrefixCount(I)Ljava/math/BigInteger;
    .locals 2

    if-ltz p1, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr v0, p1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v0
.end method

.method public getPrefixLengthForSingleBlock()Ljava/lang/Integer;
    .locals 4

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getMinPrefixLengthForBlock()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getUpperBytes()[B
.end method

.method public abstract getUpperBytes([B)[B
.end method

.method public abstract getUpperBytes([BI)[B
.end method

.method public abstract getUpperValue()Ljava/math/BigInteger;
.end method

.method public abstract getValue()Ljava/math/BigInteger;
.end method

.method public abstract includesMax()Z
.end method

.method public abstract includesZero()Z
.end method

.method public isFullRange()Z
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->includesZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->includesMax()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isMax()Z
.end method

.method public isMultiple()Z
    .locals 2

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract isZero()Z
.end method
