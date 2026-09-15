.class public Linet/ipaddr/ipv4/IPv4AddressSection;
.super Linet/ipaddr/IPAddressSection;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection;,
        Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringParams;,
        Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions;,
        Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;,
        Linet/ipaddr/ipv4/IPv4AddressSection$IPv4SectionStringCollection;,
        Linet/ipaddr/ipv4/IPv4AddressSection$EmbeddedIPv4AddressSection;,
        Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;,
        Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressSection;",
        "Ljava/lang/Iterable<",
        "Linet/ipaddr/ipv4/IPv4AddressSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_VALUES:[J

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private transient sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation
.end field

.field transient stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressSection;->MAX_VALUES:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0xff
        0xffff
        0xffffff
        0xffffffffL
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>(ILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 11

    .line 2
    const/4 v0, 0x4

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Linet/ipaddr/IPAddressSection;-><init>([Linet/ipaddr/IPAddressSegment;ZZ)V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v10

    const-wide/16 v3, 0x0

    int-to-long v5, p1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v7

    move-object v2, v0

    move-object v8, v10

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createSegments([Linet/ipaddr/AddressSegment;JJILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x20

    if-gt p1, v2, :cond_1

    invoke-virtual {v10}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, p2, v10, v1}, Linet/ipaddr/IPAddressSection;->isPrefixSubnet([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v6

    invoke-virtual {v10}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v7

    new-instance v8, Linet/ipaddr/ipv4/j;

    const/4 p1, 0x1

    invoke-direct {v8, p1}, Linet/ipaddr/ipv4/j;-><init>(I)V

    move-object v2, v10

    invoke-static/range {v2 .. v8}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;

    :cond_0
    iput-object p2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_2
    sget-object p1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;I)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;I)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V
    .locals 9

    .line 6
    new-array p3, p3, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, v0}, Linet/ipaddr/IPAddressSection;-><init>([Linet/ipaddr/IPAddressSegment;ZZ)V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p3

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v8

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

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

    const/16 p2, 0x20

    if-gt p1, p2, :cond_1

    invoke-virtual {v8}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3, p4, v8, v0}, Linet/ipaddr/IPAddressSection;->isPrefixSubnet([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v5

    invoke-virtual {v8}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v6

    new-instance v7, Linet/ipaddr/ipv4/j;

    const/4 p1, 0x2

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
    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv4/IPv4AddressSegment;)V
    .locals 2

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;Z)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    .line 8
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([BILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 8

    .line 9
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([BIIILjava/lang/Integer;)V
    .locals 8

    .line 10
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([BIIILjava/lang/Integer;ZZ)V
    .locals 12

    .line 11
    move-object v0, p0

    const/4 v1, 0x0

    if-ltz p4, :cond_0

    move/from16 v2, p4

    goto :goto_0

    :cond_0
    sub-int v2, p3, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    new-array v2, v2, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {p0, v2, v1, v1}, Linet/ipaddr/IPAddressSection;-><init>([Linet/ipaddr/IPAddressSegment;ZZ)V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v10

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v11

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v7

    move-object v2, v10

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v8, v11

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->toSegments([Linet/ipaddr/AddressSegment;[BIIIILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;

    move-object v2, p1

    array-length v3, v2

    array-length v4, v10

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz p5, :cond_c

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_b

    array-length v4, v10

    shl-int/lit8 v4, v4, 0x3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x20

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
    array-length v5, v10

    if-lez v5, :cond_9

    invoke-virtual {v11}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v10, v4, v11, v1}, Linet/ipaddr/IPAddressSection;->isPrefixSubnet([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p7, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v3

    invoke-virtual {v11}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v5

    new-instance v6, Linet/ipaddr/ipv4/j;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Linet/ipaddr/ipv4/j;-><init>(I)V

    move-object p1, v11

    move p2, v1

    move-object p3, v10

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    invoke-static/range {p1 .. p7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;

    goto :goto_5

    :cond_4
    if-eqz v3, :cond_a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v3

    if-lt v1, v3, :cond_a

    if-eqz p6, :cond_5

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setBytes([B)V

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_a

    invoke-virtual {v5}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->prefixedSubnetsAreExplicit()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v3

    if-lt v1, v3, :cond_a

    :cond_7
    if-eqz p6, :cond_8

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_4

    :cond_8
    move-object v1, v2

    :goto_4
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setBytes([B)V

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setBytes([B)V

    :cond_a
    :goto_5
    iput-object v4, v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    goto :goto_7

    :cond_b
    new-instance v1, Linet/ipaddr/PrefixLenException;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v1

    :cond_c
    sget-object v1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object v1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    if-eqz v3, :cond_e

    if-eqz p6, :cond_d

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_6

    :cond_d
    move-object v1, v2

    :goto_6
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setBytes([B)V

    :cond_e
    :goto_7
    return-void
.end method

.method public constructor <init>([BIILjava/lang/Integer;)V
    .locals 8

    .line 12
    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([BILjava/lang/Integer;ZZ)V
    .locals 8

    .line 13
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/Integer;)V
    .locals 6

    .line 14
    array-length v2, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([BILjava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv4/IPv4AddressSegment;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;Z)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;)V
    .locals 2

    .line 16
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;ZLjava/lang/Integer;Z)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv4/IPv4AddressSegment;Z)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;ZZ)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv4/IPv4AddressSegment;ZLjava/lang/Integer;Z)V
    .locals 9

    .line 18
    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;ZZ)V

    if-eqz p3, :cond_5

    array-length p2, p1

    const/4 v1, 0x3

    shl-int/2addr p2, v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p2, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_1

    :cond_1
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_2
    :goto_1
    array-length p2, p1

    if-lez p2, :cond_5

    iget-object p2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    sget-object v2, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    if-eq p2, v2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p2, v2, :cond_3

    iget-object p3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v6

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v7

    if-nez p4, :cond_4

    invoke-static {p1, p3, v2, v0}, Linet/ipaddr/IPAddressSection;->isPrefixSubnet([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Linet/ipaddr/ipv4/j;

    invoke-direct {p1, v1}, Linet/ipaddr/ipv4/j;-><init>(I)V

    :goto_2
    move-object v8, p1

    goto :goto_3

    :cond_4
    new-instance p1, Linet/ipaddr/ipv4/j;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Linet/ipaddr/ipv4/j;-><init>(I)V

    goto :goto_2

    :goto_3
    invoke-static/range {v2 .. v8}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;

    iput-object p3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    :cond_5
    return-void
.end method

.method public constructor <init>([Linet/ipaddr/ipv4/IPv4AddressSegment;ZZ)V
    .locals 4

    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/IPAddressSection;-><init>([Linet/ipaddr/IPAddressSegment;ZZ)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p3

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v1

    new-instance v2, Lcom/google/android/material/color/utilities/o;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    invoke-static {p2, p3, v0, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->normalizePrefixBoundary(I[Linet/ipaddr/IPAddressSegment;IILjava/util/function/Function;)V

    :cond_0
    array-length p2, p1

    const/4 p3, 0x4

    if-gt p2, p3, :cond_1

    return-void

    :cond_1
    new-instance p2, Linet/ipaddr/AddressValueException;

    array-length p1, p1

    int-to-long v0, p1

    invoke-direct {p2, v0, v1}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p2
.end method

.method public static synthetic A(Linet/ipaddr/ipv4/IPv4AddressSection;I[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$excludeNonZeroHosts$36(I[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0(ILinet/ipaddr/ipv4/IPv4Address;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$createZeroHost$64(Linet/ipaddr/ipv4/IPv4Address;I)I

    move-result p0

    return p0
.end method

.method public static synthetic B(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$8(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$3(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic C(Linet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$increment$60()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic C0(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4Address;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$12(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4Address;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic D(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$segmentsSpliterator$37(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D0(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p2, p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$getHostSection$74(Ljava/lang/Integer;I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(ILinet/ipaddr/ipv4/IPv4AddressSection;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$bitwiseOr$71(Linet/ipaddr/ipv4/IPv4AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static synthetic E0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixIterator$53(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(ILinet/ipaddr/ipv4/IPv4Address;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$segmentsSpliterator$44(ILinet/ipaddr/ipv4/IPv4Address;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic F0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockSpliterator$56(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p2, p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$toPrefixBlock$75(Ljava/lang/Integer;I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G0(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$4(Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic H(ILinet/ipaddr/ipv4/IPv4Address;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$createZeroNetwork$66(Linet/ipaddr/ipv4/IPv4Address;I)I

    move-result p0

    return p0
.end method

.method public static synthetic H0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$segmentsSpliterator$42(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockSpliterator$57(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I0(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$49(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(ILinet/ipaddr/ipv4/IPv4Address;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$toZeroHost$65(Linet/ipaddr/ipv4/IPv4Address;I)I

    move-result p0

    return p0
.end method

.method public static synthetic J0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$46(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic K(ILinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixIterator$20(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K0(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$getLowestOrHighestSection$0(ZI)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(ILinet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$6(ILinet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic L0(IZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockSpliterator$32(IZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockIterator$28(ZI)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$22(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$7(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N0(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$5(Ljava/lang/Integer;ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Linet/ipaddr/ipv4/IPv4AddressSection;ZLjava/lang/Integer;I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$getNetworkSection$73(ZLjava/lang/Integer;I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O0(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$16(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$48(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockIterator$29(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(ILinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixIterator$21(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q0(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$maskNetwork$70(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static synthetic R(ILinet/ipaddr/ipv4/IPv4AddressSection;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$mask$69(Linet/ipaddr/ipv4/IPv4AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static synthetic R0(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockIterator$54(ZI)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$17(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixIterator$19(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$iterator$11(ZI)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T0(ILinet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockSpliterator$33(ILinet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic U(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$24(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$reverseBits$1(ZI)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(ILinet/ipaddr/ipv4/IPv4Address;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$15(ILinet/ipaddr/ipv4/IPv4Address;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic X(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$23(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Y(ILinet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$segmentsSpliterator$40(ILinet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic Z(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$segmentsIterator$34()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$26(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(ILinet/ipaddr/ipv4/IPv4Address;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$createMaxHost$67(Linet/ipaddr/ipv4/IPv4Address;I)I

    move-result p0

    return p0
.end method

.method public static synthetic c0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$reverseSegments$2(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static cacheBits(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private checkSectionsMergeable([Linet/ipaddr/ipv4/IPv4AddressSection;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
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

.method public static synthetic d0(ILinet/ipaddr/ipv4/IPv4Address;)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$toMaxHost$68(Linet/ipaddr/ipv4/IPv4Address;I)I

    move-result p0

    return p0
.end method

.method public static synthetic e0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$18(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method private excludeNonZeroHosts()Ljava/util/function/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "[",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
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

    new-instance v1, Linet/ipaddr/ipv4/c;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p0}, Linet/ipaddr/ipv4/c;-><init>(IILjava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic f0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockIterator$55(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$9(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method private getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getIPv4SegmentCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method private varargs getCloned([Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4AddressSection;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p0, v0, v3

    return-object v0
.end method

.method private getIPv4SegmentCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method private getIntValue(Z)I
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v4

    shl-int/2addr v2, v4

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v3

    :goto_1
    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getLowestOrHighestSection(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 11

    invoke-static {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSingleLowestOrHighestSection(Linet/ipaddr/AddressSegmentSeries;)Linet/ipaddr/AddressSegmentSeries;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-nez v0, :cond_c

    iget-object v1, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-nez v0, :cond_d

    iget-boolean v1, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHostIsNull:Z

    if-nez v1, :cond_d

    goto :goto_0

    :cond_0
    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-nez v0, :cond_d

    goto :goto_0

    :cond_1
    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-nez v0, :cond_d

    :cond_2
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

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

    iput-object v1, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-nez v0, :cond_5

    iget-boolean v4, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHostIsNull:Z

    if-nez v4, :cond_5

    :goto_2
    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_7
    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-nez v0, :cond_5

    goto :goto_2

    :goto_3
    if-eqz v4, :cond_b

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v6

    new-instance v7, Linet/ipaddr/ipv4/l;

    invoke-direct {v7, v2, p0}, Linet/ipaddr/ipv4/l;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v8, Linet/ipaddr/ipv4/z;

    invoke-direct {v8, p0, p1, v3}, Linet/ipaddr/ipv4/z;-><init>(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)V

    move-object v5, p0

    move v9, p1

    move v10, p2

    invoke-static/range {v5 .. v10}, Linet/ipaddr/IPAddressSection;->getLowestOrHighestSection(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;ZZ)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

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

.method private static getMaxValue(I)J
    .locals 3

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressSection;->MAX_VALUES:[J

    aget-wide v1, v0, p0

    return-wide v1
.end method

.method private getSegmentCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getIPv4SegmentCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixIterator$52(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$segmentsSpliterator$43(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

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

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v4

    if-eqz v1, :cond_4

    move-object p1, v2

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->segmentsIterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

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

.method public static synthetic j0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$45(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p0

    return-object p0
.end method

.method private joinSegments(I)Linet/ipaddr/ipv4/IPv4JoinedSegments;
    .locals 16

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v4

    move v9, v7

    move-object v8, v5

    move-object v10, v8

    move-wide v5, v2

    :goto_0
    if-gt v4, v1, :cond_5

    add-int v11, v0, v4

    move-object/from16 v13, p0

    invoke-virtual {v13, v11}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v12

    if-eqz v10, :cond_1

    invoke-interface {v12}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    const-string v1, "ipaddress.error.segmentMismatch"

    move-object v7, v0

    move-object v8, v10

    move-object v10, v12

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;ILinet/ipaddr/format/AddressItem;ILjava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v12}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v14

    if-eqz v14, :cond_2

    move v9, v11

    move-object v10, v12

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v11

    shl-long/2addr v2, v11

    invoke-virtual {v12}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v11

    int-to-long v14, v11

    or-long/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v11

    shl-long/2addr v5, v11

    invoke-virtual {v12}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v11

    int-to-long v14, v11

    or-long/2addr v5, v14

    if-nez v8, :cond_4

    invoke-virtual {v12}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Linet/ipaddr/ipv4/IPv4AddressSegment;->getBitCount()I

    move-result v11

    add-int/2addr v11, v7

    move v7, v11

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v13, p0

    new-instance v7, Linet/ipaddr/ipv4/IPv4JoinedSegments;

    move-object v0, v7

    move/from16 v1, p1

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/ipv4/IPv4JoinedSegments;-><init>(IJJLjava/lang/Integer;)V

    return-object v7
.end method

.method public static synthetic k0(ILinet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$27(ILinet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic l0(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$segmentsSpliterator$39(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$adjustPrefixLength$62(Linet/ipaddr/ipv4/IPv4AddressSection;I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$bitwiseOr$71(Linet/ipaddr/ipv4/IPv4AddressSection;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$bitwiseOrNetwork$72(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)I
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    and-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$blockIterator$28(ZI)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->iterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$blockIterator$29(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->identityIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$blockIterator$54(ZI)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->iterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$blockIterator$55(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->identityIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$blockSpliterator$30(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p0
.end method

.method private static synthetic lambda$blockSpliterator$31(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv4/o;

    const/4 v0, 0x5

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv4/o;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$blockSpliterator$32(IZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p3, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->blockIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$blockSpliterator$33(ILinet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$blockSpliterator$56(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv4/IPv4Address;

    return-object p0
.end method

.method private static synthetic lambda$blockSpliterator$57(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv4/o;

    const/4 v0, 0x1

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv4/o;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$blockSpliterator$58(IZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p3, p0}, Linet/ipaddr/ipv4/IPv4Address;->blockIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$blockSpliterator$59(ILinet/ipaddr/ipv4/IPv4Address;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$createMaxHost$67(Linet/ipaddr/ipv4/IPv4Address;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$createZeroHost$64(Linet/ipaddr/ipv4/IPv4Address;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$createZeroNetwork$66(Linet/ipaddr/ipv4/IPv4Address;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$excludeNonZeroHosts$36(I[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z
    .locals 0

    invoke-virtual {p0, p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->isZeroHost([Linet/ipaddr/ipv4/IPv4AddressSegment;I)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$getHostSection$74(Ljava/lang/Integer;I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p2

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->toHostSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getLowestOrHighestSection$0(ZI)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->getLower()Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private synthetic lambda$getNetworkSection$73(ZLjava/lang/Integer;I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    invoke-virtual {p0, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->toNetworkSegment(Ljava/lang/Integer;Z)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$increment$60()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getMaxValue(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic lambda$iterator$10()[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$iterator$11(ZI)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->iterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$mask$69(Linet/ipaddr/ipv4/IPv4AddressSection;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$maskNetwork$70(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)I
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$prefixIterator$19(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$20(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$21(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->prefixIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$51(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$52(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$53(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->prefixIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$prefixSpliterator$22(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$23(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv4/o;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv4/o;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$prefixSpliterator$24(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$25(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$26(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$27(ILinet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longPrefixCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$prefixSpliterator$45(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv4/IPv4Address;

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$46(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv4/o;

    const/4 v0, 0x6

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv4/o;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$prefixSpliterator$47(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$48(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$49(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$50(ILinet/ipaddr/ipv4/IPv4Address;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longPrefixCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private synthetic lambda$reverseBits$1(ZI)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p2

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$reverseSegments$2(I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$segmentsIterator$34()[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegments()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$segmentsIterator$35(ZI)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->iterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$segmentsSpliterator$37(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$38(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv4/o;

    const/4 v0, 0x3

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv4/o;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$segmentsSpliterator$39(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->segmentsIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$40(ILinet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$segmentsSpliterator$41(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv4/IPv4Address;

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$42(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv4/o;

    const/4 v0, 0x2

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv4/o;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$segmentsSpliterator$43(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->segmentsIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$44(ILinet/ipaddr/ipv4/IPv4Address;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$setPrefixLength$63(Linet/ipaddr/ipv4/IPv4AddressSection;I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$12(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4Address;)J
    .locals 2

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-static {v0, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide v0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1, p0}, Linet/ipaddr/IPAddressSection;->longZeroHostCount(II)J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private synthetic lambda$spliterator$13(Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->isZeroHost([Linet/ipaddr/ipv4/IPv4AddressSegment;I)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$spliterator$14(Ljava/lang/Integer;ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p4}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p2

    invoke-virtual {p4}, Linet/ipaddr/ipv4/IPv4Address;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p3

    new-instance v0, Linet/ipaddr/ipv4/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Linet/ipaddr/ipv4/k;-><init>(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)V

    invoke-virtual {p2, p4, p3, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$spliterator$15(ILinet/ipaddr/ipv4/IPv4Address;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$spliterator$16(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$17(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv4/IPv4Address;

    return-object p0
.end method

.method private static synthetic lambda$spliterator$18(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv4/o;

    const/4 v0, 0x4

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv4/o;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$spliterator$3(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 2

    invoke-static {p2, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1, p0}, Linet/ipaddr/IPAddressSection;->longZeroHostCount(II)J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private synthetic lambda$spliterator$4(Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->isZeroHost([Linet/ipaddr/ipv4/IPv4AddressSegment;I)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$spliterator$5(Ljava/lang/Integer;ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    new-instance p2, Linet/ipaddr/ipv4/k;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1, p0}, Linet/ipaddr/ipv4/k;-><init>(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)V

    invoke-direct {p4, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$spliterator$6(ILinet/ipaddr/ipv4/IPv4AddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$spliterator$7(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$8(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p0
.end method

.method private static synthetic lambda$spliterator$9(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/ipv4/o;

    const/4 v0, 0x7

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/ipv4/o;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

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

.method private static synthetic lambda$subtract$61(Linet/ipaddr/ipv4/IPv4AddressSection;I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$toMaxHost$68(Linet/ipaddr/ipv4/IPv4Address;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$toPrefixBlock$75(Ljava/lang/Integer;I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 1

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Linet/ipaddr/ipv4/IPv4AddressSegment;->toNetworkSegment(Ljava/lang/Integer;Z)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$toZeroHost$65(Linet/ipaddr/ipv4/IPv4Address;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method public static synthetic m0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$subtract$61(Linet/ipaddr/ipv4/IPv4AddressSection;I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixIterator$51(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$setPrefixLength$63(Linet/ipaddr/ipv4/IPv4AddressSection;I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(ILinet/ipaddr/ipv4/IPv4Address;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockSpliterator$59(ILinet/ipaddr/ipv4/IPv4Address;)J

    move-result-wide p0

    return-wide p0
.end method

.method private prefixIterator(Z)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->isSinglePrefixBlock()Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection;->longPrefixCount(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-static {v3, v4, v5}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-static {v3, v4, v5}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v9

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    if-eqz v2, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    new-instance v6, Linet/ipaddr/ipv4/r;

    const/16 v4, 0xc

    invoke-direct {v6, v4, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    const/4 v7, 0x0

    if-eqz p1, :cond_4

    new-instance p1, Linet/ipaddr/ipv4/r;

    const/16 v4, 0xd

    invoke-direct {p1, v4, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    :goto_1
    move-object v10, p1

    goto :goto_2

    :cond_4
    new-instance p1, Linet/ipaddr/ipv4/r;

    const/16 v4, 0xe

    invoke-direct {p1, v4, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    goto :goto_1

    :goto_2
    move-object v4, v1

    invoke-static/range {v3 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-static {v2, p0, v1, p1, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private prefixSpliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixSpliterator(ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method private prefixSpliterator(ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v0

    if-gt p2, v0, :cond_2

    if-ltz p2, :cond_2

    invoke-static {p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {p2, v0, v1}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {p2, v0, v1}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    new-instance v7, Linet/ipaddr/ipv4/w;

    const/4 v6, 0x2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Linet/ipaddr/ipv4/w;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;III)V

    if-eqz p1, :cond_0

    new-instance p1, Lv1/n;

    const/16 v1, 0xc

    invoke-direct {p1, v1}, Lv1/n;-><init>(I)V

    :goto_0
    move-object v8, p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lv1/n;

    const/16 v1, 0xd

    invoke-direct {p1, v1}, Lv1/n;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lv1/n;

    const/16 v1, 0xe

    invoke-direct {p1, v1}, Lv1/n;-><init>(I)V

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Linet/ipaddr/ipv4/v;

    const/4 p1, 0x2

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

.method public static synthetic q0(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$13(Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r0(ILinet/ipaddr/ipv4/IPv4Address;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$50(ILinet/ipaddr/ipv4/IPv4Address;)J

    move-result-wide p0

    return-wide p0
.end method

.method private replace(IILinet/ipaddr/ipv4/IPv4AddressSection;IIZ)Linet/ipaddr/ipv4/IPv4AddressSection;
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

    add-int v8, v5, v7

    sub-int/2addr v8, v6

    const/4 v9, 0x4

    if-gt v8, v9, :cond_e

    if-nez v7, :cond_0

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    if-ne v5, v6, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v7

    invoke-virtual {v7}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    if-eqz p6, :cond_9

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v5

    shl-int/lit8 v6, v4, 0x3

    invoke-virtual {p3}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v6, :cond_3

    :cond_2
    invoke-virtual {p3, v6, v8}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

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

    invoke-virtual {p0, v8, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v6

    invoke-virtual {v6}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v6

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    invoke-virtual {p3, v4, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->insert(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    add-int v3, v4, v5

    move v4, v3

    move-object v3, v1

    move v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v6

    shl-int/lit8 v5, v4, 0x3

    invoke-virtual {p3}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v5, :cond_7

    :cond_6
    invoke-virtual {p3, v5, v8}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

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

    if-nez p6, :cond_a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shl-int/lit8 v10, v2, 0x3

    if-gt v9, v10, :cond_a

    invoke-virtual {p3, v8, v8}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v3

    :cond_9
    move v6, v4

    move-object v4, v3

    move v3, v1

    move-object v1, v0

    goto :goto_3

    :cond_a
    if-ge v1, v5, :cond_9

    shl-int/lit8 v9, v4, 0x3

    invoke-virtual {p3}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {p3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v10, v9, :cond_9

    shl-int/lit8 v9, v1, 0x3

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

    invoke-virtual {p0, v8, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v6

    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v7

    invoke-virtual {p3, v4, v7}, Linet/ipaddr/ipv4/IPv4AddressSection;->insert(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v3

    add-int/2addr v4, v5

    goto :goto_1

    :cond_d
    :goto_2
    invoke-virtual {p0, v9, v8}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v5

    goto/16 :goto_0

    :goto_3
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v7

    const/4 v9, 0x0

    move v2, p1

    move/from16 v5, p4

    move/from16 v8, p6

    invoke-static/range {v1 .. v9}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->replace(Linet/ipaddr/AddressSection;IILinet/ipaddr/AddressSection;IILinet/ipaddr/format/standard/AddressCreator;ZZ)Linet/ipaddr/AddressSection;

    move-result-object v1

    check-cast v1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v1

    :cond_e
    new-instance v1, Linet/ipaddr/AddressValueException;

    invoke-direct {v1, p0, p3, v8}, Linet/ipaddr/AddressValueException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;I)V

    throw v1

    :cond_f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static synthetic s0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockSpliterator$31(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

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
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;)",
            "Ljava/util/Iterator<",
            "[",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Linet/ipaddr/ipv4/l;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0}, Linet/ipaddr/ipv4/l;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    :goto_0
    new-instance v4, Linet/ipaddr/ipv4/z;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v0, v5}, Linet/ipaddr/ipv4/z;-><init>(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)V

    invoke-static {v1, v2, v3, v4, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private setPrefixLength(IZZZ)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 7

    .line 13
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    xor-int/lit8 v5, p4, 0x1

    new-instance v6, Lv1/n;

    const/16 p4, 0x13

    invoke-direct {v6, p4}, Lv1/n;-><init>(I)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->setPrefixLength(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;IZZZLinet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public static synthetic t0(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$spliterator$14(Ljava/lang/Integer;ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$bitwiseOrNetwork$72(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)I

    move-result p0

    return p0
.end method

.method public static synthetic v0(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$25(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$adjustPrefixLength$62(Linet/ipaddr/ipv4/IPv4AddressSection;I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockSpliterator$30(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(IZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$blockSpliterator$58(IZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$iterator$10()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$segmentsSpliterator$38(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic y0(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$segmentsIterator$35(ZI)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$segmentsSpliterator$41(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z0(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->lambda$prefixSpliterator$47(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    .line 10
    invoke-super {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 3

    .line 10
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    new-instance v1, Lv1/n;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lv1/n;-><init>(I)V

    invoke-static {p0, p1, p2, v0, v1}, Linet/ipaddr/IPAddressSection;->adjustPrefixLength(Linet/ipaddr/IPAddressSection;IZLinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public append(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v5

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/ipv4/IPv4AddressSection;->replace(IILinet/ipaddr/ipv4/IPv4AddressSection;II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public appendToNetwork(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->append(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

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

    invoke-virtual {p0, v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    ushr-int/lit8 v3, v0, 0x3

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v3, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->insert(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v6

    const/4 v7, 0x1

    move v2, v3

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Linet/ipaddr/ipv4/IPv4AddressSection;->replace(IILinet/ipaddr/ipv4/IPv4AddressSection;IIZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->assignMinPrefixForBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->assignMinPrefixForBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public assignMinPrefixForBlock()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->assignMinPrefixForBlock()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public assignPrefixForSingleBlock()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public bitwiseOr(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->bitwiseOr(Linet/ipaddr/ipv4/IPv4AddressSection;Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bitwiseOr(Linet/ipaddr/ipv4/IPv4AddressSection;Z)Linet/ipaddr/ipv4/IPv4AddressSection;
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
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Linet/ipaddr/ipv4/r;

    const/4 p2, 0x0

    invoke-direct {v4, p2, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv4/s;

    invoke-direct {v5, p2, p1}, Linet/ipaddr/ipv4/s;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Linet/ipaddr/IPAddressSection;->getOredSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public bitwiseOrNetwork(Linet/ipaddr/ipv4/IPv4AddressSection;I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 7

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkMaskSectionCount(Linet/ipaddr/IPAddressSection;)V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0, p2}, Linet/ipaddr/IPAddressNetwork;->getNetworkMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Linet/ipaddr/ipv4/r;

    const/16 p2, 0xf

    invoke-direct {v5, p2, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v6, Linet/ipaddr/ipv4/x;

    const/4 p2, 0x1

    invoke-direct {v6, p1, v0, p2}, Linet/ipaddr/ipv4/x;-><init>(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Linet/ipaddr/IPAddressSection;->getOredSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public blockIterator(I)Ljava/util/Iterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v8

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->isMultiple(I)Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v9, :cond_1

    move-object p1, v11

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v2, 0x0

    new-instance v3, Linet/ipaddr/ipv4/z;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v10, v1}, Linet/ipaddr/ipv4/z;-><init>(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)V

    const/4 v4, 0x0

    add-int/lit8 v5, p1, -0x1

    new-instance v7, Linet/ipaddr/ipv4/r;

    const/4 v1, 0x2

    invoke-direct {v7, v1, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    move-object v1, v8

    move v6, p1

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v11

    :goto_1
    invoke-static {v9, p0, v8, p1, v11}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public blockIterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;I)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "**",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;I)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    if-ltz p3, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    invoke-virtual {p0, p3}, Linet/ipaddr/IPAddressSection;->isMultiple(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    if-eqz v2, :cond_1

    move-object p3, v1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    new-instance v6, Linet/ipaddr/ipv4/z;

    const/4 v4, 0x3

    invoke-direct {v6, p0, v0, v4}, Linet/ipaddr/ipv4/z;-><init>(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)V

    const/4 v7, 0x0

    new-instance v10, Linet/ipaddr/ipv4/r;

    const/4 v4, 0x4

    invoke-direct {v10, v4, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    move-object v4, p2

    move v9, p3

    invoke-static/range {v3 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-static {v2, p1, p2, p3, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_3
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
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

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

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, p0

    move-object v2, v3

    :goto_1
    add-int/lit8 v3, p1, -0x1

    new-instance v7, Linet/ipaddr/ipv4/w;

    const/4 v5, 0x1

    move-object v0, v7

    move v4, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/w;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;III)V

    new-instance v5, Linet/ipaddr/ipv4/y;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Linet/ipaddr/ipv4/y;-><init>(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v8, Linet/ipaddr/ipv4/v;

    const/4 v2, 0x1

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

.method public blockSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;",
            "I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    if-ltz p3, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    move-object v2, p1

    move-object v5, v1

    goto :goto_1

    :cond_2
    move-object v5, v2

    move-object v2, p1

    :goto_1
    add-int/lit8 v6, p3, -0x1

    new-instance p1, Linet/ipaddr/ipv4/w;

    const/4 v8, 0x7

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Linet/ipaddr/ipv4/w;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;III)V

    new-instance v4, Linet/ipaddr/ipv4/y;

    const/4 p2, 0x1

    invoke-direct {v4, p3, p2}, Linet/ipaddr/ipv4/y;-><init>(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Linet/ipaddr/ipv4/v;

    const/4 p2, 0x7

    invoke-direct {v7, p3, p2}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static/range {v2 .. v7}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public cache(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    if-eqz p3, :cond_8

    :cond_0
    invoke-static {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSingleLowestOrHighestSection(Linet/ipaddr/AddressSegmentSeries;)Linet/ipaddr/AddressSegmentSeries;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v2, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->cache(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;)V

    iget-object v0, p1, Linet/ipaddr/ipv4/IPv4Address;->sectionCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    iget-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    if-eqz v1, :cond_4

    :cond_3
    if-eqz p3, :cond_8

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    if-nez v0, :cond_8

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Linet/ipaddr/ipv4/IPv4Address;->sectionCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;

    if-nez v0, :cond_5

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;-><init>()V

    iput-object v0, p1, Linet/ipaddr/ipv4/IPv4Address;->sectionCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;

    iput-object p2, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    :goto_1
    iput-object p3, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    iget-object p1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    if-nez p1, :cond_6

    iput-object p2, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    :cond_6
    iget-object p1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_8
    :goto_4
    return-void
.end method

.method public cache(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;)V
    .locals 2

    .line 2
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

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
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    if-nez v0, :cond_3

    new-instance v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    invoke-direct {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

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

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    iput-object p1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->canonicalString:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public contains(Linet/ipaddr/AddressSection;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-eqz v0, :cond_0

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

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->subtract(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;

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
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->coverWithPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->coverWithPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public coverWithPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    invoke-static {p0, v0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public coverWithPrefixBlock(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 5

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkSectionCount(Linet/ipaddr/IPAddressSection;)V

    new-instance v0, Linet/ipaddr/ipv4/f;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v1, Linet/ipaddr/ipv4/f;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Linet/ipaddr/ipv4/f;-><init>(I)V

    sget-object v2, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Linet/ipaddr/ipv4/g;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    invoke-static {p0, p1, v0, v1, v3}, Linet/ipaddr/ipv4/IPv4AddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public createMaxHost()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v1

    check-cast v1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v3, v0

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Linet/ipaddr/ipv4/r;

    const/16 v0, 0x10

    invoke-direct {v6, v0, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v7, Linet/ipaddr/ipv4/q;

    const/4 v0, 0x0

    invoke-direct {v7, v0, v1}, Linet/ipaddr/ipv4/q;-><init>(ILinet/ipaddr/ipv4/IPv4Address;)V

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Linet/ipaddr/IPAddressSection;->getOredSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public createZeroHost(Z)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 10

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(I)Linet/ipaddr/IPAddress;

    move-result-object v2

    check-cast v2, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v5

    xor-int/lit8 v6, p1, 0x1

    new-instance v7, Linet/ipaddr/ipv4/r;

    const/16 p1, 0x12

    invoke-direct {v7, p1, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v8, Linet/ipaddr/ipv4/q;

    const/4 p1, 0x2

    invoke-direct {v8, p1, v2}, Linet/ipaddr/ipv4/q;-><init>(ILinet/ipaddr/ipv4/IPv4Address;)V

    const/4 v9, 0x1

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public createZeroNetwork()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 7

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Linet/ipaddr/ipv4/r;

    const/16 v5, 0x14

    invoke-direct {v4, v5, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv4/q;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v0}, Linet/ipaddr/ipv4/q;-><init>(ILinet/ipaddr/ipv4/IPv4Address;)V

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

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

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getBitsPerSegment()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getByteCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    return v0
.end method

.method public getBytesImpl(Z)[B
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result v3

    :goto_1
    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getBytesPerSegment()I
    .locals 1

    const/4 v0, 0x1

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
    invoke-static {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/AddressDivision;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 9
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection;->getDivision(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p1
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostMask()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostMask()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getHostMask()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->getHostMask()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public bridge synthetic getHostSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getHostSection()Linet/ipaddr/ipv4/IPv4AddressSection;
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
    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHostSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 4

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getHostSegmentCount(I)I

    move-result v0

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    new-instance v2, Linet/ipaddr/ipv4/m;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Linet/ipaddr/ipv4/m;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    invoke-static {p0, p1, v0, v1, v2}, Linet/ipaddr/IPAddressSection;->getHostSection(Linet/ipaddr/IPAddressSection;IILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    return-object v0
.end method

.method public getIPv4Count(Z)J
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->includesZeroHost()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/IPAddressSection;->longZeroHostCount(II)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->longCount(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getIPv4PrefixCount()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getIPv4PrefixCount(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getIPv4Count(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIPv4PrefixCount(I)J
    .locals 2

    .line 2
    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->longPrefixCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIterable()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    .line 6
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLowestOrHighestSection(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLowerNonZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLowerNonZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getLowerNonZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLowestOrHighestSection(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getLowestOrHighest(Linet/ipaddr/ipv4/IPv4Address;ZZ)Linet/ipaddr/ipv4/IPv4Address;
    .locals 6

    invoke-direct {p0, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLowestOrHighestSection(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p1, Linet/ipaddr/ipv4/IPv4Address;->sectionCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    :goto_0
    check-cast v1, Linet/ipaddr/ipv4/IPv4Address;

    goto :goto_1

    :cond_2
    iget-object v1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_0

    :cond_3
    iget-object v1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_0

    :goto_1
    if-nez v1, :cond_d

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Linet/ipaddr/ipv4/IPv4Address;->sectionCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    if-eqz v5, :cond_6

    new-instance v2, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;

    invoke-direct {v2}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;-><init>()V

    iput-object v2, p1, Linet/ipaddr/ipv4/IPv4Address;->sectionCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_6
    if-eqz p2, :cond_9

    if-eqz p3, :cond_8

    iget-object p1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    move-object v1, p1

    check-cast v1, Linet/ipaddr/ipv4/IPv4Address;

    if-nez v1, :cond_7

    :goto_3
    move v3, v4

    :cond_7
    move v5, v3

    goto :goto_4

    :cond_8
    iget-object p1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    move-object v1, p1

    check-cast v1, Linet/ipaddr/ipv4/IPv4Address;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_9
    iget-object p1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    move-object v1, p1

    check-cast v1, Linet/ipaddr/ipv4/IPv4Address;

    if-nez v1, :cond_7

    goto :goto_3

    :goto_4
    if-eqz v5, :cond_c

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p1

    invoke-virtual {p1, v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    if-eqz p2, :cond_b

    if-eqz p3, :cond_a

    iput-object p1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_5

    :cond_a
    iput-object p1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_5

    :cond_b
    iput-object p1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    :goto_5
    move-object v1, p1

    :cond_c
    monitor-exit p0

    :cond_d
    return-object v1

    :goto_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;
    .locals 1

    .line 3
    invoke-static {}, Linet/ipaddr/Address;->defaultIpv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkMask()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkMask()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkMask()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressSection;->getNetworkMask()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public bridge synthetic getNetworkSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNetworkSection(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkSection()Linet/ipaddr/ipv4/IPv4AddressSection;
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
    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v0

    goto :goto_0
.end method

.method public getNetworkSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkSection(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 3

    .line 6
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv4/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Linet/ipaddr/ipv4/p;-><init>(Linet/ipaddr/IPAddressSection;ZI)V

    invoke-static {p0, p1, p2, v0, v1}, Linet/ipaddr/IPAddressSection;->getNetworkSection(Linet/ipaddr/IPAddressSection;IZLinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public getParts(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 0

    .line 1
    invoke-static {p1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->from(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getParts(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    move-result-object p1

    return-object p1
.end method

.method public getParts(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 8

    .line 2
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includesAny(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection;->getParts(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-array v3, v1, [Z

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x3

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v7

    aput-boolean v7, v3, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget-boolean v6, v3, v5

    invoke-virtual {p1, v1}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result v7

    or-int/2addr v6, v7

    aput-boolean v6, v3, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget-boolean v5, v3, v4

    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result p1

    or-int/2addr p1, v5

    aput-boolean p1, v3, v4

    :goto_0
    if-ge v2, v1, :cond_3

    aget-boolean p1, v3, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->toJoinedSegments(I)Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    return-object p1
.end method

.method public getPrefixCount(I)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getIPv4PrefixCount(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public getPrefixCountImpl()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getIPv4PrefixCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    .line 7
    return-object p0
.end method

.method public getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 8
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 9
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    invoke-static {p1, p2, p0, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSection(IILinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;)Linet/ipaddr/AddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p1
.end method

.method public getSegments(IILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "-",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

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
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;)V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegments(IILjava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/AddressSegment;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegments()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegments()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getSegments()[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    invoke-virtual {v0}, [Linet/ipaddr/format/AddressDivisionBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object v0
.end method

.method public bridge synthetic getSegmentsInternal()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object v0
.end method

.method public bridge synthetic getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getStringCache()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    move-result-object v0

    return-object v0
.end method

.method public getStringCache()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLowestOrHighestSection(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getZeroHostCountImpl(II)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->includesZeroHost(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressSection;->longZeroHostCount(II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p1

    :cond_1
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p1
.end method

.method public hasNoStringCache()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

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

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 19

    .line 5
    move-object/from16 v13, p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v13

    :cond_0
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v11, v0, v2

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->upperIntValue()I

    move-result v0

    int-to-long v0, v0

    and-long v14, v0, v2

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    new-instance v10, Linet/ipaddr/ipv4/n;

    const/4 v0, 0x0

    invoke-direct {v10, v13, v0}, Linet/ipaddr/ipv4/n;-><init>(Linet/ipaddr/format/standard/AddressDivisionGrouping;I)V

    move-wide/from16 v2, p1

    move-wide v4, v11

    move-wide v6, v14

    move-wide/from16 v8, v16

    invoke-static/range {v2 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->checkOverflow(JJJJLjava/util/function/LongSupplier;)V

    invoke-direct/range {p0 .. p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v3

    new-instance v10, Linet/ipaddr/ipv4/l;

    const/4 v0, 0x2

    invoke-direct {v10, v0, v13}, Linet/ipaddr/ipv4/l;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v8, Linet/ipaddr/ipv4/l;

    const/4 v0, 0x3

    invoke-direct {v8, v0, v13}, Linet/ipaddr/ipv4/l;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object/from16 v18, v0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v4, v16

    move-wide v6, v11

    move-object v11, v8

    move-wide v8, v14

    move-object/from16 v12, v18

    invoke-static/range {v0 .. v12}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->increment(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;JJJLjava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public incrementBoundary(J)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    .line 5
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p2}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/ipv4/IPv4AddressSection;->replace(IILinet/ipaddr/ipv4/IPv4AddressSection;II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public intValue()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getIntValue(Z)I

    move-result v0

    return v0
.end method

.method public intersect(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 4

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv4/r;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Linet/ipaddr/ipv4/r;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p1}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    invoke-static {p0, p1, v0, v1, v2}, Linet/ipaddr/IPAddressSection;->intersect(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public isIPv4()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressSection;

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

.method public isZeroHost([Linet/ipaddr/ipv4/IPv4AddressSegment;I)Z
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
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "**",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;",
            "Ljava/util/function/Predicate<",
            "[",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p1, v3

    :cond_2
    if-eqz v1, :cond_3

    move-object p3, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v3

    goto :goto_1

    :cond_4
    new-instance v5, Linet/ipaddr/ipv4/l;

    invoke-direct {v5, v2, p0}, Linet/ipaddr/ipv4/l;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    :goto_1
    new-instance v2, Linet/ipaddr/ipv4/z;

    const/4 v6, 0x2

    invoke-direct {v2, p0, v0, v6}, Linet/ipaddr/ipv4/z;-><init>(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)V

    invoke-static {v4, p2, v5, v2, p3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-static {v1, p1, p2, p3, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public longValue()J
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public mask(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->mask(Linet/ipaddr/ipv4/IPv4AddressSection;Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public mask(Linet/ipaddr/ipv4/IPv4AddressSection;Z)Linet/ipaddr/ipv4/IPv4AddressSection;
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
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Linet/ipaddr/ipv4/r;

    const/4 p2, 0x3

    invoke-direct {v4, p2, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv4/s;

    const/4 p2, 0x1

    invoke-direct {v5, p2, p1}, Linet/ipaddr/ipv4/s;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public maskNetwork(Linet/ipaddr/ipv4/IPv4AddressSection;I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 8

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->checkMaskSectionCount(Linet/ipaddr/IPAddressSection;)V

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0, p2}, Linet/ipaddr/IPAddressNetwork;->getHostMaskSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Linet/ipaddr/ipv4/r;

    const/4 p2, 0x1

    invoke-direct {v5, p2, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v6, Linet/ipaddr/ipv4/x;

    const/4 p2, 0x0

    invoke-direct {v6, p1, v0, p2}, Linet/ipaddr/ipv4/x;-><init>(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)V

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public matchesWithMask(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-eqz v0, :cond_0

    instance-of v0, p2, Linet/ipaddr/ipv4/IPv4AddressSection;

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

.method public varargs mergePrefixBlocks([Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->mergeToPrefixBlocks([Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public varargs mergeToPrefixBlocks([Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->checkSectionsMergeable([Linet/ipaddr/ipv4/IPv4AddressSection;)V

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getCloned([Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->getMergedPrefixBlocks([Linet/ipaddr/IPAddressSegmentSeries;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public varargs mergeToSequentialBlocks([Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 3

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->checkSectionsMergeable([Linet/ipaddr/ipv4/IPv4AddressSection;)V

    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getCloned([Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lv/f;

    const/16 v2, 0x16

    invoke-direct {v1, v0, v2}, Lv/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v1}, Linet/ipaddr/IPAddressSection;->getMergedSequentialBlocks([Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSection$SeriesCreator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public nonZeroHostIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->excludeNonZeroHosts()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixSpliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public prefixContains(Linet/ipaddr/IPAddressSection;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->prefixContains(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public prefixEquals(Linet/ipaddr/AddressSection;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->prefixEquals(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public prefixIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixIterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;Z)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "**",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixIterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;ZI)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->iterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixIterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/format/standard/AddressCreator;ZI)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "**",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;ZI)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v0

    if-gt p4, v0, :cond_5

    if-ltz p4, :cond_5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p4}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->containsSinglePrefixBlock(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Linet/ipaddr/IPAddressSection;->longPrefixCount(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p1, p4, v0}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v2

    invoke-static {p4, v0, v2}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v8

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v2

    invoke-static {p4, v0, v2}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v9

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v3

    if-eqz v1, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    new-instance v6, Linet/ipaddr/ipv4/r;

    const/16 v0, 0x9

    invoke-direct {v6, v0, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    const/4 v7, 0x0

    if-eqz p3, :cond_4

    new-instance p3, Linet/ipaddr/ipv4/r;

    const/16 v0, 0xa

    invoke-direct {p3, v0, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    :goto_1
    move-object v10, p3

    goto :goto_2

    :cond_4
    new-instance p3, Linet/ipaddr/ipv4/r;

    const/16 v0, 0xb

    invoke-direct {p3, v0, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    goto :goto_1

    :goto_2
    move-object v4, p2

    invoke-static/range {v3 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-static {p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v1, p1, p2, p3, p4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_5
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
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixSpliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;",
            "Z)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;ZI)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;",
            "ZI)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 3
    move-object v0, p1

    move/from16 v1, p4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v2

    if-gt v1, v2, :cond_2

    if-ltz v1, :cond_2

    invoke-static/range {p4 .. p4}, Linet/ipaddr/ipv4/IPv4AddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v3

    invoke-static {v1, v2, v3}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBytesPerSegment()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitsPerSegment()I

    move-result v3

    invoke-static {v1, v2, v3}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    new-instance v9, Linet/ipaddr/ipv4/w;

    const/4 v8, 0x5

    move-object v3, v9

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v8}, Linet/ipaddr/ipv4/w;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;III)V

    if-eqz p3, :cond_0

    new-instance v2, Lv1/n;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lv1/n;-><init>(I)V

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lv1/n;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lv1/n;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Lv1/n;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lv1/n;-><init>(I)V

    goto :goto_0

    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Linet/ipaddr/ipv4/v;

    const/4 v2, 0x5

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
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

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
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public removePrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    new-instance v1, Lv1/n;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lv1/n;-><init>(I)V

    invoke-static {p0, p1, v0, v1}, Linet/ipaddr/IPAddressSection;->removePrefixLength(Linet/ipaddr/IPAddressSection;ZLinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public replace(IILinet/ipaddr/ipv4/IPv4AddressSection;II)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 7

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/ipv4/IPv4AddressSection;->replace(IILinet/ipaddr/ipv4/IPv4AddressSection;IIZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public replace(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;
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

    invoke-virtual/range {v1 .. v6}, Linet/ipaddr/ipv4/IPv4AddressSection;->replace(IILinet/ipaddr/ipv4/IPv4AddressSection;II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 3

    .line 6
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv4/z;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Linet/ipaddr/ipv4/z;-><init>(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)V

    const/4 v2, 0x1

    invoke-static {p1, p0, v0, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->reverseBits(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 4

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0

    :cond_1
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    new-instance v2, Linet/ipaddr/ipv4/r;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    invoke-static {p0, v0, v2, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->reverseSegments(Linet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public segmentsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->segmentsIterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->excludeNonZeroHosts()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->segmentsIterator(Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            "[",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    const/4 v2, 0x0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p0

    move-object v2, v0

    :goto_0
    add-int/lit8 v3, v6, -0x1

    new-instance v8, Linet/ipaddr/ipv4/w;

    const/4 v5, 0x3

    move-object v0, v8

    move v4, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/w;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;III)V

    new-instance v9, Lv1/n;

    const/16 v0, 0x10

    invoke-direct {v9, v0}, Lv1/n;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/4 v0, 0x3

    invoke-direct {v12, v6, v0}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static/range {v7 .. v12}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createItemSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsSpliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;",
            ")",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "[",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move-object v7, p1

    move-object v2, v0

    add-int/lit8 v3, v6, -0x1

    new-instance v8, Linet/ipaddr/ipv4/w;

    const/4 v5, 0x6

    move-object v0, v8

    move-object v1, p2

    move v4, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/w;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;III)V

    new-instance v9, Lv1/n;

    const/16 p1, 0x17

    invoke-direct {v9, p1}, Lv1/n;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/4 p1, 0x6

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
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
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
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
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
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
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
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    .line 10
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    .line 11
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(IZZ)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithPrefixBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spanWithPrefixBlocks()[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public spanWithPrefixBlocks()[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    .line 2
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Linet/ipaddr/ipv4/IPv4AddressSection;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    invoke-virtual {p0, p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spanWithPrefixBlocks(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->spanWithBlocks(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public spanWithPrefixBlocks(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 8

    .line 3
    new-instance v2, Linet/ipaddr/ipv4/f;

    const/16 v0, 0x9

    invoke-direct {v2, v0}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v3, Linet/ipaddr/ipv4/f;

    const/16 v0, 0xa

    invoke-direct {v3, v0}, Linet/ipaddr/ipv4/f;-><init>(I)V

    sget-object v0, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Linet/ipaddr/ipv4/g;

    const/4 v1, 0x3

    invoke-direct {v4, v0, v1}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    new-instance v5, Linet/ipaddr/ipv4/f;

    const/16 v0, 0xb

    invoke-direct {v5, v0}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v6, Linet/ipaddr/ipv4/f;

    const/16 v0, 0xc

    invoke-direct {v6, v0}, Linet/ipaddr/ipv4/f;-><init>(I)V

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Linet/ipaddr/ipv4/i;

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1}, Linet/ipaddr/ipv4/i;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;I)V

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Linet/ipaddr/IPAddressSection;->getSpanningPrefixBlocks(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/function/IntFunction;)[Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public spanWithRangedSegments(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->spanWithSequentialBlocks(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithSequentialBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spanWithSequentialBlocks()[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public spanWithSequentialBlocks()[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 3

    .line 2
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->spanWithBlocks(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public spanWithSequentialBlocks(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 7

    .line 3
    new-instance v2, Linet/ipaddr/ipv4/f;

    const/16 v0, 0xd

    invoke-direct {v2, v0}, Linet/ipaddr/ipv4/f;-><init>(I)V

    new-instance v3, Linet/ipaddr/ipv4/f;

    const/16 v0, 0xe

    invoke-direct {v3, v0}, Linet/ipaddr/ipv4/f;-><init>(I)V

    sget-object v0, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Linet/ipaddr/ipv4/g;

    const/4 v1, 0x4

    invoke-direct {v4, v0, v1}, Linet/ipaddr/ipv4/g;-><init>(Linet/ipaddr/AddressComparator;I)V

    new-instance v5, Linet/ipaddr/ipv4/f;

    const/16 v0, 0xf

    invoke-direct {v5, v0}, Linet/ipaddr/ipv4/f;-><init>(I)V

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->getSpanningSequentialBlocks(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Ljava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;Ljava/util/Comparator;Ljava/util/function/UnaryOperator;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;)[Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;",
            "Z)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->includesZeroHost()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Linet/ipaddr/ipv4/t;

    invoke-direct {p3, v4, v0, v1}, Linet/ipaddr/ipv4/t;-><init>(ILjava/lang/Integer;I)V

    new-instance v3, Linet/ipaddr/ipv4/u;

    invoke-direct {v3, v1, v0, p0}, Linet/ipaddr/ipv4/u;-><init>(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)V

    move-object v10, p3

    move-object v7, v3

    goto :goto_1

    :cond_1
    new-instance p3, Linet/ipaddr/ipv4/v;

    invoke-direct {p3, v4, v1}, Linet/ipaddr/ipv4/v;-><init>(II)V

    new-instance v0, Lv1/n;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lv1/n;-><init>(I)V

    move-object v10, p3

    move-object v7, v0

    :goto_1
    add-int/lit8 v3, v4, -0x1

    new-instance v6, Linet/ipaddr/ipv4/w;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/w;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;III)V

    const/4 v8, 0x0

    const/4 v9, 0x0

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
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

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

    new-instance p1, Linet/ipaddr/ipv4/t;

    const/4 v3, 0x1

    invoke-direct {p1, v4, v0, v3}, Linet/ipaddr/ipv4/t;-><init>(ILjava/lang/Integer;I)V

    new-instance v5, Linet/ipaddr/ipv4/u;

    invoke-direct {v5, v3, v0, p0}, Linet/ipaddr/ipv4/u;-><init>(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)V

    move-object v10, p1

    move-object v7, v5

    goto :goto_1

    :cond_1
    new-instance p1, Linet/ipaddr/ipv4/v;

    const/4 v0, 0x4

    invoke-direct {p1, v4, v0}, Linet/ipaddr/ipv4/v;-><init>(II)V

    new-instance v0, Lv1/n;

    const/16 v3, 0x11

    invoke-direct {v0, v3}, Lv1/n;-><init>(I)V

    move-object v10, p1

    move-object v7, v0

    :goto_1
    add-int/lit8 v3, v4, -0x1

    new-instance p1, Linet/ipaddr/ipv4/w;

    const/4 v5, 0x4

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/w;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;III)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 4

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv4/r;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v2, Lv1/n;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lv1/n;-><init>(I)V

    invoke-static {p0, p1, v0, v1, v2}, Linet/ipaddr/IPAddressSection;->subtract(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/util/function/IntFunction;Linet/ipaddr/IPAddressSection$SegFunction;)[Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public toAllStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->ALL_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    sget-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->canonicalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->canonicalString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toCanonicalWildcardString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toNormalizedWildcardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCompressedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCompressedWildcardString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toNormalizedWildcardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDatabaseSearchStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->DATABASE_SEARCH_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toFullString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->fullString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    sget-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->fullParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->fullString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toInetAtonString(Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->OCTAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->hasNoStringCache()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    iget-object p1, p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->octalString:Ljava/lang/String;

    if-nez p1, :cond_4

    :cond_0
    iget-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->inetAtonOctalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->octalString:Ljava/lang/String;

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->HEX:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->hasNoStringCache()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    iget-object p1, p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->hexString:Ljava/lang/String;

    if-nez p1, :cond_4

    :cond_2
    iget-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->inetAtonHexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->hexString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toCanonicalString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method public toInetAtonString(Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;I)Ljava/lang/String;
    .locals 1

    .line 2
    if-gtz p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toInetAtonString(Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->OCTAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    if-ne p1, v0, :cond_1

    sget-object p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->inetAtonOctalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_0

    :cond_1
    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->HEX:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    if-ne p1, v0, :cond_2

    sget-object p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->inetAtonHexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_0

    :cond_2
    sget-object p1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->canonicalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    :goto_0
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJoinedSegments(I)Linet/ipaddr/format/standard/IPAddressDivisionGrouping;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    if-lez p1, :cond_3

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-lt p1, v0, :cond_1

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_1
    sub-int v1, v0, p1

    :goto_0
    add-int/lit8 v0, v1, -0x1

    new-array v1, v1, [Linet/ipaddr/format/standard/IPAddressDivision;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->joinSegments(I)Linet/ipaddr/ipv4/IPv4JoinedSegments;

    move-result-object p1

    aput-object p1, v1, v0

    new-instance p1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V

    return-object p1

    :cond_3
    :goto_2
    return-object p0
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toMaxHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toMaxHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toMaxHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toMaxHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public toMaxHost()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 3

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/ipv4/IPv4Address;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4Address;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->includesZeroHost()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->isSingleNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->createMaxHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public toMaxHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;
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

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toMaxHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    const/4 v1, 0x0

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Linet/ipaddr/ipv4/r;

    const/16 v0, 0x11

    invoke-direct {v4, v0, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv4/q;

    const/4 v0, 0x1

    invoke-direct {v5, v0, p1}, Linet/ipaddr/ipv4/q;-><init>(ILinet/ipaddr/ipv4/IPv4Address;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Linet/ipaddr/IPAddressSection;->getOredSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;I)Ljava/lang/String;
    .locals 2

    .line 2
    if-gtz p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->toJoinedSegments(I)Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    move-result-object p2

    invoke-static {p1, p2}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedWildcardString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->normalizedWildcardString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    sget-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->normalizedWildcardParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->normalizedWildcardString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public toPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    .line 7
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 3

    .line 8
    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/ipv4/m;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Linet/ipaddr/ipv4/m;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    invoke-static {p0, p1, v0, v1}, Linet/ipaddr/IPAddressSection;->toPrefixBlock(Linet/ipaddr/IPAddressSection;ILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public toPrefixLengthString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toReverseDNSLookupString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->reverseDNSString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    sget-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->reverseDNSParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->reverseDNSString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toSQLWildcardString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->sqlWildcardString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    sget-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->sqlWildcardParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->sqlWildcardString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toSegmentedBinaryString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    iget-object v0, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->segmentedBinaryString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection;->stringCache:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    sget-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->segmentedBinaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection;->toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressSection$IPStringCache;->segmentedBinaryString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toStandardStringCollection()Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->STANDARD_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object v0

    return-object v0
.end method

.method public toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 0

    .line 1
    invoke-static {p1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->from(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;

    move-result-object p1

    return-object p1
.end method

.method public toStringCollection(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;
    .locals 8

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4SectionStringCollection;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4SectionStringCollection;-><init>()V

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getParts(Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4StringBuilder;

    new-instance v6, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;

    invoke-direct {v6, v4}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)V

    const/4 v7, 0x0

    invoke-direct {v5, v4, p1, v6, v7}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4StringBuilder;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;Linet/ipaddr/ipv4/IPv4AddressSection$1;)V

    invoke-virtual {v5}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->getVariations()Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    move-result-object v4

    check-cast v4, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCollection$IPv4AddressSectionStringCollection;

    invoke-virtual {v0, v4}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4SectionStringCollection;->add(Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toSubnetString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toNormalizedWildcardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public toZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 4

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v3}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(IZ)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/ipv4/IPv4Address;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->includesZeroHost()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->isSingleNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->createZeroHost(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public toZeroHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;
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

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    const/4 v1, 0x0

    invoke-direct {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Linet/ipaddr/ipv4/r;

    const/16 v0, 0x13

    invoke-direct {v4, v0, p0}, Linet/ipaddr/ipv4/r;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V

    new-instance v5, Linet/ipaddr/ipv4/q;

    const/4 v0, 0x3

    invoke-direct {v5, v0, p1}, Linet/ipaddr/ipv4/q;-><init>(ILinet/ipaddr/ipv4/IPv4Address;)V

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Linet/ipaddr/IPAddressSection;->getSubnetSegments(Linet/ipaddr/IPAddressSection;Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork$IPAddressCreator;ZLjava/util/function/IntFunction;Ljava/util/function/IntUnaryOperator;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroNetwork()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroNetwork()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public toZeroNetwork()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 3

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v1

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4Address;

    const/4 v1, 0x0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/ipv4/IPv4Address;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->createZeroNetwork()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public upperIntValue()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getIntValue(Z)I

    move-result v0

    return v0
.end method

.method public upperLongValue()J
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->upperIntValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method
