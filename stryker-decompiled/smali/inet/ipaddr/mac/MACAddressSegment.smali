.class public Linet/ipaddr/mac/MACAddressSegment;
.super Linet/ipaddr/format/standard/AddressDivision;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/AddressSegment;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/standard/AddressDivision;",
        "Linet/ipaddr/AddressSegment;",
        "Ljava/lang/Iterable<",
        "Linet/ipaddr/mac/MACAddressSegment;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_CHARS:I = 0x2

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final upperValue:I

.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivision;-><init>()V

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iput p1, p0, Linet/ipaddr/mac/MACAddressSegment;->upperValue:I

    iput p1, p0, Linet/ipaddr/mac/MACAddressSegment;->value:I

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/AddressValueException;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw v0
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 2
    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivision;-><init>()V

    if-le p1, p2, :cond_0

    move v1, p2

    move p2, p1

    move p1, v1

    :cond_0
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Linet/ipaddr/mac/MACAddressSegment;->value:I

    iput p2, p0, Linet/ipaddr/mac/MACAddressSegment;->upperValue:I

    return-void

    :cond_2
    :goto_0
    new-instance v0, Linet/ipaddr/AddressValueException;

    if-gez p1, :cond_3

    int-to-long p1, p1

    goto :goto_1

    :cond_3
    int-to-long p1, p2

    :goto_1
    invoke-direct {v0, p1, p2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw v0
.end method

.method public static synthetic a(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;II)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSegment;->lambda$spliterator$1(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;II)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(ILinet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;ZZII)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Linet/ipaddr/mac/MACAddressSegment;->lambda$spliterator$0(ILinet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;ZZII)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private getLowestOrHighest(Z)Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private getSegmentCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public static hash(III)I
    .locals 0

    shl-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$spliterator$0(ILinet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;ZZII)Ljava/util/Iterator;
    .locals 8

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p4

    move v2, p5

    move v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;IIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$1(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;II)Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contains(Linet/ipaddr/AddressSegment;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Linet/ipaddr/mac/MACAddressSegment;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v0

    iget v1, p0, Linet/ipaddr/mac/MACAddressSegment;->value:I

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result p1

    iget v0, p0, Linet/ipaddr/mac/MACAddressSegment;->upperValue:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Linet/ipaddr/mac/MACAddressSegment;)Z
    .locals 2

    .line 2
    iget v0, p1, Linet/ipaddr/mac/MACAddressSegment;->value:I

    iget v1, p0, Linet/ipaddr/mac/MACAddressSegment;->value:I

    if-lt v0, v1, :cond_0

    iget p1, p1, Linet/ipaddr/mac/MACAddressSegment;->upperValue:I

    iget v0, p0, Linet/ipaddr/mac/MACAddressSegment;->upperValue:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsPrefixBlock(I)Z
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getDivisionValue()J

    move-result-wide v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperDivisionValue()J

    move-result-wide v3

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/AddressDivision;->isPrefixBlock(JJI)Z

    move-result p1

    return p1
.end method

.method public containsSinglePrefixBlock(I)Z
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getDivisionValue()J

    move-result-wide v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperDivisionValue()J

    move-result-wide v3

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/AddressDivision;->isSinglePrefixBlock(JJI)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Linet/ipaddr/mac/MACAddressSegment;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p1, p0}, Linet/ipaddr/mac/MACAddressSegment;->isSameValues(Linet/ipaddr/mac/MACAddressSegment;)Z

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

    const/16 v0, 0x8

    return v0
.end method

.method public getByteCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBytesImpl(Z)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result p1

    :goto_0
    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public getDefaultSegmentWildcardString()Ljava/lang/String;
    .locals 1

    sget-object v0, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultTextualRadix()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getDivisionValue()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDivisionValueCount()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getValueCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getIterable()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getLower()Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getLower()Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddressSegment;->getLowestOrHighest(Z)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDigitCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMaxSegmentValue()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public getMaxValue()J
    .locals 2

    const-wide/16 v0, 0xff

    return-wide v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/mac/MACAddressNetwork;
    .locals 1

    .line 2
    invoke-static {}, Linet/ipaddr/Address;->defaultMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixValueCount(I)I
    .locals 0

    invoke-static {p0, p1}, Linet/ipaddr/format/standard/AddressDivision;->getPrefixValueCount(Linet/ipaddr/AddressSegment;I)I

    move-result p1

    return p1
.end method

.method public getSegmentValue()I
    .locals 1

    iget v0, p0, Linet/ipaddr/mac/MACAddressSegment;->value:I

    return v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpper()Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpper()Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddressSegment;->getLowestOrHighest(Z)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getUpperDivisionValue()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getUpperSegmentValue()I
    .locals 1

    iget v0, p0, Linet/ipaddr/mac/MACAddressSegment;->upperValue:I

    return v0
.end method

.method public getValueCount()I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Linet/ipaddr/mac/MACAddressSegment;->value:I

    iget v1, p0, Linet/ipaddr/mac/MACAddressSegment;->upperValue:I

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getBitCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Linet/ipaddr/mac/MACAddressSegment;->hash(III)I

    move-result v0

    return v0
.end method

.method public isBoundedBy(I)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPrefixBlock(I)Z
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ge p1, v1, :cond_2

    const/4 v2, -0x1

    sub-int/2addr v1, p1

    shl-int p1, v2, v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v1

    and-int v2, v1, p1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v1

    not-int p1, p1

    or-int/2addr p1, v1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :cond_2
    :goto_0
    return v0
