.class Ljcifs/netbios/NodeStatusResponse;
.super Ljcifs/netbios/NameServicePacket;
.source "SourceFile"


# instance fields
.field addressArray:[Ljcifs/netbios/NbtAddress;

.field private macAddress:[B

.field private numberOfNames:I

.field private queryAddress:Ljcifs/netbios/NbtAddress;

.field private stats:[B


# direct methods
.method public constructor <init>(Ljcifs/netbios/NbtAddress;)V
    .locals 0

    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    new-instance p1, Ljcifs/netbios/Name;

    invoke-direct {p1}, Ljcifs/netbios/Name;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    const/4 p1, 0x6

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    return-void
.end method

.method private readNodeNameArray([BI)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    new-array v2, v2, [Ljcifs/netbios/NbtAddress;

    iput-object v2, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    iget-object v2, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v2, v2, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v2, v2, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    move/from16 v5, p2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    :try_start_0
    iget v7, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    if-ge v4, v7, :cond_9

    add-int/lit8 v7, v5, 0xe

    :goto_1
    aget-byte v8, v1, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/lang/String;

    sub-int/2addr v7, v5

    const/4 v9, 0x1

    add-int/2addr v7, v9

    sget-object v10, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v8, v1, v5, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v7, v5, 0xf

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v5, 0x10

    aget-byte v10, v1, v10

    and-int/lit16 v11, v10, 0x80

    const/16 v12, 0x80

    if-ne v11, v12, :cond_1

    move v11, v9

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    and-int/lit8 v12, v10, 0x60

    shr-int/lit8 v12, v12, 0x5

    and-int/lit8 v13, v10, 0x10

    const/16 v14, 0x10

    if-ne v13, v14, :cond_2

    move v15, v9

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    :goto_3
    and-int/lit8 v13, v10, 0x8

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3

    move v14, v9

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    :goto_4
    and-int/lit8 v13, v10, 0x4

    const/4 v3, 0x4

    if-ne v13, v3, :cond_4

    move v3, v9

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    and-int/lit8 v10, v10, 0x2

    const/4 v13, 0x2

    if-ne v10, v13, :cond_5

    move v10, v9

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    :goto_6
    if-nez v6, :cond_8

    iget-object v13, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v13, v13, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v9, v13, Ljcifs/netbios/Name;->hexCode:I

    if-ne v9, v7, :cond_8

    sget-object v9, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-eq v13, v9, :cond_6

    iget-object v13, v13, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_6
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v13, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    if-ne v13, v9, :cond_7

    new-instance v9, Ljcifs/netbios/Name;

    invoke-direct {v9, v8, v7, v2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    :cond_7
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v11, v6, Ljcifs/netbios/NbtAddress;->groupName:Z

    iput v12, v6, Ljcifs/netbios/NbtAddress;->nodeType:I

    iput-boolean v15, v6, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    iput-boolean v14, v6, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    iput-boolean v3, v6, Ljcifs/netbios/NbtAddress;->isActive:Z

    iput-boolean v10, v6, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    iput-object v3, v6, Ljcifs/netbios/NbtAddress;->macAddress:[B

    const/4 v3, 0x1

    iput-boolean v3, v6, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    iget-object v7, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    aput-object v6, v7, v4

    move v6, v3

    goto :goto_7

    :cond_8
    iget-object v9, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    new-instance v23, Ljcifs/netbios/NbtAddress;

    new-instance v13, Ljcifs/netbios/Name;

    invoke-direct {v13, v8, v7, v2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v7, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget v7, v7, Ljcifs/netbios/NbtAddress;->address:I

    iget-object v8, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    move-object/from16 v16, v13

    move-object/from16 v13, v23

    move/from16 v19, v14

    move-object/from16 v14, v16

    move/from16 v18, v15

    move v15, v7

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v20, v3

    move/from16 v21, v10

    move-object/from16 v22, v8

    invoke-direct/range {v13 .. v22}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    aput-object v23, v9, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v5, v5, 0x12

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    :cond_9
    sub-int v5, v5, p2

    return v5
.end method


# virtual methods
.method public readBodyWireFormat([BI)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readResourceRecordWireFormat([BI)I

    move-result p1

    return p1
.end method

.method public readRDataWireFormat([BI)I
    .locals 6

    aget-byte v0, p1, p2

    and-int/lit16 v1, v0, 0xff

    mul-int/lit8 v1, v1, 0x12

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, p2, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    add-int/2addr v1, v3

    iget-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1, v3}, Ljcifs/netbios/NodeStatusResponse;->readNodeNameArray([BI)I

    move-result v0

    add-int/2addr v3, v0

    new-array v0, v2, [B

    iput-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->stats:[B

    invoke-static {p1, v3, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v2

    sub-int/2addr v3, p2

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "NodeStatusResponse["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 15
    .line 16
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public writeBodyWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeRDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
