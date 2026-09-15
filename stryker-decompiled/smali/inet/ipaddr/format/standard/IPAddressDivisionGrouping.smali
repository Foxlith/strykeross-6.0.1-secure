.class public Linet/ipaddr/format/standard/IPAddressDivisionGrouping;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/IPAddressDivisionSeries;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;,
        Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;,
        Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;
    }
.end annotation


# static fields
.field protected static final ZEROS_CACHE:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final network:Linet/ipaddr/IPAddressNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    invoke-direct {v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;-><init>()V

    sput-object v0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->ZEROS_CACHE:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    sget-boolean v1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->PRELOAD_CACHE:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->preloadCache(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linet/ipaddr/format/standard/IPAddressDivision;",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/AddressDivision;)V

    if-eqz p2, :cond_4

    iput-object p2, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->network:Linet/ipaddr/IPAddressNetwork;

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_3

    aget-object v1, p1, p2

    invoke-virtual {v1}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget-object v0, p1, p2

    invoke-virtual {v0}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

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
    invoke-interface {v1}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ipaddress.error.nullNetwork"

    invoke-static {p2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Linet/ipaddr/format/standard/IPAddressDivision;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/AddressDivision;Z)V

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->network:Linet/ipaddr/IPAddressNetwork;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ipaddress.error.nullNetwork"

    invoke-static {p2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getNoZerosRange()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
    .locals 1

    sget-object v0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->NO_ZEROS:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    return-object v0
.end method

.method public static getSingleRange(II)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
    .locals 2

    sget-object v0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->ZEROS_CACHE:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->addRange(III)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->get()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object p0

    return-object p0
.end method

.method public static prefixContains(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;I)Z
    .locals 6

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    if-le v2, v3, :cond_4

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBytesPerSegment()I

    move-result v3

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v4

    invoke-static {v2, v3, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result v2

    if-ltz v2, :cond_3

    add-int v3, v2, p2

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-virtual {p1, v3}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    invoke-interface {v4}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v3, v1}, Linet/ipaddr/IPAddressSegment;->prefixContains(Linet/ipaddr/IPAddressSegment;I)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    move v1, v2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v2

    add-int v3, v1, p2

    invoke-virtual {p1, v3}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    invoke-interface {v2, v3}, Linet/ipaddr/AddressSegment;->contains(Linet/ipaddr/AddressSegment;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
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
    instance-of v0, p1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    if-eqz v0, :cond_1

    check-cast p1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    invoke-virtual {p1, p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/AddressDivision;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object p1

    return-object p1
.end method

.method public getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/standard/IPAddressDivision;

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object p1

    return-object p1
.end method

.method public getLeadingBitCount(Z)I
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    move v4, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2

    invoke-virtual {v5, p1}, Linet/ipaddr/format/standard/IPAddressDivision;->getLeadingBitCount(Z)I

    move-result p1

    add-int/2addr p1, v4

    return p1

    :cond_2
    invoke-interface {v5}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v4
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

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->network:Linet/ipaddr/IPAddressNetwork;

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

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixLengthForSingleBlock()Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixLengthForSingleBlock(Linet/ipaddr/format/IPAddressDivisionSeries;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTrailingBitCount(Z)I
    .locals 7

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-eqz v5, :cond_2

    invoke-virtual {v4, p1}, Linet/ipaddr/format/standard/IPAddressDivision;->getTrailingBitCount(Z)I

    move-result p1

    add-int/2addr p1, v1

    return p1

    :cond_2
    invoke-interface {v4}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public getZeroRangeSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getZeroSegments(Z)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getZeroSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v0

    return-object v0
.end method

.method public getZeroSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getZeroSegments(Z)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v0

    return-object v0
.end method

.method public getZeroSegments(Z)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
    .locals 12

    .line 2
    sget-object v0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->ZEROS_CACHE:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->prefixedSubnetsAreExplicit()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->isPrefixBlock()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/2addr p1, v2

    const/4 v2, -0x1

    move v5, v2

    move v6, v3

    move v7, v6

    :goto_1
    if-ge v6, v1, :cond_5

    invoke-virtual {p0, v6}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object v8

    invoke-virtual {v8}, Linet/ipaddr/format/standard/AddressDivision;->isZero()Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v8}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11, v9}, Linet/ipaddr/format/standard/IPAddressDivision;->isSinglePrefixBlock(JI)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    if-lez v7, :cond_4

    invoke-virtual {v0, v2, v5, v7}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->addRange(III)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    move-result-object v0

    add-int/2addr v7, v2

    move v5, v7

    move v7, v3

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v4, :cond_3

    move v2, v6

    :cond_3
    add-int/lit8 v8, v1, -0x1

    if-ne v6, v8, :cond_4

    invoke-virtual {v0, v2, v5, v7}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->addRange(III)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    move-result-object v0

    add-int v5, v2, v7

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->get()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object p1

    return-object p1
.end method

.method public includesZeroHost()Z
    .locals 9

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v6, v5

    const-wide/16 v7, -0x1

    shl-long v5, v7, v6

    not-long v5, v5

    invoke-virtual {v4}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v7

    and-long v4, v5, v7

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/format/standard/AddressDivision;->includesZero()Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_3
    add-int/2addr v3, v2

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public isMore(Linet/ipaddr/format/AddressDivisionSeries;)I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

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
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v1

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Linet/ipaddr/format/AddressDivisionSeries;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public isPrefixBlock()Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->containsPrefixBlock(I)Z

    move-result v0

    return v0
.end method

.method public isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSinglePrefixBlock()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->containsSinglePrefixBlock(I)Z

    move-result v0

    return v0
.end method
