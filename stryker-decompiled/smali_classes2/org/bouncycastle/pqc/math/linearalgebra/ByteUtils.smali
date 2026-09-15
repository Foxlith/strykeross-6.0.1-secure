.class public final Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([B)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static concatenate([B[B)[B
    .locals 3

    .line 1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static concatenate([[B)[B
    .locals 6

    .line 2
    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    mul-int/2addr v2, v1

    new-array v2, v2, [B

    move v3, v0

    move v4, v3

    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    aget-object v5, p0, v3

    invoke-static {v5, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static deepHashCode([B)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static deepHashCode([[B)I
    .locals 3

    .line 2
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->deepHashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static deepHashCode([[[B)I
    .locals 3

    .line 3
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->deepHashCode([[B)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static equals([B[B)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v0

    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    array-length v2, p0

    sub-int/2addr v2, v1

    move v3, v1

    :goto_0
    if-ltz v2, :cond_5

    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-ne v4, v5, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method public static equals([[B[[B)Z
    .locals 4

    .line 2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static equals([[[B[[[B)Z
    .locals 7

    .line 3
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v3, v1

    :goto_0
    if-ltz v0, :cond_3

    aget-object v4, p0, v0

    array-length v5, v4

    aget-object v6, p1, v0

    array-length v6, v6

    if-eq v5, v6, :cond_1

    return v2

    :cond_1
    array-length v4, v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_2

    aget-object v5, p0, v0

    aget-object v5, v5, v4

    aget-object v6, p1, v0

    aget-object v6, v6, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v5

    and-int/2addr v3, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    const/16 v4, 0x46

    const/16 v5, 0x41

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-ge v1, v3, :cond_3

    aget-char v3, p0, v1

    if-lt v3, v7, :cond_0

    if-le v3, v6, :cond_1

    :cond_0
    if-lt v3, v5, :cond_2

    if-gt v3, v4, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    and-int/lit8 v2, v2, 0x1

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_6

    aget-char v3, p0, v0

    if-lt v3, v7, :cond_4

    if-gt v3, v6, :cond_4

    shr-int/lit8 v8, v2, 0x1

    aget-byte v9, v1, v8

    shl-int/lit8 v9, v9, 0x4

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    add-int/lit8 v3, v3, -0x30

    or-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    goto :goto_2

    :cond_4
    if-lt v3, v5, :cond_5

    if-gt v3, v4, :cond_5

    shr-int/lit8 v8, v2, 0x1

    aget-byte v9, v1, v8

    shl-int/lit8 v9, v9, 0x4

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    add-int/lit8 v3, v3, -0x37

    or-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    :goto_2
    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public static split([BI)[[B
    .locals 5

    array-length v0, p0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [[B

    new-array v1, p1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    array-length v3, p0

    sub-int/2addr v3, p1

    new-array v3, v3, [B

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v0, v4

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static subArray([BI)[B
    .locals 1

    .line 1
    array-length v0, p0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static subArray([BII)[B
    .locals 2

    .line 2
    sub-int/2addr p2, p1

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toBinaryString([B)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    array-length v3, p0

    .line 6
    if-ge v2, v3, :cond_2

    .line 7
    .line 8
    aget-byte v3, p0, v2

    .line 9
    .line 10
    move v4, v1

    .line 11
    :goto_1
    const/16 v5, 0x8

    .line 12
    .line 13
    if-ge v4, v5, :cond_0

    .line 14
    .line 15
    ushr-int v5, v3, v4

    .line 16
    .line 17
    and-int/lit8 v5, v5, 0x1

    .line 18
    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    array-length v3, p0

    .line 38
    add-int/lit8 v3, v3, -0x1

    .line 39
    .line 40
    if-eq v2, v3, :cond_1

    .line 41
    .line 42
    const-string v3, " "

    .line 43
    .line 44
    invoke-static {v0, v3}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0
.end method

.method public static toCharArray([B)[C
    .locals 3

    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    .line 2
    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toHexString([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_1

    .line 8
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    .line 9
    aget-byte v2, p0, p1

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    aget-byte v2, p0, p1

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 12
    invoke-static {v0, p2}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static xor([B[B)[B
    .locals 4

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
