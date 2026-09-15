.class public Lorg/bouncycastle/mime/encoding/Base64InputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final decodingTable:[B


# instance fields
.field bufPtr:I

.field in:Ljava/io/InputStream;

.field outBuf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    const/16 v0, 0x41

    :goto_0
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x47

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    add-int/lit8 v2, v0, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->outBuf:[I

    iput v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    iput-object p1, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private decode(IIII[I)I
    .locals 3

    if-ltz p4, :cond_2

    const/16 v0, 0x3d

    const/4 v1, 0x2

    if-ne p3, v0, :cond_0

    sget-object p3, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte p1, p3, p1

    and-int/lit16 p1, p1, 0xff

    aget-byte p2, p3, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/2addr p1, v1

    shr-int/lit8 p2, p2, 0x4

    or-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, p5, v1

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne p4, v0, :cond_1

    sget-object p4, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte p1, p4, p1

    aget-byte p2, p4, p2

    aget-byte p3, p4, p3

    shl-int/2addr p1, v1

    shr-int/lit8 p4, p2, 0x4

    or-int/2addr p1, p4

    and-int/lit16 p1, p1, 0xff

    aput p1, p5, v2

    shl-int/lit8 p1, p2, 0x4

    shr-int/lit8 p2, p3, 0x2

    or-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, p5, v1

    return v2

    :cond_1
    sget-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte p1, v0, p1

    aget-byte p2, v0, p2

    aget-byte p3, v0, p3

    aget-byte p4, v0, p4

    shl-int/2addr p1, v1

    shr-int/lit8 v0, p2, 0x4

    or-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    aput p1, p5, v0

    shl-int/lit8 p1, p2, 0x4

    shr-int/lit8 p2, p3, 0x2

    or-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, p5, v2

    shl-int/lit8 p1, p3, 0x6

    or-int/2addr p1, p4

    and-int/lit16 p1, p1, 0xff

    aput p1, p5, v1

    return v0

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "unexpected end of file in armored stream."

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readIgnoreSpace()I
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    return v0
.end method

.method private readIgnoreSpaceFirst()I
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    return v0
.end method


# virtual methods
.method public available()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 8

    iget v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpaceFirst()I

    move-result v3

    if-gez v3, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpace()I

    move-result v4

    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpace()I

    move-result v5

    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpace()I

    move-result v6

    iget-object v7, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->outBuf:[I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decode(IIII[I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->outBuf:[I

    iget v1, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    aget v0, v0, v1

    return v0
.end method
