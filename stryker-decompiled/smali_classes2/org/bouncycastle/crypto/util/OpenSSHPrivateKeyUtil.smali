.class public Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AUTH_MAGIC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "openssh-key-v1\u0000"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->AUTH_MAGIC:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allIntegers(Lorg/bouncycastle/asn1/ASN1Sequence;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1Integer;

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static encodePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 5

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lorg/bouncycastle/crypto/util/PrivateKeyInfoFactory;->createPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {p0}, Lorg/bouncycastle/crypto/util/PrivateKeyInfoFactory;->createPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    check-cast p0, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 56
    .line 57
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 61
    .line 62
    const-wide/16 v3, 0x0

    .line 63
    .line 64
    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 71
    .line 72
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 95
    .line 96
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v2, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 123
    .line 124
    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 140
    .line 141
    .line 142
    :try_start_0
    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    .line 143
    .line 144
    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 148
    .line 149
    .line 150
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-object p0

    .line 152
    :catch_0
    move-exception p0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v2, "unable to encode DSAPrivateKeyParameters "

    .line 158
    .line 159
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {p0, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    .line 171
    .line 172
    if-eqz v0, :cond_3

    .line 173
    .line 174
    check-cast p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    .line 175
    .line 176
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v1, Lorg/bouncycastle/crypto/util/SSHBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Lorg/bouncycastle/crypto/util/SSHBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    sget-object v2, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->AUTH_MAGIC:[B

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeBytes([B)V

    .line 188
    .line 189
    .line 190
    const-string v2, "none"

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeString(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeString(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v2, ""

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeString(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/4 v3, 0x1

    .line 204
    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/util/SSHBuilder;->u32(I)V

    .line 205
    .line 206
    .line 207
    invoke-static {v0}, Lorg/bouncycastle/crypto/util/OpenSSHPublicKeyUtil;->encodePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeBlock([B)V

    .line 212
    .line 213
    .line 214
    new-instance v3, Lorg/bouncycastle/crypto/util/SSHBuilder;

    .line 215
    .line 216
    invoke-direct {v3}, Lorg/bouncycastle/crypto/util/SSHBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/util/SSHBuilder;->u32(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/util/SSHBuilder;->u32(I)V

    .line 231
    .line 232
    .line 233
    const-string v4, "ssh-ed25519"

    .line 234
    .line 235
    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeString(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->getEncoded()[B

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeBlock([B)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->getEncoded()[B

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-virtual {v3, p0}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeBlock([B)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeString(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/SSHBuilder;->getPaddedBytes()[B

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {v1, p0}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeBlock([B)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuilder;->getBytes()[B

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    return-object p0

    .line 271
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 272
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v2, "unable to convert "

    .line 276
    .line 277
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string p0, " to openssh private key"

    .line 292
    .line 293
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 305
    .line 306
    const-string v0, "param is null"

    .line 307
    .line 308
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw p0
.end method

.method public static parsePrivateKeyBlob([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 3
    .line 4
    const/16 v2, 0x30

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-ne v1, v2, :cond_2

    .line 9
    .line 10
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x6

    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x2

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->allIntegers(Lorg/bouncycastle/asn1/ASN1Sequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_8

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lorg/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_8

    .line 46
    .line 47
    new-instance v4, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 55
    .line 56
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lorg/bouncycastle/crypto/params/DSAParameters;

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 67
    .line 68
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 77
    .line 78
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v4, v0, v1}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/16 v2, 0x9

    .line 105
    .line 106
    if-ne v1, v2, :cond_1

    .line 107
    .line 108
    invoke-static {p0}, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->allIntegers(Lorg/bouncycastle/asn1/ASN1Sequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_8

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 119
    .line 120
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sget-object v1, Lorg/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    new-instance v9, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 137
    .line 138
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    move-object v0, v9

    .line 171
    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 172
    .line 173
    .line 174
    move-object v4, v9

    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    const/4 v1, 0x4

    .line 182
    if-ne v0, v1, :cond_8

    .line 183
    .line 184
    invoke-virtual {p0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 189
    .line 190
    if-eqz v0, :cond_8

    .line 191
    .line 192
    invoke-virtual {p0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 197
    .line 198
    if-eqz v0, :cond_8

    .line 199
    .line 200
    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/sec/ECPrivateKey;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getParametersObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    new-instance v4, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 217
    .line 218
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    new-instance v2, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    .line 223
    .line 224
    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {v4, p0, v2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_2
    new-instance v1, Lorg/bouncycastle/crypto/util/SSHBuffer;

    .line 233
    .line 234
    sget-object v2, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->AUTH_MAGIC:[B

    .line 235
    .line 236
    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/crypto/util/SSHBuffer;-><init>([B[B)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    const-string v2, "none"

    .line 244
    .line 245
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    if-eqz p0, :cond_e

    .line 250
    .line 251
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->skipBlock()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->skipBlock()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readU32()I

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    if-ne p0, v3, :cond_d

    .line 262
    .line 263
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-static {p0}, Lorg/bouncycastle/crypto/util/OpenSSHPublicKeyUtil;->parsePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readPaddedBlock()[B

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->hasRemaining()Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-nez v1, :cond_c

    .line 279
    .line 280
    new-instance v1, Lorg/bouncycastle/crypto/util/SSHBuffer;

    .line 281
    .line 282
    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/util/SSHBuffer;-><init>([B)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readU32()I

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readU32()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-ne p0, v2, :cond_b

    .line 294
    .line 295
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    const-string v2, "ssh-ed25519"

    .line 300
    .line 301
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_4

    .line 306
    .line 307
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    array-length v2, p0

    .line 315
    const/16 v3, 0x40

    .line 316
    .line 317
    if-ne v2, v3, :cond_3

    .line 318
    .line 319
    new-instance v4, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    .line 320
    .line 321
    invoke-direct {v4, p0, v0}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;-><init>([BI)V

    .line 322
    .line 323
    .line 324
    goto :goto_0

    .line 325
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 326
    .line 327
    const-string v0, "private key value of wrong length"

    .line 328
    .line 329
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw p0

    .line 333
    :cond_4
    const-string v0, "ecdsa"

    .line 334
    .line 335
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_7

    .line 340
    .line 341
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-static {v0}, Lorg/bouncycastle/crypto/util/SSHNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    if-eqz v0, :cond_6

    .line 354
    .line 355
    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    if-eqz p0, :cond_5

    .line 360
    .line 361
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    new-instance v4, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 369
    .line 370
    new-instance v5, Ljava/math/BigInteger;

    .line 371
    .line 372
    invoke-direct {v5, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 373
    .line 374
    .line 375
    new-instance v2, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    .line 376
    .line 377
    invoke-direct {v2, v0, p0}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 378
    .line 379
    .line 380
    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 381
    .line 382
    .line 383
    goto :goto_0

    .line 384
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 385
    .line 386
    const-string v1, "Curve not found for: "

    .line 387
    .line 388
    invoke-static {v1, v0}, Ll1/e;->i(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw p0

    .line 396
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 397
    .line 398
    const-string v1, "OID not found for: "

    .line 399
    .line 400
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    throw v0

    .line 408
    :cond_7
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->skipBlock()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuffer;->hasRemaining()Z

    .line 412
    .line 413
    .line 414
    move-result p0

    .line 415
    if-nez p0, :cond_a

    .line 416
    .line 417
    :cond_8
    :goto_1
    if-eqz v4, :cond_9

    .line 418
    .line 419
    return-object v4

    .line 420
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 421
    .line 422
    const-string v0, "unable to parse key"

    .line 423
    .line 424
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw p0

    .line 428
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 429
    .line 430
    const-string v0, "private key block has trailing data"

    .line 431
    .line 432
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw p0

    .line 436
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 437
    .line 438
    const-string v0, "private key check values are not the same"

    .line 439
    .line 440
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    throw p0

    .line 444
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 445
    .line 446
    const-string v0, "decoded key has trailing data"

    .line 447
    .line 448
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    throw p0

    .line 452
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 453
    .line 454
    const-string v0, "multiple keys not supported"

    .line 455
    .line 456
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw p0

    .line 460
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 461
    .line 462
    const-string v0, "encrypted keys not supported"

    .line 463
    .line 464
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw p0
.end method
