.class public Lorg/apache/commons/codec/binary/Base16;
.super Lorg/apache/commons/codec/binary/BaseNCodec;
.source "SourceFile"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x4

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x2

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x1

.field private static final LOWER_CASE_DECODE_TABLE:[B

.field private static final LOWER_CASE_ENCODE_TABLE:[B

.field private static final MASK_4BITS:I = 0xf

.field private static final UPPER_CASE_DECODE_TABLE:[B

.field private static final UPPER_CASE_ENCODE_TABLE:[B


# instance fields
.field private final decodeTable:[B

.field private final encodeTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x47

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/Base16;->UPPER_CASE_DECODE_TABLE:[B

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/codec/binary/Base16;->UPPER_CASE_ENCODE_TABLE:[B

    const/16 v1, 0x67

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/codec/binary/Base16;->LOWER_CASE_DECODE_TABLE:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/binary/Base16;->LOWER_CASE_ENCODE_TABLE:[B

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
    .end array-data

    :array_1
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
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base16;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/codec/binary/BaseNCodec;->DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base16;-><init>(ZLorg/apache/commons/codec/CodecPolicy;)V

    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/codec/CodecPolicy;)V
    .locals 7

    .line 3
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3d

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIBLorg/apache/commons/codec/CodecPolicy;)V

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/commons/codec/binary/Base16;->LOWER_CASE_ENCODE_TABLE:[B

    iput-object p1, p0, Lorg/apache/commons/codec/binary/Base16;->encodeTable:[B

    sget-object p1, Lorg/apache/commons/codec/binary/Base16;->LOWER_CASE_DECODE_TABLE:[B

    iput-object p1, p0, Lorg/apache/commons/codec/binary/Base16;->decodeTable:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/commons/codec/binary/Base16;->UPPER_CASE_ENCODE_TABLE:[B

    iput-object p1, p0, Lorg/apache/commons/codec/binary/Base16;->encodeTable:[B

    sget-object p1, Lorg/apache/commons/codec/binary/Base16;->UPPER_CASE_DECODE_TABLE:[B

    iput-object p1, p0, Lorg/apache/commons/codec/binary/Base16;->decodeTable:[B

    :goto_0
    return-void
.end method

.method private decodeOctet(B)I
    .locals 4

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base16;->decodeTable:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, -0x1

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    aget-byte v0, v1, p1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v3

    .line 13
    :goto_0
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Invalid octet in encoded value: "

    .line 19
    .line 20
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method private validateTrailingCharacter()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->isStrictDecoding()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strict decoding: Last encoded character is a valid base 16 alphabetcharacter but not a possible encoding. Decoding requires at least two characters to create one byte."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 8

    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    if-gez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    add-int/2addr v0, p3

    if-ne v0, v1, :cond_2

    if-ne v0, p3, :cond_2

    aget-byte p1, p1, p2

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/binary/Base16;->decodeOctet(B)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    return-void

    :cond_2
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v0, -0x1

    :goto_1
    div-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v4, p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v4

    const/4 v5, 0x2

    if-ge p3, v0, :cond_4

    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v6, p2, 0x1

    aget-byte p2, p1, p2

    invoke-direct {p0, p2}, Lorg/apache/commons/codec/binary/Base16;->decodeOctet(B)I

    move-result p2

    or-int/2addr p2, v0

    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    int-to-byte p2, p2

    aput-byte p2, v4, v0

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    move v2, v5

    move p2, v6

    :cond_4
    :goto_2
    if-ge v2, v3, :cond_5

    add-int/lit8 v0, p2, 0x1

    aget-byte v6, p1, p2

    invoke-direct {p0, v6}, Lorg/apache/commons/codec/binary/Base16;->decodeOctet(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr p2, v5

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base16;->decodeOctet(B)I

    move-result v0

    or-int/2addr v0, v6

    add-int/lit8 v2, v2, 0x2

    iget v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    goto :goto_2

    :cond_5
    if-ge v2, p3, :cond_6

    aget-byte p1, p1, v2

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/binary/Base16;->decodeOctet(B)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    :cond_6
    return-void

    :cond_7
    :goto_3
    iput-boolean v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    iget p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lorg/apache/commons/codec/binary/Base16;->validateTrailingCharacter()V

    :cond_8
    return-void
.end method

.method public encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 6

    .line 1
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-gez p3, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    mul-int/lit8 v0, p3, 0x2

    .line 13
    .line 14
    if-ltz v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    add-int/2addr p3, p2

    .line 21
    :goto_0
    if-ge p2, p3, :cond_2

    .line 22
    .line 23
    aget-byte v1, p1, p2

    .line 24
    .line 25
    shr-int/lit8 v2, v1, 0x4

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0xf

    .line 28
    .line 29
    and-int/lit8 v1, v1, 0xf

    .line 30
    .line 31
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 32
    .line 33
    add-int/lit8 v4, v3, 0x1

    .line 34
    .line 35
    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base16;->encodeTable:[B

    .line 36
    .line 37
    aget-byte v2, v5, v2

    .line 38
    .line 39
    aput-byte v2, v0, v3

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x2

    .line 42
    .line 43
    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 44
    .line 45
    aget-byte v1, v5, v1

    .line 46
    .line 47
    aput-byte v1, v0, v4

    .line 48
    .line 49
    add-int/lit8 p2, p2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string p2, "Input length exceeds maximum size for encoded data: "

    .line 56
    .line 57
    invoke-static {p2, p3}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public isInAlphabet(B)Z
    .locals 3

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base16;->decodeTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-byte p1, v1, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
