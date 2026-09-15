.class public abstract Linet/ipaddr/AddressComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/AddressComparator$CountComparator;,
        Linet/ipaddr/AddressComparator$ValueComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linet/ipaddr/format/AddressItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected final equalsConsistent:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Linet/ipaddr/AddressComparator;->equalsConsistent:Z

    return-void
.end method

.method public static compareDivBitCounts(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I
    .locals 4

    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v1

    sub-int v1, v0, v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v1

    invoke-interface {v1}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v1

    invoke-interface {p1, v2}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    sub-int/2addr v1, v3

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static convertResult(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static mapDivision(Linet/ipaddr/format/AddressGenericDivision;)I
    .locals 1

    instance-of v0, p0, Linet/ipaddr/mac/MACAddressSegment;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p0, Linet/ipaddr/ipv4/IPv4JoinedSegments;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of v0, p0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    instance-of v0, p0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    instance-of v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivision;

    if-eqz v0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    instance-of v0, p0, Linet/ipaddr/format/standard/IPAddressBitsDivision;

    if-eqz v0, :cond_5

    const/4 p0, -0x2

    return p0

    :cond_5
    instance-of p0, p0, Linet/ipaddr/format/standard/AddressBitsDivision;

    if-eqz p0, :cond_6

    const/4 p0, -0x3

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static mapGrouping(Linet/ipaddr/format/AddressDivisionSeries;)I
    .locals 1

    instance-of v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    instance-of v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    if-eqz v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    instance-of v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    instance-of v0, p0, Linet/ipaddr/mac/MACAddressSection;

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    instance-of v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    if-eqz v0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    instance-of v0, p0, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;

    if-eqz v0, :cond_5

    const/4 p0, -0x2

    return p0

    :cond_5
    instance-of p0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping;

    if-eqz p0, :cond_6

    const/4 p0, -0x3

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static mapRange(Linet/ipaddr/IPAddressSeqRange;)I
    .locals 1

    instance-of v0, p0, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of p0, p0, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I
    .locals 2

    .line 1
    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-virtual {p2}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I

    move-result v0

    if-nez v0, :cond_1

    instance-of v1, p1, Linet/ipaddr/ipv6/IPv6Address;

    if-eqz v1, :cond_1

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    check-cast p2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getZone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getZone()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Le0/b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Le0/b;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public compare(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I
    .locals 2

    .line 2
    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Linet/ipaddr/AddressComparator;->mapGrouping(Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result v0

    invoke-static {p2}, Linet/ipaddr/AddressComparator;->mapGrouping(Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    move-object v1, p2

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection;

    iget v1, v1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    iget v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_3

    return v1

    :cond_2
    instance-of v0, p1, Linet/ipaddr/mac/MACAddressSection;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    move-object v1, p2

    check-cast v1, Linet/ipaddr/mac/MACAddressSection;

    iget v1, v1, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iget v0, v0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compareParts(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I

    move-result p1

    return p1
.end method

.method public compare(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;)I
    .locals 2

    .line 3
    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Linet/ipaddr/AddressComparator;->mapDivision(Linet/ipaddr/format/AddressGenericDivision;)I

    move-result v0

    invoke-static {p2}, Linet/ipaddr/AddressComparator;->mapDivision(Linet/ipaddr/format/AddressGenericDivision;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result v0

    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p1

    invoke-interface {p2}, Linet/ipaddr/AddressSegment;->getUpperSegmentValue()I

    move-result v1

    invoke-interface {p2}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p2

    invoke-virtual {p0, v0, p1, v1, p2}, Linet/ipaddr/AddressComparator;->compareValues(IIII)I

    move-result p1

    return p1
.end method

.method public compare(Linet/ipaddr/IPAddressSeqRange;Linet/ipaddr/IPAddressSeqRange;)I
    .locals 10

    .line 4
    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Linet/ipaddr/AddressComparator;->mapRange(Linet/ipaddr/IPAddressSeqRange;)I

    move-result v0

    invoke-static {p2}, Linet/ipaddr/AddressComparator;->mapRange(Linet/ipaddr/IPAddressSeqRange;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    if-eqz v0, :cond_2

    instance-of v0, p2, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    if-eqz v0, :cond_2

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    check-cast p2, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->longValue()J

    move-result-wide v4

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->longValue()J

    move-result-wide v6

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->longValue()J

    move-result-wide v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Linet/ipaddr/AddressComparator;->compareValues(JJJJ)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Linet/ipaddr/IPAddressSeqRange;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Linet/ipaddr/IPAddressSeqRange;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, v0, p1, v1, p2}, Linet/ipaddr/AddressComparator;->compareValues(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public compare(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I
    .locals 2

    .line 5
    instance-of v0, p1, Linet/ipaddr/Address;

    if-eqz v0, :cond_2

    instance-of v0, p2, Linet/ipaddr/Address;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/Address;

    check-cast p2, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p1

    return p1

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/AddressComparator;->equalsConsistent:Z

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p1}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p2, Linet/ipaddr/Address;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Linet/ipaddr/AddressComparator;->equalsConsistent:Z

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    check-cast p2, Linet/ipaddr/Address;

    invoke-virtual {p2}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object p2

    :cond_4
    :goto_0
    instance-of v0, p1, Linet/ipaddr/AddressSection;

    if-eqz v0, :cond_5

    instance-of v0, p2, Linet/ipaddr/AddressSection;

    if-eqz v0, :cond_5

    check-cast p1, Linet/ipaddr/AddressSection;

    check-cast p2, Linet/ipaddr/AddressSection;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I

    move-result p1

    return p1

    :cond_5
    if-ne p1, p2, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Linet/ipaddr/AddressComparator;->mapGrouping(Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result v0

    invoke-static {p2}, Linet/ipaddr/AddressComparator;->mapGrouping(Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compareParts(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result p1

    return p1
.end method

.method public compare(Linet/ipaddr/format/AddressGenericDivision;Linet/ipaddr/format/AddressGenericDivision;)I
    .locals 9

    .line 6
    instance-of v0, p1, Linet/ipaddr/AddressSegment;

    if-eqz v0, :cond_0

    instance-of v0, p2, Linet/ipaddr/AddressSegment;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/AddressSegment;

    check-cast p2, Linet/ipaddr/AddressSegment;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;)I

    move-result p1

    return p1

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Linet/ipaddr/AddressComparator;->mapDivision(Linet/ipaddr/format/AddressGenericDivision;)I

    move-result v0

    invoke-static {p2}, Linet/ipaddr/AddressComparator;->mapDivision(Linet/ipaddr/format/AddressGenericDivision;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget-boolean v0, p0, Linet/ipaddr/AddressComparator;->equalsConsistent:Z

    if-eqz v0, :cond_3

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    invoke-interface {p2}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Linet/ipaddr/format/standard/AddressDivision;

    if-eqz v0, :cond_4

    instance-of v0, p2, Linet/ipaddr/format/standard/AddressDivision;

    if-eqz v0, :cond_4

    check-cast p1, Linet/ipaddr/format/standard/AddressDivision;

    check-cast p2, Linet/ipaddr/format/standard/AddressDivision;

    invoke-virtual {p1}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v1

    invoke-virtual {p1}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v3

    invoke-virtual {p2}, Linet/ipaddr/format/standard/AddressDivision;->getUpperDivisionValue()J

    move-result-wide v5

    invoke-virtual {p2}, Linet/ipaddr/format/standard/AddressDivision;->getDivisionValue()J

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Linet/ipaddr/AddressComparator;->compareValues(JJJJ)I

    move-result p1

    return p1

    :cond_4
    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p2}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, v0, p1, v1, p2}, Linet/ipaddr/AddressComparator;->compareValues(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public compare(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)I
    .locals 5

    .line 7
    instance-of v0, p1, Linet/ipaddr/format/AddressDivisionSeries;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p2, Linet/ipaddr/format/AddressDivisionSeries;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/format/AddressDivisionSeries;

    check-cast p2, Linet/ipaddr/format/AddressDivisionSeries;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result p1

    return p1

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/AddressComparator;->equalsConsistent:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Linet/ipaddr/format/AddressDivisionSeries;

    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    if-lez v0, :cond_2

    return v2

    :cond_2
    invoke-interface {p1, v1}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object p1

    :cond_3
    instance-of v0, p1, Linet/ipaddr/format/AddressGenericDivision;

    const/4 v3, -0x1

    if-eqz v0, :cond_5

    instance-of v4, p2, Linet/ipaddr/format/AddressGenericDivision;

    if-eqz v4, :cond_4

    check-cast p1, Linet/ipaddr/format/AddressGenericDivision;

    check-cast p2, Linet/ipaddr/format/AddressGenericDivision;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/format/AddressGenericDivision;Linet/ipaddr/format/AddressGenericDivision;)I

    move-result p1

    return p1

    :cond_4
    iget-boolean v4, p0, Linet/ipaddr/AddressComparator;->equalsConsistent:Z

    if-eqz v4, :cond_8

    return v3

    :cond_5
    instance-of v4, p1, Linet/ipaddr/IPAddressSeqRange;

    if-eqz v4, :cond_8

    instance-of v4, p2, Linet/ipaddr/IPAddressSeqRange;

    if-eqz v4, :cond_6

    check-cast p1, Linet/ipaddr/IPAddressSeqRange;

    check-cast p2, Linet/ipaddr/IPAddressSeqRange;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/IPAddressSeqRange;Linet/ipaddr/IPAddressSeqRange;)I

    move-result p1

    return p1

    :cond_6
    iget-boolean v4, p0, Linet/ipaddr/AddressComparator;->equalsConsistent:Z

    if-eqz v4, :cond_8

    instance-of p1, p2, Linet/ipaddr/format/AddressDivisionSeries;

    if-eqz p1, :cond_7

    return v3

    :cond_7
    return v2

    :cond_8
    if-ne p1, p2, :cond_9

    return v1

    :cond_9
    iget-boolean v3, p0, Linet/ipaddr/AddressComparator;->equalsConsistent:Z

    if-eqz v3, :cond_a

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    invoke-interface {p2}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-eqz v3, :cond_a

    return v3

    :cond_a
    instance-of v3, p2, Linet/ipaddr/format/AddressDivisionSeries;

    if-eqz v3, :cond_d

    move-object v3, p2

    check-cast v3, Linet/ipaddr/format/AddressDivisionSeries;

    invoke-interface {p2}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {v3}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result p2

    if-lez p2, :cond_b

    return v2

    :cond_b
    if-eqz v0, :cond_c

    check-cast p1, Linet/ipaddr/format/AddressGenericDivision;

    invoke-interface {v3, v1}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/format/AddressGenericDivision;Linet/ipaddr/format/AddressGenericDivision;)I

    move-result p1

    return p1

    :cond_c
    invoke-interface {v3, v1}, Linet/ipaddr/format/AddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/AddressGenericDivision;

    move-result-object p2

    :cond_d
    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p2}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, v0, p1, v1, p2}, Linet/ipaddr/AddressComparator;->compareValues(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Linet/ipaddr/format/AddressItem;

    check-cast p2, Linet/ipaddr/format/AddressItem;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)I

    move-result p1

    return p1
.end method

.method public abstract compareParts(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I
.end method

.method public abstract compareParts(Linet/ipaddr/format/AddressDivisionSeries;Linet/ipaddr/format/AddressDivisionSeries;)I
.end method

.method public abstract compareValues(IIII)I
.end method

.method public abstract compareValues(JJJJ)I
.end method

.method public abstract compareValues(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)I
.end method
