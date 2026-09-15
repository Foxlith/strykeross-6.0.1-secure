.class public Lorg/apache/commons/net/pop3/ExtendedPOP3Client;
.super Lorg/apache/commons/net/pop3/POP3SClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>()V

    return-void
.end method

.method private convertToHexString([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xf

    if-gt v3, v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public auth(Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->getAuthName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(ILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    sget-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$1;->$SwitchMap$org$apache$commons$net$pop3$ExtendedPOP3Client$AUTH_METHOD:[I

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    aget p1, v0, p1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-eq p1, v0, :cond_3

    .line 26
    .line 27
    if-eq p1, v2, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getReplyString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v2, "HmacMD5"

    .line 47
    .line 48
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-direct {v4, p3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->convertToHexString([B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    array-length p3, p2

    .line 93
    add-int/2addr p3, v0

    .line 94
    array-length v2, p1

    .line 95
    add-int/2addr p3, v2

    .line 96
    new-array p3, p3, [B

    .line 97
    .line 98
    array-length v2, p2

    .line 99
    invoke-static {p2, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    array-length v2, p2

    .line 103
    const/16 v3, 0x20

    .line 104
    .line 105
    aput-byte v3, p3, v2

    .line 106
    .line 107
    array-length p2, p2

    .line 108
    add-int/2addr p2, v0

    .line 109
    array-length v2, p1

    .line 110
    invoke-static {p1, v1, p3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    .line 112
    .line 113
    invoke-static {p3}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_2

    .line 122
    .line 123
    move v1, v0

    .line 124
    :cond_2
    return v1

    .line 125
    :cond_3
    new-instance p1, Ljava/lang/String;

    .line 126
    .line 127
    const-string v2, "\u0000"

    .line 128
    .line 129
    invoke-static {v2, p2, v2, p3}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_4

    .line 157
    .line 158
    move v1, v0

    .line 159
    :cond_4
    return v1
.end method
