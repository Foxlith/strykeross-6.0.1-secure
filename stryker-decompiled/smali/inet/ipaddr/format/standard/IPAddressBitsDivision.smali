.class public Linet/ipaddr/format/standard/IPAddressBitsDivision;
.super Linet/ipaddr/format/standard/IPAddressDivision;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final bitCount:I

.field private final bitsMask:J

.field private final defaultRadix:I

.field private final maxDigitCount:I

.field private final upperValue:J

.field private final value:J


# direct methods
.method public constructor <init>(JJII)V
    .locals 9

    .line 1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/standard/IPAddressBitsDivision;-><init>(JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 2
    if-nez p8, :cond_0

    const/4 p8, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p5, v0, :cond_1

    invoke-static {p5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p8

    :cond_1
    :goto_0
    invoke-direct {p0, p8}, Linet/ipaddr/format/standard/IPAddressDivision;-><init>(Ljava/lang/Integer;)V

    iput p5, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->bitCount:I

    const-wide/16 v0, 0x0

    cmp-long p8, p1, v0

    if-ltz p8, :cond_6

    cmp-long v0, p3, v0

    if-gez v0, :cond_2

    goto :goto_4

    :cond_2
    cmp-long p8, p1, p3

    if-lez p8, :cond_3

    goto :goto_1

    :cond_3
    move-wide v5, p1

    move-wide p1, p3

    move-wide p3, v5

    :goto_1
    const-wide/16 v0, -0x1

    shl-long v2, v0, p5

    not-long v2, v2

    cmp-long p8, p1, v2

    if-gtz p8, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object p8

    if-eqz p8, :cond_4

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p5, :cond_4

    invoke-virtual {p7}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p7

    invoke-virtual {p7}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result p7

    if-eqz p7, :cond_4

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p7

    sub-int p7, p5, p7

    shl-long p7, v0, p7

    and-long/2addr p3, p7

    iput-wide p3, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->value:J

    not-long p3, p7

    or-long/2addr p1, p3

    :goto_2
    iput-wide p1, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->upperValue:J

    goto :goto_3

    :cond_4
    iput-wide p3, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->value:J

    goto :goto_2

    :goto_3
    iput p6, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->defaultRadix:I

    iput-wide v2, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->bitsMask:J

    invoke-static {p6, p5, v2, v3}, Linet/ipaddr/format/AddressDivisionBase;->getMaxDigitCount(IIJ)I

    move-result p1

    iput p1, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->maxDigitCount:I

    return-void

    :cond_5
    new-instance p3, Linet/ipaddr/AddressValueException;

    invoke-direct {p3, p1, p2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p3

    :cond_6
    :goto_4
    new-instance p5, Linet/ipaddr/AddressValueException;

    if-gez p8, :cond_7

    goto :goto_5

    :cond_7
    move-wide p1, p3

    :goto_5
    invoke-direct {p5, p1, p2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/format/standard/IPAddressBitsDivision;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/format/standard/IPAddressBitsDivision;

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressBitsDivision;->getBitCount()I

    move-result v1

    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressBitsDivision;->getBitCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, p0}, Linet/ipaddr/format/standard/IPAddressBitsDivision;->isSameValues(Linet/ipaddr/format/standard/IPAddressBitsDivision;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getBitCount()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->bitCount:I

    return v0
.end method

.method public getDefaultTextualRadix()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->defaultRadix:I

    return v0
.end method

.method public getDivisionHostMask(I)J
    .locals 3

    iget v0, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->bitCount:I

    sub-int/2addr v0, p1

    const-wide/16 v1, -0x1

    shl-long v0, v1, v0

    not-long v0, v0

    return-wide v0
.end method

.method public getDivisionNetworkMask(I)J
    .locals 5

    iget v0, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->bitCount:I

    sub-int/2addr v0, p1

    iget-wide v1, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->bitsMask:J

    const-wide/16 v3, -0x1

    shl-long/2addr v3, v0

    and-long v0, v1, v3

    return-wide v0
.end method

.method public getDivisionValue()J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->value:J

    return-wide v0
.end method

.method public getMaxDigitCount()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->maxDigitCount:I

    return v0
.end method

.method public getUpperDivisionValue()J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->upperValue:J

    return-wide v0
.end method

.method public isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Linet/ipaddr/format/standard/IPAddressBitsDivision;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/format/standard/IPAddressBitsDivision;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressBitsDivision;->isSameValues(Linet/ipaddr/format/standard/IPAddressBitsDivision;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSameValues(Linet/ipaddr/format/standard/IPAddressBitsDivision;)Z
    .locals 4

    .line 2
    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->value:J

    iget-wide v2, p1, Linet/ipaddr/format/standard/IPAddressBitsDivision;->value:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;->upperValue:J

    iget-wide v2, p1, Linet/ipaddr/format/standard/IPAddressBitsDivision;->upperValue:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
