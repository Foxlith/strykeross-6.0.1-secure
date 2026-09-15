.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

.field final htPubKey:[B

.field private final pkSeed:[B

.field private final skSeed:[B

.field wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_PKgen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->htPubKey:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->htPubKey:[B

    :goto_0
    return-void
.end method


# virtual methods
.method public sign([BJI)[B
    .locals 17

    move-object/from16 v6, p0

    move-wide/from16 v7, p2

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v9, v7, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p4

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v2

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    new-array v12, v11, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    aput-object v2, v12, v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v9, v7, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    const/4 v13, 0x1

    move-object v14, v0

    move v15, v13

    :goto_0
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    if-ge v15, v1, :cond_1

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    shl-int v1, v13, v0

    sub-int/2addr v1, v13

    int-to-long v1, v1

    and-long/2addr v1, v7

    long-to-int v5, v1

    ushr-long/2addr v7, v0

    invoke-virtual {v9, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v9, v7, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move-object/from16 v0, p0

    move-object v1, v14

    move v3, v5

    move/from16 v16, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v2

    aput-object v2, v12, v15

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    sub-int/2addr v0, v13

    if-ge v15, v0, :cond_0

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v3, v14

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v14

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v11, [[B

    :goto_1
    if-eq v10, v11, :cond_2

    aget-object v1, v12, v10

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->sig:[B

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->auth:[[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    aput-object v1, v0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 8

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

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    add-int v4, p2, v3

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {v5, p1, p4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->pkGen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

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

    move-result v7

    if-ne v4, v7, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    invoke-virtual {p5, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    invoke-virtual {v7, p4, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

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

.method public verify([B[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[BJI[B)Z
    .locals 7

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    const/4 v0, 0x0

    aget-object v2, p2, v0

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v6, p4, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    move-object v0, p0

    move v1, p6

    move-object v3, p1

    move-object v4, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p1

    const/4 p6, 0x1

    move-object v3, p1

    move p1, p6

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    if-ge p1, v1, :cond_0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    shl-int v1, p6, v0

    sub-int/2addr v1, p6

    int-to-long v1, v1

    and-long/2addr v1, p4

    long-to-int v1, v1

    ushr-long/2addr p4, v0

    aget-object v2, p2, p1

    invoke-virtual {v6, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v6, p4, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    move-object v0, p0

    move-object v4, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p7, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public xmss_PKgen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p1

    return-object p1
.end method

.method public xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    const/4 p5, 0x0

    invoke-virtual {v0, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->getWOTSSig()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->getXMSSAUTH()[[B

    move-result-object p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {v2, v1, p3, p4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->pkFromSig([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    if-ge p5, v2, :cond_1

    add-int/lit8 v2, p5, 0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    const/4 v3, 0x1

    shl-int v4, v3, p5

    div-int v4, p1, v4

    rem-int/2addr v4, v1

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v3

    div-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object p5, p2, p5

    invoke-virtual {v3, p4, v0, p3, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object p3

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object p5, p2, p5

    invoke-virtual {v3, p4, v0, p5, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object p3

    :goto_1
    move p5, v2

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    new-array v0, v0, [[B

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    if-ge v8, v2, :cond_0

    const/4 v2, 0x1

    shl-int v3, v2, v8

    div-int v4, p3, v3

    xor-int/2addr v2, v4

    mul-int v4, v2, v3

    move-object v2, p0

    move-object v3, p2

    move v5, v8

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v2

    aput-object v2, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v2, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {p3, p1, p2, p4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;-><init>([B[[B)V

    return-object p2
.end method
