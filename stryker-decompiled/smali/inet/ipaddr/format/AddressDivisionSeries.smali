.class public interface abstract Linet/ipaddr/format/AddressDivisionSeries;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressItem;
.implements Linet/ipaddr/format/string/AddressStringDivisionSeries;


# virtual methods
.method public getBitCount()I
    .locals 4

    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getBlockCount(I)Ljava/math/BigInteger;
    .locals 4

    if-ltz p1, :cond_3

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-interface {p0, v1}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v2

    invoke-interface {v2}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Linet/ipaddr/format/AddressItem;->getCount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getCount()Ljava/math/BigInteger;
    .locals 4

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v2}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public abstract getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object p1

    return-object p1
.end method

.method public abstract getDivisionStrings()[Ljava/lang/String;
.end method

.method public getPrefixCount()Ljava/math/BigInteger;
    .locals 3

    .line 1
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixCount(I)Ljava/math/BigInteger;
    .locals 6

    .line 2
    if-ltz p1, :cond_4

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v0

    if-gt p1, v0, :cond_4

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p0, v2}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v4

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v5

    if-eqz v5, :cond_1

    if-ge p1, v4, :cond_0

    invoke-interface {v3, p1}, Linet/ipaddr/format/AddressItem;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getCount()Ljava/math/BigInteger;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_1
    if-gt p1, v4, :cond_2

    goto :goto_2

    :cond_2
    sub-int/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v0
.end method

.method public abstract getPrefixLength()Ljava/lang/Integer;
.end method

.method public getSequentialBlockIndex()I
    .locals 2

    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    invoke-interface {p0, v0}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v1

    invoke-interface {v1}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isMore(Linet/ipaddr/format/AddressDivisionSeries;)I
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public abstract isPrefixBlock()Z
.end method

.method public abstract isPrefixed()Z
.end method

.method public isSequential()Z
    .locals 5

    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-interface {p0, v3}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v4

    invoke-interface {v4}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/2addr v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    invoke-interface {p0, v3}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v4

    invoke-interface {v4}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public abstract isSinglePrefixBlock()Z
.end method
