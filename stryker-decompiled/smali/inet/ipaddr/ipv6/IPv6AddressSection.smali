.class public Linet/ipaddr/ipv6/IPv6AddressSection;
.super Linet/ipaddr/IPAddressSection;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;,
        Linet/ipaddr/ipv6/IPv6AddressSection$EmbeddedIPv6AddressSection;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;,
        Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringMatcher;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressSection;",
        "Ljava/lang/Iterable<",
        "Linet/ipaddr/ipv6/IPv6AddressSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_VALUES_BY_SEGMENT:[Ljava/math/BigInteger;

.field private static creators:[Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator; = null

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final addressSegmentIndex:I

.field transient defaultMixedAddressSection:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

.field transient embeddedIPv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

.field private transient sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation
.end field

.field private transient stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

.field private transient zeroRanges:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

.field private transient zeroSegments:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    sput-object v1, Linet/ipaddr/ipv6/IPv6AddressSection;->creators:[Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v3, v1, v2

    const-wide/32 v2, 0xffff

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-wide v2, 0xffffffffL

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-wide v2, 0xffffffffffffL

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v1, v6

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v6, 0x50

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v1, v6

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v6, 0x60

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v6, 0x6

    aput-object v4, v1, v6

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v6, 0x70

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v6, 0x7

    aput-object v4, v1, v6

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v1, v0

    sput-object v1, Linet/ipaddr/ipv6/IPv6AddressSection;->MAX_VALUES_BY_SEGMENT:[Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>(JJILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(JJILjava/lang/Integer;)V
    .locals 13

    .line 2
    move-object v0, p0

    move/from16 v1, p5

    move-object/from16 v9, p6

    new-array v1, v1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    const/4 v10, 0x0

    invoke-direct {p0, v1, v10, v10}, Linet/ipaddr/IPAddressSection;-><init>([Linet/ipaddr/IPAddressSegment;ZZ)V

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v11

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v12

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v6

    move-object v1, v11

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object v7, v12

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v8}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createSegments([Linet/ipaddr/AddressSegment;JJILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;

    if-eqz v9, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x80

    if-gt v1, v2, :cond_1

    invoke-virtual {v12}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v11, v9, v12, v10}, Linet/ipaddr/IPAddressSection;->isPrefixSubnet([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v5

    invoke-virtual {v12}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v6

    new-instance v7, Linet/ipaddr/ipv4/j;

    const/4 v1, 0x7

    invoke-direct {v7, v1}, Linet/ipaddr/ipv4/j;-><init>(I)V

    move-object v1, v12

    invoke-static/range {v1 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;

    :cond_0
    iput-object v9, v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    new-instance v1, Linet/ipaddr/PrefixLenException;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v1

    :cond_2
    sget-object v1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object v1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    :goto_0
    iput v10, v0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;I)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;I)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V
    .locals 9

    .line 6
    new-array p3, p3, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, v0}, Linet/ipaddr/IPAddressSection;-><init>([Linet/ipaddr/IPAddressSegment;ZZ)V

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v8

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v5

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v6, v8

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createSegments([Linet/ipaddr/AddressSegment;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x80

    if-gt p1, p2, :cond_1

    invoke-virtual {v8}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3, p4, v8, v0}, Linet/ipaddr/IPAddressSection;->isPrefixSubnet([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v5

    invoke-virtual {v8}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v6

    new-instance v7, Linet/ipaddr/ipv4/j;

    const/16 p1, 0x9

    invoke-direct {v7, p1}, Linet/ipaddr/ipv4/j;-><init>(I)V

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;

    :cond_0
    iput-object p4, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_2
    sget-object p1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    :goto_0
    iput v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSegment;)V
    .locals 2

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, v1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSegment;I)V
    .locals 2

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/mac/MACAddress;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>(Linet/ipaddr/mac/MACAddressSection;II)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/mac/MACAddressSection;)V
    .locals 2

    .line 10
    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getIPv6StartIndex(Linet/ipaddr/mac/MACAddressSection;)I

    move-result v0

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getIPv6SegmentCount(Linet/ipaddr/mac/MACAddressSection;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>(Linet/ipaddr/mac/MACAddressSection;II)V

    return-void
.end method

.method private constructor <init>(Linet/ipaddr/mac/MACAddressSection;II)V
    .locals 8

    .line 11
    if-gtz p3, :cond_0

    sget-object p3, Linet/ipaddr/ipv6/IPv6AddressNetwork;->EMPTY_SEGMENTS:[Linet/ipaddr/ipv6/IPv6AddressSegment;

    goto :goto_0

    :cond_0
    new-array p3, p3, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, v0}, Linet/ipaddr/IPAddressSection;-><init>([Linet/ipaddr/IPAddressSegment;ZZ)V

    sget-object p3, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object p3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    iput p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p2

    const/4 v1, 0x0

    iget v3, p1, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object p3

    invoke-virtual {p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v5

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object p3

    invoke-virtual {p3}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Linet/ipaddr/ipv6/IPv6Address;->toEUI64Segments([Linet/ipaddr/ipv6/IPv6AddressSegment;ILinet/ipaddr/mac/MACAddressSection;IZLinet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p2}, Linet/ipaddr/IPAddressSection;->checkSegments([Linet/ipaddr/ipv6/IPv6AddressSegment;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>(Ljava/math/BigInteger;ILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;ILjava/lang/Integer;)V
    .locals 1

    .line 13
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BILjava/lang/Integer;Z)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 8

    .line 14
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 8

    .line 15
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([BIIILjava/lang/Integer;ZZ)V
    .locals 13

    .line 16
    move-object v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p4, :cond_0

    move/from16 v3, p4

    goto :goto_0

    :cond_0
    sub-int v3, p3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v1

    shr-int/2addr v3, v1

    :goto_0
    new-array v3, v3, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {p0, v3, v2, v2}, Linet/ipaddr/IPAddressSection;-><init>([Linet/ipaddr/IPAddressSegment;ZZ)V

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v11

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v12

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v7

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v8

    move-object v3, v11

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move-object v9, v12

    move-object/from16 v10, p5

    invoke-static/range {v3 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->toSegments([Linet/ipaddr/AddressSegment;[BIIIILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;

    move-object v3, p1

    array-length v4, v3

    array-length v5, v11

    shl-int/2addr v5, v1

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz p5, :cond_d

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_c

    array-length v4, v11

    shl-int/lit8 v4, v4, 0x4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x80

    if-gt v5, v6, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    new-instance v1, Linet/ipaddr/PrefixLenException;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v1

    :cond_3
    move-object/from16 v4, p5

    :goto_2
    array-length v5, v11

    if-lez v5, :cond_a

    invoke-virtual {v12}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez p7, :cond_6

    invoke-static {v11, v4, v12, v2}, Linet/ipaddr/IPAddressSection;->isPrefixSubnet([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v5

    invoke-virtual {v12}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v6

    new-instance v7, Linet/ipaddr/ipv4/j;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Linet/ipaddr/ipv4/j;-><init>(I)V

    move-object p1, v12

    move p2, v1

    move-object/from16 p3, v11

    move/from16 p4, v3

    move/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p1 .. p7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;

    goto :goto_5

    :cond_4
    if-eqz v1, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v5

    if-lt v1, v5, :cond_b

    if-eqz p6, :cond_5

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_3

    :cond_5
    move-object v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setBytes([B)V

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v12}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->prefixedSubnetsAreExplicit()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v5

    if-lt v1, v5, :cond_b

    :cond_8
    if-eqz p6, :cond_9

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_4

    :cond_9
    move-object v1, v3

    :goto_4
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setBytes([B)V

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setBytes([B)V

    :cond_b
    :goto_5
    iput-object v4, v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    goto :goto_7

    :cond_c
    new-instance v1, Linet/ipaddr/PrefixLenException;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v1

    :cond_d
    sget-object v4, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object v4, v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    if-eqz p6, :cond_e

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_6

    :cond_e
    move-object v1, v3

    :goto_6
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setBytes([B)V

    :cond_f
    :goto_7
    iput v2, v0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    return-void
.end method

.method public constructor <init>([BIILjava/lang/Integer;)V
    .locals 8

    .line 17
    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([BILjava/lang/Integer;Z)V
    .locals 8

    .line 18
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([BILjava/lang/Integer;ZZ)V
    .locals 8

    .line 19
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/Integer;)V
    .locals 8

    .line 20
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;)V
    .locals 2

    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;ILjava/lang/Integer;)V
    .locals 6

    .line 22
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZLjava/lang/Integer;Z)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)V
    .locals 1

    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZZ)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZLjava/lang/Integer;Z)V
    .locals 8

    .line 24
    const/4 v0, 0x0

    if-nez p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZZ)V

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_5

    array-length p2, p1

    shl-int/lit8 p2, p2, 0x4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-le p3, p2, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 v1, 0x80

    if-gt p3, v1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_1

    :cond_1
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_2
    :goto_1
    array-length p2, p1

    if-lez p2, :cond_6

    iget-object p2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    sget-object p3, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    if-eq p2, p3, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p4, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v5

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v6

    if-nez p5, :cond_4

    invoke-static {p1, p4, v1, v0}, Linet/ipaddr/IPAddressSection;->isPrefixSubnet([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Linet/ipaddr/ipv4/j;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Linet/ipaddr/ipv4/j;-><init>(I)V

    :goto_2
    move-object v7, p1

    goto :goto_3

    :cond_4
    new-instance p1, Linet/ipaddr/ipv4/j;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, Linet/ipaddr/ipv4/j;-><init>(I)V

    goto :goto_2

    :goto_3
    invoke-static/range {v1 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;

    iput-object p4, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    goto :goto_4

    :cond_5
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_6
    :goto_4
    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZZ)V
    .locals 4

    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Linet/ipaddr/IPAddressSection;-><init>([Linet/ipaddr/IPAddressSegment;ZZ)V

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v1

    new-instance v2, Lcom/google/android/material/color/utilities/o;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    invoke-static {p3, p4, v0, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->normalizePrefixBoundary(I[Linet/ipaddr/IPAddressSegment;IILjava/util/function/Function;)V

    :cond_0
    iput p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-ltz p2, :cond_2

    const/16 p3, 0x8

    if-gt p2, p3, :cond_2

    array-length p4, p1

    add-int/2addr p4, p2

    if-gt p4, p3, :cond_1

    return-void

    :cond_1
    new-instance p3, Linet/ipaddr/AddressValueException;

    array-length p1, p1

    add-int/2addr p2, p1

    int-to-long p1, p2

    invoke-direct {p3, p1, p2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p3

    :cond_2
    new-instance p1, Linet/ipaddr/AddressPositionException;

    invoke-direct {p1, p2}, Linet/ipaddr/AddressPositionException;-><init>(I)V

    throw p1
.end method

.method public constructor <init>([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;)V
    .locals 1

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;ILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic A(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$19(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0(IILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$38(IILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(ILinet/ipaddr/ipv6/IPv6AddressSection;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$20(ILinet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B0(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsIterator$22()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(ILinet/ipaddr/ipv6/IPv6AddressSection;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$mask$87(Linet/ipaddr/ipv6/IPv6AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static synthetic C0(ILinet/ipaddr/ipv6/IPv6Address;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$createZeroNetwork$84(Linet/ipaddr/ipv6/IPv6Address;I)I

    move-result p0

    return p0
.end method

.method public static synthetic D(ILinet/ipaddr/ipv6/IPv6AddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$40(ILinet/ipaddr/ipv6/IPv6AddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic D0(ILinet/ipaddr/ipv6/IPv6Address;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$71(ILinet/ipaddr/ipv6/IPv6Address;)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsSpliterator$32(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E0(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockIterator$66(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(ILinet/ipaddr/ipv6/IPv6Address;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$64(ILinet/ipaddr/ipv6/IPv6Address;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic F0(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$60(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockIterator$14(ZI)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G0(Linet/ipaddr/ipv6/IPv6AddressSection;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$43(Linet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic H(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$toOctalString$95(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H0(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$toOctalString$94(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$68(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I0(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$bitwiseOrNetwork$80(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static synthetic J(Linet/ipaddr/ipv6/IPv6AddressSection;IZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$47(IZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J0(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$reverseBits$1(ZI)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Linet/ipaddr/ipv6/IPv6AddressSection;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$increment$73()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K0(ILinet/ipaddr/ipv6/IPv6AddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsSpliterator$29(ILinet/ipaddr/ipv6/IPv6AddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic L(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixIterator$57(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L0(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$reverseSegments$3(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Linet/ipaddr/ipv6/IPv6Address;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsSpliterator$33(Linet/ipaddr/ipv6/IPv6Address;)Z

    move-result p0

    return p0
.end method

.method public static synthetic M0(ILinet/ipaddr/ipv6/IPv6AddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$10(ILinet/ipaddr/ipv6/IPv6AddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic N(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$62(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N0(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsSpliterator$27(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(ILinet/ipaddr/ipv6/IPv6Address;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$70(ILinet/ipaddr/ipv6/IPv6Address;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O0(Linet/ipaddr/ipv6/IPv6Address;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$54(Linet/ipaddr/ipv6/IPv6Address;)Z

    move-result p0

    return p0
.end method

.method public static synthetic P(Linet/ipaddr/ipv6/IPv6AddressSection;III)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$getZeroHostCountImpl$74(III)I

    move-result p0

    return p0
.end method

.method public static synthetic P0(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$iterator$44()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$reverseBytes$2(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q0(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$iterator$45(ZI)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixIterator$55(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R0(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$maskNetwork$89(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static synthetic S(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsSpliterator$25(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S0(ILinet/ipaddr/ipv6/IPv6AddressSection;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$bitwiseOr$81(Linet/ipaddr/ipv6/IPv6AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static synthetic T(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$58(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$67(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$17(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic U0(ILinet/ipaddr/ipv6/IPv6Address;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsSpliterator$34(ILinet/ipaddr/ipv6/IPv6Address;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic V(Linet/ipaddr/ipv6/IPv6Address;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$63(Linet/ipaddr/ipv6/IPv6Address;)Z

    move-result p0

    return p0
.end method

.method public static synthetic V0(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$toOctalString$93(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(IILinet/ipaddr/ipv6/IPv6Address;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$48(IILinet/ipaddr/ipv6/IPv6Address;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic W0(ILinet/ipaddr/ipv6/IPv6AddressSection;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$maskNetwork$88(Linet/ipaddr/ipv6/IPv6AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static synthetic X(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsIterator$23(ZI)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X0(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$8(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixIterator$13(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y0(ILinet/ipaddr/ipv6/IPv6Address;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$toMaxHost$86(Linet/ipaddr/ipv6/IPv6Address;I)I

    move-result p0

    return p0
.end method

.method public static synthetic Z(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$toPrefixBlock$92(Ljava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$4(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$7(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a1(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$subtract$77(Linet/ipaddr/ipv6/IPv6AddressSection;I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;Z)[I
    .locals 0

    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getCompressIndexAndCount(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;Z)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)[I
    .locals 0

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getCompressIndexAndCount(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(IILinet/ipaddr/ipv6/IPv6Address;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$49(IILinet/ipaddr/ipv6/IPv6Address;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b1(ILinet/ipaddr/ipv6/IPv6Address;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$createZeroHost$82(Linet/ipaddr/ipv6/IPv6Address;I)I

    move-result p0

    return p0
.end method

.method public static synthetic c0(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$61(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c1(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$getLowestOrHighestSection$0(ZI)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static cacheBits(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private checkSectionsMergeable([Linet/ipaddr/ipv6/IPv6AddressSection;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v2, v1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    iget v3, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    if-ne v2, v3, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Linet/ipaddr/SizeMismatchException;

    invoke-direct {p1, p0, v1}, Linet/ipaddr/SizeMismatchException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)V

    throw p1

    :cond_2
    new-instance p1, Linet/ipaddr/AddressPositionException;

    iget v0, v1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    iget v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    invoke-direct {p1, v1, v0, v2}, Linet/ipaddr/AddressPositionException;-><init>(Linet/ipaddr/format/AddressItem;II)V

    throw p1

    :cond_3
    return-void
.end method

.method public static coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    return-object p0
.end method

.method public static coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">(TT;TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/IPAddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    return-object p0
.end method

.method public static createSection(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p2

    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v3, p1, v2

    aput-object v3, v0, v2

    const/4 v3, 0x1

    aget-object v4, p1, v3

    aput-object v4, v0, v3

    aget-object v4, p1, v1

    aput-object v4, v0, v1

    const/4 v4, 0x3

    aget-object v5, p1, v4

    aput-object v5, v0, v4

    const/4 v5, 0x4

    aget-object v6, p1, v5

    aput-object v6, v0, v5

    const/4 v5, 0x5

    aget-object p1, p1, v5

    aput-object p1, v0, v5

    invoke-virtual {p2, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p2, v3}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Linet/ipaddr/ipv4/IPv4AddressSegment;->join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    const/4 v2, 0x6

    aput-object p1, v0, v2

    invoke-virtual {p2, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p2, v4}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->join(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    iput-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->embeddedIPv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p0
.end method

.method public static createSectionInternal(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;[Linet/ipaddr/mac/MACAddressSegment;IZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createSectionInternal(Linet/ipaddr/format/standard/AddressCreator;[Linet/ipaddr/AddressSegment;IZ)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/mac/MACAddressSection;

    return-object p0
.end method

.method public static synthetic d0(Linet/ipaddr/ipv6/IPv6AddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$35(I[Linet/ipaddr/ipv6/IPv6AddressSegment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d1(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockIterator$65(ZI)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsSpliterator$26(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e1(Linet/ipaddr/ipv6/IPv6AddressSection;IZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$36(IZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private excludeNonZeroHosts()Ljava/util/function/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Linet/ipaddr/ipv6/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Linet/ipaddr/ipv6/f;-><init>(IILinet/ipaddr/ipv6/IPv6AddressSection;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic f0(Linet/ipaddr/ipv6/IPv6AddressSection;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsSpliterator$28(Linet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f1(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixIterator$12(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$getHostSection$91(Ljava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g1(ILinet/ipaddr/ipv6/IPv6Address;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$72(ILinet/ipaddr/ipv6/IPv6Address;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 1

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator(I)Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method private varargs getCloned([Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSection;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p0, v0, v3

    return-object v0
.end method

.method private getCompressIndexAndCount(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)[I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getCompressIndexAndCount(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;Z)[I

    move-result-object p1

    return-object p1
.end method

.method private getCompressIndexAndCount(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;Z)[I
    .locals 13

    .line 2
    if-eqz p1, :cond_b

    iget-object v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;->rangeSelection:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->compressHost()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getZeroRangeSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getZeroSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    iget-object v5, p1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;->compressMixedOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    invoke-virtual {v5, p0}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->compressMixed(Linet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    sget-object v6, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->HOST_PREFERRED:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    if-ne v0, v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    if-eqz p2, :cond_3

    sget-object v7, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->MIXED_PREFERRED:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    if-ne v0, v7, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    invoke-virtual {v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    const/4 v8, -0x1

    :goto_4
    if-ltz v7, :cond_a

    invoke-virtual {v1, v7}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->getRange(I)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    move-result-object v9

    iget v10, v9, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;->index:I

    iget v9, v9, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;->length:I

    if-eqz p2, :cond_5

    iget v11, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    rsub-int/lit8 v11, v11, 0x6

    if-eqz v5, :cond_4

    if-gt v10, v11, :cond_4

    add-int v12, v10, v9

    if-ge v12, v2, :cond_5

    :cond_4
    sub-int/2addr v11, v10

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_5
    if-lez v9, :cond_7

    if-lt v9, v3, :cond_7

    iget-boolean v11, p1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;->compressSingle:Z

    if-nez v11, :cond_6

    if-le v9, v4, :cond_7

    :cond_6
    move v3, v9

    move v8, v10

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v11

    if-eqz v11, :cond_8

    add-int v11, v10, v9

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v12

    mul-int/2addr v12, v11

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v12, v11, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    add-int/2addr v10, v9

    if-lt v10, v2, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-ltz v8, :cond_b

    filled-new-array {v8, v3}, [I

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getCount(Ljava/util/function/IntUnaryOperator;I)Ljava/math/BigInteger;
    .locals 12

    if-ltz p1, :cond_11

    if-nez p1, :cond_0

    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    const-wide/16 v6, 0x1

    if-ge v5, v3, :cond_3

    invoke-interface {p0, v5}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v8

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    int-to-long v0, v8

    goto :goto_1

    :cond_1
    if-eq v8, v4, :cond_2

    int-to-long v6, v8

    mul-long/2addr v0, v6

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-gt p1, v2, :cond_4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {p0, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v2

    int-to-long v2, v2

    const/4 v5, 0x6

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x4

    :goto_2
    if-ge v9, v8, :cond_7

    invoke-interface {p0, v9}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v10

    cmp-long v11, v2, v6

    if-nez v11, :cond_5

    int-to-long v2, v10

    goto :goto_3

    :cond_5
    if-eq v10, v4, :cond_6

    int-to-long v10, v10

    mul-long/2addr v2, v10

    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    if-gt p1, v5, :cond_8

    invoke-static {v0, v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->multiply(JJ)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-interface {p0, v5}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v5

    int-to-long v8, v5

    const/4 v5, 0x7

    if-le p1, v5, :cond_a

    invoke-interface {p0, v5}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p0

    cmp-long p1, v8, v6

    if-nez p1, :cond_9

    int-to-long v8, p0

    goto :goto_4

    :cond_9
    if-eq p0, v4, :cond_a

    int-to-long p0, p0

    mul-long/2addr v8, p0

    :cond_a
    :goto_4
    const-wide/32 p0, -0x4afb0ccd

    cmp-long v4, v8, p0

    if-gtz v4, :cond_d

    cmp-long v4, v8, v6

    if-nez v4, :cond_b

    invoke-static {v0, v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->multiply(JJ)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_b
    cmp-long v4, v2, p0

    if-gtz v4, :cond_c

    mul-long/2addr v2, v8

    invoke-static {v0, v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->multiply(JJ)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_c
    cmp-long p0, v0, p0

    if-gtz p0, :cond_10

    mul-long/2addr v0, v8

    invoke-static {v0, v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->multiply(JJ)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_d
    cmp-long v4, v2, p0

    if-gtz v4, :cond_f

    cmp-long v4, v2, v6

    if-nez v4, :cond_e

    invoke-static {v0, v1, v8, v9}, Linet/ipaddr/ipv6/IPv6AddressSection;->multiply(JJ)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_e
    cmp-long p0, v0, p0

    if-gtz p0, :cond_10

    mul-long/2addr v0, v2

    invoke-static {v0, v1, v8, v9}, Linet/ipaddr/ipv6/IPv6AddressSection;->multiply(JJ)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_f
    cmp-long p0, v0, v6

    if-nez p0, :cond_10

    invoke-static {v2, v3, v8, v9}, Linet/ipaddr/ipv6/IPv6AddressSection;->multiply(JJ)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-static {v0, v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->multiply(JJ)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static getIPv6SegmentCount(Linet/ipaddr/mac/MACAddressSection;)I
    .locals 4

    iget v0, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v2, v2, 0x1

    shr-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    if-gt v0, p0, :cond_0

    const/4 p0, 0x4

    if-lt v1, p0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    return v2
.end method

.method private static getIPv6StartIndex(Linet/ipaddr/mac/MACAddressSection;)I
    .locals 3

    iget v0, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    shr-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    if-lt v0, p0, :cond_0

    add-int/lit8 v2, v1, 0x5

    :cond_0
    return v2
.end method

.method public static getMaxValue(I)Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection;->MAX_VALUES_BY_SEGMENT:[Ljava/math/BigInteger;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private getSegmentCreator()Linet/ipaddr/AddressNetwork$AddressSegmentCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h0(Linet/ipaddr/ipv6/IPv6AddressSection;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$9(Linet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h1(ILinet/ipaddr/ipv6/IPv6AddressSection;)I
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$getCountImpl$75(I)I

    move-result p0

    return p0
.end method

.method public static synthetic i0(IZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$69(IZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i1(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$52(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    return-object p0
.end method

.method private iterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, p0

    goto :goto_2

    :cond_3
    :goto_1
    move-object v3, v2

    :goto_2
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v4

    if-eqz v1, :cond_4

    move-object p1, v2

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->segmentsIterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-static {v1, v3, v4, p1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic j0(ILinet/ipaddr/ipv6/IPv6Address;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$51(ILinet/ipaddr/ipv6/IPv6Address;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic j1(IILinet/ipaddr/ipv6/IPv6AddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$37(IILinet/ipaddr/ipv6/IPv6AddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic k0(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$39(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k1(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$adjustPrefixLength$78(Linet/ipaddr/ipv6/IPv6AddressSection;I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$41(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l1(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$16(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$adjustPrefixLength$78(Linet/ipaddr/ipv6/IPv6AddressSection;I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$bitwiseOr$81(Linet/ipaddr/ipv6/IPv6AddressSection;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$bitwiseOrNetwork$80(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection;I)I
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    and-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$blockIterator$14(ZI)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$blockIterator$15(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->identityIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$blockIterator$65(ZI)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$blockIterator$66(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->identityIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$blockSpliterator$16(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p0
.end method

.method private static synthetic lambda$blockSpliterator$17(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv6/o;

    const/4 v0, 0x1

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv6/o;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$blockSpliterator$18(IZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p3, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->blockIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$blockSpliterator$19(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p0}, Linet/ipaddr/IPAddressSection;->getBlockCount(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$blockSpliterator$20(ILinet/ipaddr/ipv6/IPv6AddressSection;)Z
    .locals 0

    invoke-virtual {p1, p0}, Linet/ipaddr/IPAddressSection;->getBlockCount(I)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$blockSpliterator$21(ILinet/ipaddr/ipv6/IPv6AddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$blockSpliterator$67(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv6/IPv6Address;

    return-object p0
.end method

.method private static synthetic lambda$blockSpliterator$68(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv6/o;

    const/4 v0, 0x3

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv6/o;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$blockSpliterator$69(IZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p3, p0}, Linet/ipaddr/ipv6/IPv6Address;->blockIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$blockSpliterator$70(ILinet/ipaddr/ipv6/IPv6Address;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p0}, Linet/ipaddr/Address;->getBlockCount(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$blockSpliterator$71(ILinet/ipaddr/ipv6/IPv6Address;)Z
    .locals 0

    invoke-virtual {p1, p0}, Linet/ipaddr/Address;->getBlockCount(I)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$blockSpliterator$72(ILinet/ipaddr/ipv6/IPv6Address;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$createMaxHost$85(Linet/ipaddr/ipv6/IPv6Address;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$createZeroHost$82(Linet/ipaddr/ipv6/IPv6Address;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$createZeroNetwork$84(Linet/ipaddr/ipv6/IPv6Address;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$excludeNonZeroHosts$24(I[Linet/ipaddr/ipv6/IPv6AddressSegment;)Z
    .locals 0

    invoke-virtual {p0, p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->isZeroHost([Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$getCountImpl$75(I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getValueCount()I

    move-result p1

    return p1
.end method

.method private synthetic lambda$getHostSection$91(Ljava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p2

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toHostSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getLowestOrHighestSection$0(ZI)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getLower()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private synthetic lambda$getNetworkSection$90(ZLjava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    invoke-virtual {p0, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toNetworkSegment(Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getPrefixCount$76(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    if-ne p3, p2, :cond_0

    invoke-virtual {p0, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getPrefixValueCount()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getValueCount()I

    move-result p1

    return p1
.end method

.method private synthetic lambda$getZeroHostCountImpl$74(III)I
    .locals 2

    if-ne p3, p1, :cond_0

    invoke-virtual {p0, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {v1, p2, p3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p2

    ushr-int/2addr p2, v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    ushr-int/2addr p1, v0

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    invoke-virtual {p0, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getValueCount()I

    move-result p1

    return p1
.end method

.method private synthetic lambda$increment$73()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getMaxValue(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$iterator$44()[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$iterator$45(ZI)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$mask$87(Linet/ipaddr/ipv6/IPv6AddressSection;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$maskNetwork$88(Linet/ipaddr/ipv6/IPv6AddressSection;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$maskNetwork$89(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection;I)I
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$prefixIterator$11(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$12(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$13(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$55(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$56(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$57(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$prefixSpliterator$10(ILinet/ipaddr/ipv6/IPv6AddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longPrefixCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$prefixSpliterator$4(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$5(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv6/o;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv6/o;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$prefixSpliterator$58(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv6/IPv6Address;

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$59(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv6/o;

    const/4 v0, 0x5

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv6/o;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$prefixSpliterator$6(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$60(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$61(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$62(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$63(Linet/ipaddr/ipv6/IPv6Address;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$prefixSpliterator$64(ILinet/ipaddr/ipv6/IPv6Address;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longPrefixCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$prefixSpliterator$7(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$8(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$9(Linet/ipaddr/ipv6/IPv6AddressSection;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$reverseBits$1(ZI)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p2

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$reverseBytes$2(I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$reverseSegments$3(I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$segmentsIterator$22()[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegments()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$segmentsIterator$23(ZI)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$segmentsSpliterator$25(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$26(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv6/o;

    const/4 v0, 0x6

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv6/o;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$segmentsSpliterator$27(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->segmentsIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$28(Linet/ipaddr/ipv6/IPv6AddressSection;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$segmentsSpliterator$29(ILinet/ipaddr/ipv6/IPv6AddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$segmentsSpliterator$30(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv6/IPv6Address;

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$31(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv6/o;

    const/4 v0, 0x2

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv6/o;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$segmentsSpliterator$32(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->segmentsIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$33(Linet/ipaddr/ipv6/IPv6Address;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$segmentsSpliterator$34(ILinet/ipaddr/ipv6/IPv6Address;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$setPrefixLength$79(Linet/ipaddr/ipv6/IPv6AddressSection;I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$spliterator$35(I[Linet/ipaddr/ipv6/IPv6AddressSegment;)Z
    .locals 0

    invoke-virtual {p0, p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->isZeroHost([Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$spliterator$36(IZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    new-instance p2, Linet/ipaddr/ipv6/f;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3, p0}, Linet/ipaddr/ipv6/f;-><init>(IILinet/ipaddr/ipv6/IPv6AddressSection;)V

    invoke-direct {p4, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$spliterator$37(IILinet/ipaddr/ipv6/IPv6AddressSection;)J
    .locals 2

    invoke-static {p2, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide v0

    invoke-virtual {p2, p1, p0}, Linet/ipaddr/IPAddressSection;->longZeroHostCount(II)J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private static synthetic lambda$spliterator$38(IILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getZeroHostCountImpl(II)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$39(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$40(ILinet/ipaddr/ipv6/IPv6AddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$spliterator$41(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p0
.end method

.method private static synthetic lambda$spliterator$42(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv6/o;

    const/4 v0, 0x4

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv6/o;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$spliterator$43(Linet/ipaddr/ipv6/IPv6AddressSection;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$spliterator$46(I[Linet/ipaddr/ipv6/IPv6AddressSegment;)Z
    .locals 0

    invoke-virtual {p0, p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->isZeroHost([Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$spliterator$47(IZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p4}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p2

    invoke-virtual {p4}, Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p3

    new-instance v0, Linet/ipaddr/ipv6/f;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, p0}, Linet/ipaddr/ipv6/f;-><init>(IILinet/ipaddr/ipv6/IPv6AddressSection;)V

    invoke-virtual {p2, p4, p3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$spliterator$48(IILinet/ipaddr/ipv6/IPv6Address;)J
    .locals 2

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-static {v0, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide v0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Linet/ipaddr/IPAddressSection;->longZeroHostCount(II)J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private static synthetic lambda$spliterator$49(IILinet/ipaddr/ipv6/IPv6Address;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getZeroHostCountImpl(II)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$50(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv6/IPv6Address;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$51(ILinet/ipaddr/ipv6/IPv6Address;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$spliterator$52(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv6/IPv6Address;

    return-object p0
.end method

.method private static synthetic lambda$spliterator$53(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv6/o;

    const/4 v0, 0x7

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv6/o;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$spliterator$54(Linet/ipaddr/ipv6/IPv6Address;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$subtract$77(Linet/ipaddr/ipv6/IPv6AddressSection;I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$toMaxHost$86(Linet/ipaddr/ipv6/IPv6Address;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$toOctalString$93(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    new-array p0, p0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    return-object p0
.end method

.method private static synthetic lambda$toOctalString$94(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    new-array p0, p0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    return-object p0
.end method

.method private static synthetic lambda$toOctalString$95(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;
    .locals 0

    new-array p0, p0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    return-object p0
.end method

.method private synthetic lambda$toPrefixBlock$92(Ljava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toNetworkSegment(Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$toZeroHost$83(Linet/ipaddr/ipv6/IPv6Address;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method public static synthetic m0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$59(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m1(Linet/ipaddr/ipv6/IPv6AddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$46(I[Linet/ipaddr/ipv6/IPv6AddressSegment;)Z

    move-result p0

    return p0
.end method

.method private static multiply(JJ)Ljava/math/BigInteger;
    .locals 5

    const-wide/32 v0, -0x4afb0ccd

    cmp-long v2, p0, v0

    const-wide/16 v3, 0x1

    if-gtz v2, :cond_2

    cmp-long v2, p0, v3

    if-nez v2, :cond_0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long v0, p2, v0

    if-gtz v0, :cond_3

    cmp-long v0, p2, v3

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long v0, p2, v3

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockIterator$15(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n1(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixIterator$56(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Linet/ipaddr/ipv6/IPv6AddressSection;ZLjava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$getNetworkSection$90(ZLjava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$setPrefixLength$79(Linet/ipaddr/ipv6/IPv6AddressSection;I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method private prefixIterator(Z)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->isSinglePrefixBlock()Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-static {v3, v4, v5}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-static {v3, v4, v5}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v9

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    new-instance v6, Linet/ipaddr/ipv6/k;

    const/4 v4, 0x4

    invoke-direct {v6, v4, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    new-instance p1, Linet/ipaddr/ipv6/k;

    const/4 v4, 0x5

    invoke-direct {p1, v4, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    :goto_1
    move-object v10, p1

    goto :goto_2

    :cond_3
    new-instance p1, Linet/ipaddr/ipv6/k;

    const/4 v4, 0x6

    invoke-direct {p1, v4, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    goto :goto_1

    :goto_2
    move-object v4, v1

    invoke-static/range {v3 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-static {v2, p0, v1, p1, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private prefixSpliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixSpliterator(ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method private prefixSpliterator(ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v0

    if-gt p2, v0, :cond_2

    if-ltz p2, :cond_2

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {p2, v0, v1}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {p2, v0, v1}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    new-instance v7, Linet/ipaddr/ipv6/s;

    const/4 v6, 0x5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Linet/ipaddr/ipv6/s;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;III)V

    if-eqz p1, :cond_0

    new-instance p1, Linet/ipaddr/ipv6/h;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    :goto_0
    move-object v8, p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Linet/ipaddr/ipv6/h;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Linet/ipaddr/ipv6/h;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    goto :goto_0

    :goto_1
    new-instance v9, Lcom/google/android/material/color/utilities/o;

    const/16 p1, 0x12

    invoke-direct {v9, p1}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v10, Linet/ipaddr/format/util/h;

    const/4 p1, 0x5

    invoke-direct {v10, p1}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v11, Linet/ipaddr/ipv4/v;

    const/16 p1, 0xf

    invoke-direct {v11, p2, p1}, Linet/ipaddr/ipv4/v;-><init>(II)V

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-direct {p1, p0, p2}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw p1
.end method

.method public static synthetic q0(IZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$18(IZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(ILinet/ipaddr/ipv6/IPv6Address;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$toZeroHost$83(Linet/ipaddr/ipv6/IPv6Address;I)I

    move-result p0

    return p0
.end method

.method private reverseBytes(Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 3

    .line 7
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv6/k;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    const/4 v2, 0x1

    invoke-static {p1, p0, v0, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->reverseBytes(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public static synthetic s0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsSpliterator$31(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method private segmentsIterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;)",
            "Ljava/util/Iterator<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentCreator()Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Linet/ipaddr/ipv6/i;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Linet/ipaddr/ipv6/i;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    :goto_0
    new-instance v4, Linet/ipaddr/ipv6/b;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v5}, Linet/ipaddr/ipv6/b;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)V

    invoke-static {v1, v2, v3, v4, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private setPrefixLength(IZZZ)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    .line 13
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    xor-int/lit8 v5, p4, 0x1

    new-instance v6, Linet/ipaddr/ipv6/h;

    const/16 p4, 0xa

    invoke-direct {v6, p4}, Linet/ipaddr/ipv6/h;-><init>(I)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->setPrefixLength(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;IZZZLinet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public static synthetic t0(Linet/ipaddr/ipv6/IPv6AddressSection;ZII)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$getPrefixCount$76(ZII)I

    move-result p0

    return p0
.end method

.method private toNormalizedMixedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getMixedAddressSection()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->toString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Ljava/lang/CharSequence;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(ILinet/ipaddr/ipv6/IPv6Address;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$createMaxHost$85(Linet/ipaddr/ipv6/IPv6Address;I)I

    move-result p0

    return p0
.end method

.method public static synthetic v0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$5(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$segmentsSpliterator$30(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(ILinet/ipaddr/ipv6/IPv6AddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$blockSpliterator$21(ILinet/ipaddr/ipv6/IPv6AddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic x(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixIterator$11(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$53(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic y(Linet/ipaddr/ipv6/IPv6AddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$excludeNonZeroHosts$24(I[Linet/ipaddr/ipv6/IPv6AddressSegment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic y0(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$50(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$prefixSpliterator$6(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->lambda$spliterator$42(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    .line 10
    invoke-super {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 3

    .line 10
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv6/h;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Linet/ipaddr/ipv6/h;-><init>(I)V

    invoke-static {p0, p1, p2, v0, v1}, Linet/ipaddr/IPAddressSection;->adjustPrefixLength(Linet/ipaddr/IPAddressSection;IZLinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public append(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v5

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressSection;->replace(IILinet/ipaddr/ipv6/IPv6AddressSection;II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public appendToNetwork(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->append(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    ushr-int/lit8 v3, v0, 0x4

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v3, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->insert(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v6

    const/4 v7, 0x1

    move v2, v3

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Linet/ipaddr/ipv6/IPv6AddressSection;->replace(IILinet/ipaddr/ipv6/IPv6AddressSection;IIZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->assignMinPrefixForBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->assignMinPrefixForBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public assignMinPrefixForBlock()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->assignMinPrefixForBlock()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public assignPrefixForSingleBlock()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public bitwiseOr(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->bitwiseOr(Linet/ipaddr/ipv6/IPv6AddressSection;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bitwiseOr(Linet/ipaddr/ipv6/IPv6AddressSection;Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 6

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkMaskSectionCount(Linet/ipaddr/IPAddressSection;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Linet/ipaddr/ipv6/k;

    const/16 p2, 0xb

    invoke-direct {v4, p2, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv6/l;

    const/4 p2, 0x1

    invoke-direct {v5, p2, p1}, Linet/ipaddr/ipv6/l;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Linet/ipaddr/IPAddressSection;->getOredSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public bitwiseOrNetwork(Linet/ipaddr/ipv6/IPv6AddressSection;I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkMaskSectionCount(Linet/ipaddr/IPAddressSection;)V

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0, p2}, Linet/ipaddr/IPAddressNetwork;->getNetworkMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Linet/ipaddr/ipv6/k;

    const/16 p2, 0xd

    invoke-direct {v5, p2, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v6, Linet/ipaddr/ipv6/m;

    const/4 p2, 0x1

    invoke-direct {v6, p1, v0, p2}, Linet/ipaddr/ipv6/m;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection;I)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Linet/ipaddr/IPAddressSection;->getOredSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public blockIterator(I)Ljava/util/Iterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v9

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v6, p1, -0x1

    if-gt v2, v6, :cond_2

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v10, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    move-object p1, v11

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    new-instance v4, Linet/ipaddr/ipv6/b;

    const/4 v2, 0x5

    invoke-direct {v4, p0, v0, v2}, Linet/ipaddr/ipv6/b;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)V

    const/4 v5, 0x0

    new-instance v8, Linet/ipaddr/ipv6/k;

    const/16 v2, 0x13

    invoke-direct {v8, v2, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    move-object v2, v9

    move v7, p1

    invoke-static/range {v1 .. v8}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v11

    :goto_4
    invoke-static {v10, p0, v9, p1, v11}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public blockIterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;I)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "**",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    if-ltz p3, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_2

    invoke-virtual {p0, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    if-eqz v2, :cond_3

    move-object p3, v1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    new-instance v6, Linet/ipaddr/ipv6/b;

    const/4 v4, 0x3

    invoke-direct {v6, p0, v0, v4}, Linet/ipaddr/ipv6/b;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)V

    const/4 v7, 0x0

    new-instance v10, Linet/ipaddr/ipv6/k;

    const/16 v4, 0x10

    invoke-direct {v10, v4, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    move-object v4, p2

    move v9, p3

    invoke-static/range {v3 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-static {v2, p1, p2, p3, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, p0

    move-object v2, v3

    :goto_1
    add-int/lit8 v3, p1, -0x1

    new-instance v7, Linet/ipaddr/ipv6/s;

    const/4 v5, 0x6

    move-object v0, v7

    move v4, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/s;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;III)V

    new-instance v5, Linet/ipaddr/ipv4/y;

    const/4 v0, 0x3

    invoke-direct {v5, p1, v0}, Linet/ipaddr/ipv4/y;-><init>(II)V

    new-instance v0, Lcom/google/android/material/color/utilities/f;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/color/utilities/f;-><init>(II)V

    new-instance v1, Linet/ipaddr/ipv6/e;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Linet/ipaddr/ipv6/e;-><init>(II)V

    new-instance v8, Linet/ipaddr/ipv4/v;

    const/16 v2, 0x10

    invoke-direct {v8, p1, v2}, Linet/ipaddr/ipv4/v;-><init>(II)V

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    move-object v7, v1

    invoke-static/range {v3 .. v8}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public blockSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;",
            "I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    if-ltz p3, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p3, v0, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    move-object v3, p1

    move-object v6, v2

    goto :goto_1

    :cond_2
    move-object v6, v3

    move-object v3, p1

    :goto_1
    add-int/lit8 v7, p3, -0x1

    new-instance p1, Linet/ipaddr/ipv6/s;

    const/4 v9, 0x1

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    invoke-direct/range {v4 .. v9}, Linet/ipaddr/ipv6/s;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;III)V

    new-instance v5, Linet/ipaddr/ipv4/y;

    const/4 p2, 0x2

    invoke-direct {v5, p3, p2}, Linet/ipaddr/ipv4/y;-><init>(II)V

    new-instance v6, Lcom/google/android/material/color/utilities/f;

    const/4 p2, 0x3

    invoke-direct {v6, p3, p2}, Lcom/google/android/material/color/utilities/f;-><init>(II)V

    new-instance v7, Linet/ipaddr/ipv6/e;

    invoke-direct {v7, p3, v1}, Linet/ipaddr/ipv6/e;-><init>(II)V

    new-instance v8, Linet/ipaddr/ipv4/v;

    const/16 p2, 0xb

    invoke-direct {v8, p3, p2}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static/range {v3 .. v8}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public blockStream(I)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public cache(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection;)V
    .locals 2

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    if-nez p1, :cond_0

    if-eqz p2, :cond_6

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p2, :cond_6

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    if-nez v0, :cond_6

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    if-nez v0, :cond_3

    new-instance v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    invoke-direct {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    iput-object p1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    :goto_0
    iput-object p2, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    if-nez v1, :cond_4

    iput-object p1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    :cond_4
    iget-object p1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    monitor-exit p0

    :cond_6
    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cacheNormalizedString(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->normalizedString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iput-object p1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->normalizedString:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public contains(Linet/ipaddr/AddressSection;)Z
    .locals 2

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-eqz v0, :cond_0

    iget v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    move-object v1, p1

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection;

    iget v1, v1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsNonZeroHostsImpl(Linet/ipaddr/IPAddressSection;I)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->subtract(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2, p2}, Linet/ipaddr/IPAddressSection;->isZeroHost(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->coverWithPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->coverWithPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public coverWithPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-static {p0, v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public coverWithPrefixBlock(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 5

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkSectionCount(Linet/ipaddr/IPAddressSection;)V

    new-instance v0, Linet/ipaddr/ipv6/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Linet/ipaddr/ipv6/c;-><init>(I)V

    new-instance v1, Linet/ipaddr/ipv6/c;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Linet/ipaddr/ipv6/c;-><init>(I)V

    sget-object v2, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Linet/ipaddr/ipv4/g;

    const/16 v4, 0xb

    invoke-direct {v3, v2, v4}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    invoke-static {p0, p1, v0, v1, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public createMaxHost()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v1

    check-cast v1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v3, v0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Linet/ipaddr/ipv6/k;

    const/16 v0, 0x9

    invoke-direct {v6, v0, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v7, Linet/ipaddr/ipv6/d;

    const/4 v0, 0x2

    invoke-direct {v7, v0, v1}, Linet/ipaddr/ipv6/d;-><init>(ILinet/ipaddr/ipv6/IPv6Address;)V

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Linet/ipaddr/IPAddressSection;->getOredSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public createNonMixedSection()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    iget v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    rsub-int/lit8 v1, v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3, v2}, Linet/ipaddr/IPAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    iget v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    invoke-virtual {v1, p0, v3, v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createEmbeddedSectionInternal(Linet/ipaddr/ipv6/IPv6AddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public createZeroHost(Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 10

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(I)Linet/ipaddr/IPAddress;

    move-result-object v2

    check-cast v2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v5

    xor-int/lit8 v6, p1, 0x1

    new-instance v7, Linet/ipaddr/ipv6/k;

    const/4 p1, 0x2

    invoke-direct {v7, p1, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v8, Linet/ipaddr/ipv6/d;

    const/4 p1, 0x0

    invoke-direct {v8, p1, v2}, Linet/ipaddr/ipv6/d;-><init>(ILinet/ipaddr/ipv6/IPv6Address;)V

    const/4 v9, 0x1

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public createZeroNetwork()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Linet/ipaddr/ipv6/k;

    const/16 v5, 0x11

    invoke-direct {v4, v5, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv6/d;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v0}, Linet/ipaddr/ipv6/d;-><init>(ILinet/ipaddr/ipv6/IPv6Address;)V

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    iget v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    iget v3, p1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

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

.method public getAddressCreator(I)Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 5

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Linet/ipaddr/ipv6/IPv6AddressSection;->creators:[Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    aget-object v2, v2, p1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    new-instance v2, Linet/ipaddr/ipv6/IPv6AddressSection$1;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v3

    iget-object v4, v0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-direct {v2, p0, v3, v4, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$1;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressNetwork;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;I)V

    iget-boolean v0, v0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    iput-boolean v0, v2, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    if-eqz v1, :cond_3

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection;->creators:[Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    aput-object v2, v0, p1

    :cond_3
    return-object v2
.end method

.method public getBitCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getBitsPerSegment()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getByteCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBytesImpl(Z)[B
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getByteCount()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    shl-int/lit8 v4, v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v3

    :goto_1
    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBytesInternal()[B
    .locals 1

    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->getBytesInternal()[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesPerSegment()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getCountImpl(I)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p1

    :cond_0
    new-instance v0, Linet/ipaddr/ipv6/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Linet/ipaddr/ipv6/l;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    invoke-static {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getCount(Ljava/util/function/IntUnaryOperator;I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/AddressDivision;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 9
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1
.end method

.method public getEmbeddedIPv4AddressSection()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 6

    .line 1
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->embeddedIPv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->embeddedIPv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    iget v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    rsub-int/lit8 v1, v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getIPv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v4

    if-nez v0, :cond_0

    invoke-virtual {v4, v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {v4, v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    invoke-virtual {p0, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v4}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v0

    shl-int/2addr v0, v5

    invoke-virtual {v4, v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    invoke-virtual {p0, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v4}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v1

    invoke-virtual {v3, v0, v1, v4}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    :goto_0
    invoke-static {v4, v0, p0}, Linet/ipaddr/IPAddressSection;->createEmbeddedSection(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->embeddedIPv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    :cond_2
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->embeddedIPv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public getEmbeddedIPv4AddressSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 6

    .line 2
    iget v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    rsub-int/lit8 v0, v0, 0x6

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    shl-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getEmbeddedIPv4AddressSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getIPv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    sub-int v2, p2, p1

    invoke-virtual {v0, v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v3

    rem-int v4, p1, v3

    if-ne v4, v1, :cond_1

    shr-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v4

    add-int/lit8 p1, p1, 0x1

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5, v0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge p1, p2, :cond_2

    shr-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v4

    invoke-virtual {v4, v2, v1, v0}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    add-int/2addr p1, v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_2
    invoke-static {v0, v2, p0}, Linet/ipaddr/IPAddressSection;->createEmbeddedSection(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostMask()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostMask()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getHostMask()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->getHostMask()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public bridge synthetic getHostSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getHostSection()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHostSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 4

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getHostSegmentCount(I)I

    move-result v0

    iget v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator(I)Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    new-instance v2, Linet/ipaddr/ipv6/n;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Linet/ipaddr/ipv6/n;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    invoke-static {p0, p1, v0, v1, v2}, Linet/ipaddr/IPAddressSection;->getHostSection(Linet/ipaddr/IPAddressSection;IILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    return-object v0
.end method

.method public getIPv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;
    .locals 1

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getIPv6Address(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    invoke-virtual {p1, v0}, Linet/ipaddr/ipv4/IPv4Address;->getIPv6Address([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public getIterable()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 6
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLowestOrHighestSection(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLowerNonZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLowerNonZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getLowerNonZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLowestOrHighestSection(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getLowestOrHighestSection(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 11

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSingleLowestOrHighestSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-nez v0, :cond_d

    iget-boolean v1, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHostIsNull:Z

    if-nez v1, :cond_d

    goto :goto_0

    :cond_0
    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-nez v0, :cond_d

    goto :goto_0

    :cond_1
    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-nez v0, :cond_d

    :cond_2
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-eqz v4, :cond_4

    new-instance v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    invoke-direct {v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;-><init>()V

    iput-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-nez v0, :cond_5

    iget-boolean v4, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHostIsNull:Z

    if-nez v4, :cond_5

    :goto_2
    move v2, v3

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_7
    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-nez v0, :cond_5

    goto :goto_2

    :goto_3
    if-eqz v4, :cond_b

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v6

    new-instance v7, Linet/ipaddr/ipv6/i;

    invoke-direct {v7, v3, p0}, Linet/ipaddr/ipv6/i;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v8, Linet/ipaddr/ipv6/b;

    const/4 v0, 0x2

    invoke-direct {v8, p0, p1, v0}, Linet/ipaddr/ipv6/b;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)V

    move-object v5, p0

    move v9, p1

    move v10, p2

    invoke-static/range {v5 .. v10}, Linet/ipaddr/IPAddressSection;->getLowestOrHighestSection(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;ZZ)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-nez v0, :cond_8

    iput-boolean v3, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHostIsNull:Z

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    iput-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_4

    :cond_9
    iput-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_4

    :cond_a
    iput-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    :cond_b
    :goto_4
    monitor-exit p0

    goto :goto_6

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->includesZeroHost()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    :goto_6
    return-object v0
.end method

.method public getMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;
    .locals 1

    invoke-static {}, Linet/ipaddr/Address;->defaultMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getMixedAddressSection()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;
    .locals 4

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->defaultMixedAddressSection:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->defaultMixedAddressSection:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->createNonMixedSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getEmbeddedIPv4AddressSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$1;)V

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->defaultMixedAddressSection:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

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
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->defaultMixedAddressSection:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

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

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkMask()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkMask()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkMask()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->getNetworkMask()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public bridge synthetic getNetworkSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNetworkSection(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkSection()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v0

    goto :goto_0
.end method

.method public getNetworkSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkSection(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 3

    .line 6
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv4/p;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Linet/ipaddr/ipv4/p;-><init>(Linet/ipaddr/IPAddressSection;ZI)V

    invoke-static {p0, p1, p2, v0, v1}, Linet/ipaddr/IPAddressSection;->getNetworkSection(Linet/ipaddr/IPAddressSection;IZLinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public getParts(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 0

    .line 1
    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->from(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getParts(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    move-result-object p1

    return-object p1
.end method

.method public getParts(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 3

    .line 2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    aput-object p0, p1, v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getMixedAddressSection()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    move-result-object v0

    aput-object v0, p1, v1

    return-object p1

    :cond_0
    new-array p1, v1, [Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getMixedAddressSection()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    move-result-object v0

    aput-object v0, p1, v2

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection;->getParts(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    move-result-object p1

    return-object p1
.end method

.method public getPrefixCount(I)Ljava/math/BigInteger;
    .locals 3

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {p1, v0, v1}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v2

    invoke-static {p1, v1, v2}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result p1

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v2, Linet/ipaddr/ipv6/g;

    invoke-direct {v2, p0, p1, v0}, Linet/ipaddr/ipv6/g;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)V

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getCount(Ljava/util/function/IntUnaryOperator;I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p1
.end method

.method public getPrefixCountImpl()Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    .line 7
    return-object p0
.end method

.method public getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 8
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 9
    iget v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator(I)Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-static {p1, p2, p0, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSection(IILinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;)Linet/ipaddr/AddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1
.end method

.method public getSegments(IILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "-",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSegments(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;)V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegments(IILjava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/AddressSegment;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegments()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegments()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getSegments()[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    invoke-virtual {v0}, [Linet/ipaddr/format/AddressDivisionBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object v0
.end method

.method public bridge synthetic getSegmentsInternal()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object v0
.end method

.method public getSingleLowestOrHighestSection()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    invoke-static {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSingleLowestOrHighestSection(Linet/ipaddr/AddressSegmentSeries;)Linet/ipaddr/AddressSegmentSeries;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public bridge synthetic getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    return-object v0
.end method

.method public getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLowestOrHighestSection(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getZeroHostCountImpl(II)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->includesZeroHost(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result p2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v0

    invoke-static {p1, p2, v0}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result p2

    new-instance v0, Linet/ipaddr/ipv6/j;

    invoke-direct {v0, p2, p1, p0}, Linet/ipaddr/ipv6/j;-><init>(IILinet/ipaddr/ipv6/IPv6AddressSection;)V

    add-int/lit8 p2, p2, 0x1

    invoke-static {v0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getCount(Ljava/util/function/IntUnaryOperator;I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p1

    :cond_1
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p1
.end method

.method public getZeroRangeSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->zeroRanges:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    if-nez v0, :cond_0

    invoke-super {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getZeroRangeSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->zeroRanges:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->zeroRanges:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    return-object v0
.end method

.method public getZeroSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->zeroSegments:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    if-nez v0, :cond_0

    invoke-super {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getZeroSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->zeroSegments:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->zeroSegments:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    return-object v0
.end method

.method public hasNoStringCache()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasUppercaseVariations(IZ)Z
    .locals 4

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Linet/ipaddr/format/standard/AddressDivision;->hasUppercaseVariations(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 16

    .line 5
    move-object/from16 v8, p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v14

    invoke-static/range {p1 .. p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    new-instance v15, Linet/ipaddr/ipv6/i;

    const/4 v0, 0x3

    invoke-direct {v15, v0, v8}, Linet/ipaddr/ipv6/i;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    move-wide/from16 v9, p1

    move-object v11, v7

    invoke-static/range {v9 .. v15}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->checkOverflow(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/util/function/Supplier;)V

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-direct/range {p0 .. p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v3

    new-instance v4, Linet/ipaddr/ipv6/i;

    const/4 v0, 0x4

    invoke-direct {v4, v0, v8}, Linet/ipaddr/ipv6/i;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv6/i;

    const/4 v0, 0x5

    invoke-direct {v5, v0, v8}, Linet/ipaddr/ipv6/i;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->fastIncrement(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-direct/range {p0 .. p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v4

    new-instance v5, Linet/ipaddr/ipv6/i;

    const/4 v0, 0x6

    invoke-direct {v5, v0, v8}, Linet/ipaddr/ipv6/i;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v6, Linet/ipaddr/ipv6/i;

    const/4 v0, 0x7

    invoke-direct {v6, v0, v8}, Linet/ipaddr/ipv6/i;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v7

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->increment(Linet/ipaddr/AddressSection;JLjava/math/BigInteger;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public incrementBoundary(J)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 5
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    goto :goto_0
.end method

.method public initCachedValues(Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/math/BigInteger;Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Linet/ipaddr/IPAddressSection;->initCachedValues(Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/math/BigInteger;Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;)V

    iput-object p7, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->zeroSegments:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    iput-object p8, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->zeroRanges:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    return-void
.end method

.method public insert(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p2}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressSection;->replace(IILinet/ipaddr/ipv6/IPv6AddressSection;II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 4

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv6/k;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Linet/ipaddr/ipv6/k;

    const/16 v3, 0xf

    invoke-direct {v2, v3, p1}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    invoke-static {p0, p1, v0, v1, v2}, Linet/ipaddr/IPAddressSection;->intersect(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public isEUI64()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->isEUI64(Z)Z

    move-result v0

    return v0
.end method

.method public isEUI64(Z)Z
    .locals 7

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    iget v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    add-int/2addr v0, v1

    const v2, 0xff00

    const v3, 0xfe00

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-gt v1, v5, :cond_2

    const/16 v6, 0xff

    if-le v0, v4, :cond_1

    rsub-int/lit8 p1, v1, 0x5

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Linet/ipaddr/IPAddressSegment;->matchesWithMask(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v6, v6}, Linet/ipaddr/IPAddressSegment;->matchesWithMask(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    if-eqz p1, :cond_3

    if-ne v0, v4, :cond_3

    sub-int/2addr v5, v1

    invoke-virtual {p0, v5}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1, v6, v6}, Linet/ipaddr/IPAddressSegment;->matchesWithMask(II)Z

    move-result p1

    return p1

    :cond_2
    if-eqz p1, :cond_3

    if-ne v1, v4, :cond_3

    if-le v0, v4, :cond_3

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Linet/ipaddr/IPAddressSegment;->matchesWithMask(II)Z

    move-result p1

    :cond_3
    return p1
.end method

.method public isIPv6()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isZero()Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getZeroSegments()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->getRange(I)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    move-result-object v0

    iget v0, v0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;->length:I

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method public isZeroHost([Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z
    .locals 0

    invoke-super {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->isZeroHost([Linet/ipaddr/IPAddressSegment;I)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "**",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;",
            "Ljava/util/function/Predicate<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object p1, v2

    :cond_3
    if-eqz v1, :cond_4

    move-object p3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v2

    goto :goto_1

    :cond_5
    new-instance v4, Linet/ipaddr/ipv6/i;

    const/4 v5, 0x2

    invoke-direct {v4, v5, p0}, Linet/ipaddr/ipv6/i;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    :goto_1
    new-instance v5, Linet/ipaddr/ipv6/b;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v0, v6}, Linet/ipaddr/ipv6/b;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)V

    invoke-static {v3, p2, v4, v5, p3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-static {v1, p1, p2, p3, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public mask(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->mask(Linet/ipaddr/ipv6/IPv6AddressSection;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public mask(Linet/ipaddr/ipv6/IPv6AddressSection;Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkMaskSectionCount(Linet/ipaddr/IPAddressSection;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Linet/ipaddr/ipv6/k;

    const/16 p2, 0x12

    invoke-direct {v4, p2, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv6/l;

    const/4 p2, 0x2

    invoke-direct {v5, p2, p1}, Linet/ipaddr/ipv6/l;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public maskNetwork(Linet/ipaddr/ipv6/IPv6AddressSection;I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 9

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkMaskSectionCount(Linet/ipaddr/IPAddressSection;)V

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Linet/ipaddr/ipv6/k;

    invoke-direct {v6, v1, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v7, Linet/ipaddr/ipv6/l;

    invoke-direct {v7, v1, p1}, Linet/ipaddr/ipv6/l;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    :goto_0
    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0, p2}, Linet/ipaddr/IPAddressNetwork;->getHostMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Linet/ipaddr/ipv6/k;

    const/4 p2, 0x1

    invoke-direct {v6, p2, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v7, Linet/ipaddr/ipv6/m;

    invoke-direct {v7, p1, v0, v1}, Linet/ipaddr/ipv6/m;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection;I)V

    goto :goto_0
.end method

.method public matchesWithMask(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-eqz v0, :cond_0

    instance-of v0, p2, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->matchesWithMask(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs mergePrefixBlocks([Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->mergeToPrefixBlocks([Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public varargs mergeToPrefixBlocks([Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->checkSectionsMergeable([Linet/ipaddr/ipv6/IPv6AddressSection;)V

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getCloned([Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->getMergedPrefixBlocks([Linet/ipaddr/IPAddressSegmentSeries;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public varargs mergeToSequentialBlocks([Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 3

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->checkSectionsMergeable([Linet/ipaddr/ipv6/IPv6AddressSection;)V

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getCloned([Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lv/f;

    const/16 v2, 0x17

    invoke-direct {v1, v0, v2}, Lv/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v1}, Linet/ipaddr/IPAddressSection;->getMergedSequentialBlocks([Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSection$SeriesCreator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public nonZeroHostIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->excludeNonZeroHosts()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixSpliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public prefixContains(Linet/ipaddr/IPAddressSection;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-eqz v0, :cond_1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    iget v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    iget v1, p1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-lt v0, v1, :cond_1

    sub-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->prefixContains(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public prefixEquals(Linet/ipaddr/AddressSection;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-eqz v0, :cond_1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    iget v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    iget v1, p1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-lt v0, v1, :cond_1

    sub-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->prefixEquals(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public prefixIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixIterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;Z)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "**",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixIterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;ZI)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->iterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixIterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/format/standard/AddressCreator;ZI)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "**",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;ZI)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v0

    if-gt p4, v0, :cond_4

    if-ltz p4, :cond_4

    if-eqz p3, :cond_0

    invoke-virtual {p0, p4}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->containsSinglePrefixBlock(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, p4, v1}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v2

    invoke-static {p4, v1, v2}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v8

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v2

    invoke-static {p4, v1, v2}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v9

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    new-instance v6, Linet/ipaddr/ipv6/k;

    const/16 v1, 0x14

    invoke-direct {v6, v1, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    const/4 v7, 0x0

    if-eqz p3, :cond_3

    new-instance p3, Linet/ipaddr/ipv6/k;

    const/16 v1, 0x15

    invoke-direct {p3, v1, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    :goto_1
    move-object v10, p3

    goto :goto_2

    :cond_3
    new-instance p3, Linet/ipaddr/ipv6/k;

    const/16 v1, 0x16

    invoke-direct {p3, v1, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    goto :goto_1

    :goto_2
    move-object v4, p2

    invoke-static/range {v3 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-static {p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v0, p1, p2, p3, p4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p2, Linet/ipaddr/PrefixLenException;

    invoke-direct {p2, p1, p4}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw p2
.end method

.method public prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixSpliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;",
            "Z)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;",
            "ZI)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 3
    move-object v0, p1

    move/from16 v1, p4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v2

    if-gt v1, v2, :cond_2

    if-ltz v1, :cond_2

    invoke-static/range {p4 .. p4}, Linet/ipaddr/ipv6/IPv6AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v3

    invoke-static {v1, v2, v3}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesPerSegment()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v3

    invoke-static {v1, v2, v3}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    new-instance v9, Linet/ipaddr/ipv6/s;

    const/4 v8, 0x4

    move-object v3, v9

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v8}, Linet/ipaddr/ipv6/s;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;III)V

    const/4 v2, 0x4

    if-eqz p3, :cond_0

    new-instance v3, Linet/ipaddr/ipv6/h;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Linet/ipaddr/ipv6/h;-><init>(I)V

    :goto_0
    move-object v10, v3

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Linet/ipaddr/ipv6/h;

    invoke-direct {v3, v2}, Linet/ipaddr/ipv6/h;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v3, Linet/ipaddr/ipv6/h;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Linet/ipaddr/ipv6/h;-><init>(I)V

    goto :goto_0

    :goto_1
    new-instance v11, Lcom/google/android/material/color/utilities/o;

    const/16 v3, 0x11

    invoke-direct {v11, v3}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v12, Linet/ipaddr/format/util/h;

    invoke-direct {v12, v2}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v13, Linet/ipaddr/ipv4/v;

    const/16 v2, 0xe

    invoke-direct {v13, v1, v2}, Linet/ipaddr/ipv4/v;-><init>(II)V

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v2, Linet/ipaddr/PrefixLenException;

    invoke-direct {v2, p1, v1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v2
.end method

.method public prefixStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv6/h;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Linet/ipaddr/ipv6/h;-><init>(I)V

    invoke-static {p0, p1, v0, v1}, Linet/ipaddr/IPAddressSection;->removePrefixLength(Linet/ipaddr/IPAddressSection;ZLinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public replace(IILinet/ipaddr/ipv6/IPv6AddressSection;II)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Linet/ipaddr/ipv6/IPv6AddressSection;->replace(IILinet/ipaddr/ipv6/IPv6AddressSection;IIZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILinet/ipaddr/ipv6/IPv6AddressSection;IIZ)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 12

    .line 2
    move-object v0, p0

    move v2, p1

    move v1, p2

    move-object v3, p3

    move/from16 v4, p5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v5

    sub-int v6, v1, v2

    sub-int v7, v4, p4

    if-ltz v6, :cond_f

    if-ltz v7, :cond_f

    if-ltz v2, :cond_f

    if-ltz p4, :cond_f

    invoke-virtual {p3}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v8

    if-gt v4, v8, :cond_f

    if-gt v1, v5, :cond_f

    iget v8, v0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    add-int v9, v8, v5

    add-int/2addr v9, v7

    sub-int/2addr v9, v6

    const/16 v10, 0x8

    if-gt v9, v10, :cond_e

    if-nez v7, :cond_0

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    iget v7, v3, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-ne v8, v7, :cond_1

    if-ne v5, v6, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v7

    invoke-virtual {v7}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    if-eqz p6, :cond_9

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v5

    shl-int/lit8 v6, v4, 0x4

    invoke-virtual {p3}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v6, :cond_3

    :cond_2
    invoke-virtual {p3, v6, v8}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v3

    :cond_3
    :goto_0
    move v6, v4

    move-object v4, v3

    move v3, v1

    move-object v1, v5

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v7

    if-eqz p6, :cond_8

    sub-int/2addr v5, v1

    if-lez v5, :cond_5

    invoke-virtual {p0, v8, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v6

    invoke-virtual {v6}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v6

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {p3, v4, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->insert(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    add-int v3, v4, v5

    move v4, v3

    move-object v3, v1

    move v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v6

    shl-int/lit8 v5, v4, 0x4

    invoke-virtual {p3}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v5, :cond_7

    :cond_6
    invoke-virtual {p3, v5, v8}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v3

    :cond_7
    :goto_1
    move-object v11, v3

    move v3, v1

    move-object v1, v6

    move v6, v4

    move-object v4, v11

    goto :goto_3

    :cond_8
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shl-int/lit8 v10, v2, 0x4

    if-gt v9, v10, :cond_a

    invoke-virtual {p3, v8, v8}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v3

    :cond_9
    move v6, v4

    move-object v4, v3

    move v3, v1

    move-object v1, v0

    goto :goto_3

    :cond_a
    if-ge v1, v5, :cond_9

    shl-int/lit8 v9, v4, 0x4

    invoke-virtual {p3}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {p3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v10, v9, :cond_9

    shl-int/lit8 v9, v1, 0x4

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v9, :cond_9

    :cond_b
    if-gtz v6, :cond_d

    invoke-virtual {p3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_c

    goto :goto_2

    :cond_c
    sub-int/2addr v5, v1

    invoke-virtual {p0, v8, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v6

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v7

    invoke-virtual {p3, v4, v7}, Linet/ipaddr/ipv6/IPv6AddressSection;->insert(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v3

    add-int/2addr v4, v5

    goto :goto_1

    :cond_d
    :goto_2
    invoke-virtual {p0, v9, v8}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v5

    goto/16 :goto_0

    :goto_3
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v7

    const/4 v9, 0x0

    move v2, p1

    move/from16 v5, p4

    move/from16 v8, p6

    invoke-static/range {v1 .. v9}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->replace(Linet/ipaddr/AddressSection;IILinet/ipaddr/AddressSection;IILinet/ipaddr/format/standard/AddressCreator;ZZ)Linet/ipaddr/AddressSection;

    move-result-object v1

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v1

    :cond_e
    new-instance v1, Linet/ipaddr/AddressValueException;

    invoke-direct {v1, p0, p3}, Linet/ipaddr/AddressValueException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)V

    throw v1

    :cond_f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public replace(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    .line 3
    invoke-virtual {p2}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    add-int v3, v0, p1

    const/4 v5, 0x0

    invoke-virtual {p2}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v6

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Linet/ipaddr/ipv6/IPv6AddressSection;->replace(IILinet/ipaddr/ipv6/IPv6AddressSection;II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 3

    .line 6
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv6/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Linet/ipaddr/ipv6/b;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)V

    const/4 v2, 0x1

    invoke-static {p1, p0, v0, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->reverseBits(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseSegments()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseSegments()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseSegments()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseSegments()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public reverseSegments()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 4

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    new-instance v2, Linet/ipaddr/ipv6/k;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    invoke-static {p0, v0, v2, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->reverseSegments(Linet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public segmentsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->segmentsIterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsNonZeroHostIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->excludeNonZeroHosts()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->segmentsIterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    const/4 v2, 0x0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p0

    move-object v2, v0

    :goto_0
    add-int/lit8 v3, v6, -0x1

    new-instance v8, Linet/ipaddr/ipv6/s;

    const/4 v5, 0x2

    move-object v0, v8

    move v4, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/s;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;III)V

    new-instance v9, Linet/ipaddr/ipv6/h;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/o;

    const/16 v0, 0xf

    invoke-direct {v10, v0}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v11, Linet/ipaddr/format/util/h;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/16 v0, 0xc

    invoke-direct {v12, v6, v0}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static/range {v7 .. v12}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createItemSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsSpliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;",
            ")",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move-object v7, p1

    move-object v2, v0

    add-int/lit8 v3, v6, -0x1

    new-instance v8, Linet/ipaddr/ipv6/s;

    const/4 v5, 0x7

    move-object v0, v8

    move-object v1, p2

    move v4, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/s;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;III)V

    new-instance v9, Linet/ipaddr/ipv6/h;

    const/16 p1, 0xc

    invoke-direct {v9, p1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/o;

    const/16 p1, 0x14

    invoke-direct {v10, p1}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v11, Linet/ipaddr/format/util/h;

    const/4 p1, 0x6

    invoke-direct {v11, p1}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/16 p1, 0x11

    invoke-direct {v12, v6, p1}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static/range {v7 .. v12}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createItemSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public segmentsStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "[",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public sequentialBlockIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->sequentialBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sequentialBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->sequentialBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public sequentialBlockStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->sequentialBlockStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0

    invoke-super {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setInetAddress(Ljava/net/InetAddress;)V

    return-void
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 10
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 11
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(IZZ)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithPrefixBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spanWithPrefixBlocks()[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public spanWithPrefixBlocks()[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 2
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    invoke-virtual {p0, p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spanWithPrefixBlocks(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->spanWithBlocks(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public spanWithPrefixBlocks(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 10

    .line 3
    iget v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    iget v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-ne v0, v1, :cond_0

    new-instance v4, Linet/ipaddr/ipv6/c;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Linet/ipaddr/ipv6/c;-><init>(I)V

    new-instance v5, Linet/ipaddr/ipv6/c;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Linet/ipaddr/ipv6/c;-><init>(I)V

    sget-object v1, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Linet/ipaddr/ipv4/g;

    const/16 v2, 0x9

    invoke-direct {v6, v1, v2}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    new-instance v7, Linet/ipaddr/ipv6/c;

    const/4 v1, 0x2

    invoke-direct {v7, v1}, Linet/ipaddr/ipv6/c;-><init>(I)V

    new-instance v8, Linet/ipaddr/ipv6/c;

    const/4 v1, 0x3

    invoke-direct {v8, v1}, Linet/ipaddr/ipv6/c;-><init>(I)V

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Linet/ipaddr/ipv6/a;

    invoke-direct {v9, v1, v0}, Linet/ipaddr/ipv6/a;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;I)V

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v9}, Linet/ipaddr/IPAddressSection;->getSpanningPrefixBlocks(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1

    :cond_0
    new-instance v0, Linet/ipaddr/AddressPositionException;

    iget v1, p1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    iget v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/AddressPositionException;-><init>(Linet/ipaddr/format/AddressItem;II)V

    throw v0
.end method

.method public spanWithRangedSegments(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->spanWithSequentialBlocks(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithSequentialBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spanWithSequentialBlocks()[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public spanWithSequentialBlocks()[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 3

    .line 2
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->spanWithBlocks(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public spanWithSequentialBlocks(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 9

    .line 3
    iget v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    iget v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    if-ne v0, v1, :cond_0

    new-instance v4, Linet/ipaddr/ipv6/c;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Linet/ipaddr/ipv6/c;-><init>(I)V

    new-instance v5, Linet/ipaddr/ipv6/c;

    const/4 v0, 0x5

    invoke-direct {v5, v0}, Linet/ipaddr/ipv6/c;-><init>(I)V

    sget-object v0, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Linet/ipaddr/ipv4/g;

    const/16 v1, 0xa

    invoke-direct {v6, v0, v1}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    new-instance v7, Linet/ipaddr/ipv6/c;

    const/4 v0, 0x6

    invoke-direct {v7, v0}, Linet/ipaddr/ipv6/c;-><init>(I)V

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Linet/ipaddr/IPAddressSection;->getSpanningSequentialBlocks(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;)[Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1

    :cond_0
    new-instance v0, Linet/ipaddr/AddressPositionException;

    iget v1, p1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    iget v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/AddressPositionException;-><init>(Linet/ipaddr/format/AddressItem;II)V

    throw v0
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;",
            "Z)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->includesZeroHost()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    new-instance v0, Linet/ipaddr/ipv6/p;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, p0}, Linet/ipaddr/ipv6/p;-><init>(IILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v3, Linet/ipaddr/ipv6/q;

    invoke-direct {v3, v4, p3, v1}, Linet/ipaddr/ipv6/q;-><init>(III)V

    new-instance v5, Linet/ipaddr/ipv6/r;

    invoke-direct {v5, p3, v4, v1}, Linet/ipaddr/ipv6/r;-><init>(III)V

    move-object v7, v0

    move-object v10, v3

    move-object v8, v5

    goto :goto_1

    :cond_1
    new-instance p3, Lv1/n;

    const/16 v0, 0x1d

    invoke-direct {p3, v0}, Lv1/n;-><init>(I)V

    new-instance v0, Linet/ipaddr/ipv4/v;

    const/16 v1, 0xa

    invoke-direct {v0, v4, v1}, Linet/ipaddr/ipv4/v;-><init>(II)V

    new-instance v1, Lcom/google/android/material/color/utilities/o;

    const/16 v3, 0xe

    invoke-direct {v1, v3}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    move-object v7, p3

    move-object v10, v0

    move-object v8, v1

    :goto_1
    add-int/lit8 v3, v4, -0x1

    new-instance v6, Linet/ipaddr/ipv6/s;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/s;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;III)V

    new-instance v9, Linet/ipaddr/format/util/h;

    const/4 p2, 0x1

    invoke-direct {v9, p2}, Linet/ipaddr/format/util/h;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public spliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v2

    const/4 v3, 0x0

    move-object v6, v2

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v6, p0

    move-object v2, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->includesZeroHost()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Linet/ipaddr/ipv6/p;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3, p0}, Linet/ipaddr/ipv6/p;-><init>(IILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv6/q;

    invoke-direct {v5, v4, p1, v3}, Linet/ipaddr/ipv6/q;-><init>(III)V

    new-instance v7, Linet/ipaddr/ipv6/r;

    invoke-direct {v7, p1, v4, v3}, Linet/ipaddr/ipv6/r;-><init>(III)V

    move-object v10, v5

    move-object v8, v7

    move-object v7, v0

    goto :goto_1

    :cond_1
    new-instance p1, Linet/ipaddr/ipv6/h;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v0, Linet/ipaddr/ipv4/v;

    const/16 v3, 0xd

    invoke-direct {v0, v4, v3}, Linet/ipaddr/ipv4/v;-><init>(II)V

    new-instance v3, Lcom/google/android/material/color/utilities/o;

    const/16 v5, 0x10

    invoke-direct {v3, v5}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    move-object v7, p1

    move-object v10, v0

    move-object v8, v3

    :goto_1
    add-int/lit8 v3, v4, -0x1

    new-instance p1, Linet/ipaddr/ipv6/s;

    const/4 v5, 0x3

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/s;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;III)V

    new-instance v9, Linet/ipaddr/format/util/h;

    const/4 v0, 0x3

    invoke-direct {v9, v0}, Linet/ipaddr/format/util/h;-><init>(I)V

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 4

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv6/k;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v2, Linet/ipaddr/ipv6/h;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Linet/ipaddr/ipv6/h;-><init>(I)V

    invoke-static {p0, p1, v0, v1, v2}, Linet/ipaddr/IPAddressSection;->subtract(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/IntFunction;Linet/ipaddr/IPAddressSection$SegFunction;)[Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public toAllStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->ALL_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toBase85String()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->base85String:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toBase85String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->base85String:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toBase85String(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isDualString()Z

    move-result v0

    new-instance v7, Linet/ipaddr/format/large/IPAddressLargeDivision;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBytesInternal()[B

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getUpperBytesInternal()[B

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v3

    const/16 v4, 0x55

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/large/IPAddressLargeDivision;-><init>([B[BIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v2

    const/16 v3, 0x55

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v4

    move-object v0, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/large/IPAddressLargeDivision;-><init>([BIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V

    :goto_0
    new-instance v0, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;

    const/4 v1, 0x1

    new-array v1, v1, [Linet/ipaddr/format/large/IPAddressLargeDivision;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;-><init>([Linet/ipaddr/format/large/IPAddressLargeDivision;Linet/ipaddr/IPAddressNetwork;)V

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->base85Params:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-static {v1, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Ljava/lang/CharSequence;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toBinaryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isDualString()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Linet/ipaddr/IPAddressSection$IPStringCache;->binaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-static {v0}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->toNormalizedStringRange(Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;Linet/ipaddr/format/string/AddressStringDivisionSeries;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Linet/ipaddr/IPAddressSection$IPStringCache;->binaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->canonicalParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->canonicalString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toCanonicalWildcardString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->canonicalWildcardString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->wildcardCanonicalParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->canonicalWildcardString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toCompressedString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toCompressedWildcardString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->wildcardCompressedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedWildcardString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toDatabaseSearchStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->DATABASE_SEARCH_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toEUI(Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 4

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toEUISegments(Z)[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    iget v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    add-int/lit8 v2, v2, -0x4

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->createSectionInternal(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;[Linet/ipaddr/mac/MACAddressSegment;IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public toEUISegments(Z)[Linet/ipaddr/mac/MACAddressSegment;
    .locals 13

    iget v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x4

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-nez v0, :cond_1

    if-ge v3, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v6

    goto :goto_1

    :cond_1
    move v5, v3

    move-object v6, v4

    :goto_1
    const/4 v7, 0x1

    if-gt v0, v7, :cond_2

    if-ge v5, v1, :cond_2

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v5}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v5

    goto :goto_2

    :cond_2
    move v8, v5

    move-object v5, v4

    :goto_2
    const/4 v9, 0x2

    if-gt v0, v9, :cond_3

    if-ge v8, v1, :cond_3

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v8}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v8

    goto :goto_3

    :cond_3
    move v10, v8

    move-object v8, v4

    :goto_3
    const/4 v11, 0x3

    if-gt v0, v11, :cond_4

    if-ge v10, v1, :cond_4

    add-int/lit8 v0, v10, 0x1

    invoke-virtual {p0, v10}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v1

    move v10, v0

    goto :goto_4

    :cond_4
    move-object v1, v4

    :goto_4
    sub-int/2addr v10, v3

    shl-int/lit8 v0, v10, 0x1

    if-nez p1, :cond_5

    add-int/lit8 v0, v0, -0x2

    :cond_5
    if-eqz v5, :cond_6

    const/16 v3, 0xff

    invoke-virtual {v5, v3, v3}, Linet/ipaddr/IPAddressSegment;->matchesWithMask(II)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    if-eqz v8, :cond_7

    const v3, 0xfe00

    const v7, 0xff00

    invoke-virtual {v8, v3, v7}, Linet/ipaddr/IPAddressSegment;->matchesWithMask(II)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    if-nez v0, :cond_9

    :cond_8
    return-object v4

    :cond_9
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v3

    invoke-virtual {v3, v2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v7

    invoke-virtual {v3, v0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegmentArray(I)[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    if-eqz v6, :cond_b

    invoke-virtual {v6, v0, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    aget-object v6, v0, v2

    invoke-virtual {v6}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v10

    invoke-virtual {v6}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v11

    and-int/lit8 v12, v10, 0x2

    invoke-virtual {v6, v12, v9}, Linet/ipaddr/mac/MACAddressSegment;->matchesWithMask(II)Z

    move-result v6

    if-nez v6, :cond_a

    return-object v4

    :cond_a
    xor-int/lit8 v6, v10, 0x2

    xor-int/lit8 v10, v11, 0x2

    invoke-virtual {v3, v6, v10, v4}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v9

    :cond_b
    if-eqz v5, :cond_d

    invoke-virtual {v5, v0, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    if-nez p1, :cond_c

    add-int/lit8 v4, v2, 0x1

    aput-object v7, v0, v4

    :cond_c
    add-int/lit8 v2, v2, 0x2

    :cond_d
    if-eqz v8, :cond_10

    if-nez p1, :cond_f

    if-eqz v5, :cond_e

    add-int/lit8 v2, v2, -0x2

    aget-object p1, v0, v2

    invoke-virtual {v8, v0, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    aput-object p1, v0, v2

    goto :goto_5

    :cond_e
    invoke-virtual {v8, v0, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    aput-object v7, v0, v2

    goto :goto_5

    :cond_f
    invoke-virtual {v8, v0, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    :goto_5
    add-int/2addr v2, v9

    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v1, v0, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSegment;->getSplitSegments([Linet/ipaddr/AddressSegment;ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;)V

    :cond_11
    return-object v0
.end method

.method public toFullString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->fullString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->fullParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->fullString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toHexString(ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isDualString()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_0

    :cond_0
    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    :goto_0
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->toNormalizedStringRange(Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;Linet/ipaddr/format/string/AddressStringDivisionSeries;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_1

    :cond_2
    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    :goto_1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMaxHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMaxHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMaxHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMaxHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public toMaxHost()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 3

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6Address;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->includesMaxHost()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->isSingleNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->createMaxHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public toMaxHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 6

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMaxHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    const/4 v1, 0x0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Linet/ipaddr/ipv6/k;

    const/4 v0, 0x3

    invoke-direct {v4, v0, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv6/d;

    const/4 v0, 0x1

    invoke-direct {v5, v0, p1}, Linet/ipaddr/ipv6/d;-><init>(ILinet/ipaddr/ipv6/IPv6Address;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Linet/ipaddr/IPAddressSection;->getOredSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public toMixedString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->mixedString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->mixedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->mixedString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->normalizedString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->normalizedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->normalizedString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;
    .locals 1

    .line 2
    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 3
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    if-eqz v0, :cond_1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 6
    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;)Linet/ipaddr/format/util/AddressDivisionWriter;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/IPAddressStringWriter;

    if-nez v0, :cond_1

    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->access$100(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->makeMixed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;

    iget-object v2, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->ipv4Opts:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-direct {v1, v0, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;Linet/ipaddr/IPAddressSection$IPStringOptions;)V

    invoke-static {p1, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;Linet/ipaddr/format/util/AddressDivisionWriter;)V

    invoke-direct {p0, v1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedMixedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;Linet/ipaddr/format/util/AddressDivisionWriter;)V

    goto :goto_0

    :cond_1
    instance-of p1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;

    if-eqz p1, :cond_2

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;

    invoke-direct {p0, v0, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedMixedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    goto :goto_0

    :cond_3
    invoke-static {p1, p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->access$100(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->makeMixed()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->nextUncompressedIndex:I

    iget v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    rsub-int/lit8 v2, v2, 0x6

    if-gt v1, v2, :cond_4

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;

    iget-object p1, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->ipv4Opts:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-direct {v1, v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;Linet/ipaddr/IPAddressSection$IPStringOptions;)V

    invoke-direct {p0, v1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedMixedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    invoke-virtual {v0, p0, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedWildcardString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->normalizedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->wildcardNormalizedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->normalizedWildcardString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toOctalString(ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 6

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-super {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->toOctalString(ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->octalPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_0

    :cond_1
    sget-object p1, Linet/ipaddr/IPAddressSection$IPStringCache;->octalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    :goto_0
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isDualString()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v1

    new-instance v2, Linet/ipaddr/ipv6/h;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v3, Linet/ipaddr/g;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Linet/ipaddr/g;-><init>(I)V

    invoke-virtual {v0, v4, v2, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createNewDivisions(ILinet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    new-instance v2, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V

    new-instance v0, Linet/ipaddr/ipv6/h;

    const/16 v3, 0xe

    invoke-direct {v0, v3}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v3, Linet/ipaddr/g;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Linet/ipaddr/g;-><init>(I)V

    invoke-virtual {v1, v4, v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createNewDivisions(ILinet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    new-instance v1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V

    invoke-static {p1, v2, v1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->toNormalizedStringRange(Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;Linet/ipaddr/format/string/AddressStringDivisionSeries;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Linet/ipaddr/ipv6/h;

    const/16 v0, 0xf

    invoke-direct {v4, v0}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v5, Linet/ipaddr/g;

    const/4 v0, 0x5

    invoke-direct {v5, v0}, Linet/ipaddr/g;-><init>(I)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createNewPrefixedDivisions(ILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;Linet/ipaddr/format/standard/AddressDivisionGrouping$PrefixedGroupingCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    new-instance v1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V

    invoke-virtual {p1, v1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public toPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 7
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 3

    .line 8
    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv6/n;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Linet/ipaddr/ipv6/n;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    invoke-static {p0, p1, v0, v1}, Linet/ipaddr/IPAddressSection;->toPrefixBlock(Linet/ipaddr/IPAddressSection;ILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public toPrefixLengthString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->networkPrefixLengthString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->networkPrefixLengthParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->networkPrefixLengthString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toReverseDNSLookupString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->reverseDNSString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->reverseDNSParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->reverseDNSString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toSQLWildcardString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->sqlWildcardString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->sqlWildcardParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->sqlWildcardString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toSegmentedBinaryString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->stringCache:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->segmentedBinaryString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toSegmentedBinaryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->segmentedBinaryString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toSegmentedBinaryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->segmentedBinaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toStandardStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->STANDARD_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 0

    .line 1
    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->from(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object p1

    return-object p1
.end method

.method public toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;

    move-result-object p1

    return-object p1
.end method

.method public toStringCollection(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;
    .locals 4

    .line 3
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    iget v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    rsub-int/lit8 v2, v2, 0x6

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getMixedAddressSection()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    move-result-object v1

    new-instance v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6v4MixedStringBuilder;

    invoke-direct {v2, v1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6v4MixedStringBuilder;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->getVariations()Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    move-result-object v1

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;->add(Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;

    invoke-direct {v1, p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->getVariations()Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;->add(Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V

    :cond_1
    return-object v0
.end method

.method public toSubnetString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixLengthString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public toZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 4

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v3}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(IZ)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->includesZeroHost()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->isSingleNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->createZeroHost(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public toZeroHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    const/4 v1, 0x0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Linet/ipaddr/ipv6/k;

    const/16 v0, 0xc

    invoke-direct {v4, v0, p0}, Linet/ipaddr/ipv6/k;-><init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv6/d;

    const/4 v0, 0x3

    invoke-direct {v5, v0, p1}, Linet/ipaddr/ipv6/d;-><init>(ILinet/ipaddr/ipv6/IPv6Address;)V

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroNetwork()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroNetwork()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public toZeroNetwork()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 3

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v1

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6Address;

    const/4 v1, 0x0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/ipv6/IPv6Address;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->createZeroNetwork()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method
