.class Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/est/ESTClientSourceProvider;


# instance fields
.field private final absoluteLimit:Ljava/lang/Long;

.field private final bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

.field private final cipherSuites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filterSupportedSuites:Z

.field private final hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final timeout:I


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;ILorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/util/Set;Ljava/lang/Long;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;",
            "I",
            "Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    iput p3, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->timeout:I

    iput-object p4, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iput-object p5, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    iput-object p6, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->absoluteLimit:Ljava/lang/Long;

    iput-boolean p7, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->filterSupportedSuites:Z

    return-void
.end method


# virtual methods
.method public makeSource(Ljava/lang/String;I)Lorg/bouncycastle/est/Source;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Ljavax/net/ssl/SSLSocket;

    .line 8
    .line 9
    iget v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->timeout:I

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    .line 15
    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_5

    .line 23
    .line 24
    iget-boolean v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->filterSupportedSuites:Z

    .line 25
    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    array-length v3, v1

    .line 39
    if-eq v2, v3, :cond_0

    .line 40
    .line 41
    aget-object v3, v1, v2

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, [Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    const-string p2, "No supplied cipher suite is supported by the provider."

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    new-array v1, v1, [Ljava/lang/String;

    .line 119
    .line 120
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, [Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 133
    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;->verified(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 148
    .line 149
    const-string p2, "Host name could not be verified."

    .line 150
    .line 151
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :cond_7
    :goto_3
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v1, "_des_"

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_e

    .line 174
    .line 175
    const-string v1, "_des40_"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_e

    .line 182
    .line 183
    const-string v1, "_3des_"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_e

    .line 190
    .line 191
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const-string v1, "null"

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-nez v0, :cond_d

    .line 210
    .line 211
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v1, "anon"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_c

    .line 230
    .line 231
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const-string v1, "export"

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-nez v0, :cond_b

    .line 250
    .line 251
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string v1, "tlsv1"

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_a

    .line 266
    .line 267
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 268
    .line 269
    if-eqz v0, :cond_9

    .line 270
    .line 271
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;->verified(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_8

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_8
    new-instance p2, Ljava/io/IOException;

    .line 283
    .line 284
    const-string v0, "Hostname was not verified: "

    .line 285
    .line 286
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw p2

    .line 294
    :cond_9
    :goto_4
    new-instance p1, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;

    .line 295
    .line 296
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    .line 297
    .line 298
    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->absoluteLimit:Ljava/lang/Long;

    .line 299
    .line 300
    invoke-direct {p1, p2, v0, v1}, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;-><init>(Ljavax/net/ssl/SSLSocket;Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/lang/Long;)V

    .line 301
    .line 302
    .line 303
    return-object p1

    .line 304
    :cond_a
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .line 306
    .line 307
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 308
    .line 309
    const-string p2, "EST clients must not use TLSv1"

    .line 310
    .line 311
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw p1

    .line 315
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 316
    .line 317
    const-string p2, "EST clients must not use export ciphers"

    .line 318
    .line 319
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw p1

    .line 323
    :cond_c
    new-instance p1, Ljava/io/IOException;

    .line 324
    .line 325
    const-string p2, "EST clients must not use anon ciphers"

    .line 326
    .line 327
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw p1

    .line 331
    :cond_d
    new-instance p1, Ljava/io/IOException;

    .line 332
    .line 333
    const-string p2, "EST clients must not use NULL ciphers"

    .line 334
    .line 335
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :cond_e
    new-instance p1, Ljava/io/IOException;

    .line 340
    .line 341
    const-string p2, "EST clients must not use DES ciphers"

    .line 342
    .line 343
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw p1
.end method
