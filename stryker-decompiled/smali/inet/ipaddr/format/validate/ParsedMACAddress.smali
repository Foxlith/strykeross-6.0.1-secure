.class Linet/ipaddr/format/validate/ParsedMACAddress;
.super Linet/ipaddr/format/validate/MACAddressParseData;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/validate/MACAddressProvider;


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private address:Linet/ipaddr/mac/MACAddress;

.field private final originator:Linet/ipaddr/MACAddressString;


# direct methods
.method public constructor <init>(Linet/ipaddr/MACAddressString;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p2}, Linet/ipaddr/format/validate/MACAddressParseData;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedMACAddress;->originator:Linet/ipaddr/MACAddressString;

    return-void
.end method

.method private createRangeSegment(Ljava/lang/CharSequence;IIZLinet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/mac/MACAddressSegment;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">(",
            "Ljava/lang/CharSequence;",
            "IIZ",
            "Linet/ipaddr/format/validate/AddressParseData;",
            "I",
            "Linet/ipaddr/format/validate/ParsedAddressCreator<",
            "***TS;>;)TS;"
        }
    .end annotation

    move-object/from16 v0, p5

    move/from16 v1, p6

    if-nez p4, :cond_0

    const/4 v0, 0x0

    move v6, p2

    move/from16 v7, p3

    move-object/from16 v2, p7

    invoke-virtual {v2, p2, v7, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    :goto_0
    check-cast v0, Linet/ipaddr/mac/MACAddressSegment;

    goto :goto_1

    :cond_0
    move v6, p2

    move/from16 v7, p3

    move-object/from16 v2, p7

    const/4 v4, 0x0

    const/high16 v3, 0x40000

    invoke-virtual {v0, v1, v3}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v8

    const/high16 v3, 0x80000

    invoke-virtual {v0, v1, v3}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v9

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v10

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v11

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v3}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v12

    move-object/from16 v1, p7

    move v2, p2

    move/from16 v3, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v12}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentInternal(IILjava/lang/Integer;Ljava/lang/CharSequence;IIZZIII)Linet/ipaddr/AddressSegment;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method private createSection()Linet/ipaddr/mac/MACAddressSection;
    .locals 29

    move-object/from16 v8, p0

    iget-object v9, v8, Linet/ipaddr/format/validate/AddressParseData;->str:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/MACAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v10

    invoke-virtual {v10}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedMACAddress;->getMACAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/MACAddressParseData;->getFormat()Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    move-result-object v13

    const/4 v0, 0x6

    const/16 v1, 0x8

    if-nez v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/MACAddressParseData;->isExtended()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_4

    :cond_2
    sget-object v2, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DOTTED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    if-ne v13, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/MACAddressParseData;->isExtended()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-gt v11, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/MACAddressParseData;->isExtended()Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v0

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    invoke-virtual {v10}, Linet/ipaddr/format/validate/AddressParseData;->isSingleSegment()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/MACAddressParseData;->isDoubleSegment()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    if-gt v11, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/MACAddressParseData;->isExtended()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/MACAddressParseData;->isExtended()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :goto_4
    sub-int/2addr v0, v11

    if-gtz v0, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v12, v1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegmentArray(I)[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v7

    move/from16 v16, v0

    move/from16 v17, v2

    const/4 v6, 0x0

    const/16 v18, 0x0

    :goto_6
    if-ge v6, v11, :cond_1e

    const/4 v0, 0x2

    invoke-virtual {v10, v6, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v4

    const/16 v1, 0xa

    invoke-virtual {v10, v6, v1}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v2

    sget-object v1, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DOTTED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    const-string v14, "ipaddress.error.invalid.joined.ranges"

    const/16 v15, 0xff

    if-ne v13, v1, :cond_b

    long-to-int v0, v4

    ushr-int/lit8 v4, v0, 0x8

    long-to-int v1, v2

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit16 v5, v0, 0xff

    and-int/lit16 v2, v1, 0xff

    if-eq v4, v3, :cond_a

    sub-int v0, v2, v5

    if-ne v0, v15, :cond_9

    goto :goto_7

    :cond_9
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v0, v9, v14}, Linet/ipaddr/IncompatibleAddressException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_7
    add-int/lit8 v14, v18, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v20, v2

    move v2, v4

    move v4, v15

    move v15, v5

    move-object v5, v10

    move/from16 v21, v6

    move-object v8, v7

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedMACAddress;->createSegment(Ljava/lang/CharSequence;IIZLinet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    aput-object v0, v8, v18

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v20

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedMACAddress;->createSegment(Ljava/lang/CharSequence;IIZLinet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    aput-object v0, v8, v14

    move/from16 v18, v14

    goto :goto_8

    :cond_b
    move/from16 v21, v6

    move-object v8, v7

    invoke-virtual {v10}, Linet/ipaddr/format/validate/AddressParseData;->isSingleSegment()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/MACAddressParseData;->isDoubleSegment()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    move/from16 v7, v21

    const/16 v19, 0x1

    goto/16 :goto_d

    :cond_d
    long-to-int v4, v4

    long-to-int v3, v2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v4

    move v4, v5

    move-object v5, v10

    move/from16 v6, v21

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedMACAddress;->createSegment(Ljava/lang/CharSequence;IIZLinet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    aput-object v0, v8, v18

    :goto_8
    move/from16 v14, v21

    if-nez v17, :cond_12

    invoke-virtual {v10, v14}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v0

    if-eqz v0, :cond_12

    add-int/lit8 v6, v14, 0x1

    :goto_9
    if-ge v6, v11, :cond_f

    invoke-virtual {v10, v6}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_c

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_f
    move/from16 v0, v16

    :goto_a
    add-int/lit8 v15, v0, -0x1

    if-lez v0, :cond_11

    sget-object v0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DOTTED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    if-ne v13, v0, :cond_10

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v5, v10

    move v6, v14

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedMACAddress;->createSegment(Ljava/lang/CharSequence;IIZLinet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    add-int/lit8 v1, v18, 0x1

    aput-object v0, v8, v1

    add-int/lit8 v18, v18, 0x2

    aput-object v0, v8, v18

    :goto_b
    move v0, v15

    goto :goto_a

    :cond_10
    add-int/lit8 v18, v18, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v5, v10

    move v6, v14

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedMACAddress;->createSegment(Ljava/lang/CharSequence;IIZLinet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    aput-object v0, v8, v18

    goto :goto_b

    :cond_11
    const/16 v17, 0x1

    :cond_12
    :goto_c
    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v22, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move v13, v14

    goto/16 :goto_15

    :goto_d
    add-int/lit8 v1, v11, -0x1

    if-ne v7, v1, :cond_13

    move/from16 v0, v16

    :cond_13
    sub-int v16, v16, v0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_14

    move/from16 v20, v19

    goto :goto_e

    :cond_14
    const/16 v20, 0x0

    :goto_e
    move/from16 v21, v18

    move/from16 v1, v19

    move/from16 v18, v0

    const/4 v0, 0x0

    :goto_f
    if-ltz v18, :cond_1d

    if-eqz v20, :cond_1a

    shl-int/lit8 v6, v18, 0x3

    move/from16 v22, v11

    move-object/from16 v23, v12

    ushr-long v11, v4, v6

    long-to-int v11, v11

    and-int/2addr v11, v15

    move-object/from16 v24, v13

    ushr-long v12, v2, v6

    long-to-int v6, v12

    and-int/2addr v6, v15

    if-eqz v0, :cond_16

    sub-int v0, v6, v11

    if-ne v0, v15, :cond_15

    goto :goto_10

    :cond_15
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v0, v9, v14}, Linet/ipaddr/IncompatibleAddressException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_10
    if-eq v11, v6, :cond_17

    move/from16 v0, v19

    goto :goto_11

    :cond_17
    const/4 v0, 0x0

    :goto_11
    if-nez v18, :cond_18

    int-to-long v12, v11

    cmp-long v12, v12, v4

    if-nez v12, :cond_18

    int-to-long v12, v6

    cmp-long v12, v12, v2

    if-eqz v12, :cond_19

    const/high16 v12, 0x80000

    invoke-virtual {v10, v7, v12}, Linet/ipaddr/format/validate/AddressParseData;->unsetFlag(II)V

    goto :goto_12

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_12
    move v12, v1

    move v13, v6

    move v6, v11

    move v11, v0

    goto :goto_14

    :cond_1a
    move/from16 v22, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    shl-int/lit8 v6, v18, 0x3

    shr-long v11, v4, v6

    long-to-int v6, v11

    and-int/2addr v6, v15

    if-nez v18, :cond_1c

    int-to-long v11, v6

    cmp-long v11, v11, v4

    if-eqz v11, :cond_1b

    goto :goto_13

    :cond_1b
    move v11, v0

    move v12, v1

    move v13, v6

    goto :goto_14

    :cond_1c
    :goto_13
    move v11, v0

    move v13, v6

    const/4 v12, 0x0

    :goto_14
    move-object/from16 v0, p0

    move-object v1, v9

    move-wide/from16 v25, v2

    move v2, v6

    move v3, v13

    move-wide/from16 v27, v4

    move v4, v12

    move-object v5, v10

    move v6, v7

    move v13, v7

    move-object/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedMACAddress;->createSegment(Ljava/lang/CharSequence;IIZLinet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    aput-object v0, v8, v21

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v18, v18, -0x1

    move v0, v11

    move v1, v12

    move v7, v13

    move/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    goto/16 :goto_f

    :cond_1d
    move/from16 v22, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move v13, v7

    move/from16 v18, v21

    :goto_15
    add-int/lit8 v6, v13, 0x1

    move-object v7, v8

    move/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v8, p0

    goto/16 :goto_6

    :cond_1e
    move-object v8, v7

    move-object v0, v12

    invoke-virtual {v0, v8}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    return-object v0
.end method

.method private createSegment(Ljava/lang/CharSequence;IIZLinet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/mac/MACAddressSegment;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">(",
            "Ljava/lang/CharSequence;",
            "IIZ",
            "Linet/ipaddr/format/validate/AddressParseData;",
            "I",
            "Linet/ipaddr/format/validate/ParsedAddressCreator<",
            "***TS;>;)TS;"
        }
    .end annotation

    if-eq p2, p3, :cond_0

    invoke-direct/range {p0 .. p7}, Linet/ipaddr/format/validate/ParsedMACAddress;->createRangeSegment(Ljava/lang/CharSequence;IIZLinet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p4, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p7, p2, p2, p1}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    :goto_0
    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/high16 p3, 0x40000

    invoke-virtual {p5, p6, p3}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v5

    const/4 p3, 0x6

    invoke-virtual {p5, p6, p3}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v6

    const/4 p3, 0x7

    invoke-virtual {p5, p6, p3}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v7

    move-object v0, p7

    move v1, p2

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentInternal(ILjava/lang/Integer;Ljava/lang/CharSequence;IZII)Linet/ipaddr/AddressSegment;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method private getMACAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedMACAddress;->originator:Linet/ipaddr/MACAddressString;

    invoke-virtual {v0}, Linet/ipaddr/MACAddressString;->getValidationOptions()Linet/ipaddr/MACAddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/MACAddressStringParameters;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createAddress()Linet/ipaddr/mac/MACAddress;
    .locals 3

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedMACAddress;->getMACAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedMACAddress;->createSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v1

    iget-object v2, p0, Linet/ipaddr/format/validate/ParsedMACAddress;->originator:Linet/ipaddr/MACAddressString;

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal(Linet/ipaddr/AddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddress;

    return-object v0
.end method

.method public getAddress()Linet/ipaddr/mac/MACAddress;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedMACAddress;->address:Linet/ipaddr/mac/MACAddress;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedMACAddress;->address:Linet/ipaddr/mac/MACAddress;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedMACAddress;->createAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedMACAddress;->address:Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->releaseSegmentData()V

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
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedMACAddress;->address:Linet/ipaddr/mac/MACAddress;

    return-object v0
.end method
