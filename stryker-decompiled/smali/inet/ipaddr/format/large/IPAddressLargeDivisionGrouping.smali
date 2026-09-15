.class public Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;
.super Linet/ipaddr/format/AddressDivisionGroupingBase;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/IPAddressDivisionSeries;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private network:Linet/ipaddr/IPAddressNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Linet/ipaddr/format/large/IPAddressLargeDivision;Linet/ipaddr/IPAddressNetwork;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linet/ipaddr/format/large/IPAddressLargeDivision;",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;-><init>([Linet/ipaddr/format/AddressDivisionBase;)V

    iput-object p2, p0, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;->network:Linet/ipaddr/IPAddressNetwork;

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_3

    aget-object v1, p1, p2

    invoke-virtual {v1}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget-object v0, p1, p2

    invoke-virtual {v0}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Linet/ipaddr/InconsistentPrefixException;

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    invoke-direct {v2, p1, v0, v1}, Linet/ipaddr/InconsistentPrefixException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;Ljava/lang/Integer;)V

    throw v2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getBitCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public containsPrefixBlock(I)Z
    .locals 0

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->containsPrefixBlock(Linet/ipaddr/format/IPAddressDivisionSeries;I)Z

    move-result p1

    return p1
.end method

.method public containsSinglePrefixBlock(I)Z
    .locals 0

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->containsSinglePrefixBlock(Linet/ipaddr/format/IPAddressDivisionSeries;I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;

    if-eqz v0, :cond_1

    check-cast p1, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;

    invoke-virtual {p1, p0}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBytesImpl(Z)[B
    .locals 9

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    new-array v1, v0, [B

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x8

    move v4, v3

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;->getDivision(I)Linet/ipaddr/format/large/IPAddressLargeDivision;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-virtual {v5}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v6

    :goto_1
    invoke-virtual {v5}, Linet/ipaddr/format/large/IPAddressLargeDivision;->getBitCount()I

    move-result v5

    :goto_2
    if-lez v5, :cond_2

    rsub-int/lit8 v7, v4, 0x8

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    aget-byte v8, v1, v0

    invoke-virtual {v7}, Ljava/lang/Number;->byteValue()B

    move-result v7

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v0

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    if-ge v5, v4, :cond_1

    sub-int/2addr v4, v5

    goto :goto_3

    :cond_1
    sub-int/2addr v5, v4

    add-int/lit8 v0, v0, -0x1

    move v4, v3

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;->getDivision(I)Linet/ipaddr/format/large/IPAddressLargeDivision;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;->getDivision(I)Linet/ipaddr/format/large/IPAddressLargeDivision;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;->getDivision(I)Linet/ipaddr/format/large/IPAddressLargeDivision;

    move-result-object p1

    return-object p1
.end method

.method public getDivision(I)Linet/ipaddr/format/large/IPAddressLargeDivision;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/large/IPAddressLargeDivision;

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;->getDivision(I)Linet/ipaddr/format/large/IPAddressLargeDivision;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;->getDivision(I)Linet/ipaddr/format/large/IPAddressLargeDivision;

    move-result-object p1

    return-object p1
.end method

.method public getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;->network:Linet/ipaddr/IPAddressNetwork;

    return-object v0
.end method

.method public getNetworkPrefixLength()Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->calculatePrefix(Linet/ipaddr/format/IPAddressDivisionSeries;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    return-object v0

    :cond_0
    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getPrefixLength()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixLengthForSingleBlock()Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixLengthForSingleBlock(Linet/ipaddr/format/IPAddressDivisionSeries;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
