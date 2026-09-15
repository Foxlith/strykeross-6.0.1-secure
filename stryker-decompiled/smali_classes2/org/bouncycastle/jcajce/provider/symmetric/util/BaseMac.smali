.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE;


# static fields
.field private static final gcmSpecClass:Ljava/lang/Class;


# instance fields
.field private keySize:I

.field private macEngine:Lorg/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private scheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    return-void
.end method

.method private static copyMap(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public engineDoFinal()[B
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-object v0
.end method

.method public engineGetMacLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_15

    .line 2
    .line 3
    instance-of v0, p1, Lorg/bouncycastle/jcajce/PKCS12Key;

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    :try_start_0
    move-object v0, p1

    .line 8
    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    .line 10
    :try_start_1
    move-object v1, p2

    .line 11
    check-cast v1, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    .line 13
    instance-of v2, v0, Ljavax/crypto/interfaces/PBEKey;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    check-cast v2, Ljavax/crypto/interfaces/PBEKey;

    .line 23
    .line 24
    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v1, v3, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 36
    .line 37
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "GOST"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x2

    .line 48
    const/16 v4, 0x100

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    const/4 v2, 0x6

    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 56
    .line 57
    instance-of v5, v2, Lorg/bouncycastle/crypto/macs/HMac;

    .line 58
    .line 59
    const/16 v6, 0xa0

    .line 60
    .line 61
    if-eqz v5, :cond_7

    .line 62
    .line 63
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v5, "SHA-1"

    .line 68
    .line 69
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_7

    .line 74
    .line 75
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 76
    .line 77
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v5, "SHA-224"

    .line 82
    .line 83
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    const/4 v2, 0x7

    .line 90
    const/16 v4, 0xe0

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 94
    .line 95
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v5, "SHA-256"

    .line 100
    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    const/4 v2, 0x4

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 110
    .line 111
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v4, "SHA-384"

    .line 116
    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    const/16 v2, 0x8

    .line 124
    .line 125
    const/16 v4, 0x180

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 129
    .line 130
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v4, "SHA-512"

    .line 135
    .line 136
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    const/16 v2, 0x9

    .line 143
    .line 144
    const/16 v4, 0x200

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 148
    .line 149
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v4, "RIPEMD160"

    .line 154
    .line 155
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_6

    .line 160
    .line 161
    move v2, v3

    .line 162
    :goto_0
    move v4, v6

    .line 163
    goto :goto_1

    .line 164
    :cond_6
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 165
    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v0, "no PKCS12 mapping for HMAC: "

    .line 169
    .line 170
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 174
    .line 175
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1

    .line 190
    :cond_7
    const/4 v2, 0x1

    .line 191
    goto :goto_0

    .line 192
    :goto_1
    invoke-static {v0, v3, v2, v4, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_2

    .line 197
    :catch_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 198
    .line 199
    const-string p2, "PKCS12 requires a PBEParameterSpec"

    .line 200
    .line 201
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1

    .line 205
    :catch_1
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 206
    .line 207
    const-string p2, "PKCS12 requires a SecretKey/PBEKey"

    .line 208
    .line 209
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :cond_8
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 214
    .line 215
    if-eqz v0, :cond_b

    .line 216
    .line 217
    move-object v0, p1

    .line 218
    check-cast v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 219
    .line 220
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-eqz v1, :cond_9

    .line 225
    .line 226
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    goto :goto_2

    .line 231
    :cond_9
    instance-of v1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    .line 232
    .line 233
    if-eqz v1, :cond_a

    .line 234
    .line 235
    invoke-static {v0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    goto :goto_2

    .line 240
    :cond_a
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 241
    .line 242
    const-string p2, "PBE requires PBE parameters to be set."

    .line 243
    .line 244
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p1

    .line 248
    :cond_b
    instance-of v0, p2, Ljavax/crypto/spec/PBEParameterSpec;

    .line 249
    .line 250
    if-nez v0, :cond_14

    .line 251
    .line 252
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 253
    .line 254
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 259
    .line 260
    .line 261
    :goto_2
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 262
    .line 263
    if-eqz v1, :cond_c

    .line 264
    .line 265
    move-object v1, v0

    .line 266
    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 267
    .line 268
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_c
    move-object v1, v0

    .line 276
    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 277
    .line 278
    :goto_3
    instance-of v2, p2, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    .line 279
    .line 280
    if-eqz v2, :cond_d

    .line 281
    .line 282
    check-cast p2, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    .line 283
    .line 284
    new-instance v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 285
    .line 286
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;->getAssociatedData()[B

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {v0, v1, p1, v2, p2}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_4

    .line 302
    .line 303
    :cond_d
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 304
    .line 305
    if-eqz v2, :cond_e

    .line 306
    .line 307
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 308
    .line 309
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 310
    .line 311
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 316
    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_e
    instance-of v2, p2, Ljavax/crypto/spec/RC2ParameterSpec;

    .line 320
    .line 321
    if-eqz v2, :cond_f

    .line 322
    .line 323
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 324
    .line 325
    new-instance p1, Lorg/bouncycastle/crypto/params/RC2Parameters;

    .line 326
    .line 327
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    check-cast p2, Ljavax/crypto/spec/RC2ParameterSpec;

    .line 332
    .line 333
    invoke-virtual {p2}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 345
    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_f
    instance-of v2, p2, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;

    .line 349
    .line 350
    if-eqz v2, :cond_10

    .line 351
    .line 352
    new-instance p1, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    .line 353
    .line 354
    check-cast p2, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;

    .line 355
    .line 356
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->getParameters()Ljava/util/Map;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->copyMap(Ljava/util/Map;)Ljava/util/Hashtable;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;-><init>(Ljava/util/Hashtable;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->setKey([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->build()Lorg/bouncycastle/crypto/params/SkeinParameters;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    goto :goto_4

    .line 380
    :cond_10
    if-nez p2, :cond_11

    .line 381
    .line 382
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 383
    .line 384
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 389
    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_11
    sget-object p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    .line 393
    .line 394
    if-eqz p1, :cond_12

    .line 395
    .line 396
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 401
    .line 402
    .line 403
    move-result p1

    .line 404
    if-eqz p1, :cond_12

    .line 405
    .line 406
    invoke-static {v1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractAeadParameters(Lorg/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    goto :goto_4

    .line 411
    :cond_12
    instance-of p1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    .line 412
    .line 413
    if-eqz p1, :cond_13

    .line 414
    .line 415
    :goto_4
    :try_start_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 416
    .line 417
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 418
    .line 419
    .line 420
    return-void

    .line 421
    :catch_2
    move-exception p1

    .line 422
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    .line 423
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    const-string v1, "cannot initialize MAC: "

    .line 427
    .line 428
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-static {p1, v0}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw p2

    .line 439
    :cond_13
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 440
    .line 441
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p2

    .line 449
    const-string v0, "unknown parameter type: "

    .line 450
    .line 451
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw p1

    .line 459
    :cond_14
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 460
    .line 461
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    move-result-object p2

    .line 465
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p2

    .line 469
    const-string v0, "inappropriate parameter type: "

    .line 470
    .line 471
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p2

    .line 475
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw p1

    .line 479
    :cond_15
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 480
    .line 481
    const-string p2, "key is null"

    .line 482
    .line 483
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw p1
.end method

.method public engineReset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->reset()V

    return-void
.end method

.method public engineUpdate(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method
