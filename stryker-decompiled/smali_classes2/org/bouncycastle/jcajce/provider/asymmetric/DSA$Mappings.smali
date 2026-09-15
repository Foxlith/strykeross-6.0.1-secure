.class public Lorg/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/DSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 14

    .line 1
    const-string v0, "AlgorithmParameters.DSA"

    .line 2
    .line 3
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParametersSpi"

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "AlgorithmParameterGenerator.DSA"

    .line 9
    .line 10
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParameterGeneratorSpi"

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "KeyPairGenerator.DSA"

    .line 16
    .line 17
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyPairGeneratorSpi"

    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "KeyFactory.DSA"

    .line 23
    .line 24
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi"

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "Signature.DSA"

    .line 30
    .line 31
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$stdDSA"

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "Signature.NONEWITHDSA"

    .line 37
    .line 38
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$noneDSA"

    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "Alg.Alias.Signature.RAWDSA"

    .line 44
    .line 45
    const-string v1, "NONEWITHDSA"

    .line 46
    .line 47
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "Signature.DETDSA"

    .line 51
    .line 52
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA"

    .line 53
    .line 54
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "Signature.SHA1WITHDETDSA"

    .line 58
    .line 59
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "Signature.SHA224WITHDETDSA"

    .line 63
    .line 64
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA224"

    .line 65
    .line 66
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "Signature.SHA256WITHDETDSA"

    .line 70
    .line 71
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA256"

    .line 72
    .line 73
    invoke-interface {p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "Signature.SHA384WITHDETDSA"

    .line 77
    .line 78
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA384"

    .line 79
    .line 80
    invoke-interface {p1, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "Signature.SHA512WITHDETDSA"

    .line 84
    .line 85
    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA512"

    .line 86
    .line 87
    invoke-interface {p1, v0, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "Signature.DDSA"

    .line 91
    .line 92
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v0, "Signature.SHA1WITHDDSA"

    .line 96
    .line 97
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "Signature.SHA224WITHDDSA"

    .line 101
    .line 102
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "Signature.SHA256WITHDDSA"

    .line 106
    .line 107
    invoke-interface {p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v0, "Signature.SHA384WITHDDSA"

    .line 111
    .line 112
    invoke-interface {p1, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v0, "Signature.SHA512WITHDDSA"

    .line 116
    .line 117
    invoke-interface {p1, v0, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v0, "Signature.SHA3-224WITHDDSA"

    .line 121
    .line 122
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_224"

    .line 123
    .line 124
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v0, "Signature.SHA3-256WITHDDSA"

    .line 128
    .line 129
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_256"

    .line 130
    .line 131
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "Signature.SHA3-384WITHDDSA"

    .line 135
    .line 136
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_384"

    .line 137
    .line 138
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v0, "Signature.SHA3-512WITHDDSA"

    .line 142
    .line 143
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_512"

    .line 144
    .line 145
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v4, "SHA224"

    .line 149
    .line 150
    const-string v5, "DSA"

    .line 151
    .line 152
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa224"

    .line 153
    .line 154
    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 155
    .line 156
    move-object v2, p0

    .line 157
    move-object v3, p1

    .line 158
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 159
    .line 160
    .line 161
    const-string v10, "SHA256"

    .line 162
    .line 163
    const-string v11, "DSA"

    .line 164
    .line 165
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa256"

    .line 166
    .line 167
    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 168
    .line 169
    move-object v8, p0

    .line 170
    move-object v9, p1

    .line 171
    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 172
    .line 173
    .line 174
    const-string v2, "SHA384"

    .line 175
    .line 176
    const-string v3, "DSA"

    .line 177
    .line 178
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa384"

    .line 179
    .line 180
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 181
    .line 182
    move-object v0, p0

    .line 183
    move-object v1, p1

    .line 184
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 185
    .line 186
    .line 187
    const-string v8, "SHA512"

    .line 188
    .line 189
    const-string v9, "DSA"

    .line 190
    .line 191
    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa512"

    .line 192
    .line 193
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 194
    .line 195
    move-object v6, p0

    .line 196
    move-object v7, p1

    .line 197
    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 198
    .line 199
    .line 200
    const-string v2, "SHA3-224"

    .line 201
    .line 202
    const-string v3, "DSA"

    .line 203
    .line 204
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_224"

    .line 205
    .line 206
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 207
    .line 208
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 209
    .line 210
    .line 211
    const-string v8, "SHA3-256"

    .line 212
    .line 213
    const-string v9, "DSA"

    .line 214
    .line 215
    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_256"

    .line 216
    .line 217
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 218
    .line 219
    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 220
    .line 221
    .line 222
    const-string v2, "SHA3-384"

    .line 223
    .line 224
    const-string v3, "DSA"

    .line 225
    .line 226
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_384"

    .line 227
    .line 228
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 229
    .line 230
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 231
    .line 232
    .line 233
    const-string v8, "SHA3-512"

    .line 234
    .line 235
    const-string v9, "DSA"

    .line 236
    .line 237
    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_512"

    .line 238
    .line 239
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 240
    .line 241
    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 242
    .line 243
    .line 244
    const-string v0, "Alg.Alias.Signature.SHA/DSA"

    .line 245
    .line 246
    const-string v1, "DSA"

    .line 247
    .line 248
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v0, "Alg.Alias.Signature.SHA1withDSA"

    .line 252
    .line 253
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v0, "Alg.Alias.Signature.SHA1WITHDSA"

    .line 257
    .line 258
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1"

    .line 262
    .line 263
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3"

    .line 267
    .line 268
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string v0, "Alg.Alias.Signature.DSAwithSHA1"

    .line 272
    .line 273
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v0, "Alg.Alias.Signature.DSAWITHSHA1"

    .line 277
    .line 278
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string v0, "Alg.Alias.Signature.SHA1WithDSA"

    .line 282
    .line 283
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v0, "Alg.Alias.Signature.DSAWithSHA1"

    .line 287
    .line 288
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v0, "RIPEMD160"

    .line 292
    .line 293
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaRMD160"

    .line 294
    .line 295
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;

    .line 299
    .line 300
    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;-><init>()V

    .line 301
    .line 302
    .line 303
    const/4 v2, 0x0

    .line 304
    :goto_0
    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 305
    .line 306
    array-length v4, v3

    .line 307
    if-eq v2, v4, :cond_0

    .line 308
    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v5, "Alg.Alias.Signature."

    .line 312
    .line 313
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    aget-object v5, v3, v2

    .line 317
    .line 318
    invoke-static {v4, v5, p1, v1}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    aget-object v4, v3, v2

    .line 322
    .line 323
    invoke-virtual {p0, p1, v4, v1, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 324
    .line 325
    .line 326
    aget-object v3, v3, v2

    .line 327
    .line 328
    invoke-virtual {p0, p1, v3, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameterGenerator(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    add-int/lit8 v2, v2, 0x1

    .line 332
    .line 333
    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method
