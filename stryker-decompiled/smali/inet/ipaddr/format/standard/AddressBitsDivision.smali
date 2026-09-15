.class public Linet/ipaddr/format/standard/AddressBitsDivision;
.super Linet/ipaddr/format/standard/AddressDivision;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final bitCount:I

.field private final defaultRadix:I

.field protected final upperValue:I

.field protected final value:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivision;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->upperValue:I

    iput p1, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->value:I

    iput p2, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->bitCount:I

    iput p3, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->defaultRadix:I

    return-void

    :cond_0
    new-instance p2, Linet/ipaddr/AddressValueException;

    int-to-long v0, p1

    invoke-direct {p2, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivision;-><init>()V

    if-ltz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    move v0, p2

    move p2, p1

    move p1, v0

    :cond_1
    iput p1, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->value:I

    iput p2, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->upperValue:I

    iput p3, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->bitCount:I

    iput p4, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->defaultRadix:I

    return-void

    :cond_2
    :goto_0
    new-instance p3, Linet/ipaddr/AddressValueException;

    if-gez p1, :cond_3

    int-to-long p1, p1

    goto :goto_1

    :cond_3
    int-to-long p1, p2

    :goto_1
    invoke-direct {p3, p1, p2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/format/standard/AddressBitsDivision;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/format/standard/AddressBitsDivision;

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressBitsDivision;->getBitCount()I

    move-result v1

    invoke-virtual {p1}, Linet/ipaddr/format/standard/AddressBitsDivision;->getBitCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, p0}, Linet/ipaddr/format/standard/AddressBitsDivision;->isSameValues(Linet/ipaddr/format/standard/AddressBitsDivision;)Z

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

    iget v0, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->bitCount:I

    return v0
.end method

.method public getBytesImpl(Z)[B
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    new-array p1, v4, [B

    iget v4, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->value:I

    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    ushr-int/lit8 v3, v4, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    ushr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    int-to-byte v1, v4

    aput-byte v1, p1, v0

    goto :goto_0

    :cond_0
    new-array p1, v4, [B

    iget v4, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->value:I

    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    ushr-int/lit8 v3, v4, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    iget v2, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->upperValue:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    int-to-byte v1, v2

    aput-byte v1, p1, v0

    :goto_0
    return-object p1
.end method

.method public getDefaultTextualRadix()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->defaultRadix:I

    return v0
.end method

.method public getDivisionValue()J
    .locals 2

    iget v0, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMaxDigitCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressBitsDivision;->getBitCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getUpperDivisionValue()J
    .locals 2

    iget v0, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->upperValue:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->value:I

    iget v1, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->upperValue:I

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressBitsDivision;->getBitCount()I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Linet/ipaddr/format/standard/AddressBitsDivision;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/format/standard/AddressBitsDivision;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/AddressBitsDivision;->isSameValues(Linet/ipaddr/format/standard/AddressBitsDivision;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSameValues(Linet/ipaddr/format/standard/AddressBitsDivision;)Z
    .locals 2

    .line 2
    iget v0, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->value:I

    iget v1, p1, Linet/ipaddr/format/standard/AddressBitsDivision;->value:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Linet/ipaddr/format/standard/AddressBitsDivision;->upperValue:I

    iget p1, p1, Linet/ipaddr/format/standard/AddressBitsDivision;->upperValue:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
