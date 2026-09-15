.class public abstract Linet/ipaddr/format/standard/IPAddressDivision;
.super Linet/ipaddr/format/standard/AddressDivision;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/IPAddressGenericDivision;


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field protected transient cachedString:Ljava/lang/String;

.field private final divisionNetworkPrefix:Ljava/lang/Integer;

.field private transient isSinglePrefixBlock:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/format/standard/IPAddressDivision;-><init>(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivision;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Linet/ipaddr/format/standard/IPAddressDivision;->divisionNetworkPrefix:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public containsPrefixBlock(I)Z
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v3

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixBlock(JJI)Z

    move-result p1

    return p1
.end method

.method public containsSinglePrefixBlock(I)Z
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v3

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/IPAddressDivision;->isSinglePrefixBlock(JJI)Z

    move-result p1

    return p1
.end method

.method public getBlockMaskPrefixLength(Z)Ljava/lang/Integer;
    .locals 5

    invoke-virtual {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivision;->getTrailingBitCount(Z)I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v1

    if-eqz p1, :cond_0

    not-long v1, v1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v3

    and-long/2addr v1, v3

    :cond_0
    ushr-long/2addr v1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCachedDefaultLowerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDefaultLowerString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->cachedString:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public abstract getDivisionHostMask(I)J
.end method

.method public abstract getDivisionNetworkMask(I)J
.end method

.method public getDivisionPrefixLength()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->divisionNetworkPrefix:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeadingBitCount(Z)I
    .locals 5

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v1

    if-eqz p1, :cond_0

    not-long v1, v1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide v3

    and-long/2addr v1, v3

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p1

    sub-int/2addr p1, v0

    return p1
.end method

.method public getPrefixAdjustedRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Linet/ipaddr/format/AddressDivisionBase;->getPrefixAdjustedRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public getString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isSinglePrefixBlock()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultSegmentWildcardString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixBlock()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionNetworkMask(I)J

    move-result-wide v2

    and-long/2addr v0, v2

    :cond_2
    move-wide v4, v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultTextualRadix()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linet/ipaddr/format/standard/AddressDivision;->getDefaultRangeString(JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDefaultLowerString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    iput-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->cachedString:Ljava/lang/String;

    :cond_5
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_4
    return-object v0
.end method

.method public getTrailingBitCount(Z)I
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v0

    if-eqz p1, :cond_0

    const-wide/16 v2, -0x1

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result p1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    return p1

    :cond_0
    not-long v0, v0

    goto :goto_0
.end method

.method public getUpperStringMasked(IZLjava/lang/StringBuilder;)V
    .locals 11

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionNetworkMask(I)J

    move-result-wide v2

    and-long v4, v0, v2

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    sget-object v0, Linet/ipaddr/format/AddressDivisionBase;->UPPERCASE_DIGITS:[C

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    sget-object v0, Linet/ipaddr/format/AddressDivisionBase;->DIGITS:[C

    goto :goto_0

    :goto_1
    move v6, p1

    move v8, p2

    move-object v10, p3

    invoke-static/range {v4 .. v10}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedString(JIIZ[CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getWildcardString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionBase;->getDefaultSegmentWildcardString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDefaultRangeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->getString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionBase;->cachedWildcardString:Ljava/lang/String;

    :cond_4
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_4
    return-object v0
.end method

.method public isPrefixBlock()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/standard/IPAddressDivision;->containsPrefixBlock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrefixBlock(JJI)Z
    .locals 10

    .line 2
    if-nez p5, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getMaxValue()J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-virtual {p0, p5}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionNetworkMask(I)J

    move-result-wide v6

    invoke-virtual {p0, p5}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionHostMask(I)J

    move-result-wide v8

    move-wide v0, p1

    move-wide v2, p3

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Linet/ipaddr/format/standard/AddressDivision;->testRange(JJJJJ)Z

    move-result p1

    return p1
.end method

.method public isPrefixed()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->divisionNetworkPrefix:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSinglePrefixBlock()Z
    .locals 1

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->isSinglePrefixBlock:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/standard/IPAddressDivision;->containsSinglePrefixBlock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->isSinglePrefixBlock:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivision;->isSinglePrefixBlock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSinglePrefixBlock(JI)Z
    .locals 6

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v3

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/IPAddressDivision;->isSinglePrefixBlock(JJI)Z

    move-result p1

    return p1
.end method

.method public isSinglePrefixBlock(JJI)Z
    .locals 10

    .line 3
    invoke-virtual {p0, p5}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionNetworkMask(I)J

    move-result-wide v6

    invoke-virtual {p0, p5}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionHostMask(I)J

    move-result-wide v8

    move-wide v0, p1

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Linet/ipaddr/format/standard/AddressDivision;->testRange(JJJJJ)Z

    move-result p1

    return p1
.end method

.method public matchesWithPrefixMask(JLjava/lang/Integer;)Z
    .locals 4

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/standard/AddressDivision;->matches(J)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Linet/ipaddr/format/standard/IPAddressDivision;->getDivisionNetworkMask(I)J

    move-result-wide v0

    and-long/2addr p1, v0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v2

    and-long/2addr v2, v0

    cmp-long p3, p1, v2

    if-nez p3, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v2

    and-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
