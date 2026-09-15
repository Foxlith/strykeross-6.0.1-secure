.class public final Landroidx/dynamicanimation/animation/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:Z

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D

.field public final j:Landroidx/dynamicanimation/animation/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/l;->a:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/l;->b:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/l;->c:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/l;->i:D

    new-instance v0, Landroidx/dynamicanimation/animation/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/l;->j:Landroidx/dynamicanimation/animation/f;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/l;->a:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/l;->b:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/l;->c:Z

    new-instance v0, Landroidx/dynamicanimation/animation/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/l;->j:Landroidx/dynamicanimation/animation/f;

    float-to-double v0, p1

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/l;->i:D

    return-void
.end method


# virtual methods
.method public final a(DDJ)Landroidx/dynamicanimation/animation/f;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/l;->c:Z

    .line 4
    .line 5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :goto_0
    move-wide/from16 v4, p5

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-wide v4, v0, Landroidx/dynamicanimation/animation/l;->i:D

    .line 13
    .line 14
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmpl-double v1, v4, v6

    .line 20
    .line 21
    if-eqz v1, :cond_5

    .line 22
    .line 23
    iget-wide v4, v0, Landroidx/dynamicanimation/animation/l;->b:D

    .line 24
    .line 25
    cmpl-double v1, v4, v2

    .line 26
    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    neg-double v6, v4

    .line 30
    iget-wide v8, v0, Landroidx/dynamicanimation/animation/l;->a:D

    .line 31
    .line 32
    mul-double/2addr v6, v8

    .line 33
    mul-double/2addr v4, v4

    .line 34
    sub-double/2addr v4, v2

    .line 35
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    mul-double/2addr v4, v8

    .line 40
    add-double/2addr v4, v6

    .line 41
    iput-wide v4, v0, Landroidx/dynamicanimation/animation/l;->f:D

    .line 42
    .line 43
    iget-wide v4, v0, Landroidx/dynamicanimation/animation/l;->b:D

    .line 44
    .line 45
    neg-double v6, v4

    .line 46
    iget-wide v8, v0, Landroidx/dynamicanimation/animation/l;->a:D

    .line 47
    .line 48
    mul-double/2addr v6, v8

    .line 49
    mul-double/2addr v4, v4

    .line 50
    sub-double/2addr v4, v2

    .line 51
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    mul-double/2addr v4, v8

    .line 56
    sub-double/2addr v6, v4

    .line 57
    iput-wide v6, v0, Landroidx/dynamicanimation/animation/l;->g:D

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-wide/16 v6, 0x0

    .line 61
    .line 62
    cmpl-double v1, v4, v6

    .line 63
    .line 64
    if-ltz v1, :cond_2

    .line 65
    .line 66
    cmpg-double v1, v4, v2

    .line 67
    .line 68
    if-gez v1, :cond_2

    .line 69
    .line 70
    iget-wide v6, v0, Landroidx/dynamicanimation/animation/l;->a:D

    .line 71
    .line 72
    mul-double/2addr v4, v4

    .line 73
    sub-double v4, v2, v4

    .line 74
    .line 75
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    mul-double/2addr v4, v6

    .line 80
    iput-wide v4, v0, Landroidx/dynamicanimation/animation/l;->h:D

    .line 81
    .line 82
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 83
    iput-boolean v1, v0, Landroidx/dynamicanimation/animation/l;->c:Z

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_2
    long-to-double v4, v4

    .line 87
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    div-double/2addr v4, v6

    .line 93
    iget-wide v6, v0, Landroidx/dynamicanimation/animation/l;->i:D

    .line 94
    .line 95
    sub-double v6, p1, v6

    .line 96
    .line 97
    iget-wide v8, v0, Landroidx/dynamicanimation/animation/l;->b:D

    .line 98
    .line 99
    cmpl-double v1, v8, v2

    .line 100
    .line 101
    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    if-lez v1, :cond_3

    .line 107
    .line 108
    iget-wide v1, v0, Landroidx/dynamicanimation/animation/l;->g:D

    .line 109
    .line 110
    mul-double v8, v1, v6

    .line 111
    .line 112
    sub-double v8, v8, p3

    .line 113
    .line 114
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/l;->f:D

    .line 115
    .line 116
    sub-double v14, v1, v12

    .line 117
    .line 118
    div-double/2addr v8, v14

    .line 119
    sub-double v8, v6, v8

    .line 120
    .line 121
    mul-double/2addr v6, v1

    .line 122
    sub-double v6, v6, p3

    .line 123
    .line 124
    sub-double v12, v1, v12

    .line 125
    .line 126
    div-double/2addr v6, v12

    .line 127
    mul-double/2addr v1, v4

    .line 128
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 129
    .line 130
    .line 131
    move-result-wide v1

    .line 132
    mul-double/2addr v1, v8

    .line 133
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/l;->f:D

    .line 134
    .line 135
    mul-double/2addr v12, v4

    .line 136
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 137
    .line 138
    .line 139
    move-result-wide v12

    .line 140
    mul-double/2addr v12, v6

    .line 141
    add-double/2addr v12, v1

    .line 142
    iget-wide v1, v0, Landroidx/dynamicanimation/animation/l;->g:D

    .line 143
    .line 144
    mul-double/2addr v8, v1

    .line 145
    mul-double/2addr v1, v4

    .line 146
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 147
    .line 148
    .line 149
    move-result-wide v1

    .line 150
    mul-double/2addr v1, v8

    .line 151
    iget-wide v8, v0, Landroidx/dynamicanimation/animation/l;->f:D

    .line 152
    .line 153
    mul-double/2addr v6, v8

    .line 154
    mul-double/2addr v8, v4

    .line 155
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 156
    .line 157
    .line 158
    move-result-wide v3

    .line 159
    mul-double/2addr v3, v6

    .line 160
    add-double/2addr v3, v1

    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :cond_3
    cmpl-double v1, v8, v2

    .line 164
    .line 165
    if-nez v1, :cond_4

    .line 166
    .line 167
    iget-wide v1, v0, Landroidx/dynamicanimation/animation/l;->a:D

    .line 168
    .line 169
    mul-double v8, v1, v6

    .line 170
    .line 171
    add-double v8, v8, p3

    .line 172
    .line 173
    mul-double v12, v8, v4

    .line 174
    .line 175
    add-double/2addr v12, v6

    .line 176
    neg-double v1, v1

    .line 177
    mul-double/2addr v1, v4

    .line 178
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    mul-double/2addr v1, v12

    .line 183
    iget-wide v6, v0, Landroidx/dynamicanimation/animation/l;->a:D

    .line 184
    .line 185
    neg-double v6, v6

    .line 186
    mul-double/2addr v6, v4

    .line 187
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 188
    .line 189
    .line 190
    move-result-wide v6

    .line 191
    mul-double/2addr v6, v12

    .line 192
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/l;->a:D

    .line 193
    .line 194
    neg-double v14, v12

    .line 195
    mul-double/2addr v6, v14

    .line 196
    neg-double v12, v12

    .line 197
    mul-double/2addr v12, v4

    .line 198
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 199
    .line 200
    .line 201
    move-result-wide v3

    .line 202
    mul-double/2addr v3, v8

    .line 203
    add-double/2addr v3, v6

    .line 204
    move-wide v12, v1

    .line 205
    goto :goto_3

    .line 206
    :cond_4
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/l;->h:D

    .line 207
    .line 208
    div-double/2addr v2, v12

    .line 209
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/l;->a:D

    .line 210
    .line 211
    mul-double v14, v8, v12

    .line 212
    .line 213
    mul-double/2addr v14, v6

    .line 214
    add-double v14, v14, p3

    .line 215
    .line 216
    mul-double/2addr v14, v2

    .line 217
    neg-double v1, v8

    .line 218
    mul-double/2addr v1, v12

    .line 219
    mul-double/2addr v1, v4

    .line 220
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 221
    .line 222
    .line 223
    move-result-wide v1

    .line 224
    iget-wide v8, v0, Landroidx/dynamicanimation/animation/l;->h:D

    .line 225
    .line 226
    mul-double/2addr v8, v4

    .line 227
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 228
    .line 229
    .line 230
    move-result-wide v8

    .line 231
    mul-double/2addr v8, v6

    .line 232
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/l;->h:D

    .line 233
    .line 234
    mul-double/2addr v12, v4

    .line 235
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 236
    .line 237
    .line 238
    move-result-wide v12

    .line 239
    mul-double/2addr v12, v14

    .line 240
    add-double/2addr v12, v8

    .line 241
    mul-double/2addr v12, v1

    .line 242
    iget-wide v1, v0, Landroidx/dynamicanimation/animation/l;->a:D

    .line 243
    .line 244
    neg-double v8, v1

    .line 245
    mul-double/2addr v8, v12

    .line 246
    iget-wide v10, v0, Landroidx/dynamicanimation/animation/l;->b:D

    .line 247
    .line 248
    mul-double/2addr v8, v10

    .line 249
    neg-double v10, v10

    .line 250
    mul-double/2addr v10, v1

    .line 251
    mul-double/2addr v10, v4

    .line 252
    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 258
    .line 259
    .line 260
    move-result-wide v1

    .line 261
    iget-wide v10, v0, Landroidx/dynamicanimation/animation/l;->h:D

    .line 262
    .line 263
    move-wide/from16 p1, v12

    .line 264
    .line 265
    neg-double v12, v10

    .line 266
    mul-double/2addr v12, v6

    .line 267
    mul-double/2addr v10, v4

    .line 268
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 269
    .line 270
    .line 271
    move-result-wide v6

    .line 272
    mul-double/2addr v6, v12

    .line 273
    iget-wide v10, v0, Landroidx/dynamicanimation/animation/l;->h:D

    .line 274
    .line 275
    mul-double/2addr v14, v10

    .line 276
    mul-double/2addr v10, v4

    .line 277
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 278
    .line 279
    .line 280
    move-result-wide v3

    .line 281
    mul-double/2addr v3, v14

    .line 282
    add-double/2addr v3, v6

    .line 283
    mul-double/2addr v3, v1

    .line 284
    add-double/2addr v3, v8

    .line 285
    move-wide/from16 v12, p1

    .line 286
    .line 287
    :goto_3
    iget-wide v1, v0, Landroidx/dynamicanimation/animation/l;->i:D

    .line 288
    .line 289
    add-double/2addr v12, v1

    .line 290
    double-to-float v1, v12

    .line 291
    iget-object v2, v0, Landroidx/dynamicanimation/animation/l;->j:Landroidx/dynamicanimation/animation/f;

    .line 292
    .line 293
    iput v1, v2, Landroidx/dynamicanimation/animation/f;->a:F

    .line 294
    .line 295
    double-to-float v1, v3

    .line 296
    iput v1, v2, Landroidx/dynamicanimation/animation/f;->b:F

    .line 297
    .line 298
    return-object v2

    .line 299
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 300
    .line 301
    const-string v2, "Error: Final position of the spring must be set before the animation starts"

    .line 302
    .line 303
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v1
.end method
