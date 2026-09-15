.class public Linet/ipaddr/ipv6/IPv6AddressSegment;
.super Linet/ipaddr/IPAddressSegment;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressSegment;",
        "Ljava/lang/Iterable<",
        "Linet/ipaddr/ipv6/IPv6AddressSegment;",
        ">;"
    }
.end annotation


# static fields
.field public static final BITS_PER_CHAR:I = 0x4

.field public static final MAX_CHARS:I = 0x4

.field private static final serialVersionUID:J = 0x4L


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSegment;-><init>(I)V

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/AddressValueException;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw v0
.end method

.method public constructor <init>(IILjava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/IPAddressSegment;-><init>(IILjava/lang/Integer;)V

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p1

    const p2, 0xffff

    if-gt p1, p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x80

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Linet/ipaddr/AddressValueException;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p2

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p1
.end method

.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Linet/ipaddr/IPAddressSegment;-><init>(ILjava/lang/Integer;)V

    const v0, 0xffff

    if-gt p1, v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x80

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p2, Linet/ipaddr/AddressValueException;

    int-to-long v0, p1

    invoke-direct {p2, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2
.end method

.method public static synthetic g(ILinet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Linet/ipaddr/ipv6/IPv6AddressSegment;->lambda$spliterator$0(ILinet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private getSplitSegmentsMultiple([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">([TS;I",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    if-ltz p2, :cond_1

    array-length v2, p1

    if-ge p2, v2, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v2

    invoke-static {v2}, Linet/ipaddr/IPAddressSegment;->highByte(I)I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v3

    invoke-static {v3}, Linet/ipaddr/IPAddressSegment;->highByte(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Linet/ipaddr/IPAddressSegment;->getSplitSegmentPrefix(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v4

    if-ne v2, v3, :cond_0

    invoke-interface {p3, v2, v4}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v2

    aput-object v2, p1, p2

    goto :goto_0

    :cond_0
    invoke-interface {p3, v2, v3, v4}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v2

    aput-object v2, p1, p2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    add-int/2addr p2, v2

    if-ltz p2, :cond_3

    array-length v3, p1

    if-ge p2, v3, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    invoke-static {v3}, Linet/ipaddr/IPAddressSegment;->lowByte(I)I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v4

    invoke-static {v4}, Linet/ipaddr/IPAddressSegment;->lowByte(I)I

    move-result v4

    invoke-static {v1, v0, v2}, Linet/ipaddr/IPAddressSegment;->getSplitSegmentPrefix(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    if-ne v3, v4, :cond_2

    invoke-interface {p3, v3, v0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p3

    aput-object p3, p1, p2

    goto :goto_1

    :cond_2
    invoke-interface {p3, v3, v4, v0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p3

    aput-object p3, p1, p2

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic h(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;II)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSegment;->lambda$spliterator$1(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;II)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$0(ILinet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;
    .locals 8

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p5

    move v2, p6

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;IIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$1(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;II)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    invoke-virtual {p0, p2, p3, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedString(IILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSegment;->toUnsignedString(IILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedStringLength(II)I
    .locals 0

    invoke-static {p0, p1}, Linet/ipaddr/IPAddressSegment;->toUnsignedStringLength(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public contains(Linet/ipaddr/AddressSegment;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->containsSeg(Linet/ipaddr/AddressSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p1, p0}, Linet/ipaddr/IPAddressSegment;->isSameValues(Linet/ipaddr/AddressSegment;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getBitCount()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getByteCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getBytesImpl(Z)[B
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p1

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [B

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public getDefaultTextualRadix()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    return-object v0
.end method

.method public getIterable()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getLower()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getLower()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getLower()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 2

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Linet/ipaddr/IPAddressSegment;->getLowestOrHighest(Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Z)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object v0
.end method

.method public getMaxDigitCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getMaxSegmentValue()I
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    invoke-static {v0}, Linet/ipaddr/IPAddressSegment;->getMaxSegmentValue(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v0

    return v0
.end method

.method public getMaxValue()J
    .locals 2

    const-wide/32 v0, 0xffff

    return-wide v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;
    .locals 1

    .line 3
    invoke-static {}, Linet/ipaddr/Address;->defaultIpv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getRangeDigitCountImpl()I
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getMinPrefixLengthForBlock()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getBitCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/standard/IPAddressDivision;->containsSinglePrefixBlock(I)Z

    move-result v2

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentHostMask(I)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork;->getSegmentHostMask(I)I

    move-result p1

    return p1
.end method

.method public getSegmentNetworkMask(I)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork;->getSegmentNetworkMask(I)I

    move-result p1

    return p1
.end method

.method public getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/AddressSegment;",
            ">([TS;I",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2, v0, v1}, Linet/ipaddr/IPAddressSegment;->getSplitSegmentPrefix(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Linet/ipaddr/IPAddressSegment;->getSplitSegmentPrefix(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    if-ltz p2, :cond_0

    array-length v2, p1

    if-ge p2, v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->highByte()I

    move-result v2

    invoke-interface {p3, v2, v1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v1

    aput-object v1, p1, p2

    :cond_0
    add-int/2addr p2, v3

    if-ltz p2, :cond_2

    array-length v1, p1

    if-ge p2, v1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->lowByte()I

    move-result v1

    invoke-interface {p3, v1, v0}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p3

    aput-object p3, p1, p2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegmentsMultiple([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 2

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Linet/ipaddr/IPAddressSegment;->getLowestOrHighest(Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Z)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object v0
.end method

.method public identityIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Linet/ipaddr/format/standard/AddressDivision;->identityIterator(Linet/ipaddr/AddressSegment;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isIPv6()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->isSameValues(Linet/ipaddr/AddressSegment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Z)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    if-nez p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixBlockIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v2}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockIterator(I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v1}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p1}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v0
.end method

.method public prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv6/t;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Linet/ipaddr/ipv6/t;-><init>(Linet/ipaddr/ipv6/IPv6AddressSegment;I)V

    invoke-static {p0, p1, v0, v1}, Linet/ipaddr/IPAddressSegment;->prefixBlockSpliterator(Linet/ipaddr/IPAddressSegment;ILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/Supplier;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixBlockStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockStream(I)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixBlockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public prefixContains(Linet/ipaddr/IPAddressSegment;I)Z
    .locals 0

    if-eq p0, p1, :cond_1

    invoke-super {p0, p1, p2}, Linet/ipaddr/IPAddressSegment;->prefixContains(Linet/ipaddr/IPAddressSegment;I)Z

    move-result p2

    if-eqz p2, :cond_0

    instance-of p1, p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public prefixEquals(Linet/ipaddr/AddressSegment;I)Z
    .locals 0

    if-eq p0, p1, :cond_1

    invoke-super {p0, p1, p2}, Linet/ipaddr/IPAddressSegment;->prefixEquals(Linet/ipaddr/AddressSegment;I)Z

    move-result p2

    if-eqz p2, :cond_0

    instance-of p1, p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public prefixIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    new-instance v2, Linet/ipaddr/ipv6/t;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Linet/ipaddr/ipv6/t;-><init>(Linet/ipaddr/ipv6/IPv6AddressSegment;I)V

    invoke-static {p0, v0, v1, v2}, Linet/ipaddr/IPAddressSegment;->prefixSpliterator(Linet/ipaddr/IPAddressSegment;ILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/Supplier;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSegment;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSegment;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-static {p0, p1, v0}, Linet/ipaddr/IPAddressSegment;->removePrefix(Linet/ipaddr/IPAddressSegment;ZLinet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 3

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Linet/ipaddr/format/standard/AddressDivision;->isReversibleRange(Linet/ipaddr/AddressSegment;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    :goto_0
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Linet/ipaddr/IncompatibleAddressException;

    const-string v0, "ipaddress.error.reverseRange"

    invoke-direct {p1, p0, v0}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v1

    int-to-short v2, v1

    invoke-static {v2}, Linet/ipaddr/format/standard/AddressDivision;->reverseBits(S)I

    move-result v2

    if-eqz p1, :cond_3

    and-int/lit16 p1, v2, 0xff

    shl-int/lit8 p1, p1, 0x8

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v2, p1

    :cond_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result p1

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    invoke-interface {v0, v2}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 4

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Linet/ipaddr/format/standard/AddressDivision;->isReversibleRange(Linet/ipaddr/AddressSegment;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    :goto_0
    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object v0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    const-string v1, "ipaddress.error.reverseRange"

    invoke-direct {v0, p0, v1}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v1

    and-int/lit16 v2, v1, 0xff

    shl-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v1

    if-nez v1, :cond_3

    return-object p0

    :cond_3
    invoke-interface {v0, v2}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getBitCount()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v5

    new-instance v6, Linet/ipaddr/ipv6/t;

    const/4 v3, 0x1

    invoke-direct {v6, p0, v3}, Linet/ipaddr/ipv6/t;-><init>(Linet/ipaddr/ipv6/IPv6AddressSegment;I)V

    new-instance v7, Linet/ipaddr/ipv4/b0;

    invoke-direct {v7, v2, v3, v0, v1}, Linet/ipaddr/ipv4/b0;-><init>(IILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;)V

    new-instance v8, Lp2/i;

    const/4 v2, 0x7

    invoke-direct {v8, v0, v1, v2}, Lp2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Linet/ipaddr/format/AddressDivisionBase;->createSegmentSpliterator(Linet/ipaddr/AddressSegment;IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toHostSegment(Ljava/lang/Integer;)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toHostSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public toHostSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSegment;->isHostChangedByPrefix(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-super {p0, p1, v0}, Linet/ipaddr/IPAddressSegment;->toHostSegment(Ljava/lang/Integer;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public bridge synthetic toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toNetworkSegment(Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toNetworkSegment(Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toNetworkSegment(Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public toNetworkSegment(Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSegment;->isNetworkChangedByPrefix(Ljava/lang/Integer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Linet/ipaddr/IPAddressSegment;->toNetworkSegment(Ljava/lang/Integer;ZLinet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public toPrefixNormalizedSeg()Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getBitCount()I

    move-result v3

    invoke-static {v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public toPrefixedSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/IPAddressSegment;->isChangedByPrefix(Ljava/lang/Integer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-super {p0, p1, v0}, Linet/ipaddr/IPAddressSegment;->toPrefixedSegment(Ljava/lang/Integer;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toZeroHost()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public toZeroHost()Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-static {p0, v0}, Linet/ipaddr/IPAddressSegment;->toZeroHost(Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 2

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSegmentCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-static {p0, v0, v1}, Linet/ipaddr/IPAddressSegment;->removePrefix(Linet/ipaddr/IPAddressSegment;ZLinet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object v0
.end method
