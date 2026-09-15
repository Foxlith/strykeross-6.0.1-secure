.class public Lorg/bouncycastle/crypto/digests/SM3Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "SourceFile"


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final DIGEST_LENGTH:I = 0x20

.field private static final T:[I


# instance fields
.field private V:[I

.field private W:[I

.field private inwords:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x40

    new-array v1, v0, [I

    sput-object v1, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    sget-object v2, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    const v3, 0x79cc4519

    shl-int v4, v3, v1

    rsub-int/lit8 v5, v1, 0x20

    ushr-int/2addr v3, v5

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    rem-int/lit8 v1, v2, 0x20

    sget-object v3, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    const v4, 0x7a879d8a

    shl-int v5, v4, v1

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, v4, v1

    or-int/2addr v1, v5

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SM3Digest;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SM3Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    return-void
.end method

.method private FF0(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private FF1(III)I
    .locals 1

    and-int v0, p1, p2

    and-int/2addr p1, p3

    or-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private GG0(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private GG1(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private P0(I)I
    .locals 3

    shl-int/lit8 v0, p1, 0x9

    ushr-int/lit8 v1, p1, 0x17

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x11

    ushr-int/lit8 v2, p1, 0xf

    or-int/2addr v1, v2

    xor-int/2addr p1, v0

    xor-int/2addr p1, v1

    return p1
.end method

.method private P1(I)I
    .locals 3

    shl-int/lit8 v0, p1, 0xf

    ushr-int/lit8 v1, p1, 0x11

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x17

    ushr-int/lit8 v2, p1, 0x9

    or-int/2addr v1, v2

    xor-int/2addr p1, v0

    xor-int/2addr p1, v1

    return p1
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V
    .locals 4

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->finish()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->reset()V

    const/16 p1, 0x20

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SM3"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public processBlock()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_1
    const/16 v4, 0x44

    if-ge v2, v4, :cond_1

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v5, v2, -0x3

    aget v5, v4, v5

    shl-int/lit8 v6, v5, 0xf

    ushr-int/lit8 v5, v5, 0x11

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, -0xd

    aget v6, v4, v6

    shl-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v6, v6, 0x19

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, -0x10

    aget v7, v4, v7

    add-int/lit8 v8, v2, -0x9

    aget v8, v4, v8

    xor-int/2addr v7, v8

    xor-int/2addr v5, v7

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P1(I)I

    move-result v5

    xor-int/2addr v5, v6

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v7, v2, -0x6

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v4, v2, v1

    const/4 v5, 0x1

    aget v6, v2, v5

    const/4 v7, 0x2

    aget v8, v2, v7

    const/4 v9, 0x3

    aget v10, v2, v9

    const/4 v11, 0x4

    aget v12, v2, v11

    const/4 v13, 0x5

    aget v14, v2, v13

    const/4 v15, 0x6

    aget v16, v2, v15

    const/16 v17, 0x7

    aget v2, v2, v17

    move v13, v1

    move/from16 v15, v16

    :goto_2
    if-ge v13, v3, :cond_2

    shl-int/lit8 v18, v4, 0xc

    ushr-int/lit8 v19, v4, 0x14

    or-int v18, v18, v19

    add-int v19, v18, v12

    sget-object v20, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    aget v20, v20, v13

    add-int v19, v19, v20

    shl-int/lit8 v20, v19, 0x7

    ushr-int/lit8 v19, v19, 0x19

    or-int v3, v20, v19

    xor-int v11, v3, v18

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    aget v7, v9, v13

    add-int/lit8 v21, v13, 0x4

    aget v9, v9, v21

    xor-int/2addr v9, v7

    invoke-direct {v0, v4, v6, v8}, Lorg/bouncycastle/crypto/digests/SM3Digest;->FF0(III)I

    move-result v5

    invoke-static {v5, v10, v11, v9}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v5

    invoke-direct {v0, v12, v14, v15}, Lorg/bouncycastle/crypto/digests/SM3Digest;->GG0(III)I

    move-result v9

    invoke-static {v9, v2, v3, v7}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v2

    shl-int/lit8 v3, v6, 0x9

    ushr-int/lit8 v6, v6, 0x17

    or-int/2addr v3, v6

    shl-int/lit8 v6, v14, 0x13

    ushr-int/lit8 v7, v14, 0xd

    or-int/2addr v6, v7

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v2

    add-int/lit8 v13, v13, 0x1

    move v10, v8

    move v14, v12

    const/4 v7, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x4

    move v12, v2

    move v8, v3

    move v2, v15

    const/16 v3, 0x10

    move v15, v6

    move v6, v4

    move v4, v5

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    move v5, v4

    move v2, v15

    const/16 v4, 0x10

    :goto_3
    const/16 v7, 0x40

    if-ge v4, v7, :cond_3

    shl-int/lit8 v7, v5, 0xc

    ushr-int/lit8 v9, v5, 0x14

    or-int/2addr v7, v9

    add-int v9, v7, v12

    sget-object v11, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    aget v11, v11, v4

    add-int/2addr v9, v11

    shl-int/lit8 v11, v9, 0x7

    ushr-int/lit8 v9, v9, 0x19

    or-int/2addr v9, v11

    xor-int/2addr v7, v9

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    aget v13, v11, v4

    add-int/lit8 v15, v4, 0x4

    aget v11, v11, v15

    xor-int/2addr v11, v13

    invoke-direct {v0, v5, v6, v8}, Lorg/bouncycastle/crypto/digests/SM3Digest;->FF1(III)I

    move-result v15

    invoke-static {v15, v10, v7, v11}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v7

    invoke-direct {v0, v12, v14, v2}, Lorg/bouncycastle/crypto/digests/SM3Digest;->GG1(III)I

    move-result v10

    invoke-static {v10, v3, v9, v13}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v3

    shl-int/lit8 v9, v6, 0x9

    ushr-int/lit8 v6, v6, 0x17

    or-int/2addr v6, v9

    shl-int/lit8 v9, v14, 0x13

    ushr-int/lit8 v10, v14, 0xd

    or-int/2addr v9, v10

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    move v10, v8

    move v14, v12

    move v12, v3

    move v8, v6

    move v3, v2

    move v6, v5

    move v5, v7

    move v2, v9

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v7, v4, v1

    xor-int/2addr v5, v7

    aput v5, v4, v1

    const/4 v5, 0x1

    aget v7, v4, v5

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x2

    aget v6, v4, v5

    xor-int/2addr v6, v8

    aput v6, v4, v5

    const/4 v5, 0x3

    aget v6, v4, v5

    xor-int/2addr v6, v10

    aput v6, v4, v5

    const/4 v5, 0x4

    aget v6, v4, v5

    xor-int/2addr v6, v12

    aput v6, v4, v5

    const/4 v5, 0x5

    aget v6, v4, v5

    xor-int/2addr v6, v14

    aput v6, v4, v5

    const/4 v5, 0x6

    aget v6, v4, v5

    xor-int/2addr v2, v6

    aput v2, v4, v5

    aget v2, v4, v17

    xor-int/2addr v2, v3

    aput v2, v4, v17

    iput v1, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method

.method public processLength(J)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-le v0, v2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->processBlock()V

    :cond_0
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v3, v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    long-to-int p1, p1

    aput p1, v1, v2

    return-void
.end method

.method public processWord([BI)V
    .locals 3

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const v1, 0x7380166f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v3, 0x4914b2b9

    aput v3, v0, v1

    const/4 v1, 0x2

    const v3, 0x172442d7

    aput v3, v0, v1

    const/4 v1, 0x3

    const v3, -0x2575fa00

    aput v3, v0, v1

    const/4 v1, 0x4

    const v3, -0x5690cf44

    aput v3, v0, v1

    const/4 v1, 0x5

    const v3, 0x163138aa

    aput v3, v0, v1

    const/4 v1, 0x6

    const v3, -0x1c7211b3

    aput v3, v0, v1

    const/4 v1, 0x7

    const v3, -0x4f04f1b2

    aput v3, v0, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SM3Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    return-void
.end method
