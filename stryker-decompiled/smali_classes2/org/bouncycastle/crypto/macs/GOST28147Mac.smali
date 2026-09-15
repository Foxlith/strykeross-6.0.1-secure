.class public Lorg/bouncycastle/crypto/macs/GOST28147Mac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private S:[B

.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private firstStep:Z

.field private mac:[B

.field private macIV:[B

.field private macSize:I

.field private workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    const/4 v1, 0x4

    iput v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macIV:[B

    const/16 v1, 0x80

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    return-void

    nop

    :array_0
    .array-data 1
        0x9t
        0x6t
        0x3t
        0x2t
        0x8t
        0xbt
        0x1t
        0x7t
        0xat
        0x4t
        0xet
        0xft
        0xct
        0x0t
        0xdt
        0x5t
        0x3t
        0x7t
        0xet
        0x9t
        0x8t
        0xat
        0xft
        0x0t
        0x5t
        0x2t
        0x6t
        0xct
        0xbt
        0x4t
        0xdt
        0x1t
        0xet
        0x4t
        0x6t
        0x2t
        0xbt
        0x3t
        0xdt
        0x8t
        0xct
        0xft
        0x5t
        0xat
        0x0t
        0x7t
        0x1t
        0x9t
        0xet
        0x7t
        0xat
        0xct
        0xdt
        0x1t
        0x3t
        0x9t
        0x0t
        0x2t
        0xbt
        0x4t
        0xft
        0x8t
        0x5t
        0x6t
        0xbt
        0x5t
        0x1t
        0x9t
        0x8t
        0xdt
        0xft
        0x0t
        0xet
        0x4t
        0x2t
        0x3t
        0xct
        0x7t
        0xat
        0x6t
        0x3t
        0xat
        0xdt
        0xct
        0x1t
        0x2t
        0x0t
        0xbt
        0x7t
        0x5t
        0x9t
        0x4t
        0x8t
        0xft
        0xet
        0x6t
        0x1t
        0xdt
        0x2t
        0x9t
        0x7t
        0xat
        0x6t
        0x0t
        0x8t
        0xct
        0x4t
        0x5t
        0xft
        0x3t
        0xbt
        0xet
        0xbt
        0xat
        0xft
        0x5t
        0x0t
        0xct
        0xet
        0x8t
        0x6t
        0x2t
        0x3t
        0x9t
        0x1t
        0x7t
        0xdt
        0x4t
    .end array-data
.end method

.method private CM5func([BI[B)[B
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    new-array v0, v0, [B

    array-length v1, p3

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length p1, p3

    if-eq v2, p1, :cond_0

    aget-byte p1, v0, v2

    aget-byte p2, p3, v2

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private bytesToint([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    return v0
.end method

.method private generateWorkingKey([B)[I
    .locals 4

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x4

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key length invalid. Key needs to be 32 byte - 256 bit!!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private gost28147MacFunc([I[BI[BI)V
    .locals 5

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result v0

    add-int/lit8 p3, p3, 0x4

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result p2

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    move v2, p3

    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    aget v3, p1, v2

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147_mainStep(II)I

    move-result v3

    xor-int/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    move v4, v0

    move v0, p2

    move p2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p4, p5}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->intTobytes(I[BI)V

    add-int/lit8 p5, p5, 0x4

    invoke-direct {p0, p2, p4, p5}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->intTobytes(I[BI)V

    return-void
.end method

.method private gost28147_mainStep(II)I
    .locals 2

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    and-int/lit8 v0, p2, 0xf

    aget-byte v0, p1, v0

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x10

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x20

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x30

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x40

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shr-int/lit8 v1, p2, 0x14

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x50

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x14

    add-int/2addr v0, v1

    shr-int/lit8 v1, p2, 0x18

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x60

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    shr-int/lit8 p2, p2, 0x1c

    and-int/lit8 p2, p2, 0xf

    add-int/lit8 p2, p2, 0x70

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x1c

    add-int/2addr v0, p1

    shl-int/lit8 p1, v0, 0xb

    ushr-int/lit8 p2, v0, 0x15

    or-int/2addr p1, p2

    return p1
.end method

.method private intTobytes(I[BI)V
    .locals 2

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return-void
.end method

.method private recursiveInit(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    array-length v3, v3

    .line 22
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->generateWorkingKey([B)[I

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    .line 59
    .line 60
    array-length v3, v2

    .line 61
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macIV:[B

    .line 69
    .line 70
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->recursiveInit(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string v1, "invalid parameter passed to GOST28147 init - "

    .line 81
    .line 82
    invoke-static {p1, v1}, Ll1/e;->m(Lorg/bouncycastle/crypto/CipherParameters;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v1, v0

    new-array v1, v1, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v3, v3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    :goto_1
    move-object v4, v1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v1

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->reset()V

    iget p1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "GOST28147Mac"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->reset()V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macIV:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->recursiveInit(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    return-void
.end method

.method public update(B)V
    .locals 10

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v2, v1

    if-ne v0, v2, :cond_2

    array-length v0, v1

    new-array v0, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macIV:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    invoke-direct {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v0

    :cond_0
    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    iput v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 11

    .line 2
    if-ltz p3, :cond_3

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v2, v1

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->macIV:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    invoke-direct {p0, v2, v4, v1}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v2

    :cond_0
    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v1, v4, v2}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v6, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    iput v4, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    :goto_2
    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    if-le p3, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
