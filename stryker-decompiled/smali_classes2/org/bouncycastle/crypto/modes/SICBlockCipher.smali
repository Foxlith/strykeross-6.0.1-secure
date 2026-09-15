.class public Lorg/bouncycastle/crypto/modes/SICBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/SkippingStreamCipher;


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private counterOut:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method

.method private adjustCounter(J)V
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-wide/16 v5, 0xff

    const-wide/16 v7, 0x1

    if-ltz v2, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v9, v2

    div-long/2addr v0, v9

    cmp-long v2, v0, v5

    move-wide v5, v0

    if-lez v2, :cond_1

    :goto_0
    if-lt v4, v3, :cond_1

    mul-int/lit8 v2, v4, 0x8

    shl-long v9, v7, v2

    :goto_1
    cmp-long v2, v5, v9

    if-ltz v2, :cond_0

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    sub-long/2addr v5, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    long-to-int v2, v5

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter(I)V

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v2, v2

    add-long/2addr p1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    long-to-int p1, p1

    iput p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_5

    :cond_2
    neg-long v9, p1

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v11, v2

    sub-long/2addr v9, v11

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v11, v2

    div-long/2addr v9, v11

    cmp-long v2, v9, v5

    move-wide v5, v9

    if-lez v2, :cond_4

    :goto_2
    if-lt v4, v3, :cond_4

    mul-int/lit8 v2, v4, 0x8

    shl-long v11, v7, v2

    :goto_3
    cmp-long v2, v5, v11

    if-lez v2, :cond_3

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    sub-long/2addr v5, v11

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    :goto_4
    cmp-long v2, v0, v5

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    add-long/2addr v0, v7

    goto :goto_4

    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long p1, p1

    mul-long/2addr p1, v9

    add-long/2addr p1, v0

    long-to-int p1, p1

    if-ltz p1, :cond_6

    iput v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_5

    :cond_6
    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    iget p2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    :goto_5
    return-void
.end method

.method private checkCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v2, v1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v2, v0

    aget-byte v1, v1, v0

    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Counter in CTR/SIC mode out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private decrementCounterAt(I)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    :cond_0
    const/4 p1, -0x1

    add-int/2addr v0, p1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eq v2, p1, :cond_0

    :cond_1
    return-void
.end method

.method private incrementCounter(I)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-byte v4, v0, v3

    add-int/2addr v4, p1

    int-to-byte p1, v4

    aput-byte p1, v0, v3

    if-eqz v1, :cond_0

    array-length p1, v0

    sub-int/2addr p1, v2

    aget-byte p1, v0, p1

    if-ge p1, v1, :cond_0

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    :cond_0
    return-void
.end method

.method private incrementCounterAt(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method private incrementCounterChecked()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eqz v2, :cond_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    array-length v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Counter in CTR/SIC mode out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public calculateByte(B)B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v2, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    if-ne v3, v0, :cond_1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterChecked()V

    :cond_1
    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getPosition()J
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, -0x1

    :goto_0
    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v5, v4

    if-ge v0, v5, :cond_0

    aget-byte v5, v2, v0

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v5, v4

    goto :goto_1

    :cond_0
    aget-byte v4, v2, v0

    and-int/lit16 v5, v4, 0xff

    :goto_1
    if-gez v5, :cond_1

    add-int/lit8 v4, v0, -0x1

    aget-byte v6, v2, v4

    sub-int/2addr v6, v3

    int-to-byte v3, v6

    aput-byte v3, v2, v4

    add-int/lit16 v5, v5, 0x100

    :cond_1
    int-to-byte v3, v5

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x8

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    .line 1
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 16
    .line 17
    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 18
    .line 19
    array-length v1, p1

    .line 20
    const-string v2, " bytes."

    .line 21
    .line 22
    if-lt v0, v1, :cond_3

    .line 23
    .line 24
    div-int/lit8 v1, v0, 0x2

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    if-le v3, v1, :cond_0

    .line 29
    .line 30
    div-int/lit8 v3, v0, 0x2

    .line 31
    .line 32
    :cond_0
    array-length p1, p1

    .line 33
    sub-int/2addr v0, p1

    .line 34
    if-gt v0, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v0, "CTR/SIC mode requires IV of at least: "

    .line 61
    .line 62
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 66
    .line 67
    sub-int/2addr v0, v3

    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v0, "CTR/SIC mode requires IV no greater than: "

    .line 87
    .line 88
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 92
    .line 93
    invoke-static {p2, v0, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string p2, "CTR/SIC mode requires ParametersWithIV"

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 7

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    if-eqz v0, :cond_0

    iget v4, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return p1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_3

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v3, v0, :cond_1

    add-int v0, p4, v3

    add-int v1, p2, v3

    aget-byte v1, p1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterChecked()V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too small"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)I
    .locals 6

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v2, v3, v0, v4, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    goto :goto_1

    :cond_0
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v2, v4, v2

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    if-ne v5, v3, :cond_1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterChecked()V

    :cond_1
    :goto_1
    add-int v3, p5, v1

    aput-byte v2, p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p3

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too small"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    iput v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method

.method public seekTo(J)J
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public skip(J)J
    .locals 4

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->adjustCounter(J)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-wide p1
.end method
