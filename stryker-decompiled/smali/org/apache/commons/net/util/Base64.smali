.class public Lorg/apache/commons/net/util/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final DECODE_TABLE:[B

.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private buffer:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private final encodeTable:[B

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/commons/net/util/NetConstants;->EMPTY_BTYE_ARRAY:[B

    move p1, v0

    :cond_0
    const/4 v1, 0x4

    if-lez p1, :cond_1

    div-int/lit8 v2, p1, 0x4

    mul-int/2addr v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput v2, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    array-length v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p1, :cond_2

    array-length p1, p2

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    goto :goto_1

    :cond_2
    iput v1, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    :goto_1
    iget p1, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/net/util/Base64;->decodeSize:I

    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->containsBase64Byte([B)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p3, :cond_3

    sget-object p1, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    goto :goto_2

    :cond_3
    sget-object p1, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    :goto_2
    iput-object p1, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    return-void

    :cond_4
    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "lineSeperator must not contain base64 characters: ["

    const-string v0, "]"

    .line 4
    invoke-static {p3, p1, v0}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 11
    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeBase64([B)[B
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->decodeBase64([B)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1

    .line 3
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZI)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 5

    .line 4
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x4c

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p1, :cond_2

    sget-object v2, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/apache/commons/net/util/NetConstants;->EMPTY_BTYE_ARRAY:[B

    :goto_1
    invoke-static {p0, v1, v2}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v1

    int-to-long v3, p3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_4

    if-eqz p1, :cond_3

    new-instance p1, Lorg/apache/commons/net/util/Base64;

    invoke-direct {p1, p2}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/apache/commons/net/util/Base64;

    sget-object p3, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    :goto_2
    invoke-virtual {p1, p0}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Input array too big, the output array would be bigger ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ") than the specified maxium size of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    return-object p0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64String([BZ)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64StringUnChunked([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 1

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method private getBytesUtf8(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method private static getEncodeLength([BI[B)J
    .locals 8

    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x4

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    div-int/lit8 p0, p0, 0x3

    int-to-long v0, p0

    const-wide/16 v2, 0x4

    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    if-lez p1, :cond_2

    int-to-long p0, p1

    rem-long v2, v0, p0

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    div-long p0, v0, p0

    array-length v3, p2

    int-to-long v3, v3

    mul-long/2addr p0, v3

    add-long/2addr v0, p0

    if-nez v2, :cond_2

    array-length p0, p2

    int-to-long p0, p0

    add-long/2addr v0, p0

    :cond_2
    return-wide v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isWhiteSpace(B)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isBase64(B)Z
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static newStringUtf8([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    iput-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    return-void
.end method

.method private resizeBuffer()V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    goto :goto_0

    :cond_0
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    :goto_0
    return-void
.end method

.method public static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 5

    const-string v0, "bigInt"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    rem-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    div-int/lit8 v4, v0, 0x8

    if-ne v2, v4, :cond_0

    return-object v1

    :cond_0
    array-length v2, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    rem-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    div-int/lit8 v0, v0, 0x8

    sub-int p0, v0, v2

    new-array v0, v0, [B

    invoke-static {v1, v3, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public avail()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public decode([BII)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-gez p3, :cond_1

    iput-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, p3, :cond_6

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v3, :cond_2

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->decodeSize:I

    if-ge v3, v4, :cond_3

    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    :cond_3
    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    const/16 v4, 0x3d

    if-ne p2, v4, :cond_4

    iput-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    goto :goto_1

    :cond_4
    if-ltz p2, :cond_5

    sget-object v4, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v5, v4

    if-ge p2, v5, :cond_5

    aget-byte p2, v4, p2

    if-ltz p2, :cond_5

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v5, p2

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->x:I

    if-nez v4, :cond_5

    iget-object p2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, p2, v4

    add-int/lit8 v7, v4, 0x2

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, p2, v6

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    and-int/lit16 v2, v5, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v7

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move p2, v3

    goto :goto_0

    :cond_6
    :goto_1
    iget-boolean p1, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-eqz p1, :cond_9

    iget p2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 p3, p2, 0x6

    iput p3, p0, Lorg/apache/commons/net/util/Base64;->x:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    if-eq p1, v2, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p3, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/2addr p2, v0

    iput p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    goto :goto_2

    :cond_8
    shl-int/lit8 p1, p2, 0xc

    iput p1, p0, Lorg/apache/commons/net/util/Base64;->x:I

    iget-object p2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget p3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    :cond_9
    :goto_2
    return-void
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/Base64;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public decode([B)[B
    .locals 3

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->reset()V

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    long-to-int v0, v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/util/Base64;->setInitialBuffer([BII)V

    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/net/util/Base64;->decode([BII)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/net/util/Base64;->decode([BII)V

    iget p1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    new-array v0, p1, [B

    invoke-virtual {p0, v0, v2, p1}, Lorg/apache/commons/net/util/Base64;->readResults([BII)I

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public encode([BII)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p3, :cond_6

    iput-boolean v1, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    iget-object p1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz p1, :cond_1

    array-length p1, p1

    iget p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    if-ge p1, p2, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    :cond_2
    iget p1, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    const/16 p2, 0x3d

    if-eq p1, v1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v5, v4, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v3, v5

    aput-byte v5, p1, v1

    add-int/lit8 v5, v1, 0x2

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v3, v6

    aput-byte v6, p1, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shl-int/lit8 p3, v4, 0x2

    and-int/lit8 p3, p3, 0x3f

    aget-byte p3, v3, p3

    aput-byte p3, p1, v5

    sget-object p3, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, p3, :cond_5

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte p2, p1, v2

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget p3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v1, p3, 0x1

    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v3, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v2, v4

    aput-byte v4, p1, p3

    add-int/lit8 v4, p3, 0x2

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v2, v3

    aput-byte v3, p1, v1

    sget-object v1, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v2, v1, :cond_5

    add-int/lit8 v1, p3, 0x3

    aput-byte p2, p1, v4

    add-int/lit8 p3, p3, 0x4

    iput p3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte p2, p1, v1

    :cond_5
    :goto_0
    iget p1, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    if-lez p1, :cond_b

    iget p1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-lez p1, :cond_b

    iget-object p2, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget-object p3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v1, p2

    invoke-static {p2, v0, p3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object p2, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    goto/16 :goto_2

    :cond_6
    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_b

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v3, :cond_7

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    if-ge v3, v4, :cond_8

    :cond_7
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    :cond_8
    iget v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_9

    add-int/lit16 p2, p2, 0x100

    :cond_9
    iget v5, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, p2

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->x:I

    if-nez v3, :cond_a

    iget-object p2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    shr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, p2, v3

    add-int/lit8 v8, v3, 0x2

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v7, v9

    aput-byte v9, p2, v6

    add-int/lit8 v6, v3, 0x3

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v7, v9

    aput-byte v9, p2, v8

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v7, v5

    aput-byte v5, p2, v6

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    if-lez v6, :cond_a

    if-gt v6, v5, :cond_a

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v6, v5

    invoke-static {v5, v0, p2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v3, v3

    add-int/2addr p2, v3

    iput p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move p2, v4

    goto :goto_1

    :cond_b
    :goto_2
    return-void
.end method

.method public encode([B)[B
    .locals 4

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->reset()V

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-static {p1, v0, v1}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/util/Base64;->setInitialBuffer([BII)V

    array-length v3, p1

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/commons/net/util/Base64;->encode([BII)V

    const/4 v3, -0x1

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/commons/net/util/Base64;->encode([BII)V

    iget-object p1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eq p1, v1, :cond_1

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/util/Base64;->readResults([BII)I

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->isUrlSafe()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-ge p1, v0, :cond_2

    new-array v0, p1, [B

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLineLength()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    return v0
.end method

.method public getLineSeparator()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUrlSafe()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readResults([BII)I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->avail()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    iget p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-lt p1, p2, :cond_1

    :cond_0
    iput-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    :cond_1
    return p3

    :cond_2
    iget-boolean p1, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setInitialBuffer([BII)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p3, :cond_0

    iput-object p1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iput p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput p2, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    :cond_0
    return-void
.end method
