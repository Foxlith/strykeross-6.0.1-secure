.class public Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/SignerWithRecovery;


# static fields
.field public static final TRAILER_IMPLICIT:I = 0xbc

.field public static final TRAILER_RIPEMD128:I = 0x32cc

.field public static final TRAILER_RIPEMD160:I = 0x31cc

.field public static final TRAILER_SHA1:I = 0x33cc

.field public static final TRAILER_SHA256:I = 0x34cc

.field public static final TRAILER_SHA384:I = 0x36cc

.field public static final TRAILER_SHA512:I = 0x35cc

.field public static final TRAILER_WHIRLPOOL:I = 0x37cc


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private fullMessage:Z

.field private hLen:I

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private preBlock:[B

.field private preMStart:I

.field private preSig:[B

.field private preTLength:I

.field private random:Ljava/security/SecureRandom;

.field private recoveredMessage:[B

.field private saltLength:I

.field private standardSalt:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    iput p3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    if-eqz p4, :cond_0

    const/16 p1, 0xbc

    :goto_0
    iput p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "no valid trailer for digest: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ItoOSP(I[B)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    const/4 v0, 0x3

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    return-void
.end method

.method private LtoOSP(J[B)V
    .locals 2

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p3, v1

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p3, v1

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p3, v1

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p3, v1

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p3, v1

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, p3, v1

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x6

    aput-byte v0, p3, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, p3, p2

    return-void
.end method

.method private clearBlock([B)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isSameAs([B[B)Z
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v1, v2

    :goto_1
    array-length v3, p2

    if-eq v1, v3, :cond_2

    aget-byte v3, p1, v1

    aget-byte v4, p2, v1

    if-eq v3, v4, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8

    new-array v0, p4, [B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v3, v2, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->reset()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    div-int v7, p4, v6

    if-ge v5, v7, :cond_0

    invoke-direct {p0, v5, v3}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v3, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v1, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int v7, v5, v6

    invoke-static {v1, v4, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    mul-int/2addr v6, v5

    if-ge v6, p4, :cond_1

    invoke-direct {p0, v5, v3}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v3, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v1, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int p2, v5, p1

    mul-int/2addr v5, p1

    sub-int/2addr p4, v5

    invoke-static {v1, v4, v0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/16 v2, 0x8

    new-array v4, v2, [B

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    invoke-direct {p0, v5, v6, v4}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v4, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-interface {v2, v4, v3, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v2, v1, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v5, 0xbc

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v9, v8

    iget v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    sub-int/2addr v9, v10

    array-length v11, v0

    sub-int/2addr v9, v11

    iget v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v9, v11

    sub-int/2addr v9, v4

    add-int/lit8 v11, v9, -0x1

    aput-byte v7, v8, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-static {v11, v3, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/2addr v9, v10

    array-length v10, v0

    invoke-static {v0, v3, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v0, v0

    iget v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v0, v8

    sub-int/2addr v0, v4

    invoke-direct {p0, v2, v3, v1, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v0

    move v1, v3

    :goto_2
    array-length v8, v0

    if-eq v1, v8, :cond_2

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aget-byte v9, v8, v1

    aget-byte v10, v0, v1

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v1, v0

    iget v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v1, v8

    sub-int/2addr v1, v4

    invoke-static {v2, v3, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v1, v0

    sub-int/2addr v1, v7

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v2, v1

    sub-int/2addr v2, v6

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    array-length v2, v1

    sub-int/2addr v2, v7

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v5, v4

    if-gt v1, v5, :cond_4

    goto :goto_4

    :cond_4
    move v7, v3

    :goto_4
    iput-boolean v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    array-length v1, v2

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    iput v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    return-object v0
.end method

.method public getRecoveredMessage()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_1

    :cond_0
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithSalt;

    if-eqz v1, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithSalt;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->getSalt()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v0, p2

    array-length p2, p2

    iget v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fixed salt is of wrong length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p2, p1, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v1, 0xbc

    array-length p1, p1

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x3

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->reset()V

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    :cond_1
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-eqz v0, :cond_2

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    :cond_2
    return-void
.end method

.method public update(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    aput-byte p1, v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    :goto_0
    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v0, :cond_0

    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_1
    return-void
.end method

.method public updateWithRecoveredMessage([B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    .line 11
    .line 12
    add-int/lit8 v4, v3, 0x7

    .line 13
    .line 14
    div-int/lit8 v4, v4, 0x8

    .line 15
    .line 16
    if-ge v1, v4, :cond_0

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x7

    .line 19
    .line 20
    div-int/lit8 v3, v3, 0x8

    .line 21
    .line 22
    new-array v1, v3, [B

    .line 23
    .line 24
    array-length v4, v0

    .line 25
    sub-int/2addr v3, v4

    .line 26
    array-length v4, v0

    .line 27
    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 31
    .line 32
    .line 33
    move-object v0, v1

    .line 34
    :cond_0
    array-length v1, v0

    .line 35
    const/4 v3, 0x1

    .line 36
    sub-int/2addr v1, v3

    .line 37
    aget-byte v1, v0, v1

    .line 38
    .line 39
    and-int/lit16 v1, v1, 0xff

    .line 40
    .line 41
    xor-int/lit16 v1, v1, 0xbc

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    move v4, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    array-length v1, v0

    .line 48
    const/4 v4, 0x2

    .line 49
    sub-int/2addr v1, v4

    .line 50
    aget-byte v1, v0, v1

    .line 51
    .line 52
    and-int/lit16 v1, v1, 0xff

    .line 53
    .line 54
    shl-int/lit8 v1, v1, 0x8

    .line 55
    .line 56
    array-length v5, v0

    .line 57
    sub-int/2addr v5, v3

    .line 58
    aget-byte v5, v0, v5

    .line 59
    .line 60
    and-int/lit16 v5, v5, 0xff

    .line 61
    .line 62
    or-int/2addr v1, v5

    .line 63
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 64
    .line 65
    invoke-static {v5}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-eqz v5, :cond_9

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eq v1, v5, :cond_3

    .line 76
    .line 77
    const/16 v6, 0x3acc

    .line 78
    .line 79
    if-ne v5, v6, :cond_2

    .line 80
    .line 81
    const/16 v5, 0x40cc

    .line 82
    .line 83
    if-ne v1, v5, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string v0, "signer initialised with wrong digest for trailer "

    .line 89
    .line 90
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_3
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    .line 99
    .line 100
    new-array v1, v1, [B

    .line 101
    .line 102
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 103
    .line 104
    invoke-interface {v5, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 105
    .line 106
    .line 107
    array-length v1, v0

    .line 108
    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    .line 109
    .line 110
    sub-int/2addr v1, v5

    .line 111
    sub-int/2addr v1, v4

    .line 112
    array-length v6, v0

    .line 113
    sub-int/2addr v6, v5

    .line 114
    sub-int/2addr v6, v4

    .line 115
    invoke-direct {p0, v0, v1, v5, v6}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    move v5, v2

    .line 120
    :goto_1
    array-length v6, v1

    .line 121
    if-eq v5, v6, :cond_4

    .line 122
    .line 123
    aget-byte v6, v0, v5

    .line 124
    .line 125
    aget-byte v7, v1, v5

    .line 126
    .line 127
    xor-int/2addr v6, v7

    .line 128
    int-to-byte v6, v6

    .line 129
    aput-byte v6, v0, v5

    .line 130
    .line 131
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    aget-byte v5, v0, v2

    .line 135
    .line 136
    and-int/lit8 v5, v5, 0x7f

    .line 137
    .line 138
    int-to-byte v5, v5

    .line 139
    aput-byte v5, v0, v2

    .line 140
    .line 141
    move v5, v2

    .line 142
    :goto_2
    array-length v6, v0

    .line 143
    if-eq v5, v6, :cond_6

    .line 144
    .line 145
    aget-byte v6, v0, v5

    .line 146
    .line 147
    if-ne v6, v3, :cond_5

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    :goto_3
    add-int/2addr v5, v3

    .line 154
    array-length v6, v0

    .line 155
    if-lt v5, v6, :cond_7

    .line 156
    .line 157
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 158
    .line 159
    .line 160
    :cond_7
    if-le v5, v3, :cond_8

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    move v3, v2

    .line 164
    :goto_4
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 165
    .line 166
    array-length v1, v1

    .line 167
    sub-int/2addr v1, v5

    .line 168
    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    .line 169
    .line 170
    sub-int/2addr v1, v3

    .line 171
    new-array v1, v1, [B

    .line 172
    .line 173
    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 174
    .line 175
    array-length v3, v1

    .line 176
    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 180
    .line 181
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    .line 182
    .line 183
    array-length v6, v1

    .line 184
    invoke-static {v1, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    .line 188
    .line 189
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    .line 190
    .line 191
    iput v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preMStart:I

    .line 192
    .line 193
    iput v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preTLength:I

    .line 194
    .line 195
    return-void

    .line 196
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    const-string v0, "unrecognised hash in signature"

    .line 199
    .line 200
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p1
.end method

.method public verifySignature([B)Z
    .locals 9

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->updateWithRecoveredMessage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    invoke-static {v2, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    iget v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preMStart:I

    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preTLength:I

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    iput-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    const/16 v5, 0x8

    new-array v6, v5, [B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v7, v7

    mul-int/2addr v7, v5

    int-to-long v7, v7

    invoke-direct {p0, v7, v8, v6}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v6, v3, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v6, v5

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v7, v5

    invoke-interface {v6, v5, v3, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v1, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v1, v1

    add-int/2addr v2, v1

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v2, p1

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    :goto_2
    if-eq v5, v0, :cond_4

    aget-byte v7, v1, v5

    add-int v8, v2, v5

    aget-byte v8, p1, v8

    if-eq v7, v8, :cond_3

    move v6, v3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    if-nez v6, :cond_5

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    iput v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    return v3

    :cond_5
    iget p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->isSameAs([B[B)Z

    move-result p1

    if-nez p1, :cond_6

    iput v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    return v3

    :cond_6
    iput v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    return v4

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "updateWithRecoveredMessage called on different signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
