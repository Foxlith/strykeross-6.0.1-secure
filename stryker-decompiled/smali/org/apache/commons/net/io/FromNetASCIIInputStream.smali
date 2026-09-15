.class public final Lorg/apache/commons/net/io/FromNetASCIIInputStream;
.super Ljava/io/PushbackInputStream;
.source "SourceFile"


# static fields
.field static final _lineSeparator:Ljava/lang/String;

.field static final _lineSeparatorBytes:[B

.field static final _noConversionRequired:Z


# instance fields
.field private length:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public static isConversionRequired()Z
    .locals 1

    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readInt()I
    .locals 3

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    :cond_2
    return v0
.end method


# virtual methods
.method public available()I
    .locals 2

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 1

    .line 1
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    .line 3
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    if-ge p3, v0, :cond_2

    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->readInt()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    return v1

    :cond_3
    move v2, p2

    :goto_0
    add-int/lit8 v3, v2, 0x1

    int-to-byte p3, p3

    aput-byte p3, p1, v2

    iget p3, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    sub-int/2addr p3, v0

    iput p3, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    if-lez p3, :cond_5

    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->readInt()I

    move-result p3

    if-ne p3, v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    :goto_1
    sub-int/2addr v3, p2

    return v3
.end method
