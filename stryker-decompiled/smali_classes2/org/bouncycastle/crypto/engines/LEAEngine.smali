.class public Lorg/bouncycastle/crypto/engines/LEAEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BASEROUNDS:I = 0x10

.field private static final BLOCKSIZE:I = 0x10

.field private static final DELTA:[I

.field private static final KEY0:I = 0x0

.field private static final KEY1:I = 0x1

.field private static final KEY2:I = 0x2

.field private static final KEY3:I = 0x3

.field private static final KEY4:I = 0x4

.field private static final KEY5:I = 0x5

.field private static final MASK128:I = 0x3

.field private static final MASK256:I = 0x7

.field private static final NUMWORDS:I = 0x4

.field private static final NUMWORDS128:I = 0x4

.field private static final NUMWORDS192:I = 0x6

.field private static final NUMWORDS256:I = 0x8

.field private static final ROT1:I = 0x1

.field private static final ROT11:I = 0xb

.field private static final ROT13:I = 0xd

.field private static final ROT17:I = 0x11

.field private static final ROT3:I = 0x3

.field private static final ROT5:I = 0x5

.field private static final ROT6:I = 0x6

.field private static final ROT9:I = 0x9


# instance fields
.field private forEncryption:Z

.field private final theBlock:[I

.field private theRoundKeys:[[I

.field private theRounds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    return-void

    :array_0
    .array-data 4
        -0x3c101625
        0x44626b02
        0x79e27c8a
        0x78df30ec
        0x715ea49e
        -0x387a25f6
        -0x1fb10dd6
        -0x1a3bf6a9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    return-void
.end method

.method private static bufLength([B)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method private static checkBuffer([BIZ)V
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->bufLength([B)I

    move-result p0

    add-int/lit8 v0, p1, 0x10

    if-ltz p1, :cond_2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short."

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short."

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw p0
.end method

.method private decryptBlock([BI[BI)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, p2, v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->decryptRound(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method private decryptRound(I)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x4

    rem-int/2addr p1, v1

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rightIndex(I)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v3, v2

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->ror32(II)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget p1, v5, p1

    const/4 v5, 0x0

    aget v5, v0, v5

    xor-int/2addr p1, v5

    sub-int/2addr v4, p1

    const/4 p1, 0x1

    aget p1, v0, p1

    xor-int/2addr p1, v4

    aput p1, v3, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rightIndex(I)I

    move-result p1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v3, p1

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v2, v6, v2

    const/4 v6, 0x2

    aget v6, v0, v6

    xor-int/2addr v2, v6

    sub-int/2addr v4, v2

    const/4 v2, 0x3

    aget v6, v0, v2

    xor-int/2addr v4, v6

    aput v4, v3, p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rightIndex(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v6, v4, v3

    invoke-static {v6, v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget p1, v6, p1

    aget v1, v0, v1

    xor-int/2addr p1, v1

    sub-int/2addr v2, p1

    aget p1, v0, v5

    xor-int/2addr p1, v2

    aput p1, v4, v3

    return-void
.end method

.method private encryptBlock([BI[BI)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v2, p1, :cond_0

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->encryptRound(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method private encryptRound(I)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x3

    add-int/2addr p1, v1

    const/4 v2, 0x4

    rem-int/2addr p1, v2

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->leftIndex(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v5, v4, v3

    aget v2, v0, v2

    xor-int/2addr v2, v5

    aget v5, v4, p1

    const/4 v6, 0x5

    aget v7, v0, v6

    xor-int/2addr v5, v7

    add-int/2addr v2, v5

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->ror32(II)I

    move-result v2

    aput v2, v4, p1

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->leftIndex(I)I

    move-result p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v2, p1

    const/4 v5, 0x2

    aget v5, v0, v5

    xor-int/2addr v4, v5

    aget v5, v2, v3

    aget v1, v0, v1

    xor-int/2addr v1, v5

    add-int/2addr v4, v1

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->ror32(II)I

    move-result v1

    aput v1, v2, v3

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->leftIndex(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v1, v2, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    xor-int/2addr v1, v3

    aget v3, v2, p1

    const/4 v4, 0x1

    aget v0, v0, v4

    xor-int/2addr v0, v3

    add-int/2addr v1, v0

    const/16 v0, 0x9

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v0

    aput v0, v2, p1

    return-void
.end method

.method private generate128RoundKeys([I)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v1, v2, :cond_0

    sget-object v2, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    and-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aget v3, p1, v0

    add-int/2addr v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v0

    aget v3, p1, v4

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v4

    const/4 v3, 0x2

    aget v6, p1, v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    aput v6, p1, v3

    aget v6, p1, v5

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    add-int/2addr v6, v2

    const/16 v2, 0xb

    invoke-static {v6, v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v2, v2, v1

    aget v6, p1, v0

    aput v6, v2, v0

    aget v6, p1, v4

    aput v6, v2, v4

    aget v6, p1, v3

    aput v6, v2, v3

    aget v3, p1, v4

    aput v3, v2, v5

    const/4 v4, 0x4

    aget v5, p1, v5

    aput v5, v2, v4

    const/4 v4, 0x5

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generate192RoundKeys([I)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v1, v2, :cond_0

    sget-object v2, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    rem-int/lit8 v3, v1, 0x6

    aget v2, v2, v3

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aget v3, p1, v0

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v0

    aget v3, p1, v4

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v4

    const/4 v3, 0x2

    aget v4, p1, v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    add-int/2addr v4, v6

    const/4 v6, 0x6

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    aput v4, p1, v3

    aget v3, p1, v5

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v5

    const/4 v3, 0x4

    aget v4, p1, v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0xd

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    aput v4, p1, v3

    const/4 v3, 0x5

    aget v4, p1, v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    add-int/2addr v4, v2

    const/16 v2, 0x11

    invoke-static {v4, v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v2, v2, v1

    invoke-static {p1, v0, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generate256RoundKeys([I)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v1, v3, :cond_0

    sget-object v3, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    and-int/lit8 v4, v1, 0x7

    aget v3, v3, v4

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v4, v4, v1

    and-int/lit8 v5, v2, 0x7

    aget v6, p1, v5

    add-int/2addr v6, v3

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    aput v6, v4, v0

    add-int/lit8 v8, v2, 0x1

    aput v6, p1, v5

    and-int/lit8 v5, v8, 0x7

    aget v6, p1, v5

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v8

    add-int/2addr v6, v8

    const/4 v8, 0x3

    invoke-static {v6, v8}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    aput v6, v4, v7

    add-int/lit8 v7, v2, 0x2

    aput v6, p1, v5

    and-int/lit8 v5, v7, 0x7

    aget v6, p1, v5

    const/4 v7, 0x2

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x6

    invoke-static {v6, v9}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    aput v6, v4, v7

    add-int/lit8 v7, v2, 0x3

    aput v6, p1, v5

    and-int/lit8 v5, v7, 0x7

    aget v6, p1, v5

    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0xb

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    aput v6, v4, v8

    add-int/lit8 v7, v2, 0x4

    aput v6, p1, v5

    and-int/lit8 v5, v7, 0x7

    aget v6, p1, v5

    const/4 v7, 0x4

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v8

    add-int/2addr v6, v8

    const/16 v8, 0xd

    invoke-static {v6, v8}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    aput v6, v4, v7

    add-int/lit8 v7, v2, 0x5

    aput v6, p1, v5

    and-int/lit8 v5, v7, 0x7

    aget v6, p1, v5

    const/4 v7, 0x5

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    add-int/2addr v6, v3

    const/16 v3, 0x11

    invoke-static {v6, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, v4, v7

    add-int/2addr v2, v9

    aput v3, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private generateRoundKeys([B)V
    .locals 5

    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    array-length v0, p1

    const/4 v2, 0x4

    div-int/2addr v0, v2

    new-array v3, v0, [I

    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v4, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generate256RoundKeys([I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generate192RoundKeys([I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generate128RoundKeys([I)V

    :goto_0
    return-void
.end method

.method private static leftIndex(I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method private static rightIndex(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method private static rol32(II)I
    .locals 1

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private static ror32(II)I
    .locals 1

    ushr-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "LEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    .line 1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    array-length v0, p2

    .line 12
    shl-int/lit8 v1, v0, 0x1

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    rem-int/2addr v1, v2

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    if-lt v0, v2, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x20

    .line 22
    .line 23
    if-gt v0, v1, :cond_0

    .line 24
    .line 25
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->forEncryption:Z

    .line 26
    .line 27
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generateRoundKeys([B)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string p2, "KeyBitSize must be 128, 192 or 256"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string v0, "Invalid parameter passed to LEA init - "

    .line 42
    .line 43
    invoke-static {p2, v0}, Ll1/e;->m(Lorg/bouncycastle/crypto/CipherParameters;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->checkBuffer([BIZ)V

    const/4 v0, 0x1

    invoke-static {p3, p4, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->checkBuffer([BIZ)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->encryptBlock([BI[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->decryptBlock([BI[BI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
