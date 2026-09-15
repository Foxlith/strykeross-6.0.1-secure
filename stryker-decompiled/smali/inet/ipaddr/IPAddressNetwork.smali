.class public abstract Linet/ipaddr/IPAddressNetwork;
.super Linet/ipaddr/AddressNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/IPAddressNetwork$HostNameGenerator;,
        Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;,
        Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;,
        Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;,
        Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linet/ipaddr/IPAddress;",
        "R:",
        "Linet/ipaddr/IPAddressSection;",
        "E:",
        "Linet/ipaddr/IPAddressSection;",
        "S:",
        "Linet/ipaddr/IPAddressSegment;",
        "J:",
        "Ljava/net/InetAddress;",
        ">",
        "Linet/ipaddr/AddressNetwork<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private creator:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;TR;TE;TS;TJ;>;"
        }
    .end annotation
.end field

.field private final hostMasks:[Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final hostSegmentMasks:[I

.field private transient loopback:Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private transient loopbackStrings:[Ljava/lang/String;

.field private final networkAddresses:[Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final networkSegmentMasks:[I

.field private final subnetMasks:[Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final subnetsMasksWithPrefix:[Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/AddressNetwork;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-static {v0}, Linet/ipaddr/IPAddress;->getBitCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/IPAddress;

    iput-object p1, p0, Linet/ipaddr/IPAddressNetwork;->subnetsMasksWithPrefix:[Linet/ipaddr/IPAddress;

    invoke-virtual {p1}, [Linet/ipaddr/IPAddress;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Linet/ipaddr/IPAddress;

    iput-object v1, p0, Linet/ipaddr/IPAddressNetwork;->subnetMasks:[Linet/ipaddr/IPAddress;

    invoke-virtual {p1}, [Linet/ipaddr/IPAddress;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Linet/ipaddr/IPAddress;

    iput-object v1, p0, Linet/ipaddr/IPAddressNetwork;->networkAddresses:[Linet/ipaddr/IPAddress;

    invoke-virtual {p1}, [Linet/ipaddr/IPAddress;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/IPAddress;

    iput-object p1, p0, Linet/ipaddr/IPAddressNetwork;->hostMasks:[Linet/ipaddr/IPAddress;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork;->createAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/IPAddressNetwork;->creator:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    invoke-static {v0}, Linet/ipaddr/IPAddressSegment;->getBitCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result p1

    const/4 v0, -0x1

    shl-int/2addr v0, p1

    not-int v0, v0

    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Linet/ipaddr/IPAddressNetwork;->networkSegmentMasks:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Linet/ipaddr/IPAddressNetwork;->hostSegmentMasks:[I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_0

    iget-object v2, p0, Linet/ipaddr/IPAddressNetwork;->networkSegmentMasks:[I

    sub-int v3, p1, v1

    shl-int v3, v0, v3

    and-int/2addr v3, v0

    aput v3, v2, v1

    iget-object v2, p0, Linet/ipaddr/IPAddressNetwork;->hostSegmentMasks:[I

    not-int v3, v3

    and-int/2addr v3, v0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cacheBits(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/IPAddressSection;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getMask(I[Linet/ipaddr/IPAddress;ZZZ)Linet/ipaddr/IPAddress;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;ZZZ)TT;"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressNetwork;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v12

    invoke-static {v12}, Linet/ipaddr/IPAddress;->getBitCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v13

    if-ltz v0, :cond_16

    if-gt v0, v13, :cond_16

    aget-object v1, p2, v0

    if-nez v1, :cond_15

    const/4 v14, 0x0

    if-eqz p3, :cond_0

    move v15, v13

    move/from16 v16, v14

    goto :goto_0

    :cond_0
    move/from16 v16, v13

    move v15, v14

    :goto_0
    aget-object v1, p2, v15

    aget-object v2, p2, v16

    const/16 v17, 0x1

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v15, v14

    goto/16 :goto_7

    :cond_2
    :goto_1
    monitor-enter p2

    :try_start_0
    invoke-static {v12}, Linet/ipaddr/IPAddress;->getSegmentCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v10

    invoke-static {v12}, Linet/ipaddr/IPAddress;->getBitsPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v9

    invoke-static {v12}, Linet/ipaddr/IPAddress;->getBytesPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v18

    aget-object v1, p2, v15

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressNetwork;->getAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    move-result-object v1

    invoke-virtual {v1, v10}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v2

    check-cast v2, [Linet/ipaddr/IPAddressSegment;

    invoke-static {v12}, Linet/ipaddr/IPAddress;->getMaxSegmentValue(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    invoke-static {v9, v13}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(II)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v4

    check-cast v4, Linet/ipaddr/IPAddressSegment;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v14, v5, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-static {v9, v9}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(II)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v3

    check-cast v3, Linet/ipaddr/IPAddressSegment;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aput-object v3, v2, v4

    invoke-static {v13}, Linet/ipaddr/IPAddressNetwork;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;

    move-result-object v1

    :goto_2
    move-object/from16 v19, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_3
    invoke-interface {v1, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v3

    check-cast v3, Linet/ipaddr/IPAddressSegment;

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;

    move-result-object v1

    goto :goto_2

    :goto_3
    invoke-virtual/range {v19 .. v19}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v2

    move-object/from16 v1, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v13

    move v7, v15

    move v8, v10

    move/from16 v20, v9

    move v14, v10

    move/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Linet/ipaddr/IPAddressNetwork;->initMaskCachedValues(Linet/ipaddr/IPAddressSection;ZZZIIIII)V

    aput-object v19, p2, v15

    goto :goto_4

    :cond_4
    move/from16 v20, v9

    move v14, v10

    move-object/from16 v19, v1

    :goto_4
    aget-object v1, p2, v16

    if-nez v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressNetwork;->getAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    move-result-object v1

    invoke-virtual {v1, v14}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v2

    check-cast v2, [Linet/ipaddr/IPAddressSegment;

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    move/from16 v9, v20

    const/4 v3, 0x0

    invoke-static {v9, v3}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(II)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v4

    check-cast v4, Linet/ipaddr/IPAddressSegment;

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Linet/ipaddr/IPAddressNetwork;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p5, :cond_5

    invoke-virtual {v1}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v1

    :cond_5
    move-object/from16 v20, v1

    const/4 v15, 0x0

    goto :goto_5

    :cond_6
    move/from16 v9, v20

    const/4 v15, 0x0

    invoke-interface {v1, v15}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v3

    check-cast v3, Linet/ipaddr/IPAddressSegment;

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;

    move-result-object v1

    move-object/from16 v20, v1

    :goto_5
    invoke-virtual/range {v20 .. v20}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v2

    move-object/from16 v1, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v13

    move/from16 v7, v16

    move v8, v14

    move/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Linet/ipaddr/IPAddressNetwork;->initMaskCachedValues(Linet/ipaddr/IPAddressSection;ZZZIIIII)V

    aput-object v20, p2, v16

    move-object/from16 v2, v20

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    move-object v2, v1

    :goto_6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, v19

    :goto_7
    monitor-enter p2

    :try_start_1
    aget-object v3, p2, v0

    if-nez v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressNetwork;->getSegmentProducer()Ljava/util/function/BiFunction;

    move-result-object v3

    invoke-static {v12}, Linet/ipaddr/IPAddress;->getSegmentCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v8

    invoke-static {v12}, Linet/ipaddr/IPAddress;->getBitsPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v9

    invoke-static {v12}, Linet/ipaddr/IPAddress;->getBytesPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v10

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/IPAddressSegment;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/IPAddressSegment;

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressNetwork;->getAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v0

    move v6, v15

    :goto_8
    if-lez v7, :cond_f

    if-gt v7, v9, :cond_d

    add-int/lit8 v12, v7, -0x1

    rem-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x1

    move v14, v12

    move v12, v15

    :goto_9
    if-ge v12, v8, :cond_9

    if-eq v14, v0, :cond_8

    aget-object v15, p2, v14

    if-eqz v15, :cond_8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v15, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linet/ipaddr/IPAddressSegment;

    goto :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_13

    :cond_8
    add-int/lit8 v12, v12, 0x1

    add-int/2addr v14, v9

    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_a
    if-nez v12, :cond_c

    invoke-virtual {v11, v7}, Linet/ipaddr/IPAddressNetwork;->getSegmentNetworkMask(I)I

    move-result v12

    if-eqz p3, :cond_b

    if-eqz p4, :cond_a

    invoke-static {v9, v7}, Linet/ipaddr/IPAddressSection;->getSegmentPrefixLength(II)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v12, v14}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v12

    :goto_b
    check-cast v12, Linet/ipaddr/IPAddressSegment;

    goto :goto_c

    :cond_a
    invoke-interface {v4, v12}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v12

    goto :goto_b

    :cond_b
    invoke-virtual {v11, v7}, Linet/ipaddr/IPAddressNetwork;->getSegmentHostMask(I)I

    move-result v12

    invoke-interface {v4, v12}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v12

    goto :goto_b

    :cond_c
    :goto_c
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_d
    if-eqz p3, :cond_e

    move-object v12, v1

    goto :goto_c

    :cond_e
    move-object v12, v2

    goto :goto_c

    :goto_d
    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v7, v9

    const/4 v15, 0x0

    goto :goto_8

    :cond_f
    :goto_e
    if-ge v6, v8, :cond_11

    if-eqz p3, :cond_10

    move-object v3, v2

    goto :goto_f

    :cond_10
    move-object v3, v1

    :goto_f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    check-cast v1, [Linet/ipaddr/IPAddressSegment;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz p3, :cond_13

    if-eqz p4, :cond_13

    invoke-static/range {p1 .. p1}, Linet/ipaddr/IPAddressNetwork;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez p5, :cond_12

    invoke-virtual {v1}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v1

    :cond_12
    :goto_10
    move-object v12, v1

    goto :goto_11

    :cond_13
    invoke-virtual {v4, v1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;

    move-result-object v1

    goto :goto_10

    :goto_11
    invoke-virtual {v12}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v2

    move-object/from16 v1, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v13

    move/from16 v7, p1

    invoke-direct/range {v1 .. v10}, Linet/ipaddr/IPAddressNetwork;->initMaskCachedValues(Linet/ipaddr/IPAddressSection;ZZZIIIII)V

    aput-object v12, p2, v0

    move-object v1, v12

    goto :goto_12

    :cond_14
    move-object v1, v3

    :goto_12
    monitor-exit p2

    goto :goto_15

    :goto_13
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_14
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_15
    :goto_15
    return-object v1

    :cond_16
    new-instance v1, Linet/ipaddr/PrefixLenException;

    invoke-direct {v1, v0, v12}, Linet/ipaddr/PrefixLenException;-><init>(ILinet/ipaddr/IPAddress$IPVersion;)V

    throw v1
.end method

.method public static getPrefixString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Linet/ipaddr/format/validate/HostIdentifierStringValidator;->MAX_PREFIX_CHARS:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initMaskCachedValues(Linet/ipaddr/IPAddressSection;ZZZIIIII)V
    .locals 9

    move v0, p6

    move/from16 v1, p8

    move/from16 v2, p9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    sub-int v5, p5, v0

    if-lt v5, v1, :cond_0

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    if-lt v0, v1, :cond_0

    goto :goto_0

    :goto_1
    invoke-static {}, Linet/ipaddr/IPAddressSection;->getNoZerosRange()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v6

    if-eqz v5, :cond_4

    if-eqz p2, :cond_2

    invoke-static {p6, v2, v1}, Linet/ipaddr/IPAddressSection;->getNetworkSegmentIndex(III)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    sub-int v1, p7, v3

    goto :goto_2

    :cond_2
    invoke-static {p6, v2, v1}, Linet/ipaddr/IPAddressSection;->getHostSegmentIndex(III)I

    move-result v1

    :goto_2
    invoke-static {v3, v1}, Linet/ipaddr/IPAddressSection;->getSingleRange(II)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-result-object v1

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->prefixedSubnetsAreExplicit()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    move-object v8, v1

    move-object v7, v6

    goto :goto_4

    :cond_4
    move-object v7, v6

    move-object v8, v7

    :goto_4
    invoke-static {p6}, Linet/ipaddr/IPAddressNetwork;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->prefixedSubnetsAreExplicit()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p4, :cond_5

    goto :goto_5

    :cond_5
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sub-int v0, p5, v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    move-object v6, v0

    move-object v3, v1

    move-object v5, v3

    goto :goto_7

    :cond_6
    :goto_5
    invoke-static {p5}, Linet/ipaddr/IPAddressNetwork;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object v5, v0

    move-object v3, v1

    :goto_6
    move-object v6, v2

    goto :goto_7

    :cond_7
    invoke-static {p5}, Linet/ipaddr/IPAddressNetwork;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v3, 0x0

    move-object v5, v0

    goto :goto_6

    :goto_7
    move-object v0, p1

    move v2, p2

    move-object v4, v5

    invoke-virtual/range {v0 .. v8}, Linet/ipaddr/IPAddressSection;->initCachedValues(Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/math/BigInteger;Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;)V

    return-void
.end method


# virtual methods
.method public clearCaches()V
    .locals 2

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->subnetsMasksWithPrefix:[Linet/ipaddr/IPAddress;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->subnetMasks:[Linet/ipaddr/IPAddress;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->networkAddresses:[Linet/ipaddr/IPAddress;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->hostMasks:[Linet/ipaddr/IPAddress;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Linet/ipaddr/IPAddressNetwork;->loopback:Linet/ipaddr/IPAddress;

    iput-object v1, p0, Linet/ipaddr/IPAddressNetwork;->loopbackStrings:[Ljava/lang/String;

    invoke-super {p0}, Linet/ipaddr/AddressNetwork;->clearCaches()V

    return-void
.end method

.method public abstract createAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;TR;TE;TS;TJ;>;"
        }
    .end annotation
.end method

.method public abstract createLoopback()Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
            "TT;TR;TE;TS;TJ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->creator:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    return-object v0
.end method

.method public bridge synthetic getAddressCreator()Linet/ipaddr/format/standard/AddressCreator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork;->getAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public getHostMask(I)Linet/ipaddr/IPAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v2, p0, Linet/ipaddr/IPAddressNetwork;->hostMasks:[Linet/ipaddr/IPAddress;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork;->getMask(I[Linet/ipaddr/IPAddress;ZZZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public getHostMaskSection(I)Linet/ipaddr/IPAddressSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork;->getSectionProducer()Ljava/util/function/Function;

    move-result-object v0

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork;->getHostMask(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection;

    return-object p1
.end method

.method public abstract getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
.end method

.method public getLoopback()Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->loopback:Linet/ipaddr/IPAddress;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->loopback:Linet/ipaddr/IPAddress;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork;->createLoopback()Linet/ipaddr/IPAddress;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/IPAddressNetwork;->loopback:Linet/ipaddr/IPAddress;

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
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->loopback:Linet/ipaddr/IPAddress;

    return-object v0
.end method

.method public getNetworkAddress(I)Linet/ipaddr/IPAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v2, p0, Linet/ipaddr/IPAddressNetwork;->networkAddresses:[Linet/ipaddr/IPAddress;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork;->getMask(I[Linet/ipaddr/IPAddress;ZZZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkMask(I)Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkMask(IZ)Linet/ipaddr/IPAddress;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    .line 2
    if-eqz p2, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->subnetsMasksWithPrefix:[Linet/ipaddr/IPAddress;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->subnetMasks:[Linet/ipaddr/IPAddress;

    goto :goto_0

    :goto_1
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Linet/ipaddr/IPAddressNetwork;->getMask(I[Linet/ipaddr/IPAddress;ZZZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkMaskSection(I)Linet/ipaddr/IPAddressSection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork;->getSectionProducer()Ljava/util/function/Function;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Linet/ipaddr/IPAddressNetwork;->getNetworkMask(IZ)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection;

    return-object p1
.end method

.method public abstract getSectionProducer()Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "TT;TR;>;"
        }
    .end annotation
.end method

.method public getSegmentHostMask(I)I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->hostSegmentMasks:[I

    aget p1, v0, p1

    return p1
.end method

.method public getSegmentNetworkMask(I)I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->networkSegmentMasks:[I

    aget p1, v0, p1

    return p1
.end method

.method public abstract getSegmentProducer()Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "TT;",
            "Ljava/lang/Integer;",
            "TS;>;"
        }
    .end annotation
.end method

.method public getStandardLoopbackStrings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->loopbackStrings:[Ljava/lang/String;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->loopbackStrings:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork;->getLoopback()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->toStandardStrings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/IPAddressNetwork;->loopbackStrings:[Ljava/lang/String;

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
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork;->loopbackStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public isIPv4()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIPv6()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
