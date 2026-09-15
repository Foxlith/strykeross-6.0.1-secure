.class Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FORS_ROOTS:I = 0x4

.field public static final FORS_TREE:I = 0x3

.field static final OFFSET_CHAIN_ADDR:I = 0x18

.field static final OFFSET_HASH_ADDR:I = 0x1c

.field static final OFFSET_KP_ADDR:I = 0x14

.field static final OFFSET_LAYER:I = 0x0

.field static final OFFSET_TREE:I = 0x4

.field static final OFFSET_TREE_HGT:I = 0x18

.field static final OFFSET_TREE_INDEX:I = 0x1c

.field static final OFFSET_TYPE:I = 0x10

.field public static final TREE:I = 0x2

.field public static final WOTS_HASH:I = 0x0

.field public static final WOTS_PK:I = 0x1


# instance fields
.field final value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getKeyPairAddress()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method public getLayerAddress()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method public getTreeAddress()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTreeHeight()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method public getTreeIndex()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method public setChainAddress(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x18

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method public setHashAddress(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x1c

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method public setKeyPairAddress(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x14

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method public setLayerAddress(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method public setTreeAddress(J)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x8

    invoke-static {p1, p2, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method

.method public setTreeHeight(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x18

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method public setTreeIndex(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x1c

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method public setType(I)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {p1, v2, v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    return-void
.end method
