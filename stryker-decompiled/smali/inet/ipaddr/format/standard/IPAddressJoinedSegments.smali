.class public abstract Linet/ipaddr/format/standard/IPAddressJoinedSegments;
.super Linet/ipaddr/format/standard/IPAddressDivision;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field protected final joinedCount:I

.field protected final upperValue:J

.field protected final value:J


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Linet/ipaddr/format/standard/IPAddressDivision;-><init>()V

    if-ltz p2, :cond_1

    if-lez p1, :cond_0

    int-to-long v0, p2

    iput-wide v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->upperValue:J

    iput-wide v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->value:J

    iput p1, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->joinedCount:I

    return-void

    :cond_0
    new-instance p2, Linet/ipaddr/AddressValueException;

    int-to-long v0, p1

    invoke-direct {p2, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2

    :cond_1
    new-instance p1, Linet/ipaddr/AddressValueException;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p1
.end method

.method public constructor <init>(IJJLjava/lang/Integer;)V
    .locals 4

    .line 2
    invoke-direct {p0, p6}, Linet/ipaddr/format/standard/IPAddressDivision;-><init>(Ljava/lang/Integer;)V

    const-wide/16 v0, 0x0

    cmp-long p6, p2, v0

    if-ltz p6, :cond_3

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_2

    cmp-long p6, p2, p4

    if-lez p6, :cond_1

    move-wide v2, p2

    move-wide p2, p4

    move-wide p4, v2

    :cond_1
    iput-wide p2, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->value:J

    iput-wide p4, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->upperValue:J

    iput p1, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->joinedCount:I

    return-void

    :cond_2
    new-instance p2, Linet/ipaddr/AddressValueException;

    int-to-long p3, p1

    invoke-direct {p2, p3, p4}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2

    :cond_3
    :goto_0
    new-instance p1, Linet/ipaddr/AddressValueException;

    if-gez p6, :cond_4

    goto :goto_1

    :cond_4
    move-wide p2, p4

    :goto_1
    invoke-direct {p1, p2, p3}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p1
.end method

.method public constructor <init>(IJLjava/lang/Integer;)V
    .locals 7

    .line 3
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;-><init>(IJJLjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/format/standard/IPAddressJoinedSegments;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/format/standard/IPAddressJoinedSegments;

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->getBitCount()I

    move-result v1

    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->getBitCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, p0}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->isSameValues(Linet/ipaddr/format/standard/IPAddressJoinedSegments;)Z

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
    .locals 2

    iget v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->joinedCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->getBitsPerSegment()I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method public abstract getBitsPerSegment()I
.end method

.method public getDivisionValue()J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->value:J

    return-wide v0
.end method

.method public getJoinedCount()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->joinedCount:I

    return v0
.end method

.method public getMaxDigitCount()I
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v2

    invoke-static {v0, v1, v2}, Linet/ipaddr/format/AddressDivisionBase;->getDigitCount(JI)I

    move-result v0

    return v0
.end method

.method public getUpperDivisionValue()J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->upperValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->value:J

    iget-wide v2, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->upperValue:J

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->getBitCount()I

    move-result v4

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Linet/ipaddr/format/standard/IPAddressJoinedSegments;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/format/standard/IPAddressJoinedSegments;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->isSameValues(Linet/ipaddr/format/standard/IPAddressJoinedSegments;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSameValues(Linet/ipaddr/format/standard/IPAddressJoinedSegments;)Z
    .locals 4

    .line 2
    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->value:J

    iget-wide v2, p1, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->value:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->upperValue:J

    iget-wide v2, p1, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->upperValue:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
