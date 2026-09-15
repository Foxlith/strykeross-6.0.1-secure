.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final paramsLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final height:I

.field private final layers:I

.field private final oid:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

.field private final xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 12
    .line 13
    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    .line 15
    const/16 v4, 0x14

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    invoke-direct {v2, v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-static {v4, v2, v3, v0, v1}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const/16 v7, 0x28

    .line 38
    .line 39
    invoke-static {v7, v5, v3, v0, v6}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v7, v2, v3, v0, v6}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x5

    .line 50
    invoke-static {v6}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const/16 v8, 0x8

    .line 55
    .line 56
    invoke-static {v7, v8, v3, v0, v6}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x6

    .line 60
    invoke-static {v6}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    const/16 v10, 0x3c

    .line 65
    .line 66
    invoke-static {v10, v1, v3, v0, v9}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 67
    .line 68
    .line 69
    const/4 v9, 0x7

    .line 70
    invoke-static {v9}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-static {v10, v6, v3, v0, v9}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v8}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    const/16 v11, 0xc

    .line 82
    .line 83
    invoke-static {v10, v11, v3, v0, v9}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 84
    .line 85
    .line 86
    const/16 v3, 0x9

    .line 87
    .line 88
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-instance v9, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 93
    .line 94
    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 95
    .line 96
    invoke-direct {v9, v4, v5, v12}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const/16 v3, 0xa

    .line 103
    .line 104
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v4, v2, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 109
    .line 110
    .line 111
    const/16 v3, 0xb

    .line 112
    .line 113
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v7, v5, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v11}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v7, v2, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 125
    .line 126
    .line 127
    const/16 v3, 0xd

    .line 128
    .line 129
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v7, v8, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 134
    .line 135
    .line 136
    const/16 v3, 0xe

    .line 137
    .line 138
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {v10, v1, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 143
    .line 144
    .line 145
    const/16 v3, 0xf

    .line 146
    .line 147
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v10, v6, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 152
    .line 153
    .line 154
    const/16 v3, 0x10

    .line 155
    .line 156
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-static {v10, v11, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 161
    .line 162
    .line 163
    const/16 v3, 0x11

    .line 164
    .line 165
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    new-instance v9, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 170
    .line 171
    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 172
    .line 173
    invoke-direct {v9, v4, v5, v12}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    const/16 v3, 0x12

    .line 180
    .line 181
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v4, v2, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 186
    .line 187
    .line 188
    const/16 v3, 0x13

    .line 189
    .line 190
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v7, v5, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v7, v2, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 202
    .line 203
    .line 204
    const/16 v3, 0x15

    .line 205
    .line 206
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-static {v7, v8, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 211
    .line 212
    .line 213
    const/16 v3, 0x16

    .line 214
    .line 215
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-static {v10, v1, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 220
    .line 221
    .line 222
    const/16 v3, 0x17

    .line 223
    .line 224
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v10, v6, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 229
    .line 230
    .line 231
    const/16 v3, 0x18

    .line 232
    .line 233
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-static {v10, v11, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 238
    .line 239
    .line 240
    const/16 v3, 0x19

    .line 241
    .line 242
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    new-instance v9, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 247
    .line 248
    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 249
    .line 250
    invoke-direct {v9, v4, v5, v12}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    const/16 v3, 0x1a

    .line 257
    .line 258
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-static {v4, v2, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 263
    .line 264
    .line 265
    const/16 v3, 0x1b

    .line 266
    .line 267
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-static {v7, v5, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 272
    .line 273
    .line 274
    const/16 v3, 0x1c

    .line 275
    .line 276
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v7, v2, v12, v0, v3}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 281
    .line 282
    .line 283
    const/16 v2, 0x1d

    .line 284
    .line 285
    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-static {v7, v8, v12, v0, v2}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 290
    .line 291
    .line 292
    const/16 v2, 0x1e

    .line 293
    .line 294
    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-static {v10, v1, v12, v0, v2}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 299
    .line 300
    .line 301
    const/16 v1, 0x1f

    .line 302
    .line 303
    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-static {v10, v6, v12, v0, v1}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 308
    .line 309
    .line 310
    const/16 v1, 0x20

    .line 311
    .line 312
    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v10, v11, v12, v0, v1}, Lorg/bouncycastle/math/ec/a;->k(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 317
    .line 318
    .line 319
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    sput-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->paramsLookupTable:Ljava/util/Map;

    .line 324
    .line 325
    return-void
.end method

.method public constructor <init>(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->height:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->layers:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssTreeHeight(II)I

    move-result p1

    invoke-direct {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigestSize()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getWinternitzParameter()I

    move-result v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLen()I

    move-result v4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v5

    move v6, p2

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->lookup(Ljava/lang/String;IIIII)Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->oid:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    return-void
.end method

.method public constructor <init>(IILorg/bouncycastle/crypto/Digest;)V
    .locals 0

    .line 2
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/xmss/DigestUtil;->getDigestOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method

.method public static lookupByOID(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->paramsLookupTable:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    return-object p0
.end method

.method private static xmssTreeHeight(II)I
    .locals 1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    rem-int v0, p0, p1

    if-nez v0, :cond_1

    div-int/2addr p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height / layers must be greater than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layers must divide totalHeight without remainder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "totalHeight must be > 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->height:I

    return v0
.end method

.method public getLayers()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->layers:I

    return v0
.end method

.method public getLen()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getLen()I

    move-result v0

    return v0
.end method

.method public getOid()Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->oid:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    return-object v0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTreeDigestOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getTreeDigestOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getTreeDigestSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getTreeDigestSize()I

    move-result v0

    return v0
.end method

.method public getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    return-object v0
.end method

.method public getWinternitzParameter()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getWinternitzParameter()I

    move-result v0

    return v0
.end method

.method public getXMSSParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method
