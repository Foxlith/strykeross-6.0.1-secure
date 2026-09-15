.class public final Lokio/-SegmentedByteString;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT__ByteString_size:I

.field private static final DEFAULT__new_UnsafeCursor:Lokio/Buffer$UnsafeCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    sput-object v0, Lokio/-SegmentedByteString;->DEFAULT__new_UnsafeCursor:Lokio/Buffer$UnsafeCursor;

    const v0, -0x499602d2

    sput v0, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    return-void
.end method

.method public static final and(BI)I
    .locals 0

    .line 1
    and-int/2addr p0, p1

    return p0
.end method

.method public static final and(BJ)J
    .locals 2

    .line 2
    int-to-long v0, p0

    and-long p0, v0, p1

    return-wide p0
.end method

.method public static final and(IJ)J
    .locals 2

    .line 3
    int-to-long v0, p0

    and-long p0, v0, p1

    return-wide p0
.end method

.method public static final arrayRangeEquals([BI[BII)Z
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final checkOffsetAndCount(JJJ)V
    .locals 4

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " offset="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " byteCount="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getDEFAULT__ByteString_size()I
    .locals 1

    sget v0, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    return v0
.end method

.method public static final getDEFAULT__new_UnsafeCursor()Lokio/Buffer$UnsafeCursor;
    .locals 1

    sget-object v0, Lokio/-SegmentedByteString;->DEFAULT__new_UnsafeCursor:Lokio/Buffer$UnsafeCursor;

    return-object v0
.end method

.method public static synthetic getDEFAULT__new_UnsafeCursor$annotations()V
    .locals 0

    return-void
.end method

.method public static final leftRotate(II)I
    .locals 1

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static final minOf(IJ)J
    .locals 2

    .line 1
    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final minOf(JI)J
    .locals 2

    .line 2
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final resolveDefaultParameter(Lokio/ByteString;I)I
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static final resolveDefaultParameter([BI)I
    .locals 1

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    if-ne p1, v0, :cond_0

    array-length p0, p0

    return p0

    :cond_0
    return p1
.end method

.method public static final resolveDefaultParameter(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 1

    .line 3
    const-string v0, "unsafeCursor"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokio/-SegmentedByteString;->DEFAULT__new_UnsafeCursor:Lokio/Buffer$UnsafeCursor;

    if-ne p0, v0, :cond_0

    new-instance p0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static final reverseBytes(I)I
    .locals 2

    .line 1
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static final reverseBytes(J)J
    .locals 8

    .line 2
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    const/16 v2, 0x38

    ushr-long/2addr v0, v2

    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, p0

    const/16 v5, 0x28

    ushr-long/2addr v3, v5

    or-long/2addr v0, v3

    const-wide v3, 0xff0000000000L

    and-long/2addr v3, p0

    const/16 v6, 0x18

    ushr-long/2addr v3, v6

    or-long/2addr v0, v3

    const-wide v3, 0xff00000000L

    and-long/2addr v3, p0

    const/16 v7, 0x8

    ushr-long/2addr v3, v7

    or-long/2addr v0, v3

    const-wide v3, 0xff000000L

    and-long/2addr v3, p0

    shl-long/2addr v3, v7

    or-long/2addr v0, v3

    const-wide/32 v3, 0xff0000

    and-long/2addr v3, p0

    shl-long/2addr v3, v6

    or-long/2addr v0, v3

    const-wide/32 v3, 0xff00

    and-long/2addr v3, p0

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    const-wide/16 v3, 0xff

    and-long/2addr p0, v3

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final reverseBytes(S)S
    .locals 1

    .line 3
    const v0, 0xff00

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static final rightRotate(JI)J
    .locals 2

    ushr-long v0, p0, p2

    rsub-int/lit8 p2, p2, 0x40

    shl-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final shl(BI)I
    .locals 0

    shl-int/2addr p0, p1

    return p0
.end method

.method public static final shr(BI)I
    .locals 0

    shr-int/2addr p0, p1

    return p0
.end method

.method public static final toHexString(B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [C

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x0

    aput-char v1, v0, v2

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v1, p0

    const/4 v1, 0x1

    aput-char p0, v0, v1

    .line 1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static final toHexString(I)Ljava/lang/String;
    .locals 5

    .line 2
    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/16 v0, 0x8

    new-array v1, v0, [C

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v3, p0, 0x1c

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0x18

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x1

    aput-char v2, v1, v4

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0x14

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x2

    aput-char v2, v1, v4

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0x10

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x3

    aput-char v2, v1, v4

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0xc

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x4

    aput-char v2, v1, v4

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0x8

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x5

    aput-char v2, v1, v4

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x6

    aput-char v2, v1, v4

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v2, p0

    const/4 v2, 0x7

    aput-char p0, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-char p0, v1, v3

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v3, v0}, Lq5/h;->l1([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toHexString(J)Ljava/lang/String;
    .locals 12

    .line 3
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [C

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v3, 0x3c

    shr-long v3, p0, v3

    const-wide/16 v5, 0xf

    and-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v2, v2, v3

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v4, 0x38

    shr-long v7, p0, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    aget-char v2, v2, v4

    const/4 v4, 0x1

    aput-char v2, v1, v4

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v4, 0x34

    shr-long v7, p0, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    aget-char v2, v2, v4

    const/4 v4, 0x2

    aput-char v2, v1, v4

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v4, 0x30

    shr-long v7, p0, v4

    and-long/2addr v7, v5

    long-to-int v7, v7

    aget-char v2, v2, v7

    const/4 v7, 0x3

    aput-char v2, v1, v7

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v7, 0x2c

    shr-long v7, p0, v7

    and-long/2addr v7, v5

    long-to-int v7, v7

    aget-char v2, v2, v7

    const/4 v7, 0x4

    aput-char v2, v1, v7

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v8, 0x28

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/4 v8, 0x5

    aput-char v2, v1, v8

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v8, 0x24

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/4 v8, 0x6

    aput-char v2, v1, v8

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v8, 0x20

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/4 v8, 0x7

    aput-char v2, v1, v8

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v8, 0x1c

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/16 v8, 0x8

    aput-char v2, v1, v8

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v9, 0x18

    shr-long v9, p0, v9

    and-long/2addr v9, v5

    long-to-int v9, v9

    aget-char v2, v2, v9

    const/16 v9, 0x9

    aput-char v2, v1, v9

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v9, 0x14

    shr-long v9, p0, v9

    and-long/2addr v9, v5

    long-to-int v9, v9

    aget-char v2, v2, v9

    const/16 v9, 0xa

    aput-char v2, v1, v9

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-long v9, p0, v0

    and-long/2addr v9, v5

    long-to-int v9, v9

    aget-char v2, v2, v9

    const/16 v9, 0xb

    aput-char v2, v1, v9

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v9, 0xc

    shr-long v10, p0, v9

    and-long/2addr v10, v5

    long-to-int v10, v10

    aget-char v2, v2, v10

    aput-char v2, v1, v9

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/16 v8, 0xd

    aput-char v2, v1, v8

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-long v7, p0, v7

    and-long/2addr v7, v5

    long-to-int v7, v7

    aget-char v2, v2, v7

    const/16 v7, 0xe

    aput-char v2, v1, v7

    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    and-long/2addr p0, v5

    long-to-int p0, p0

    aget-char p0, v2, p0

    const/16 p1, 0xf

    aput-char p0, v1, p1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-char p0, v1, v3

    if-ne p0, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v3, v0}, Lq5/h;->l1([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final xor(BB)B
    .locals 0

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method
