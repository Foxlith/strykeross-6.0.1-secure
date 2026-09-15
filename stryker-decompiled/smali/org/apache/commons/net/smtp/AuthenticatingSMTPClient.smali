.class public Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;
.super Lorg/apache/commons/net/smtp/SMTPSClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public static synthetic a([Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->lambda$getEnhancedReplyCode$0([Ljava/lang/String;I)I

    move-result p0

    return p0
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

.method private static synthetic lambda$getEnhancedReplyCode$0([Ljava/lang/String;I)I
    .locals 0

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public auth(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->getAuthName(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

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
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string p1, "\u0000"

    .line 28
    .line 29
    invoke-static {p1, p2, p1, p3}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_1
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReplyString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 v0, 0x4

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v0, "HmacMD5"

    .line 80
    .line 81
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {p3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-direct {v3, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->convertToHexString([B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    array-length p3, p2

    .line 126
    add-int/lit8 p3, p3, 0x1

    .line 127
    .line 128
    array-length v0, p1

    .line 129
    add-int/2addr p3, v0

    .line 130
    new-array p3, p3, [B

    .line 131
    .line 132
    array-length v0, p2

    .line 133
    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    .line 135
    .line 136
    array-length v0, p2

    .line 137
    const/16 v2, 0x20

    .line 138
    .line 139
    aput-byte v2, p3, v0

    .line 140
    .line 141
    array-length p2, p2

    .line 142
    add-int/lit8 p2, p2, 0x1

    .line 143
    .line 144
    array-length v0, p1

    .line 145
    invoke-static {p1, v1, p3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .line 147
    .line 148
    invoke-static {p3}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    return p1

    .line 161
    :cond_2
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_3

    .line 190
    .line 191
    return v1

    .line 192
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    return p1

    .line 213
    :cond_4
    sget-object p3, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 214
    .line 215
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p3

    .line 219
    if-nez p3, :cond_6

    .line 220
    .line 221
    sget-object p3, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH2:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 222
    .line 223
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_5

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_5
    return v1

    .line 231
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    return p1
.end method

.method public ehlo(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public elogin()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->ehlo(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public elogin(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->ehlo(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public getEnhancedReplyCode()[I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    new-instance v2, Linet/ipaddr/format/standard/b;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Linet/ipaddr/format/standard/b;-><init>(ILjava/io/Serializable;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    return-object v1
.end method
