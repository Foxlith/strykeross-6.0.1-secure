.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sha256Engine"
.end annotation


# instance fields
.field private final digestBuf:[B

.field private final hmacBuf:[B

.field private final mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

.field private final msgDigest:Lorg/bouncycastle/crypto/Digest;

.field private final padding:[B

.field private final treeDigest:Lorg/bouncycastle/crypto/Digest;

.field private final treeHMac:Lorg/bouncycastle/crypto/macs/HMac;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;-><init>(ZIIIIII)V

    const/16 p1, 0x40

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->padding:[B

    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    const/16 p3, 0x20

    if-ne p2, p3, :cond_0

    new-instance p2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    new-instance p2, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance p2, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    goto :goto_1

    :cond_0
    new-instance p2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    new-instance p2, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance p2, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->digestBuf:[B

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->hmacBuf:[B

    return-void
.end method

.method private compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [B

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v2, 0x8

    invoke-static {v1, v2, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v2, 0x13

    const/16 v3, 0x9

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0xa

    const/16 v2, 0xc

    const/16 v3, 0x14

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 3

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p2

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->robust:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->bitmask256([B[B)[B

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->padding:[B

    array-length p1, p1

    rsub-int/lit8 p1, p1, 0x40

    invoke-interface {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v0, p2

    invoke-interface {p1, p2, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length p2, p3

    invoke-interface {p1, p3, v2, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->digestBuf:[B

    invoke-interface {p1, p2, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->digestBuf:[B

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    invoke-static {p1, v2, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B
    .locals 2

    invoke-static {p3, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p3

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p2

    iget-boolean p4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->robust:Z

    if-eqz p4, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p4

    invoke-virtual {p0, p4, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->bitmask256([B[B)[B

    move-result-object p3

    :cond_0
    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p4, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->padding:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    rsub-int/lit8 v0, v0, 0x40

    invoke-interface {p1, p4, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length p4, p2

    invoke-interface {p1, p2, v1, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length p2, p3

    invoke-interface {p1, p3, v1, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->digestBuf:[B

    invoke-interface {p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->digestBuf:[B

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
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

    new-array v6, v6, [B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v9, p1

    const/4 v10, 0x0

    invoke-interface {v8, p1, v10, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v9, p2

    invoke-interface {v8, p2, v10, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v9, p3

    invoke-interface {v8, p3, v10, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v8, p4

    invoke-interface {p3, p4, v10, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p3, v7, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {p1, p2, v7}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->bitmask([B[B)[B

    move-result-object p1

    new-array p2, v1, [B

    rsub-int/lit8 p3, v5, 0x8

    invoke-static {p1, v0, p2, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v10}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p2

    rsub-int/lit8 p4, v2, 0x40

    const-wide/16 v1, -0x1

    ushr-long/2addr v1, p4

    and-long/2addr p2, v1

    const/4 p4, 0x4

    new-array p4, p4, [B

    add-int/2addr v5, v0

    rsub-int/lit8 v1, v4, 0x4

    invoke-static {p1, v5, p4, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4, v10}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p4

    rsub-int/lit8 v1, v3, 0x20

    const/4 v2, -0x1

    ushr-int v1, v2, v1

    and-int/2addr p4, v1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    invoke-static {p1, v10, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v1, p2, p3, p4, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;-><init>(JI[B)V

    return-object v1
.end method

.method public PRF([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 4

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    invoke-interface {p2, p1, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->digestBuf:[B

    invoke-interface {p1, p2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->digestBuf:[B

    invoke-static {p1, v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public PRF_msg([B[B[B)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length p2, p3

    invoke-virtual {p1, p3, v1, p2}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->hmacBuf:[B

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->hmacBuf:[B

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 3

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p2

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->robust:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->bitmask256([B[B)[B

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->padding:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    rsub-int/lit8 v1, v1, 0x40

    invoke-interface {p1, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v0, p2

    invoke-interface {p1, p2, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    array-length p2, p3

    invoke-interface {p1, p3, v2, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->digestBuf:[B

    invoke-interface {p1, p2, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->digestBuf:[B

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    invoke-static {p1, v2, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public bitmask([B[B)[B
    .locals 4

    array-length v0, p2

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v3, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v3, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    :goto_0
    array-length p1, p2

    if-ge v2, p1, :cond_0

    aget-byte p1, v1, v2

    aget-byte v0, p2, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public bitmask256([B[B)[B
    .locals 4

    array-length v0, p2

    new-array v1, v0, [B

    new-instance v2, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v3, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v3, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    const/4 p1, 0x0

    invoke-virtual {v2, v1, p1, v0}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget-byte v0, v1, p1

    aget-byte v2, p2, p1

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
