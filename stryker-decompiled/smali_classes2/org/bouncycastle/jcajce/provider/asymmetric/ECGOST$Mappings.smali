.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ECGOST$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ECGOST;
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
    const-string v0, "KeyFactory.ECGOST3410"

    .line 2
    .line 3
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ecgost.KeyFactorySpi"

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "Alg.Alias.KeyFactory.GOST-3410-2001"

    .line 9
    .line 10
    const-string v1, "ECGOST3410"

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "Alg.Alias.KeyFactory.ECGOST-3410"

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    .line 22
    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyFactorySpi;

    .line 23
    .line 24
    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyFactorySpi;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001DH:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    .line 32
    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyFactorySpi;

    .line 33
    .line 34
    invoke-direct {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyFactorySpi;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v2, v1, v3}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v2, "KeyPairGenerator.ECGOST3410"

    .line 44
    .line 45
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ecgost.KeyPairGeneratorSpi"

    .line 46
    .line 47
    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v2, "Alg.Alias.KeyPairGenerator.ECGOST-3410"

    .line 51
    .line 52
    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v2, "Alg.Alias.KeyPairGenerator.GOST-3410-2001"

    .line 56
    .line 57
    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "Signature.ECGOST3410"

    .line 61
    .line 62
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ecgost.SignatureSpi"

    .line 63
    .line 64
    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "Alg.Alias.Signature.ECGOST-3410"

    .line 68
    .line 69
    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "Alg.Alias.Signature.GOST-3410-2001"

    .line 73
    .line 74
    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v2, "KeyAgreement.ECGOST3410"

    .line 78
    .line 79
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ecgost.KeyAgreementSpi$ECVKO"

    .line 80
    .line 81
    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "Alg.Alias.KeyAgreement."

    .line 87
    .line 88
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v0, "Alg.Alias.KeyAgreement.GOST-3410-2001"

    .line 102
    .line 103
    invoke-static {p1, v0, v1, v3}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sget-object v2, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_ESDH:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 108
    .line 109
    invoke-static {v0, v2, p1, v1}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v0, "AlgorithmParameters.ECGOST3410"

    .line 113
    .line 114
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.AlgorithmParametersSpi"

    .line 115
    .line 116
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "AlgorithmParameters.ECGOST3410-2012"

    .line 120
    .line 121
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v0, "Alg.Alias.AlgorithmParameters.GOST-3410-2001"

    .line 125
    .line 126
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v6, "GOST3411"

    .line 130
    .line 131
    const-string v7, "ECGOST3410"

    .line 132
    .line 133
    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.ecgost.SignatureSpi"

    .line 134
    .line 135
    sget-object v9, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 136
    .line 137
    move-object v4, p0

    .line 138
    move-object v5, p1

    .line 139
    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 140
    .line 141
    .line 142
    const-string v0, "KeyFactory.ECGOST3410-2012"

    .line 143
    .line 144
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyFactorySpi"

    .line 145
    .line 146
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "Alg.Alias.KeyFactory.GOST-3410-2012"

    .line 150
    .line 151
    const-string v1, "ECGOST3410-2012"

    .line 152
    .line 153
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v0, "Alg.Alias.KeyFactory.ECGOST-3410-2012"

    .line 157
    .line 158
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 162
    .line 163
    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyFactorySpi;

    .line 164
    .line 165
    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyFactorySpi;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 169
    .line 170
    .line 171
    sget-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_agreement_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 172
    .line 173
    new-instance v4, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyFactorySpi;

    .line 174
    .line 175
    invoke-direct {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyFactorySpi;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1, v2, v1, v4}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sget-object v4, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 185
    .line 186
    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyFactorySpi;

    .line 187
    .line 188
    invoke-direct {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyFactorySpi;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, p1, v4, v1, v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 192
    .line 193
    .line 194
    sget-object v5, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_agreement_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 195
    .line 196
    new-instance v6, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyFactorySpi;

    .line 197
    .line 198
    invoke-direct {v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyFactorySpi;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1, v5, v1, v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1, v4, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v6, "KeyPairGenerator.ECGOST3410-2012"

    .line 208
    .line 209
    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyPairGeneratorSpi"

    .line 210
    .line 211
    invoke-interface {p1, v6, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v6, "Alg.Alias.KeyPairGenerator.ECGOST3410-2012"

    .line 215
    .line 216
    invoke-interface {p1, v6, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string v6, "Alg.Alias.KeyPairGenerator.GOST-3410-2012"

    .line 220
    .line 221
    invoke-interface {p1, v6, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v1, "Signature.ECGOST3410-2012-256"

    .line 225
    .line 226
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi256"

    .line 227
    .line 228
    invoke-interface {p1, v1, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v1, "Alg.Alias.Signature.ECGOST3410-2012-256"

    .line 232
    .line 233
    const-string v6, "ECGOST3410-2012-256"

    .line 234
    .line 235
    invoke-interface {p1, v1, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const-string v1, "Alg.Alias.Signature.GOST-3410-2012-256"

    .line 239
    .line 240
    invoke-interface {p1, v1, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v1, "Alg.Alias.Signature.GOST3411WITHECGOST3410-2012-256"

    .line 244
    .line 245
    invoke-interface {p1, v1, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string v9, "GOST3411-2012-256"

    .line 249
    .line 250
    const-string v10, "ECGOST3410-2012-256"

    .line 251
    .line 252
    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi256"

    .line 253
    .line 254
    sget-object v12, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 255
    .line 256
    move-object v7, p0

    .line 257
    move-object v8, p1

    .line 258
    invoke-virtual/range {v7 .. v12}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 259
    .line 260
    .line 261
    const-string v1, "Signature.ECGOST3410-2012-512"

    .line 262
    .line 263
    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi512"

    .line 264
    .line 265
    invoke-interface {p1, v1, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string v1, "Alg.Alias.Signature.ECGOST3410-2012-512"

    .line 269
    .line 270
    const-string v7, "ECGOST3410-2012-512"

    .line 271
    .line 272
    invoke-interface {p1, v1, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const-string v1, "Alg.Alias.Signature.GOST-3410-2012-512"

    .line 276
    .line 277
    invoke-interface {p1, v1, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const-string v1, "Alg.Alias.Signature.GOST3411WITHECGOST3410-2012-512"

    .line 281
    .line 282
    invoke-interface {p1, v1, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const-string v10, "GOST3411-2012-512"

    .line 286
    .line 287
    const-string v11, "ECGOST3410-2012-512"

    .line 288
    .line 289
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi512"

    .line 290
    .line 291
    sget-object v13, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 292
    .line 293
    move-object v8, p0

    .line 294
    move-object v9, p1

    .line 295
    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 296
    .line 297
    .line 298
    const-string v1, "KeyAgreement.ECGOST3410-2012-256"

    .line 299
    .line 300
    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyAgreementSpi$ECVKO256"

    .line 301
    .line 302
    invoke-interface {p1, v1, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const-string v1, "KeyAgreement.ECGOST3410-2012-512"

    .line 306
    .line 307
    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyAgreementSpi$ECVKO512"

    .line 308
    .line 309
    invoke-interface {p1, v1, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-interface {p1, v1, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-static {v1, v5, p1, v7, v3}, Ll1/e;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-static {v1, v0, p1, v6, v3}, Ll1/e;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0, v4, p1, v7}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    return-void
.end method
