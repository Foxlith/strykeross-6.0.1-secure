.class public Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/digest/MurmurHash3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncrementalHash32x86"
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x4


# instance fields
.field private hash:I

.field private totalLen:I

.field private final unprocessed:[B

.field private unprocessedLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    return-void
.end method

.method private static orBytes(BBBB)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final add([BII)V
    .locals 6

    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->totalLen:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->totalLen:I

    iget v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    add-int v1, v0, p3

    add-int/lit8 v1, v1, -0x4

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lez v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    aget-byte v4, v0, v1

    aget-byte v3, v0, v3

    aget-byte v0, v0, v2

    aget-byte v5, p1, p2

    invoke-static {v4, v3, v0, v5}, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->orBytes(BBBB)I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unprocessed length should be 1, 2, or 3: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    aget-byte v4, v0, v1

    aget-byte v0, v0, v3

    aget-byte v3, p1, p2

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    invoke-static {v4, v0, v3, v5}, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->orBytes(BBBB)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    aget-byte v0, v0, v1

    aget-byte v3, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    invoke-static {v0, v3, v4, v5}, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->orBytes(BBBB)I

    move-result v0

    :goto_0
    iget v3, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    invoke-static {v0, v3}, Lorg/apache/commons/codec/digest/MurmurHash3;->access$000(II)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    iget v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    :cond_5
    shr-int/lit8 v0, p3, 0x2

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_6

    shl-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lorg/apache/commons/codec/digest/MurmurHash3;->access$100([BI)I

    move-result v4

    iget v5, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    invoke-static {v4, v5}, Lorg/apache/commons/codec/digest/MurmurHash3;->access$000(II)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    shl-int/2addr v0, v2

    sub-int/2addr p3, v0

    iput p3, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    if-eqz p3, :cond_7

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    return-void
.end method

.method public final end()I
    .locals 4

    iget v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    iget v1, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    iget-object v2, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    iget v3, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->totalLen:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->finalise(II[BI)I

    move-result v0

    return v0
.end method

.method public finalise(II[BI)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    goto :goto_2

    :cond_0
    aget-byte p2, p3, v2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr p2, v0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    aget-byte p3, p3, v1

    and-int/lit16 p3, p3, 0xff

    xor-int/2addr p2, p3

    const p3, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p2, p3

    const/16 p3, 0xf

    invoke-static {p2, p3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p2

    const p3, 0x1b873593

    mul-int/2addr p2, p3

    xor-int/2addr p1, p2

    :goto_2
    xor-int/2addr p1, p4

    invoke-static {p1}, Lorg/apache/commons/codec/digest/MurmurHash3;->access$200(I)I

    move-result p1

    return p1
.end method

.method public final start(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->totalLen:I

    iput v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    iput p1, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    return-void
.end method
