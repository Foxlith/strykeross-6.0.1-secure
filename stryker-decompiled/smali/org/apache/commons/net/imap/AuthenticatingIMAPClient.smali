.class public Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;
.super Lorg/apache/commons/net/imap/IMAPSClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 6
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    .line 7
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

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
.method public auth(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->getAuthName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->isContinuation(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    sget-object v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$1;->$SwitchMap$org$apache$commons$net$imap$AuthenticatingIMAPClient$AUTH_METHOD:[I

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    aget p1, v0, p1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-eq p1, v0, :cond_b

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    if-eq p1, v2, :cond_8

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-eq p1, v2, :cond_4

    .line 35
    .line 36
    const/4 p3, 0x4

    .line 37
    if-eq p1, p3, :cond_1

    .line 38
    .line 39
    const/4 p3, 0x5

    .line 40
    if-eq p1, p3, :cond_1

    .line 41
    .line 42
    return v1

    .line 43
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/imap/IMAP;->sendData(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    sget-object p2, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    if-nez p1, :cond_3

    .line 55
    .line 56
    move v1, v0

    .line 57
    :cond_3
    return v1

    .line 58
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/imap/IMAP;->sendData(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eq p1, v2, :cond_5

    .line 75
    .line 76
    return v1

    .line 77
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/imap/IMAP;->sendData(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    sget-object p2, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 96
    .line 97
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    if-nez p1, :cond_7

    .line 101
    .line 102
    move v1, v0

    .line 103
    :cond_7
    return v1

    .line 104
    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v2, "HmacMD5"

    .line 121
    .line 122
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 127
    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-direct {v4, p3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->convertToHexString([B)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    array-length p3, p2

    .line 167
    add-int/2addr p3, v0

    .line 168
    array-length v2, p1

    .line 169
    add-int/2addr p3, v2

    .line 170
    new-array p3, p3, [B

    .line 171
    .line 172
    array-length v2, p2

    .line 173
    invoke-static {p2, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    .line 175
    .line 176
    array-length v2, p2

    .line 177
    const/16 v3, 0x20

    .line 178
    .line 179
    aput-byte v3, p3, v2

    .line 180
    .line 181
    array-length p2, p2

    .line 182
    add-int/2addr p2, v0

    .line 183
    array-length v2, p1

    .line 184
    invoke-static {p1, v1, p3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    invoke-static {p3}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/imap/IMAP;->sendData(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-nez p1, :cond_9

    .line 196
    .line 197
    sget-object p2, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 198
    .line 199
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 200
    .line 201
    .line 202
    :cond_9
    if-nez p1, :cond_a

    .line 203
    .line 204
    move v1, v0

    .line 205
    :cond_a
    return v1

    .line 206
    :cond_b
    const-string p1, "\u0000"

    .line 207
    .line 208
    invoke-static {p1, p2, p1, p3}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/imap/IMAP;->sendData(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-nez p1, :cond_c

    .line 229
    .line 230
    sget-object p2, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 231
    .line 232
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 233
    .line 234
    .line 235
    :cond_c
    if-nez p1, :cond_d

    .line 236
    .line 237
    move v1, v0

    .line 238
    :cond_d
    return v1
.end method

.method public authenticate(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->auth(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
