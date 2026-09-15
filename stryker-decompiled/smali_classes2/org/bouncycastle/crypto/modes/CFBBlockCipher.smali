.class public Lorg/bouncycastle/crypto/modes/CFBBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;
.source "SourceFile"


# instance fields
.field private IV:[B

.field private blockSize:I

.field private byteCount:I

.field private cfbOutV:[B

.field private cfbV:[B

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z

.field private inBuf:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 6
    .line 7
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    mul-int/2addr v0, v1

    .line 14
    if-gt p2, v0, :cond_0

    .line 15
    .line 16
    if-lt p2, v1, :cond_0

    .line 17
    .line 18
    rem-int/lit8 v0, p2, 0x8

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 23
    .line 24
    div-int/2addr p2, v1

    .line 25
    iput p2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    .line 26
    .line 27
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    new-array p2, p2, [B

    .line 32
    .line 33
    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    .line 34
    .line 35
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    new-array p2, p2, [B

    .line 40
    .line 41
    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    .line 42
    .line 43
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    new-array p1, p1, [B

    .line 48
    .line 49
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    .line 50
    .line 51
    iget p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    .line 52
    .line 53
    new-array p1, p1, [B

    .line 54
    .line 55
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string v0, "CFB"

    .line 61
    .line 62
    const-string v1, " not supported"

    .line 63
    .line 64
    invoke-static {v0, p2, v1}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method private decryptByte(B)B
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte p1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v3, v0, :cond_1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return p1
.end method

.method private encryptByte(B)B
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte p1, v0, v2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v3, v0, :cond_1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return p1
.end method


# virtual methods
.method public calculateByte(B)B
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->encryptByte(B)B

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->decryptByte(B)B

    move-result p1

    :goto_0
    return p1
.end method

.method public decryptBlock([BI[BI)I
    .locals 6

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamBlockCipher;->processBytes([BII[BI)I

    iget p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p1
.end method

.method public encryptBlock([BI[BI)I
    .locals 6

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamBlockCipher;->processBytes([BII[BI)I

    iget p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public getCurrentIV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    array-length v1, p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    array-length v1, v2

    array-length v3, p1

    sub-int/2addr v1, v3

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v4

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v3, v2

    array-length v5, p1

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_1

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, v2

    invoke-static {p1, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    :goto_1
    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :cond_3
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 6

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamBlockCipher;->processBytes([BII[BI)I

    iget p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p1
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
