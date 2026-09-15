.class public Lorg/bouncycastle/crypto/engines/EthereumIESEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;
    }
.end annotation


# instance fields
.field private IV:[B

.field V:[B

.field agree:Lorg/bouncycastle/crypto/BasicAgreement;

.field cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field commonMac:[B

.field forEncryption:Z

.field kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

.field private keyParser:Lorg/bouncycastle/crypto/KeyParser;

.field mac:Lorg/bouncycastle/crypto/Mac;

.field macBuf:[B

.field param:Lorg/bouncycastle/crypto/params/IESParameters;

.field privParam:Lorg/bouncycastle/crypto/CipherParameters;

.field pubParam:Lorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->macBuf:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->commonMac:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;[BLorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->macBuf:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->commonMac:[B

    iput-object p5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method private decryptBlock([BII)[B
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    add-int/2addr v1, v0

    if-lt p3, v1, :cond_9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v0, v0

    sub-int v0, p3, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    sub-int/2addr v0, v2

    new-array v2, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v4, v3, [B

    add-int v5, v0, v3

    new-array v6, v5, [B

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v7, v6, v1, v5}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    invoke-static {v6, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-array v3, v0, [B

    move v5, v1

    :goto_1
    if-eq v5, v0, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v6, v6

    add-int/2addr v6, p2

    add-int/2addr v6, v5

    aget-byte v6, p1, v6

    aget-byte v7, v2, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v4, v3, [B

    add-int v5, v0, v3

    new-array v6, v5, [B

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v7, v6, v1, v5}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    if-eqz v2, :cond_3

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, v3

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2, v1, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v2, v2

    sub-int v2, p3, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v3, v0, [B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v2, v0

    add-int v7, p2, v2

    array-length v0, v0

    sub-int v0, p3, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    sub-int v8, v0, v2

    const/4 v10, 0x0

    move-object v6, p1

    move-object v9, v3

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v2

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v5, v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->getLengthTag([B)[B

    move-result-object v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    add-int v6, p2, p3

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {p1, v7, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    array-length v7, v6

    new-array v8, v7, [B

    new-instance v9, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v9}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-interface {v9}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    new-array v10, v10, [B

    invoke-interface {v9}, Lorg/bouncycastle/crypto/Digest;->reset()V

    array-length v11, v4

    invoke-interface {v9, v4, v1, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v9, v10, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    new-instance v9, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v9, v10}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v4, v9}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    array-length v10, v9

    invoke-interface {v4, v9, v1, v10}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v10, v9

    add-int/2addr p2, v10

    array-length v9, v9

    sub-int/2addr p3, v9

    sub-int/2addr p3, v7

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    if-eqz v2, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length p2, v2

    invoke-interface {p1, v2, v1, p2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length p1, p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length p2, v5

    invoke-interface {p1, v5, v1, p2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_6
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->commonMac:[B

    array-length p3, p2

    invoke-interface {p1, p2, v1, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1, v8, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    invoke-static {v6, v8}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-nez p1, :cond_7

    return-object v3

    :cond_7
    invoke-virtual {p1, v3, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {v3, v1, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "length of input must be greater than the MAC and V combined"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encryptBlock([BII)[B
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, p3, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v3, v2, [B

    add-int v4, p3, v2

    new-array v5, v4, [B

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v6, v5, v1, v4}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    invoke-static {v5, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {v5, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, p3, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-array v2, p3, [B

    move v4, v1

    :goto_1
    if-eq v4, p3, :cond_3

    add-int v5, p2, v4

    aget-byte v5, p1, v5

    aget-byte v6, v0, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v4, v3, [B

    add-int v5, v0, v3

    new-array v6, v5, [B

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v7, v6, v1, v5}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v6, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v6, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    invoke-direct {v5, v6, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    :goto_2
    invoke-virtual {v0, v3, v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v2, v0, [B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v10, 0x0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v9, v2

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p2, v2, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p2

    add-int p3, p2, p1

    move-object v3, v4

    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length p2, p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->getLengthTag([B)[B

    move-result-object p2

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v4, v0, [B

    new-instance v5, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v6, v6, [B

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->reset()V

    array-length v7, v3

    invoke-interface {v5, v3, v1, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v5, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v3, v5}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    array-length v6, v5

    invoke-interface {v3, v5, v1, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v5, v2

    invoke-interface {v3, v2, v1, v5}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    if-eqz p1, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v5, p1

    invoke-interface {v3, p1, v1, v5}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length p1, p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v3, p2

    invoke-interface {p1, p2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_6
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->commonMac:[B

    array-length v3, p2

    invoke-interface {p1, p2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1, v4, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length p2, p1

    add-int/2addr p2, p3

    add-int/2addr p2, v0

    new-array p2, p2, [B

    array-length v3, p1

    invoke-static {p1, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length p1, p1

    invoke-static {v2, v1, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length p1, p1

    add-int/2addr p1, p3

    invoke-static {v4, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method private extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    :goto_0
    check-cast p1, Lorg/bouncycastle/crypto/params/IESParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-object v0
.end method

.method public getLengthTag([B)[B
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    if-eqz p1, :cond_0

    array-length p1, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const/4 p1, 0x0

    invoke-static {v1, v2, v0, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/KeyParser;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->forEncryption:Z

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->forEncryption:Z

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->forEncryption:Z

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBlock([BII)[B
    .locals 4

    .line 1
    const-string v0, "unable to recover ephemeral public key: "

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->forEncryption:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/bouncycastle/crypto/EphemeralKeyPair;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 37
    .line 38
    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    .line 42
    .line 43
    invoke-interface {v2, v1}, Lorg/bouncycastle/crypto/KeyParser;->readKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    sub-int v0, p3, v0

    .line 54
    .line 55
    add-int/2addr v0, p2

    .line 56
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :goto_0
    new-instance p2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 68
    .line 69
    new-instance p3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw p2

    .line 89
    :goto_1
    new-instance p2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 90
    .line 91
    new-instance p3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw p2

    .line 104
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 105
    .line 106
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 107
    .line 108
    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 112
    .line 113
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 114
    .line 115
    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 120
    .line 121
    invoke-interface {v1}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v1, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    .line 130
    .line 131
    array-length v2, v1

    .line 132
    const/4 v3, 0x0

    .line 133
    if-eqz v2, :cond_2

    .line 134
    .line 135
    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 140
    .line 141
    .line 142
    move-object v0, v1

    .line 143
    :cond_2
    :try_start_1
    new-instance v1, Lorg/bouncycastle/crypto/params/KDFParameters;

    .line 144
    .line 145
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    .line 146
    .line 147
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getDerivationV()[B

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 155
    .line 156
    invoke-interface {v2, v1}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 157
    .line 158
    .line 159
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->forEncryption:Z

    .line 160
    .line 161
    if-eqz v1, :cond_3

    .line 162
    .line 163
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->encryptBlock([BII)[B

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    goto :goto_3

    .line 168
    :catchall_0
    move-exception p1

    .line 169
    goto :goto_4

    .line 170
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->decryptBlock([BII)[B

    .line 171
    .line 172
    .line 173
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :goto_3
    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 175
    .line 176
    .line 177
    return-object p1

    .line 178
    :goto_4
    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 179
    .line 180
    .line 181
    throw p1
.end method
