.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "$AlgParamGen"

    .line 9
    .line 10
    const-string v3, "AlgorithmParameterGenerator.RC2"

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v3, "AlgorithmParameterGenerator.1.2.840.113549.3.2"

    .line 17
    .line 18
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "$KeyGenerator"

    .line 23
    .line 24
    const-string v3, "KeyGenerator.RC2"

    .line 25
    .line 26
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "KeyGenerator.1.2.840.113549.3.2"

    .line 31
    .line 32
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "$AlgParams"

    .line 37
    .line 38
    const-string v3, "AlgorithmParameters.RC2"

    .line 39
    .line 40
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v3, "AlgorithmParameters.1.2.840.113549.3.2"

    .line 45
    .line 46
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "$ECB"

    .line 51
    .line 52
    const-string v3, "Cipher.RC2"

    .line 53
    .line 54
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "$Wrap"

    .line 59
    .line 60
    const-string v3, "Cipher.RC2WRAP"

    .line 61
    .line 62
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMSRC2wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    .line 67
    const-string v2, "RC2WRAP"

    .line 68
    .line 69
    const-string v3, "Alg.Alias.Cipher"

    .line 70
    .line 71
    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v4, "$CBC"

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v4, "Cipher"

    .line 94
    .line 95
    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "$CBCMAC"

    .line 104
    .line 105
    const-string v4, "Mac.RC2MAC"

    .line 106
    .line 107
    invoke-static {v0, v1, v2, p1, v4}, Ll1/e;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v0, "Alg.Alias.Mac.RC2"

    .line 111
    .line 112
    const-string v2, "RC2MAC"

    .line 113
    .line 114
    const-string v4, "$CFB8MAC"

    .line 115
    .line 116
    invoke-static {p1, v0, v2, v1, v4}, Ll1/e;->n(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v2, "Mac.RC2MAC/CFB8"

    .line 121
    .line 122
    invoke-interface {p1, v2, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "Alg.Alias.Mac.RC2/CFB8"

    .line 126
    .line 127
    const-string v2, "RC2MAC/CFB8"

    .line 128
    .line 129
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDRC2-CBC"

    .line 133
    .line 134
    const-string v2, "PBEWITHMD2ANDRC2"

    .line 135
    .line 136
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC"

    .line 140
    .line 141
    const-string v4, "PBEWITHMD5ANDRC2"

    .line 142
    .line 143
    invoke-interface {p1, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC"

    .line 147
    .line 148
    const-string v5, "PBEWITHSHA1ANDRC2"

    .line 149
    .line 150
    invoke-interface {p1, v0, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 154
    .line 155
    const-string v6, "Alg.Alias.SecretKeyFactory"

    .line 156
    .line 157
    invoke-interface {p1, v6, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 161
    .line 162
    invoke-interface {p1, v6, v7, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object v8, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    .line 167
    invoke-interface {p1, v6, v8, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v6, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5"

    .line 171
    .line 172
    const-string v9, "PBEWITHSHAAND128BITRC2-CBC"

    .line 173
    .line 174
    invoke-interface {p1, v6, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v6, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6"

    .line 178
    .line 179
    const-string v10, "PBEWITHSHAAND40BITRC2-CBC"

    .line 180
    .line 181
    invoke-interface {p1, v6, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v11, "$PBEWithMD2KeyFactory"

    .line 190
    .line 191
    const-string v12, "SecretKeyFactory.PBEWITHMD2ANDRC2"

    .line 192
    .line 193
    invoke-static {v6, v1, v11, p1, v12}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    const-string v11, "$PBEWithMD5KeyFactory"

    .line 198
    .line 199
    const-string v12, "SecretKeyFactory.PBEWITHMD5ANDRC2"

    .line 200
    .line 201
    invoke-static {v6, v1, v11, p1, v12}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    const-string v11, "$PBEWithSHA1KeyFactory"

    .line 206
    .line 207
    const-string v12, "SecretKeyFactory.PBEWITHSHA1ANDRC2"

    .line 208
    .line 209
    invoke-static {v6, v1, v11, p1, v12}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    const-string v11, "$PBEWithSHAAnd128BitKeyFactory"

    .line 214
    .line 215
    const-string v12, "SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC"

    .line 216
    .line 217
    invoke-static {v6, v1, v11, p1, v12}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    const-string v11, "$PBEWithSHAAnd40BitKeyFactory"

    .line 222
    .line 223
    const-string v12, "SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC"

    .line 224
    .line 225
    invoke-static {v6, v1, v11, p1, v12}, Ll1/e;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v3, v7, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {p1, v3, v8, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5"

    .line 238
    .line 239
    const-string v2, "PKCS12PBE"

    .line 240
    .line 241
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6"

    .line 245
    .line 246
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES"

    .line 250
    .line 251
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 255
    .line 256
    invoke-interface {p1, v3, v0, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 260
    .line 261
    invoke-interface {p1, v3, v0, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC"

    .line 265
    .line 266
    invoke-interface {p1, v0, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC"

    .line 270
    .line 271
    invoke-interface {p1, v0, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v3, "$PBEWithSHA1AndRC2"

    .line 280
    .line 281
    const-string v6, "Cipher.PBEWITHSHA1ANDRC2"

    .line 282
    .line 283
    invoke-static {v0, v1, v3, p1, v6}, Ll1/e;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHAANDRC2-CBC"

    .line 287
    .line 288
    invoke-interface {p1, v0, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1ANDRC2-CBC"

    .line 292
    .line 293
    invoke-interface {p1, v0, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v3, "$PBEWithSHAAnd128BitRC2"

    .line 302
    .line 303
    const-string v5, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    .line 304
    .line 305
    invoke-static {v0, v1, v3, p1, v5}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    const-string v3, "$PBEWithSHAAnd40BitRC2"

    .line 310
    .line 311
    const-string v5, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    .line 312
    .line 313
    invoke-static {v0, v1, v3, p1, v5}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    const-string v3, "$PBEWithMD5AndRC2"

    .line 318
    .line 319
    const-string v5, "Cipher.PBEWITHMD5ANDRC2"

    .line 320
    .line 321
    invoke-static {v0, v1, v3, p1, v5}, Ll1/e;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const-string v0, "Alg.Alias.Cipher.PBEWITHMD5ANDRC2-CBC"

    .line 325
    .line 326
    invoke-interface {p1, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2"

    .line 330
    .line 331
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2"

    .line 335
    .line 336
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC"

    .line 340
    .line 341
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC"

    .line 345
    .line 346
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC"

    .line 350
    .line 351
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    return-void
.end method
