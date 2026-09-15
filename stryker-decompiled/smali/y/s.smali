.class public final Ly/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ly/s;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:[F

.field public final h:F

.field public final i:F

.field public final j:F


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    sget-object v0, Ly/b;->c:[F

    .line 2
    .line 3
    invoke-static {}, Ly/b;->c()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-double v1, v1

    .line 8
    const-wide v3, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-double/2addr v1, v3

    .line 14
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 15
    .line 16
    div-double/2addr v1, v3

    .line 17
    double-to-float v1, v1

    .line 18
    sget-object v2, Ly/b;->a:[[F

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aget v6, v0, v5

    .line 22
    .line 23
    aget-object v7, v2, v5

    .line 24
    .line 25
    aget v8, v7, v5

    .line 26
    .line 27
    mul-float/2addr v8, v6

    .line 28
    const/4 v9, 0x1

    .line 29
    aget v10, v0, v9

    .line 30
    .line 31
    aget v11, v7, v9

    .line 32
    .line 33
    mul-float/2addr v11, v10

    .line 34
    add-float/2addr v11, v8

    .line 35
    const/4 v8, 0x2

    .line 36
    aget v12, v0, v8

    .line 37
    .line 38
    aget v7, v7, v8

    .line 39
    .line 40
    mul-float/2addr v7, v12

    .line 41
    add-float/2addr v7, v11

    .line 42
    aget-object v11, v2, v9

    .line 43
    .line 44
    aget v13, v11, v5

    .line 45
    .line 46
    mul-float/2addr v13, v6

    .line 47
    aget v14, v11, v9

    .line 48
    .line 49
    mul-float/2addr v14, v10

    .line 50
    add-float/2addr v14, v13

    .line 51
    aget v11, v11, v8

    .line 52
    .line 53
    mul-float/2addr v11, v12

    .line 54
    add-float/2addr v11, v14

    .line 55
    aget-object v2, v2, v8

    .line 56
    .line 57
    aget v13, v2, v5

    .line 58
    .line 59
    mul-float/2addr v6, v13

    .line 60
    aget v13, v2, v9

    .line 61
    .line 62
    mul-float/2addr v10, v13

    .line 63
    add-float/2addr v10, v6

    .line 64
    aget v2, v2, v8

    .line 65
    .line 66
    mul-float/2addr v12, v2

    .line 67
    add-float/2addr v12, v10

    .line 68
    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    .line 70
    float-to-double v13, v2

    .line 71
    const-wide v15, 0x3feccccccccccccdL    # 0.9

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    cmpl-double v6, v13, v15

    .line 77
    .line 78
    if-ltz v6, :cond_0

    .line 79
    .line 80
    const v6, 0x3f30a3d7    # 0.69f

    .line 81
    .line 82
    .line 83
    :goto_0
    move/from16 v18, v6

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    const v6, 0x3f27ae14    # 0.655f

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_1
    neg-float v6, v1

    .line 91
    const/high16 v10, 0x42280000    # 42.0f

    .line 92
    .line 93
    sub-float/2addr v6, v10

    .line 94
    const/high16 v10, 0x42b80000    # 92.0f

    .line 95
    .line 96
    div-float/2addr v6, v10

    .line 97
    float-to-double v13, v6

    .line 98
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v13

    .line 102
    double-to-float v6, v13

    .line 103
    const v10, 0x3e8e38e4

    .line 104
    .line 105
    .line 106
    mul-float/2addr v6, v10

    .line 107
    const/high16 v10, 0x3f800000    # 1.0f

    .line 108
    .line 109
    sub-float v6, v10, v6

    .line 110
    .line 111
    mul-float/2addr v6, v2

    .line 112
    float-to-double v13, v6

    .line 113
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 114
    .line 115
    cmpl-double v15, v13, v15

    .line 116
    .line 117
    if-lez v15, :cond_1

    .line 118
    .line 119
    move v6, v10

    .line 120
    goto :goto_2

    .line 121
    :cond_1
    const-wide/16 v15, 0x0

    .line 122
    .line 123
    cmpg-double v13, v13, v15

    .line 124
    .line 125
    if-gez v13, :cond_2

    .line 126
    .line 127
    const/4 v6, 0x0

    .line 128
    :cond_2
    :goto_2
    const/4 v13, 0x3

    .line 129
    new-array v15, v13, [F

    .line 130
    .line 131
    const/high16 v14, 0x42c80000    # 100.0f

    .line 132
    .line 133
    div-float v16, v14, v7

    .line 134
    .line 135
    mul-float v16, v16, v6

    .line 136
    .line 137
    add-float v16, v16, v10

    .line 138
    .line 139
    sub-float v16, v16, v6

    .line 140
    .line 141
    aput v16, v15, v5

    .line 142
    .line 143
    div-float v16, v14, v11

    .line 144
    .line 145
    mul-float v16, v16, v6

    .line 146
    .line 147
    add-float v16, v16, v10

    .line 148
    .line 149
    sub-float v16, v16, v6

    .line 150
    .line 151
    aput v16, v15, v9

    .line 152
    .line 153
    div-float/2addr v14, v12

    .line 154
    mul-float/2addr v14, v6

    .line 155
    add-float/2addr v14, v10

    .line 156
    sub-float/2addr v14, v6

    .line 157
    aput v14, v15, v8

    .line 158
    .line 159
    const/high16 v6, 0x40a00000    # 5.0f

    .line 160
    .line 161
    mul-float/2addr v6, v1

    .line 162
    add-float/2addr v6, v10

    .line 163
    div-float v6, v10, v6

    .line 164
    .line 165
    mul-float v14, v6, v6

    .line 166
    .line 167
    mul-float/2addr v14, v6

    .line 168
    mul-float/2addr v14, v6

    .line 169
    sub-float/2addr v10, v14

    .line 170
    mul-float/2addr v14, v1

    .line 171
    const v6, 0x3dcccccd    # 0.1f

    .line 172
    .line 173
    .line 174
    mul-float/2addr v6, v10

    .line 175
    mul-float/2addr v6, v10

    .line 176
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    .line 177
    .line 178
    float-to-double v2, v1

    .line 179
    mul-double v2, v2, v16

    .line 180
    .line 181
    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    .line 182
    .line 183
    .line 184
    move-result-wide v1

    .line 185
    double-to-float v1, v1

    .line 186
    mul-float/2addr v6, v1

    .line 187
    add-float v1, v6, v14

    .line 188
    .line 189
    invoke-static {}, Ly/b;->c()F

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    aget v0, v0, v9

    .line 194
    .line 195
    div-float v14, v2, v0

    .line 196
    .line 197
    float-to-double v2, v14

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 199
    .line 200
    .line 201
    move-result-wide v8

    .line 202
    double-to-float v8, v8

    .line 203
    const v9, 0x3fbd70a4    # 1.48f

    .line 204
    .line 205
    .line 206
    add-float v23, v8, v9

    .line 207
    .line 208
    const-wide v8, 0x3fc999999999999aL    # 0.2

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 214
    .line 215
    .line 216
    move-result-wide v2

    .line 217
    double-to-float v2, v2

    .line 218
    const v3, 0x3f39999a    # 0.725f

    .line 219
    .line 220
    .line 221
    div-float v17, v3, v2

    .line 222
    .line 223
    new-array v2, v13, [F

    .line 224
    .line 225
    aget v3, v15, v5

    .line 226
    .line 227
    mul-float/2addr v3, v1

    .line 228
    mul-float/2addr v3, v7

    .line 229
    float-to-double v7, v3

    .line 230
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 231
    .line 232
    div-double/2addr v7, v9

    .line 233
    const-wide v9, 0x3fdae147ae147ae1L    # 0.42

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 239
    .line 240
    .line 241
    move-result-wide v7

    .line 242
    double-to-float v3, v7

    .line 243
    aput v3, v2, v5

    .line 244
    .line 245
    const/4 v0, 0x1

    .line 246
    aget v3, v15, v0

    .line 247
    .line 248
    mul-float/2addr v3, v1

    .line 249
    mul-float/2addr v3, v11

    .line 250
    float-to-double v7, v3

    .line 251
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 252
    .line 253
    div-double v7, v7, v19

    .line 254
    .line 255
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 256
    .line 257
    .line 258
    move-result-wide v7

    .line 259
    double-to-float v3, v7

    .line 260
    aput v3, v2, v0

    .line 261
    .line 262
    const/4 v3, 0x2

    .line 263
    aget v6, v15, v3

    .line 264
    .line 265
    mul-float/2addr v6, v1

    .line 266
    mul-float/2addr v6, v12

    .line 267
    float-to-double v6, v6

    .line 268
    div-double v6, v6, v19

    .line 269
    .line 270
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 271
    .line 272
    .line 273
    move-result-wide v6

    .line 274
    double-to-float v6, v6

    .line 275
    aput v6, v2, v3

    .line 276
    .line 277
    aget v3, v2, v5

    .line 278
    .line 279
    const/high16 v5, 0x43c80000    # 400.0f

    .line 280
    .line 281
    mul-float v7, v3, v5

    .line 282
    .line 283
    const v8, 0x41d90a3d    # 27.13f

    .line 284
    .line 285
    .line 286
    add-float/2addr v3, v8

    .line 287
    div-float/2addr v7, v3

    .line 288
    const/4 v0, 0x1

    .line 289
    aget v0, v2, v0

    .line 290
    .line 291
    mul-float v2, v0, v5

    .line 292
    .line 293
    add-float/2addr v0, v8

    .line 294
    div-float/2addr v2, v0

    .line 295
    mul-float/2addr v5, v6

    .line 296
    add-float/2addr v6, v8

    .line 297
    div-float/2addr v5, v6

    .line 298
    const/high16 v0, 0x40000000    # 2.0f

    .line 299
    .line 300
    mul-float/2addr v7, v0

    .line 301
    add-float/2addr v7, v2

    .line 302
    const v0, 0x3d4ccccd    # 0.05f

    .line 303
    .line 304
    .line 305
    mul-float/2addr v5, v0

    .line 306
    add-float/2addr v5, v7

    .line 307
    mul-float v0, v5, v17

    .line 308
    .line 309
    new-instance v2, Ly/s;

    .line 310
    .line 311
    float-to-double v5, v1

    .line 312
    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    .line 313
    .line 314
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 315
    .line 316
    .line 317
    move-result-wide v5

    .line 318
    double-to-float v3, v5

    .line 319
    move-object v13, v2

    .line 320
    move-object v5, v15

    .line 321
    move v15, v0

    .line 322
    move/from16 v16, v17

    .line 323
    .line 324
    const/high16 v0, 0x3f800000    # 1.0f

    .line 325
    .line 326
    move/from16 v19, v0

    .line 327
    .line 328
    move-object/from16 v20, v5

    .line 329
    .line 330
    move/from16 v21, v1

    .line 331
    .line 332
    move/from16 v22, v3

    .line 333
    .line 334
    invoke-direct/range {v13 .. v23}, Ly/s;-><init>(FFFFFF[FFFF)V

    .line 335
    .line 336
    .line 337
    sput-object v2, Ly/s;->k:Ly/s;

    .line 338
    .line 339
    return-void
.end method

.method public constructor <init>(FFFFFF[FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ly/s;->f:F

    iput p2, p0, Ly/s;->a:F

    iput p3, p0, Ly/s;->b:F

    iput p4, p0, Ly/s;->c:F

    iput p5, p0, Ly/s;->d:F

    iput p6, p0, Ly/s;->e:F

    iput-object p7, p0, Ly/s;->g:[F

    iput p8, p0, Ly/s;->h:F

    iput p9, p0, Ly/s;->i:F

    iput p10, p0, Ly/s;->j:F

    return-void
.end method
