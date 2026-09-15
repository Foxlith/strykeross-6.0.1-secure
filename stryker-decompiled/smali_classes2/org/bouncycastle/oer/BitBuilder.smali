.class public Lorg/bouncycastle/oer/BitBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bits:[B


# instance fields
.field buf:[B

.field pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/oer/BitBuilder;->bits:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/BitBuilder;->zero()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public pad()V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v1, v0, 0x8

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    return-void
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v1, v0, 0x8

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x8

    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return v1
.end method

.method public write7BitBytes(I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x4

    :goto_0
    if-ltz v1, :cond_2

    if-nez v0, :cond_0

    const/high16 v2, -0x2000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    move-result-object v2

    int-to-long v3, p1

    const/16 v5, 0x20

    const/4 v6, 0x7

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JII)Lorg/bouncycastle/oer/BitBuilder;

    :cond_1
    shl-int/lit8 p1, p1, 0x7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public write7BitBytes(Ljava/math/BigInteger;)V
    .locals 10

    .line 2
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x8

    rem-int/2addr v1, v2

    add-int/2addr v1, v0

    div-int/2addr v1, v2

    const-wide/16 v3, 0xfe

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    mul-int/lit8 v3, v1, 0x8

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    if-ltz v1, :cond_2

    if-nez v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    const/4 v5, 0x7

    if-eqz v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v7, v3, -0x8

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9, v2, v5}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JII)Lorg/bouncycastle/oer/BitBuilder;

    :cond_1
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeAndClear(Ljava/io/OutputStream;)I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v1, v0, 0x8

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x8

    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Lorg/bouncycastle/oer/BitBuilder;->zero()V

    return v1
.end method

.method public writeBit(I)Lorg/bouncycastle/oer/BitBuilder;
    .locals 4

    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    array-length v3, v2

    if-lt v1, v3, :cond_0

    array-length v1, v2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    div-int/lit8 v0, v0, 0x8

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iput-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v1, v0, 0x8

    aget-byte v2, p1, v1

    sget-object v3, Lorg/bouncycastle/oer/BitBuilder;->bits:[B

    rem-int/lit8 v0, v0, 0x8

    aget-byte v0, v3, v0

    not-int v0, v0

    and-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v1, v0, 0x8

    aget-byte v2, p1, v1

    sget-object v3, Lorg/bouncycastle/oer/BitBuilder;->bits:[B

    rem-int/lit8 v0, v0, 0x8

    aget-byte v0, v3, v0

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    :goto_0
    iget p1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    return-object p0
.end method

.method public writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;
    .locals 5

    .line 1
    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_0
    if-ltz p3, :cond_1

    const-wide/16 v1, 0x1

    shl-long/2addr v1, p3

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public writeBits(JII)Lorg/bouncycastle/oer/BitBuilder;
    .locals 5

    .line 2
    add-int/lit8 v0, p3, -0x1

    :goto_0
    sub-int v1, p3, p4

    if-lt v0, v1, :cond_1

    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public zero()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    return-void
.end method
