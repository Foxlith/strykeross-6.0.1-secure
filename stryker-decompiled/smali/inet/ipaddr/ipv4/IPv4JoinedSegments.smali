.class public Linet/ipaddr/ipv4/IPv4JoinedSegments;
.super Linet/ipaddr/format/standard/IPAddressJoinedSegments;
.source "SourceFile"


# static fields
.field private static MAX_CHARS:[I = null

.field private static final serialVersionUID:J = 0x4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Linet/ipaddr/ipv4/IPv4JoinedSegments;->MAX_CHARS:[I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;-><init>(II)V

    const/4 p2, 0x4

    if-ge p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Linet/ipaddr/AddressValueException;

    int-to-long v0, p1

    invoke-direct {p2, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2
.end method

.method public constructor <init>(IJJLjava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;-><init>(IJJLjava/lang/Integer;)V

    const/4 p2, 0x4

    if-ge p1, p2, :cond_2

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->getUpperDivisionValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4JoinedSegments;->checkMax(J)V

    return-void

    :cond_2
    new-instance p2, Linet/ipaddr/AddressValueException;

    int-to-long p3, p1

    invoke-direct {p2, p3, p4}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2
.end method

.method public constructor <init>(IJLjava/lang/Integer;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;-><init>(IJLjava/lang/Integer;)V

    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p2, p3}, Linet/ipaddr/ipv4/IPv4JoinedSegments;->checkMax(J)V

    return-void

    :cond_2
    new-instance p2, Linet/ipaddr/AddressValueException;

    int-to-long p3, p1

    invoke-direct {p2, p3, p4}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2
.end method

.method private checkMax(J)V
    .locals 2

    iget p1, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->joinedCount:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide p1, 0xffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 p1, 0xffffff

    goto :goto_0

    :cond_2
    const-wide/32 p1, 0xffff

    goto :goto_0

    :cond_3
    const-wide/16 p1, 0xff

    :goto_0
    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->value:J

    cmp-long p1, v0, p1

    if-gtz p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Linet/ipaddr/AddressValueException;

    iget-wide v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->value:J

    invoke-direct {p1, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/ipv4/IPv4JoinedSegments;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/ipv4/IPv4JoinedSegments;

    iget v1, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->joinedCount:I

    iget v3, p1, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->joinedCount:I

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

.method public getBitsPerSegment()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getDefaultTextualRadix()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getDivisionHostMask(I)J
    .locals 3

    iget v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->joinedCount:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    const-wide/16 v1, -0x1

    sub-int/2addr v0, p1

    shl-long v0, v1, v0

    not-long v0, v0

    return-wide v0
.end method

.method public getDivisionNetworkMask(I)J
    .locals 5

    iget v0, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->joinedCount:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    const-wide/16 v1, -0x1

    shl-long/2addr v1, v0

    not-long v1, v1

    sub-int/2addr v0, p1

    shl-long v3, v1, v0

    and-long v0, v1, v3

    return-wide v0
.end method

.method public getMaxDigitCount()I
    .locals 3

    sget-object v0, Linet/ipaddr/ipv4/IPv4JoinedSegments;->MAX_CHARS:[I

    iget v1, p0, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->joinedCount:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-super {p0}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->getMaxDigitCount()I

    move-result v2

    aput v2, v0, v1

    :cond_0
    return v2
.end method

.method public isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4JoinedSegments;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/standard/IPAddressJoinedSegments;->isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
