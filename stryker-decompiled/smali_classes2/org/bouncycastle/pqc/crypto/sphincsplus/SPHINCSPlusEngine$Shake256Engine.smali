.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shake256Engine"
.end annotation


# instance fields
.field private final treeDigest:Lorg/bouncycastle/crypto/Xof;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;-><init>(ZIIIIII)V

    new-instance p1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 p2, 0x100

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    return-void
.end method


# virtual methods
.method public F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->robust:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object p3

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v2, p2

    invoke-interface {p1, p2, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p3

    invoke-interface {p1, p3, v4, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v1
.end method

.method public H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B
    .locals 4

    invoke-static {p3, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p3

    iget-boolean p4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->robust:Z

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object p3

    :cond_0
    iget p4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v0, p4, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v1, p2

    invoke-interface {p1, p2, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p3

    invoke-interface {p1, p3, v3, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v0, v3, p4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v0
.end method

.method public H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    const/16 v1, 0x8

    div-int/2addr v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    div-int v3, v2, v3

    sub-int/2addr v2, v3

    add-int/lit8 v4, v3, 0x7

    div-int/2addr v4, v1

    add-int/lit8 v5, v2, 0x7

    div-int/2addr v5, v1

    add-int v6, v0, v4

    add-int/2addr v6, v5

    new-array v7, v6, [B

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v9, p1

    const/4 v10, 0x0

    invoke-interface {v8, p1, v10, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v8, p2

    invoke-interface {p1, p2, v10, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p3

    invoke-interface {p1, p3, v10, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p4

    invoke-interface {p1, p4, v10, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v7, v10, v6}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array p1, v1, [B

    rsub-int/lit8 p2, v5, 0x8

    invoke-static {v7, v0, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v10}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    rsub-int/lit8 p3, v2, 0x40

    const-wide/16 v1, -0x1

    ushr-long p3, v1, p3

    and-long/2addr p1, p3

    const/4 p3, 0x4

    new-array p3, p3, [B

    add-int/2addr v5, v0

    rsub-int/lit8 p4, v4, 0x4

    invoke-static {v7, v5, p3, p4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3, v10}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p3

    rsub-int/lit8 p4, v3, 0x20

    const/4 v1, -0x1

    ushr-int p4, v1, p4

    and-int/2addr p3, p4

    new-instance p4, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    invoke-static {v7, v10, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p4, p1, p2, p3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;-><init>(JI[B)V

    return-object p4
.end method

.method public PRF([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v0, p2

    invoke-interface {p1, p2, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array p2, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p2, v2, p1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object p2
.end method

.method public PRF_msg([B[B[B)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v0, p2

    invoke-interface {p1, p2, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p3

    invoke-interface {p1, p3, v2, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array p2, p1, [B

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p3, p2, v2, p1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object p2
.end method

.method public T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->robust:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object p3

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v2, p2

    invoke-interface {p1, p2, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p3

    invoke-interface {p1, p3, v4, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v1
.end method

.method public bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 5

    array-length v0, p3

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v2, p2

    invoke-interface {p1, p2, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    :goto_0
    array-length p1, p3

    if-ge v4, p1, :cond_0

    aget-byte p1, v1, v4

    aget-byte p2, p3, v4

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
