.class public Lorg/apache/commons/codec/binary/Base32;
.super Lorg/apache/commons/codec/binary/BaseNCodec;
.source "SourceFile"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x5

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x8

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x5

.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final HEX_DECODE_TABLE:[B

.field private static final HEX_ENCODE_TABLE:[B

.field private static final MASK_1BITS:J = 0x1L

.field private static final MASK_2BITS:J = 0x3L

.field private static final MASK_3BITS:J = 0x7L

.field private static final MASK_4BITS:J = 0xfL

.field private static final MASK_5BITS:I = 0x1f


# instance fields
.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->DECODE_TABLE:[B

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/codec/binary/Base32;->ENCODE_TABLE:[B

    const/16 v1, 0x77

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    return-void

    nop

    :array_0
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
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
    .end array-data

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
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    :array_2
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
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
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
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
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
    .end array-data

    :array_3
    .array-data 1
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/codec/binary/Base32;-><init>(ZB)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/commons/codec/binary/BaseNCodec;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .line 4
    const/4 v0, 0x0

    const/16 v1, 0x3d

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1

    .line 5
    const/16 v0, 0x3d

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    return-void
.end method

.method public constructor <init>(I[BZB)V
    .locals 6

    .line 6
    sget-object v5, Lorg/apache/commons/codec/binary/BaseNCodec;->DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZBLorg/apache/commons/codec/CodecPolicy;)V

    return-void
.end method

.method public constructor <init>(I[BZBLorg/apache/commons/codec/CodecPolicy;)V
    .locals 8

    const/4 v1, 0x5

    const/16 v2, 0x8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    array-length v0, p2

    move v4, v0

    :goto_0
    move-object v0, p0

    move v3, p1

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIBLorg/apache/commons/codec/CodecPolicy;)V

    if-eqz p3, :cond_1

    sget-object p3, Lorg/apache/commons/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    iput-object p3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    sget-object p3, Lorg/apache/commons/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    iput-object p3, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    goto :goto_1

    :cond_1
    sget-object p3, Lorg/apache/commons/codec/binary/Base32;->ENCODE_TABLE:[B

    iput-object p3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    sget-object p3, Lorg/apache/commons/codec/binary/Base32;->DECODE_TABLE:[B

    iput-object p3, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    :goto_1
    const/16 p3, 0x8

    if-lez p1, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/binary/BaseNCodec;->containsAlphabetOrPad([B)Z

    move-result p1

    if-nez p1, :cond_2

    array-length p1, p2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length p3, p2

    invoke-static {p2, v7, p1, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "lineSeparator must not contain Base32 characters: ["

    const-string p4, "]"

    .line 7
    invoke-static {p3, p1, p4}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "lineLength "

    const-string p4, " > 0, but lineSeparator is null"

    .line 9
    invoke-static {p3, p1, p4}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    iput p3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    :goto_2
    iget p1, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, p4}, Lorg/apache/commons/codec/binary/Base32;->isInAlphabet(B)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pad must not be in alphabet or whitespace"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 21
    const/4 v0, 0x0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, p1, v1}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    return-void
.end method

.method public constructor <init>(ZB)V
    .locals 2

    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    return-void
.end method

.method private validateCharacter(JLorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->isStrictDecoding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p3, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Strict decoding: Last encoded character (before the paddings if any) is a valid base 32 alphabet but not a possible encoding. Expected the discarded bits from the character to be zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private validateTrailingCharacters()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->isStrictDecoding()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strict decoding: Last encoded character(s) (before the paddings if any) are valid base 32 alphabet but not a possible encoding. Decoding requires either 2, 4, 5, or 7 trailing 5-bit characters to create bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    iget-boolean v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    if-gez v1, :cond_1

    iput-boolean v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    :cond_1
    const/4 v4, 0x0

    move v5, v4

    move/from16 v4, p2

    :goto_0
    const-wide/16 v6, 0xff

    if-ge v5, v1, :cond_4

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p1, v4

    iget-byte v9, v0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    if-ne v4, v9, :cond_2

    iput-boolean v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    goto :goto_1

    :cond_2
    iget v9, v0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {v0, v9, v2}, Lorg/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v9

    if-ltz v4, :cond_3

    iget-object v10, v0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    array-length v11, v10

    if-ge v4, v11, :cond_3

    aget-byte v4, v10, v4

    if-ltz v4, :cond_3

    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/2addr v10, v3

    const/16 v11, 0x8

    rem-int/2addr v10, v11

    iput v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    iget-wide v12, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v14, 0x5

    shl-long/2addr v12, v14

    int-to-long v3, v4

    add-long/2addr v12, v3

    iput-wide v12, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    if-nez v10, :cond_3

    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    const/16 v10, 0x20

    shr-long v16, v12, v10

    and-long v14, v16, v6

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v9, v3

    add-int/lit8 v14, v3, 0x2

    const/16 v15, 0x18

    shr-long v15, v12, v15

    and-long v10, v15, v6

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v9, v4

    add-int/lit8 v4, v3, 0x3

    const/16 v10, 0x10

    shr-long v10, v12, v10

    and-long/2addr v10, v6

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v9, v14

    add-int/lit8 v10, v3, 0x4

    const/16 v11, 0x8

    shr-long v14, v12, v11

    and-long/2addr v14, v6

    long-to-int v11, v14

    int-to-byte v11, v11

    aput-byte v11, v9, v4

    const/4 v4, 0x5

    add-int/2addr v3, v4

    iput v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    and-long v3, v12, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v10

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v4, v8

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean v1, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v1, :cond_5

    iget v1, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-lez v1, :cond_5

    iget v1, v0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v8, 0x2

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Impossible modulus "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-wide/16 v8, 0x7

    invoke-direct {v0, v8, v9, v2}, Lorg/apache/commons/codec/binary/Base32;->validateCharacter(JLorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    iget-wide v8, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long v10, v8, v5

    iput-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v5, v3, 0x1

    const/16 v12, 0x1b

    shr-long v12, v8, v12

    and-long/2addr v12, v6

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    add-int/lit8 v12, v3, 0x2

    const/16 v13, 0x13

    shr-long v13, v8, v13

    and-long/2addr v13, v6

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v1, v5

    add-int/lit8 v5, v3, 0x3

    const/16 v13, 0xb

    shr-long/2addr v8, v13

    and-long/2addr v8, v6

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v12

    add-int/2addr v3, v4

    iput v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    and-long v2, v10, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    goto/16 :goto_2

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/codec/binary/Base32;->validateTrailingCharacters()V

    iget-wide v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v8, 0x6

    shr-long v8, v3, v8

    iput-wide v8, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0x16

    shr-long v12, v3, v12

    and-long/2addr v12, v6

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v10

    add-int/lit8 v12, v10, 0x2

    const/16 v13, 0xe

    shr-long/2addr v3, v13

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    add-int/2addr v10, v5

    iput v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    and-long v2, v8, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v12

    goto/16 :goto_2

    :pswitch_2
    const-wide/16 v3, 0x1

    invoke-direct {v0, v3, v4, v2}, Lorg/apache/commons/codec/binary/Base32;->validateCharacter(JLorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    iget-wide v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v8, 0x1

    shr-long v8, v3, v8

    iput-wide v8, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0x11

    shr-long v12, v3, v12

    and-long/2addr v12, v6

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v10

    add-int/lit8 v12, v10, 0x2

    const/16 v13, 0x9

    shr-long/2addr v3, v13

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    add-int/2addr v10, v5

    iput v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    and-long v2, v8, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v12

    goto :goto_2

    :pswitch_3
    const-wide/16 v9, 0xf

    invoke-direct {v0, v9, v10, v2}, Lorg/apache/commons/codec/binary/Base32;->validateCharacter(JLorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    iget-wide v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long v3, v9, v4

    iput-wide v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v5, 0x1

    const/16 v12, 0xc

    shr-long/2addr v9, v12

    and-long/2addr v9, v6

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v1, v5

    add-int/2addr v5, v8

    iput v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    and-long v2, v3, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    goto :goto_2

    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/codec/binary/Base32;->validateTrailingCharacters()V

    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v2, 0x7

    shr-long/2addr v4, v2

    and-long/2addr v4, v6

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_2

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/codec/binary/Base32;->validateTrailingCharacters()V

    :pswitch_6
    const-wide/16 v3, 0x3

    invoke-direct {v0, v3, v4, v2}, Lorg/apache/commons/codec/binary/Base32;->validateCharacter(JLorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v4, v8

    and-long/2addr v4, v6

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    iget-boolean v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v1, :cond_7

    iput-boolean v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    iget v1, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v1, :cond_1

    iget v1, v0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v1, v0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-eqz v6, :cond_6

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v6, v4, :cond_5

    const/4 v9, 0x4

    if-eq v6, v8, :cond_4

    if-eq v6, v7, :cond_3

    if-ne v6, v9, :cond_2

    add-int/lit8 v4, v5, 0x1

    iget-object v6, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v11, 0x1b

    shr-long v11, v9, v11

    long-to-int v11, v11

    and-int/lit8 v11, v11, 0x1f

    aget-byte v11, v6, v11

    aput-byte v11, v1, v5

    add-int/lit8 v11, v5, 0x2

    const/16 v12, 0x16

    shr-long v12, v9, v12

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0x1f

    aget-byte v12, v6, v12

    aput-byte v12, v1, v4

    add-int/lit8 v4, v5, 0x3

    const/16 v12, 0x11

    shr-long v12, v9, v12

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0x1f

    aget-byte v12, v6, v12

    aput-byte v12, v1, v11

    add-int/lit8 v11, v5, 0x4

    const/16 v12, 0xc

    shr-long v12, v9, v12

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0x1f

    aget-byte v12, v6, v12

    aput-byte v12, v1, v4

    add-int/lit8 v4, v5, 0x5

    const/4 v12, 0x7

    shr-long v12, v9, v12

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0x1f

    aget-byte v12, v6, v12

    aput-byte v12, v1, v11

    add-int/lit8 v11, v5, 0x6

    shr-long v12, v9, v8

    long-to-int v8, v12

    and-int/lit8 v8, v8, 0x1f

    aget-byte v8, v6, v8

    aput-byte v8, v1, v4

    add-int/lit8 v4, v5, 0x7

    shl-long v7, v9, v7

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v11

    add-int/lit8 v6, v5, 0x8

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, v0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    aput-byte v6, v1, v4

    goto/16 :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Impossible modulus "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    add-int/lit8 v6, v5, 0x1

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x13

    shr-long v12, v10, v8

    long-to-int v8, v12

    and-int/lit8 v8, v8, 0x1f

    aget-byte v8, v7, v8

    aput-byte v8, v1, v5

    add-int/lit8 v8, v5, 0x2

    const/16 v12, 0xe

    shr-long v12, v10, v12

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0x1f

    aget-byte v12, v7, v12

    aput-byte v12, v1, v6

    add-int/lit8 v6, v5, 0x3

    const/16 v12, 0x9

    shr-long v12, v10, v12

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0x1f

    aget-byte v12, v7, v12

    aput-byte v12, v1, v8

    add-int/lit8 v8, v5, 0x4

    shr-long v12, v10, v9

    long-to-int v9, v12

    and-int/lit8 v9, v9, 0x1f

    aget-byte v9, v7, v9

    aput-byte v9, v1, v6

    add-int/lit8 v6, v5, 0x5

    shl-long v9, v10, v4

    long-to-int v4, v9

    and-int/lit8 v4, v4, 0x1f

    aget-byte v4, v7, v4

    aput-byte v4, v1, v8

    add-int/lit8 v4, v5, 0x6

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    aput-byte v7, v1, v6

    add-int/lit8 v6, v5, 0x7

    aput-byte v7, v1, v4

    add-int/lit8 v4, v5, 0x8

    iput v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v7, v1, v6

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v6, v5, 0x1

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0xb

    shr-long v12, v10, v8

    long-to-int v8, v12

    and-int/lit8 v8, v8, 0x1f

    aget-byte v8, v7, v8

    aput-byte v8, v1, v5

    add-int/lit8 v8, v5, 0x2

    const/4 v12, 0x6

    shr-long v12, v10, v12

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0x1f

    aget-byte v12, v7, v12

    aput-byte v12, v1, v6

    add-int/lit8 v6, v5, 0x3

    shr-long v12, v10, v4

    long-to-int v4, v12

    and-int/lit8 v4, v4, 0x1f

    aget-byte v4, v7, v4

    aput-byte v4, v1, v8

    add-int/lit8 v4, v5, 0x4

    shl-long v8, v10, v9

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v1, v6

    add-int/lit8 v6, v5, 0x5

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    aput-byte v7, v1, v4

    add-int/lit8 v4, v5, 0x6

    aput-byte v7, v1, v6

    add-int/lit8 v6, v5, 0x7

    aput-byte v7, v1, v4

    add-int/lit8 v4, v5, 0x8

    iput v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v7, v1, v6

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v5, 0x1

    iget-object v6, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long v11, v9, v7

    long-to-int v7, v11

    and-int/lit8 v7, v7, 0x1f

    aget-byte v7, v6, v7

    aput-byte v7, v1, v5

    add-int/lit8 v7, v5, 0x2

    shl-long v8, v9, v8

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v6, v6, v8

    aput-byte v6, v1, v4

    add-int/lit8 v4, v5, 0x3

    iget-byte v6, v0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    aput-byte v6, v1, v7

    add-int/lit8 v7, v5, 0x4

    aput-byte v6, v1, v4

    add-int/lit8 v4, v5, 0x5

    aput-byte v6, v1, v7

    add-int/lit8 v7, v5, 0x6

    aput-byte v6, v1, v4

    add-int/lit8 v4, v5, 0x7

    aput-byte v6, v1, v7

    add-int/lit8 v7, v5, 0x8

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v6, v1, v4

    :cond_6
    :goto_0
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    sub-int v5, v6, v5

    add-int/2addr v5, v4

    iput v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v4, v0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v4, :cond_b

    if-lez v5, :cond_b

    iget-object v4, v0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v5, v4

    invoke-static {v4, v3, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, v0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v3, v3

    add-int/2addr v1, v3

    iput v1, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    goto/16 :goto_3

    :cond_7
    move/from16 v5, p2

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_b

    iget v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    invoke-virtual {v0, v7, v2}, Lorg/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v7

    iget v8, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/2addr v8, v4

    const/4 v9, 0x5

    rem-int/2addr v8, v9

    iput v8, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v10, v5, 0x1

    aget-byte v5, p1, v5

    if-gez v5, :cond_8

    add-int/lit16 v5, v5, 0x100

    :cond_8
    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v13, 0x8

    shl-long/2addr v11, v13

    int-to-long v14, v5

    add-long/2addr v11, v14

    iput-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    if-nez v8, :cond_a

    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v8, v5, 0x1

    iget-object v14, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    const/16 v15, 0x23

    shr-long v3, v11, v15

    long-to-int v3, v3

    and-int/lit8 v3, v3, 0x1f

    aget-byte v3, v14, v3

    aput-byte v3, v7, v5

    add-int/lit8 v3, v5, 0x2

    const/16 v4, 0x1e

    move v15, v10

    shr-long v9, v11, v4

    long-to-int v4, v9

    and-int/lit8 v4, v4, 0x1f

    aget-byte v4, v14, v4

    aput-byte v4, v7, v8

    add-int/lit8 v4, v5, 0x3

    const/16 v8, 0x19

    shr-long v8, v11, v8

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v8, v14, v8

    aput-byte v8, v7, v3

    add-int/lit8 v3, v5, 0x4

    const/16 v8, 0x14

    shr-long v8, v11, v8

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v8, v14, v8

    aput-byte v8, v7, v4

    add-int/lit8 v4, v5, 0x5

    const/16 v8, 0xf

    shr-long v8, v11, v8

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v8, v14, v8

    aput-byte v8, v7, v3

    add-int/lit8 v3, v5, 0x6

    const/16 v8, 0xa

    shr-long v8, v11, v8

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v8, v14, v8

    aput-byte v8, v7, v4

    add-int/lit8 v4, v5, 0x7

    const/4 v8, 0x5

    shr-long v8, v11, v8

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v8, v14, v8

    aput-byte v8, v7, v3

    add-int/2addr v5, v13

    iput v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    long-to-int v3, v11

    and-int/lit8 v3, v3, 0x1f

    aget-byte v3, v14, v3

    aput-byte v3, v7, v4

    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/2addr v3, v13

    iput v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v4, v0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v4, :cond_9

    if-gt v4, v3, :cond_9

    iget-object v3, v0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v4, v3

    const/4 v8, 0x0

    invoke-static {v3, v8, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, v0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iput v8, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    :cond_a
    move v8, v3

    move v15, v10

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v3, v8

    move v5, v15

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_b
    :goto_3
    return-void
.end method

.method public isInAlphabet(B)Z
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-byte p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
