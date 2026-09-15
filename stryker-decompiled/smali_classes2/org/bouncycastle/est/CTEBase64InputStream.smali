.class Lorg/bouncycastle/est/CTEBase64InputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected final data:[B

.field protected final dataOutputStream:Ljava/io/OutputStream;

.field protected end:Z

.field protected final max:Ljava/lang/Long;

.field protected final rawBuf:[B

.field protected read:J

.field protected rp:I

.field protected final src:Ljava/io/InputStream;

.field protected wp:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    const/16 v0, 0x300

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->data:[B

    iput-object p1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    new-instance p1, Lorg/bouncycastle/est/CTEBase64InputStream$1;

    invoke-direct {p1, p0}, Lorg/bouncycastle/est/CTEBase64InputStream$1;-><init>(Lorg/bouncycastle/est/CTEBase64InputStream;)V

    iput-object p1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->dataOutputStream:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public pullFromSrc()I
    .locals 11

    .line 1
    iget-wide v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 2
    .line 3
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    move v2, v0

    .line 17
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v4, 0x21

    .line 24
    .line 25
    const-wide/16 v5, 0x1

    .line 26
    .line 27
    const/16 v7, 0xa

    .line 28
    .line 29
    if-ge v3, v4, :cond_3

    .line 30
    .line 31
    const/16 v4, 0xd

    .line 32
    .line 33
    if-eq v3, v4, :cond_3

    .line 34
    .line 35
    if-ne v3, v7, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-ltz v3, :cond_4

    .line 39
    .line 40
    iget-wide v8, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 41
    .line 42
    add-long/2addr v8, v5

    .line 43
    iput-wide v8, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    .line 47
    .line 48
    array-length v8, v4

    .line 49
    if-ge v2, v8, :cond_8

    .line 50
    .line 51
    add-int/lit8 v8, v2, 0x1

    .line 52
    .line 53
    int-to-byte v9, v3

    .line 54
    aput-byte v9, v4, v2

    .line 55
    .line 56
    iget-wide v9, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 57
    .line 58
    add-long/2addr v9, v5

    .line 59
    iput-wide v9, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 60
    .line 61
    move v2, v8

    .line 62
    :cond_4
    :goto_1
    if-le v3, v1, :cond_5

    .line 63
    .line 64
    iget-object v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    .line 65
    .line 66
    array-length v4, v4

    .line 67
    if-ge v2, v4, :cond_5

    .line 68
    .line 69
    if-eq v3, v7, :cond_5

    .line 70
    .line 71
    iget-wide v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 72
    .line 73
    iget-object v6, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    cmp-long v4, v4, v6

    .line 80
    .line 81
    if-ltz v4, :cond_1

    .line 82
    .line 83
    :cond_5
    if-lez v2, :cond_6

    .line 84
    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    .line 86
    .line 87
    iget-object v3, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->dataOutputStream:Ljava/io/OutputStream;

    .line 88
    .line 89
    invoke-static {v1, v0, v2, v3}, Lorg/bouncycastle/util/encoders/Base64;->decode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/io/IOException;

    .line 95
    .line 96
    const-string v2, "Decode Base64 Content-Transfer-Encoding: "

    .line 97
    .line 98
    invoke-static {v2, v0}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_6
    if-ne v3, v1, :cond_7

    .line 107
    .line 108
    return v1

    .line 109
    :cond_7
    :goto_2
    iget v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    .line 110
    .line 111
    return v0

    .line 112
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 113
    .line 114
    const-string v1, "Content Transfer Encoding, base64 line length > 1024"

    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0
.end method

.method public read()I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    iget v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    iput v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    invoke-virtual {p0}, Lorg/bouncycastle/est/CTEBase64InputStream;->pullFromSrc()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->data:[B

    iget v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
