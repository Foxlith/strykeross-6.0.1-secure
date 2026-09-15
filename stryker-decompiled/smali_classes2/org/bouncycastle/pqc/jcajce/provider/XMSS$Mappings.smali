.class public Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/XMSS;
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
    .locals 11

    .line 1
    const-string v0, "KeyFactory.XMSS"

    .line 2
    .line 3
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSKeyFactorySpi"

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "KeyPairGenerator.XMSS"

    .line 9
    .line 10
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSKeyPairGeneratorSpi"

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "Signature.XMSS"

    .line 16
    .line 17
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$generic"

    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v6, "Alg.Alias.Signature."

    .line 25
    .line 26
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v7, Lorg/bouncycastle/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    .line 31
    const-string v8, "XMSS"

    .line 32
    .line 33
    const-string v9, "Alg.Alias.Signature.OID."

    .line 34
    .line 35
    invoke-static {v0, v7, p1, v8, v9}, Ll1/e;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v7, p1, v8}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha256"

    .line 43
    .line 44
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    .line 46
    const-string v2, "XMSS-SHA256"

    .line 47
    .line 48
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128"

    .line 52
    .line 53
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    .line 55
    const-string v2, "XMSS-SHAKE128"

    .line 56
    .line 57
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha512"

    .line 61
    .line 62
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 63
    .line 64
    const-string v2, "XMSS-SHA512"

    .line 65
    .line 66
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256"

    .line 70
    .line 71
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    .line 73
    const-string v2, "XMSS-SHAKE256"

    .line 74
    .line 75
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 76
    .line 77
    .line 78
    const-string v2, "SHA256"

    .line 79
    .line 80
    const-string v3, "XMSS-SHA256"

    .line 81
    .line 82
    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha256andPrehash"

    .line 83
    .line 84
    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 85
    .line 86
    move-object v0, p0

    .line 87
    move-object v1, p1

    .line 88
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "SHAKE128"

    .line 92
    .line 93
    const-string v3, "XMSS-SHAKE128"

    .line 94
    .line 95
    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128andPrehash"

    .line 96
    .line 97
    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    .line 99
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 100
    .line 101
    .line 102
    const-string v2, "SHA512"

    .line 103
    .line 104
    const-string v3, "XMSS-SHA512"

    .line 105
    .line 106
    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha512andPrehash"

    .line 107
    .line 108
    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 109
    .line 110
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 111
    .line 112
    .line 113
    const-string v2, "SHAKE256"

    .line 114
    .line 115
    const-string v3, "XMSS-SHAKE256"

    .line 116
    .line 117
    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256andPrehash"

    .line 118
    .line 119
    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    .line 121
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 122
    .line 123
    .line 124
    const-string v0, "Alg.Alias.Signature.SHA256WITHXMSS"

    .line 125
    .line 126
    const-string v1, "SHA256WITHXMSS-SHA256"

    .line 127
    .line 128
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "Alg.Alias.Signature.SHAKE128WITHXMSS"

    .line 132
    .line 133
    const-string v1, "SHAKE128WITHXMSS-SHAKE128"

    .line 134
    .line 135
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v0, "Alg.Alias.Signature.SHA512WITHXMSS"

    .line 139
    .line 140
    const-string v1, "SHA512WITHXMSS-SHA512"

    .line 141
    .line 142
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v0, "Alg.Alias.Signature.SHAKE256WITHXMSS"

    .line 146
    .line 147
    const-string v1, "SHAKE256WITHXMSS-SHAKE256"

    .line 148
    .line 149
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v0, "KeyFactory.XMSSMT"

    .line 153
    .line 154
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTKeyFactorySpi"

    .line 155
    .line 156
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v0, "KeyPairGenerator.XMSSMT"

    .line 160
    .line 161
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTKeyPairGeneratorSpi"

    .line 162
    .line 163
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v0, "Signature.XMSSMT"

    .line 167
    .line 168
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$generic"

    .line 169
    .line 170
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    sget-object v6, Lorg/bouncycastle/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 179
    .line 180
    const-string v10, "XMSSMT"

    .line 181
    .line 182
    invoke-static {v0, v6, p1, v10, v9}, Ll1/e;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0, v6, p1, v10}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha256"

    .line 190
    .line 191
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 192
    .line 193
    const-string v2, "XMSSMT-SHA256"

    .line 194
    .line 195
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 196
    .line 197
    .line 198
    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128"

    .line 199
    .line 200
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 201
    .line 202
    const-string v2, "XMSSMT-SHAKE128"

    .line 203
    .line 204
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 205
    .line 206
    .line 207
    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha512"

    .line 208
    .line 209
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 210
    .line 211
    const-string v2, "XMSSMT-SHA512"

    .line 212
    .line 213
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 214
    .line 215
    .line 216
    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256"

    .line 217
    .line 218
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 219
    .line 220
    const-string v2, "XMSSMT-SHAKE256"

    .line 221
    .line 222
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 223
    .line 224
    .line 225
    const-string v2, "SHA256"

    .line 226
    .line 227
    const-string v3, "XMSSMT-SHA256"

    .line 228
    .line 229
    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha256andPrehash"

    .line 230
    .line 231
    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 232
    .line 233
    move-object v0, p0

    .line 234
    move-object v1, p1

    .line 235
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 236
    .line 237
    .line 238
    const-string v2, "SHAKE128"

    .line 239
    .line 240
    const-string v3, "XMSSMT-SHAKE128"

    .line 241
    .line 242
    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128andPrehash"

    .line 243
    .line 244
    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 245
    .line 246
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 247
    .line 248
    .line 249
    const-string v2, "SHA512"

    .line 250
    .line 251
    const-string v3, "XMSSMT-SHA512"

    .line 252
    .line 253
    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha512andPrehash"

    .line 254
    .line 255
    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 256
    .line 257
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 258
    .line 259
    .line 260
    const-string v2, "SHAKE256"

    .line 261
    .line 262
    const-string v3, "XMSSMT-SHAKE256"

    .line 263
    .line 264
    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256andPrehash"

    .line 265
    .line 266
    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 267
    .line 268
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 269
    .line 270
    .line 271
    const-string v0, "Alg.Alias.Signature.SHA256WITHXMSSMT"

    .line 272
    .line 273
    const-string v1, "SHA256WITHXMSSMT-SHA256"

    .line 274
    .line 275
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string v0, "Alg.Alias.Signature.SHAKE128WITHXMSSMT"

    .line 279
    .line 280
    const-string v1, "SHAKE128WITHXMSSMT-SHAKE128"

    .line 281
    .line 282
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const-string v0, "Alg.Alias.Signature.SHA512WITHXMSSMT"

    .line 286
    .line 287
    const-string v1, "SHA512WITHXMSSMT-SHA512"

    .line 288
    .line 289
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string v0, "Alg.Alias.Signature.SHAKE256WITHXMSSMT"

    .line 293
    .line 294
    const-string v1, "SHAKE256WITHXMSSMT-SHAKE256"

    .line 295
    .line 296
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 300
    .line 301
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;

    .line 302
    .line 303
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, p1, v0, v8, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 307
    .line 308
    .line 309
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;

    .line 310
    .line 311
    invoke-direct {v0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, p1, v7, v8, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 315
    .line 316
    .line 317
    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 318
    .line 319
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;

    .line 320
    .line 321
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, p1, v0, v10, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 325
    .line 326
    .line 327
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;

    .line 328
    .line 329
    invoke-direct {v0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0, p1, v6, v10, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 333
    .line 334
    .line 335
    return-void
.end method
