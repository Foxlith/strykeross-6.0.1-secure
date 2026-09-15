.class public Lorg/bouncycastle/openssl/MiscPEMGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectGenerator;


# static fields
.field private static final dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final hexEncodingTable:[B


# instance fields
.field private final encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

.field private final obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->hexEncodingTable:[B

    return-void

    nop

    :array_0
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
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/bouncycastle/openssl/PEMEncryptor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    iput-object p2, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    return-void
.end method

.method private createPemObject(Ljava/lang/Object;)Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 7

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/util/io/pem/PemObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/bouncycastle/util/io/pem/PemObject;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/util/io/pem/PemObjectGenerator;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, Lorg/bouncycastle/util/io/pem/PemObjectGenerator;

    .line 13
    .line 14
    invoke-interface {p1}, Lorg/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lorg/bouncycastle/util/io/pem/PemObject;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    check-cast p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "CERTIFICATE"

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CRLHolder;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    check-cast p1, Lorg/bouncycastle/cert/X509CRLHolder;

    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getEncoded()[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "X509 CRL"

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_3
    instance-of v0, p1, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    check-cast p1, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;

    .line 52
    .line 53
    invoke-virtual {p1}, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->getEncoded()[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "TRUSTED CERTIFICATE"

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 62
    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    check-cast p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 66
    .line 67
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "RSA PRIVATE KEY"

    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :cond_5
    sget-object v1, Lorg/bouncycastle/openssl/MiscPEMGenerator;->dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    aget-object v2, v1, v2

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_8

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    aget-object v1, v1, v2

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_6

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v0, "EC PRIVATE KEY"

    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :cond_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string v0, "PRIVATE KEY"

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_8
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DSAParameter;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 165
    .line 166
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 170
    .line 171
    const-wide/16 v3, 0x0

    .line 172
    .line 173
    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    .line 178
    .line 179
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 180
    .line 181
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 189
    .line 190
    .line 191
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 192
    .line 193
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 201
    .line 202
    .line 203
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 204
    .line 205
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v2, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 240
    .line 241
    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 248
    .line 249
    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 253
    .line 254
    .line 255
    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    .line 256
    .line 257
    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string v0, "DSA PRIVATE KEY"

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_9
    instance-of v0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 268
    .line 269
    if-eqz v0, :cond_a

    .line 270
    .line 271
    check-cast p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 272
    .line 273
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    const-string v0, "PUBLIC KEY"

    .line 278
    .line 279
    goto :goto_1

    .line 280
    :cond_a
    instance-of v0, p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    .line 281
    .line 282
    if-eqz v0, :cond_b

    .line 283
    .line 284
    check-cast p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    .line 285
    .line 286
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getEncoded()[B

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    const-string v0, "ATTRIBUTE CERTIFICATE"

    .line 291
    .line 292
    goto :goto_1

    .line 293
    :cond_b
    instance-of v0, p1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    .line 294
    .line 295
    if-eqz v0, :cond_c

    .line 296
    .line 297
    check-cast p1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    .line 298
    .line 299
    invoke-virtual {p1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getEncoded()[B

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    const-string v0, "CERTIFICATE REQUEST"

    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_c
    instance-of v0, p1, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    .line 307
    .line 308
    if-eqz v0, :cond_d

    .line 309
    .line 310
    check-cast p1, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    .line 311
    .line 312
    invoke-virtual {p1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->getEncoded()[B

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    const-string v0, "ENCRYPTED PRIVATE KEY"

    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_d
    instance-of v0, p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 320
    .line 321
    if-eqz v0, :cond_10

    .line 322
    .line 323
    check-cast p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 324
    .line 325
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    const-string v0, "PKCS7"

    .line 330
    .line 331
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    .line 332
    .line 333
    if-eqz v1, :cond_f

    .line 334
    .line 335
    invoke-interface {v1}, Lorg/bouncycastle/openssl/PEMEncryptor;->getAlgorithm()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    const-string v2, "DESEDE"

    .line 344
    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_e

    .line 350
    .line 351
    const-string v1, "DES-EDE3-CBC"

    .line 352
    .line 353
    :cond_e
    iget-object v2, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    .line 354
    .line 355
    invoke-interface {v2}, Lorg/bouncycastle/openssl/PEMEncryptor;->getIV()[B

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    iget-object v3, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    .line 360
    .line 361
    invoke-interface {v3, p1}, Lorg/bouncycastle/openssl/PEMEncryptor;->encrypt([B)[B

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    new-instance v3, Ljava/util/ArrayList;

    .line 366
    .line 367
    const/4 v4, 0x2

    .line 368
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .line 370
    .line 371
    new-instance v4, Lorg/bouncycastle/util/io/pem/PemHeader;

    .line 372
    .line 373
    const-string v5, "Proc-Type"

    .line 374
    .line 375
    const-string v6, "4,ENCRYPTED"

    .line 376
    .line 377
    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    new-instance v4, Lorg/bouncycastle/util/io/pem/PemHeader;

    .line 384
    .line 385
    const-string v5, ","

    .line 386
    .line 387
    invoke-static {v1, v5}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-direct {p0, v2}, Lorg/bouncycastle/openssl/MiscPEMGenerator;->getHexEncoded([B)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    const-string v2, "DEK-Info"

    .line 403
    .line 404
    invoke-direct {v4, v2, v1}, Lorg/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    new-instance v1, Lorg/bouncycastle/util/io/pem/PemObject;

    .line 411
    .line 412
    invoke-direct {v1, v0, v3, p1}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    .line 413
    .line 414
    .line 415
    return-object v1

    .line 416
    :cond_f
    new-instance v1, Lorg/bouncycastle/util/io/pem/PemObject;

    .line 417
    .line 418
    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    .line 419
    .line 420
    .line 421
    return-object v1

    .line 422
    :cond_10
    new-instance p1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    .line 423
    .line 424
    const-string v0, "unknown object passed - can\'t encode."

    .line 425
    .line 426
    invoke-direct {p1, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw p1
.end method

.method private getHexEncoded([B)Ljava/lang/String;
    .locals 6

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v3, v2, 0xff

    mul-int/lit8 v4, v1, 0x2

    sget-object v5, Lorg/bouncycastle/openssl/MiscPEMGenerator;->hexEncodingTable:[B

    ushr-int/lit8 v3, v3, 0x4

    aget-byte v3, v5, v3

    int-to-char v3, v3

    aput-char v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-byte v2, v5, v2

    int-to-char v2, v2

    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/bouncycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;)Lorg/bouncycastle/util/io/pem/PemObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "encoding exception: "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1
.end method