.end method

.method public isSameValues(Linet/ipaddr/format/AddressDivisionBase;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Linet/ipaddr/mac/MACAddressSegment;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSegment;->isSameValues(Linet/ipaddr/mac/MACAddressSegment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSameValues(Linet/ipaddr/mac/MACAddressSegment;)Z
    .locals 2

    .line 2
    iget v0, p0, Linet/ipaddr/mac/MACAddressSegment;->value:I

    iget v1, p1, Linet/ipaddr/mac/MACAddressSegment;->value:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Linet/ipaddr/mac/MACAddressSegment;->upperValue:I

    iget p1, p1, Linet/ipaddr/mac/MACAddressSegment;->upperValue:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public matches(I)Z
    .locals 2

    int-to-long v0, p1

    invoke-super {p0, v0, v1}, Linet/ipaddr/format/standard/AddressDivision;->matches(J)Z

    move-result p1

    return p1
.end method

.method public matchesWithMask(II)Z
    .locals 2

    .line 1
    int-to-long v0, p1

    int-to-long p1, p2

    invoke-super {p0, v0, v1, p1, p2}, Linet/ipaddr/format/standard/AddressDivision;->matchesWithMask(JJ)Z

    move-result p1

    return p1
.end method

.method public matchesWithMask(III)Z
    .locals 7

    .line 2
    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    invoke-super/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivision;->matchesWithMask(JJJ)Z

    move-result p1

    return p1
.end method

.method public prefixBlockIterator(I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v1}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixEquals(Linet/ipaddr/AddressSegment;I)Z
    .locals 3

    if-ltz p2, :cond_2

    instance-of v0, p1, Linet/ipaddr/mac/MACAddressSegment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getBitCount()I

    move-result v0

    sub-int/2addr v0, p2

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSegment;->isSameValues(Linet/ipaddr/mac/MACAddressSegment;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result p2

    ushr-int/2addr p2, v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v2

    ushr-int/2addr v2, v0

    if-ne p2, v2, :cond_1

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result p1

    ushr-int/2addr p1, v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result p2

    ushr-int/2addr p2, v0

    if-gt p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1
.end method

.method public prefixIterator(I)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSegment;->reverseBits(Z)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSegment;->reverseBits(Z)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public reverseBits()Linet/ipaddr/mac/MACAddressSegment;
    .locals 2

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Linet/ipaddr/format/standard/AddressDivision;->isReversibleRange(Linet/ipaddr/AddressSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    const-string v1, "ipaddress.error.reverseRange"

    invoke-direct {v0, p0, v1}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Linet/ipaddr/mac/MACAddressSegment;->value:I

    int-to-byte v1, v0

    invoke-static {v1}, Linet/ipaddr/format/standard/AddressDivision;->reverseBits(B)I

    move-result v1

    if-ne v0, v1, :cond_2

    return-object p0

    :cond_2
    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-interface {v0, v1}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSegment;

    return-object v0
.end method

.method public reverseBits(Z)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->reverseBits()Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->reverseBytes()Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->reverseBytes()Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytes()Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 3
    return-object p0
.end method

.method public setPrefixedSegment(Ljava/lang/Integer;Ljava/lang/Integer;Z)Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Linet/ipaddr/format/standard/AddressDivision;->setPrefixedSegment(Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Ljava/lang/Integer;ZLinet/ipaddr/AddressNetwork$AddressSegmentCreator;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    return-object p1
.end method

.method public setString(Ljava/lang/CharSequence;ZIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    int-to-long v0, p5

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getDivisionValue()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    invoke-interface {p1, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setString(Ljava/lang/CharSequence;ZIIII)V
    .locals 4

    .line 2
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    int-to-long v0, p5

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getDivisionValue()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    int-to-long p5, p6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperDivisionValue()J

    move-result-wide v0

    cmp-long p2, p5, v0

    if-nez p2, :cond_1

    invoke-interface {p1, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getBitCount()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v4

    new-instance v5, Linet/ipaddr/m;

    const/4 v2, 0x2

    invoke-direct {v5, p0, v2}, Linet/ipaddr/m;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lcom/google/android/material/sidesheet/b;

    invoke-direct {v6, v1, v0}, Lcom/google/android/material/sidesheet/b;-><init>(ILjava/io/Serializable;)V

    new-instance v7, Lv/f;

    const/16 v1, 0x18

    invoke-direct {v7, v0, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Linet/ipaddr/format/AddressDivisionBase;->createSegmentSpliterator(Linet/ipaddr/AddressSegment;IILjava/util/function/Supplier;Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toHexString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->hexPrefixedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    goto :goto_0

    :cond_0
    sget-object p1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->hexParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    :goto_0
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSegment;->toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->canonicalParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddressSegment;->toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {p1}, Linet/ipaddr/mac/MACAddressSection;->toParams(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Linet/ipaddr/format/util/AddressDivisionWriter;->getDivisionStringLength(Linet/ipaddr/format/string/AddressStringDivision;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p1, v0, p0}, Linet/ipaddr/format/util/AddressDivisionWriter;->appendDivision(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivision;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toPrefixBlockSegment(I)Linet/ipaddr/mac/MACAddressSegment;
    .locals 4

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSegment;->isPrefixBlock(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v2

    const/4 v3, -0x1

    sub-int/2addr v0, p1

    shl-int p1, v3, v0

    and-int v0, v1, p1

    not-int p1, p1

    or-int/2addr p1, v2

    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createRangeSegment(II)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method
