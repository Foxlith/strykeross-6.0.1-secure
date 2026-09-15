.class Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

.field private final wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    return-void
.end method

.method public static message_to_idxs([BII)[I
    .locals 8

    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_1

    aput v1, v0, v2

    move v4, v1

    :goto_1
    if-ge v4, p2, :cond_0

    aget v5, v0, v2

    shr-int/lit8 v6, v3, 0x3

    aget-byte v6, p0, v6

    and-int/lit8 v7, v3, 0x7

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x1

    shl-int/2addr v6, v4

    xor-int/2addr v5, v6

    aput v5, v0, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public pkFromSig([Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x2

    new-array v4, v3, [[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    new-array v7, v6, [[B

    iget v8, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T:I

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    move-object/from16 v9, p2

    invoke-static {v9, v6, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->message_to_idxs([BII)[I

    move-result-object v5

    const/4 v6, 0x0

    move v9, v6

    :goto_0
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    if-ge v9, v10, :cond_2

    aget v10, v5, v9

    aget-object v11, p1, v9

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->getSK()[B

    move-result-object v11

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    mul-int v12, v9, v8

    add-int/2addr v12, v10

    invoke-virtual {v2, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v13, v1, v2, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v11

    aput-object v11, v4, v6

    aget-object v11, p1, v9

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->getAuthPath()[[B

    move-result-object v11

    invoke-virtual {v2, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    move v12, v6

    :goto_1
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    if-ge v12, v13, :cond_1

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v2, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    const/4 v14, 0x1

    shl-int v15, v14, v12

    div-int v15, v10, v15

    rem-int/2addr v15, v3

    if-nez v15, :cond_0

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v15

    div-int/2addr v15, v3

    invoke-virtual {v2, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object v3, v4, v6

    aget-object v12, v11, v12

    invoke-virtual {v15, v1, v2, v3, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v3

    aput-object v3, v4, v14

    goto :goto_2

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v3

    sub-int/2addr v3, v14

    const/4 v15, 0x2

    div-int/2addr v3, v15

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object v12, v11, v12

    aget-object v15, v4, v6

    invoke-virtual {v3, v1, v2, v12, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v3

    aput-object v3, v4, v14

    :goto_2
    aget-object v3, v4, v14

    aput-object v3, v4, v6

    move v12, v13

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    aget-object v3, v4, v6

    aput-object v3, v7, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-static {v7}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v1

    return-object v1
.end method

.method public pkGen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 11

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    new-array v1, v1, [[B

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v4, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    if-ge v2, v4, :cond_0

    iget v4, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T:I

    mul-int v7, v2, v4

    iget v8, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    move-object v5, p0

    move-object v6, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    move-object/from16 v2, p1

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->message_to_idxs([BII)[I

    move-result-object v8

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    new-array v9, v1, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T:I

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    if-ge v12, v0, :cond_1

    aget v13, v8, v12

    invoke-virtual {v7, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    mul-int v14, v12, v10

    add-int v0, v14, v13

    invoke-virtual {v7, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-object/from16 v15, p2

    invoke-virtual {v0, v15, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v5

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    new-array v4, v0, [[B

    move v3, v11

    :goto_1
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    if-ge v3, v0, :cond_0

    const/4 v0, 0x1

    shl-int v1, v0, v3

    div-int v2, v13, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    add-int v2, v0, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v16, v3

    move-object v11, v4

    move-object/from16 v4, p3

    move-object v6, v5

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    aput-object v0, v11, v16

    add-int/lit8 v3, v16, 0x1

    move-object v5, v6

    move-object v4, v11

    const/4 v11, 0x0

    move-object/from16 v6, p0

    goto :goto_1

    :cond_0
    move-object v11, v4

    move-object v6, v5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    invoke-direct {v0, v6, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;-><init>([B[[B)V

    aput-object v0, v9, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method public treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 7

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    new-instance p5, Ljava/util/LinkedList;

    invoke-direct {p5}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x1

    shl-int p3, v1, p3

    rem-int v2, p2, p3

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    add-int v4, p2, v3

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v5, p1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v6, p4, v0, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    :goto_1
    invoke-virtual {p5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeHeight:I

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v6

    if-ne v4, v6, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    invoke-virtual {p5, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    invoke-virtual {v6, p4, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;-><init>([BI)V

    invoke-virtual {p5, v2, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    return-object p1
.end method
