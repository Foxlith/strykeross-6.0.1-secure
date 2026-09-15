.class public Lorg/bouncycastle/util/encoders/Base32;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final encoder:Lorg/bouncycastle/util/encoders/Encoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/util/encoders/Base32Encoder;

    invoke-direct {v0}, Lorg/bouncycastle/util/encoders/Base32Encoder;-><init>()V

    sput-object v0, Lorg/bouncycastle/util/encoders/Base32;->encoder:Lorg/bouncycastle/util/encoders/Encoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/util/encoders/Base32;->encoder:Lorg/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1}, Lorg/bouncycastle/util/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public static decode([BIILjava/io/OutputStream;)I
    .locals 1

    :try_start_0
    sget-object v0, Lorg/bouncycastle/util/encoders/Base32;->encoder:Lorg/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/bouncycastle/util/encoders/Encoder;->decode([BIILjava/io/OutputStream;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/util/encoders/DecoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unable to decode base32 data: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p2}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v0, Lorg/bouncycastle/util/encoders/Base32;->encoder:Lorg/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, v1}, Lorg/bouncycastle/util/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/util/encoders/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to decode base32 string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p0, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static decode([B)[B
    .locals 4

    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v0, Lorg/bouncycastle/util/encoders/Base32;->encoder:Lorg/bouncycastle/util/encoders/Encoder;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3, v2, v1}, Lorg/bouncycastle/util/encoders/Encoder;->decode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/util/encoders/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to decode base32 data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {p0, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static encode([BIILjava/io/OutputStream;)I
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/util/encoders/Base32;->encoder:Lorg/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public static encode([BLjava/io/OutputStream;)I
    .locals 3

    .line 2
    sget-object v0, Lorg/bouncycastle/util/encoders/Base32;->encoder:Lorg/bouncycastle/util/encoders/Encoder;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1, p1}, Lorg/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public static encode([B)[B
    .locals 2

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/encoders/Base32;->encode([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([BII)[B
    .locals 3

    sget-object v0, Lorg/bouncycastle/util/encoders/Base32;->encoder:Lorg/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p2}, Lorg/bouncycastle/util/encoders/Encoder;->getEncodedLength(I)I

    move-result v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    invoke-interface {v0, p0, p1, p2, v2}, Lorg/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/util/encoders/EncoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception encoding base32 string: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p2}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toBase32String([B)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/encoders/Base32;->toBase32String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBase32String([BII)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/encoders/Base32;->encode([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
