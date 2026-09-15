.class Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;
.super Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA1Digest"
.end annotation


# static fields
.field private static final DIGEST_LENGTH:I = 0x14

.field private static final Y1:I = 0x5a827999

.field private static final Y2:I = 0x6ed9eba1

.field private static final Y3:I = -0x70e44324

.field private static final Y4:I = -0x359d3e2a


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->reset()V

    return-void
.end method

.method private f(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private g(III)I
    .locals 1

    and-int v0, p1, p2

    and-int/2addr p1, p3

    or-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private h(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->finish()V

    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->reset()V

    const/16 p1, 0x14

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-1"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public processBlock()V
    .locals 15

    const/16 v0, 0x10

    move v1, v0

    :goto_0
    const/16 v2, 0x50

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v3, v1, -0x3

    aget v3, v2, v3

    add-int/lit8 v4, v1, -0x8

    aget v4, v2, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v1, -0xe

    aget v4, v2, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x10

    aget v4, v2, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    iget v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    iget v3, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    iget v4, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    iget v5, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_1
    const/4 v9, 0x4

    if-ge v7, v9, :cond_1

    shl-int/lit8 v9, v1, 0x5

    ushr-int/lit8 v10, v1, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v8

    const v12, 0x5a827999

    invoke-static {v9, v10, v12, v5}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v5

    shl-int/lit8 v9, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v9

    shl-int/lit8 v9, v5, 0x5

    ushr-int/lit8 v10, v5, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v13, v8, 0x2

    aget v10, v10, v11

    invoke-static {v9, v10, v12, v4}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v4

    shl-int/lit8 v9, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v9

    shl-int/lit8 v9, v4, 0x5

    ushr-int/lit8 v10, v4, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v5, v1, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v8, 0x3

    aget v10, v10, v13

    invoke-static {v9, v10, v12, v3}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v3

    shl-int/lit8 v9, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v9

    shl-int/lit8 v9, v3, 0x5

    ushr-int/lit8 v10, v3, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v4, v5, v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v13, v8, 0x4

    aget v10, v10, v11

    invoke-static {v9, v10, v12, v2}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v2

    shl-int/lit8 v9, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v9

    shl-int/lit8 v9, v2, 0x5

    ushr-int/lit8 v10, v2, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v8, v8, 0x5

    aget v10, v10, v13

    invoke-static {v9, v10, v12, v1}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v1

    shl-int/lit8 v9, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_1
    move v7, v6

    :goto_2
    if-ge v7, v9, :cond_2

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x1

    aget v11, v11, v8

    const v13, 0x6ed9eba1

    invoke-static {v10, v11, v13, v5}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v5

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v10

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v14, v8, 0x2

    aget v11, v11, v12

    invoke-static {v10, v11, v13, v4}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v4

    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v10

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v5, v1, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x3

    aget v11, v11, v14

    invoke-static {v10, v11, v13, v3}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v3

    shl-int/lit8 v10, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v10

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v5, v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v14, v8, 0x4

    aget v11, v11, v12

    invoke-static {v10, v11, v13, v2}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v2

    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v10

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v8, v8, 0x5

    aget v11, v11, v14

    invoke-static {v10, v11, v13, v1}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v1

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_2
    move v7, v6

    :goto_3
    if-ge v7, v9, :cond_3

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x1

    aget v11, v11, v8

    const v13, -0x70e44324

    invoke-static {v10, v11, v13, v5}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v5

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v10

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v14, v8, 0x2

    aget v11, v11, v12

    invoke-static {v10, v11, v13, v4}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v4

    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v10

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v5, v1, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x3

    aget v11, v11, v14

    invoke-static {v10, v11, v13, v3}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v3

    shl-int/lit8 v10, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v10

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v5, v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v14, v8, 0x4

    aget v11, v11, v12

    invoke-static {v10, v11, v13, v2}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v2

    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v10

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v8, v8, 0x5

    aget v11, v11, v14

    invoke-static {v10, v11, v13, v1}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v1

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_3
    move v7, v6

    :goto_4
    const/4 v9, 0x3

    if-gt v7, v9, :cond_4

    shl-int/lit8 v9, v1, 0x5

    ushr-int/lit8 v10, v1, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v8

    const v12, -0x359d3e2a    # -3715189.5f

    invoke-static {v9, v10, v12, v5}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v5

    shl-int/lit8 v9, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v9

    shl-int/lit8 v9, v5, 0x5

    ushr-int/lit8 v10, v5, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v13, v8, 0x2

    aget v10, v10, v11

    invoke-static {v9, v10, v12, v4}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v4

    shl-int/lit8 v9, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v9

    shl-int/lit8 v9, v4, 0x5

    ushr-int/lit8 v10, v4, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v5, v1, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v8, 0x3

    aget v10, v10, v13

    invoke-static {v9, v10, v12, v3}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v3

    shl-int/lit8 v9, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v9

    shl-int/lit8 v9, v3, 0x5

    ushr-int/lit8 v10, v3, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v4, v5, v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v13, v8, 0x4

    aget v10, v10, v11

    invoke-static {v9, v10, v12, v2}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v2

    shl-int/lit8 v9, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v9

    shl-int/lit8 v9, v2, 0x5

    ushr-int/lit8 v10, v2, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v8, v8, 0x5

    aget v10, v10, v13

    invoke-static {v9, v10, v12, v1}, Landroid/support/v4/media/session/a;->f(IIII)I

    move-result v1

    shl-int/lit8 v9, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_4
    iget v7, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    add-int/2addr v7, v1

    iput v7, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    iget v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    iget v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    iget v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    iget v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    add-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    iput v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    move v1, v6

    :goto_5
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public processLength(J)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    long-to-int p1, p1

    aput p1, v0, v1

    return-void
.end method

.method public processWord([BI)V
    .locals 3

    aget-byte v0, p1, p2

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

    iget-object p2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
