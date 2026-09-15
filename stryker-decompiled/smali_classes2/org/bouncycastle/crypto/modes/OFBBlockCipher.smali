.class public Lorg/bouncycastle/crypto/modes/OFBBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;
.source "SourceFile"


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    mul-int/2addr v0, v1

    .line 11
    if-gt p2, v0, :cond_0

    .line 12
    .line 13
    if-lt p2, v1, :cond_0

    .line 14
    .line 15
    rem-int/lit8 v0, p2, 0x8

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 20
    .line 21
    div-int/2addr p2, v1

    .line 22
    iput p2, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    .line 23
    .line 24
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    new-array p2, p2, [B

    .line 29
    .line 30
    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    .line 31
    .line 32
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    new-array p2, p2, [B

    .line 37
    .line 38
    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    .line 39
    .line 40
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    new-array p1, p1, [B

    .line 45
    .line 46
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string v0, "0FB"

    .line 52
    .line 53
    const-string v1, " not supported"

    .line 54
    .line 55
    invoke-static {v0, p2, v1}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method


# virtual methods
.method public calculateByte(B)B
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    if-ne v3, v0, :cond_1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/OFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    array-length v1, p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

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
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

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
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    :goto_1
    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :cond_3
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 6

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamBlockCipher;->processBytes([BII[BI)I

    iget p1, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return p1
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
