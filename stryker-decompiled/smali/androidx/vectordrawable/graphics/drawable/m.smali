.class public final Landroidx/vectordrawable/graphics/drawable/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:Landroid/graphics/Matrix;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Matrix;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/PathMeasure;

.field public final g:Landroidx/vectordrawable/graphics/drawable/j;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/Boolean;

.field public final o:Ln/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroidx/vectordrawable/graphics/drawable/m;->p:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->h:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->i:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->j:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->k:F

    const/16 v0, 0xff

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->n:Ljava/lang/Boolean;

    new-instance v0, Ln/b;

    .line 1
    invoke-direct {v0}, Ln/k;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->o:Ln/b;

    .line 2
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/j;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/j;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->g:Landroidx/vectordrawable/graphics/drawable/j;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/m;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->h:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->i:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->j:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->k:F

    const/16 v0, 0xff

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->n:Ljava/lang/Boolean;

    new-instance v0, Ln/b;

    .line 3
    invoke-direct {v0}, Ln/k;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->o:Ln/b;

    .line 4
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/j;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/m;->g:Landroidx/vectordrawable/graphics/drawable/j;

    invoke-direct {v1, v2, v0}, Landroidx/vectordrawable/graphics/drawable/j;-><init>(Landroidx/vectordrawable/graphics/drawable/j;Ln/b;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/m;->g:Landroidx/vectordrawable/graphics/drawable/j;

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/m;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/m;->a:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/m;->b:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/m;->b:Landroid/graphics/Path;

    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/m;->h:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/m;->h:F

    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/m;->i:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/m;->i:F

    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/m;->j:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/m;->j:F

    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/m;->k:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/m;->k:F

    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/m;->l:I

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/m;->l:I

    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/m;->m:Ljava/lang/String;

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/m;->m:Ljava/lang/String;

    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/m;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, p0}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/m;->n:Ljava/lang/Boolean;

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/m;->n:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/vectordrawable/graphics/drawable/j;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/j;->a:Landroid/graphics/Matrix;

    .line 8
    .line 9
    move-object/from16 v1, p2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 12
    .line 13
    .line 14
    iget-object v9, v7, Landroidx/vectordrawable/graphics/drawable/j;->a:Landroid/graphics/Matrix;

    .line 15
    .line 16
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/j;->j:Landroid/graphics/Matrix;

    .line 17
    .line 18
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 22
    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    move v11, v10

    .line 26
    :goto_0
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/j;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ge v11, v1, :cond_17

    .line 33
    .line 34
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/k;

    .line 39
    .line 40
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/j;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    check-cast v1, Landroidx/vectordrawable/graphics/drawable/j;

    .line 46
    .line 47
    move-object/from16 v0, p0

    .line 48
    .line 49
    move-object v2, v9

    .line 50
    move-object/from16 v3, p3

    .line 51
    .line 52
    move/from16 v4, p4

    .line 53
    .line 54
    move/from16 v5, p5

    .line 55
    .line 56
    invoke-virtual/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/m;->a(Landroidx/vectordrawable/graphics/drawable/j;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 57
    .line 58
    .line 59
    :cond_0
    move/from16 v1, p4

    .line 60
    .line 61
    move/from16 v3, p5

    .line 62
    .line 63
    move/from16 v17, v11

    .line 64
    .line 65
    goto/16 :goto_a

    .line 66
    .line 67
    :cond_1
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/l;

    .line 68
    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/l;

    .line 72
    .line 73
    move/from16 v1, p4

    .line 74
    .line 75
    int-to-float v2, v1

    .line 76
    iget v3, v6, Landroidx/vectordrawable/graphics/drawable/m;->j:F

    .line 77
    .line 78
    div-float/2addr v2, v3

    .line 79
    move/from16 v3, p5

    .line 80
    .line 81
    int-to-float v4, v3

    .line 82
    iget v5, v6, Landroidx/vectordrawable/graphics/drawable/m;->k:F

    .line 83
    .line 84
    div-float/2addr v4, v5

    .line 85
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    iget-object v12, v6, Landroidx/vectordrawable/graphics/drawable/m;->c:Landroid/graphics/Matrix;

    .line 90
    .line 91
    invoke-virtual {v12, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 95
    .line 96
    .line 97
    const/4 v2, 0x4

    .line 98
    new-array v2, v2, [F

    .line 99
    .line 100
    fill-array-data v2, :array_0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 104
    .line 105
    .line 106
    aget v4, v2, v10

    .line 107
    .line 108
    float-to-double v13, v4

    .line 109
    const/4 v4, 0x1

    .line 110
    aget v15, v2, v4

    .line 111
    .line 112
    move/from16 p2, v5

    .line 113
    .line 114
    float-to-double v4, v15

    .line 115
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    double-to-float v4, v4

    .line 120
    const/4 v5, 0x2

    .line 121
    aget v13, v2, v5

    .line 122
    .line 123
    float-to-double v13, v13

    .line 124
    const/4 v15, 0x3

    .line 125
    aget v5, v2, v15

    .line 126
    .line 127
    move/from16 v17, v11

    .line 128
    .line 129
    float-to-double v10, v5

    .line 130
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 131
    .line 132
    .line 133
    move-result-wide v10

    .line 134
    double-to-float v5, v10

    .line 135
    const/4 v10, 0x0

    .line 136
    aget v11, v2, v10

    .line 137
    .line 138
    const/4 v10, 0x1

    .line 139
    aget v13, v2, v10

    .line 140
    .line 141
    const/4 v10, 0x2

    .line 142
    aget v10, v2, v10

    .line 143
    .line 144
    aget v2, v2, v15

    .line 145
    .line 146
    mul-float/2addr v11, v2

    .line 147
    mul-float/2addr v13, v10

    .line 148
    sub-float/2addr v11, v13

    .line 149
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    const/4 v4, 0x0

    .line 154
    cmpl-float v5, v2, v4

    .line 155
    .line 156
    if-lez v5, :cond_2

    .line 157
    .line 158
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    div-float/2addr v5, v2

    .line 163
    goto :goto_1

    .line 164
    :cond_2
    move v5, v4

    .line 165
    :goto_1
    cmpl-float v2, v5, v4

    .line 166
    .line 167
    if-nez v2, :cond_3

    .line 168
    .line 169
    goto/16 :goto_a

    .line 170
    .line 171
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget-object v2, v6, Landroidx/vectordrawable/graphics/drawable/m;->a:Landroid/graphics/Path;

    .line 175
    .line 176
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 177
    .line 178
    .line 179
    iget-object v10, v0, Landroidx/vectordrawable/graphics/drawable/l;->a:[Lz/i;

    .line 180
    .line 181
    if-eqz v10, :cond_4

    .line 182
    .line 183
    invoke-static {v10, v2}, Lz/i;->b([Lz/i;Landroid/graphics/Path;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    iget-object v10, v6, Landroidx/vectordrawable/graphics/drawable/m;->b:Landroid/graphics/Path;

    .line 187
    .line 188
    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 189
    .line 190
    .line 191
    instance-of v11, v0, Landroidx/vectordrawable/graphics/drawable/h;

    .line 192
    .line 193
    if-eqz v11, :cond_6

    .line 194
    .line 195
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/l;->c:I

    .line 196
    .line 197
    if-nez v0, :cond_5

    .line 198
    .line 199
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_5
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 203
    .line 204
    :goto_2
    invoke-virtual {v10, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 211
    .line 212
    .line 213
    goto/16 :goto_a

    .line 214
    .line 215
    :cond_6
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/i;

    .line 216
    .line 217
    iget v11, v0, Landroidx/vectordrawable/graphics/drawable/i;->j:F

    .line 218
    .line 219
    cmpl-float v13, v11, v4

    .line 220
    .line 221
    const/high16 v14, 0x3f800000    # 1.0f

    .line 222
    .line 223
    if-nez v13, :cond_7

    .line 224
    .line 225
    iget v13, v0, Landroidx/vectordrawable/graphics/drawable/i;->k:F

    .line 226
    .line 227
    cmpl-float v13, v13, v14

    .line 228
    .line 229
    if-eqz v13, :cond_a

    .line 230
    .line 231
    :cond_7
    iget v13, v0, Landroidx/vectordrawable/graphics/drawable/i;->l:F

    .line 232
    .line 233
    add-float/2addr v11, v13

    .line 234
    rem-float/2addr v11, v14

    .line 235
    iget v15, v0, Landroidx/vectordrawable/graphics/drawable/i;->k:F

    .line 236
    .line 237
    add-float/2addr v15, v13

    .line 238
    rem-float/2addr v15, v14

    .line 239
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/m;->f:Landroid/graphics/PathMeasure;

    .line 240
    .line 241
    if-nez v13, :cond_8

    .line 242
    .line 243
    new-instance v13, Landroid/graphics/PathMeasure;

    .line 244
    .line 245
    invoke-direct {v13}, Landroid/graphics/PathMeasure;-><init>()V

    .line 246
    .line 247
    .line 248
    iput-object v13, v6, Landroidx/vectordrawable/graphics/drawable/m;->f:Landroid/graphics/PathMeasure;

    .line 249
    .line 250
    :cond_8
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/m;->f:Landroid/graphics/PathMeasure;

    .line 251
    .line 252
    const/4 v14, 0x0

    .line 253
    invoke-virtual {v13, v2, v14}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 254
    .line 255
    .line 256
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/m;->f:Landroid/graphics/PathMeasure;

    .line 257
    .line 258
    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    .line 259
    .line 260
    .line 261
    move-result v13

    .line 262
    mul-float/2addr v11, v13

    .line 263
    mul-float/2addr v15, v13

    .line 264
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 265
    .line 266
    .line 267
    cmpl-float v16, v11, v15

    .line 268
    .line 269
    if-lez v16, :cond_9

    .line 270
    .line 271
    iget-object v14, v6, Landroidx/vectordrawable/graphics/drawable/m;->f:Landroid/graphics/PathMeasure;

    .line 272
    .line 273
    const/4 v4, 0x1

    .line 274
    invoke-virtual {v14, v11, v13, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 275
    .line 276
    .line 277
    iget-object v11, v6, Landroidx/vectordrawable/graphics/drawable/m;->f:Landroid/graphics/PathMeasure;

    .line 278
    .line 279
    const/4 v13, 0x0

    .line 280
    invoke-virtual {v11, v13, v15, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_9
    move v13, v4

    .line 285
    const/4 v4, 0x1

    .line 286
    iget-object v14, v6, Landroidx/vectordrawable/graphics/drawable/m;->f:Landroid/graphics/PathMeasure;

    .line 287
    .line 288
    invoke-virtual {v14, v11, v15, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 289
    .line 290
    .line 291
    :goto_3
    invoke-virtual {v2, v13, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 292
    .line 293
    .line 294
    :cond_a
    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 295
    .line 296
    .line 297
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/i;->g:Ly/d;

    .line 298
    .line 299
    iget-object v4, v2, Ly/d;->a:Landroid/graphics/Shader;

    .line 300
    .line 301
    if-eqz v4, :cond_b

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_b
    iget v4, v2, Ly/d;->c:I

    .line 305
    .line 306
    if-eqz v4, :cond_c

    .line 307
    .line 308
    :goto_4
    const/4 v4, 0x1

    .line 309
    goto :goto_5

    .line 310
    :cond_c
    const/4 v4, 0x0

    .line 311
    :goto_5
    const/4 v13, 0x0

    .line 312
    const/16 v14, 0xff

    .line 313
    .line 314
    const/high16 v15, 0x437f0000    # 255.0f

    .line 315
    .line 316
    if-eqz v4, :cond_10

    .line 317
    .line 318
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/m;->e:Landroid/graphics/Paint;

    .line 319
    .line 320
    if-nez v4, :cond_d

    .line 321
    .line 322
    new-instance v4, Landroid/graphics/Paint;

    .line 323
    .line 324
    const/4 v11, 0x1

    .line 325
    invoke-direct {v4, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 326
    .line 327
    .line 328
    iput-object v4, v6, Landroidx/vectordrawable/graphics/drawable/m;->e:Landroid/graphics/Paint;

    .line 329
    .line 330
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 331
    .line 332
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 333
    .line 334
    .line 335
    :cond_d
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/m;->e:Landroid/graphics/Paint;

    .line 336
    .line 337
    iget-object v11, v2, Ly/d;->a:Landroid/graphics/Shader;

    .line 338
    .line 339
    if-eqz v11, :cond_e

    .line 340
    .line 341
    invoke-virtual {v11, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 345
    .line 346
    .line 347
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/i;->i:F

    .line 348
    .line 349
    mul-float/2addr v2, v15

    .line 350
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_e
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 362
    .line 363
    .line 364
    iget v2, v2, Ly/d;->c:I

    .line 365
    .line 366
    iget v11, v0, Landroidx/vectordrawable/graphics/drawable/i;->i:F

    .line 367
    .line 368
    sget-object v18, Landroidx/vectordrawable/graphics/drawable/p;->j:Landroid/graphics/PorterDuff$Mode;

    .line 369
    .line 370
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 371
    .line 372
    .line 373
    move-result v14

    .line 374
    const v16, 0xffffff

    .line 375
    .line 376
    .line 377
    and-int v2, v2, v16

    .line 378
    .line 379
    int-to-float v14, v14

    .line 380
    mul-float/2addr v14, v11

    .line 381
    float-to-int v11, v14

    .line 382
    shl-int/lit8 v11, v11, 0x18

    .line 383
    .line 384
    or-int/2addr v2, v11

    .line 385
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    .line 387
    .line 388
    :goto_6
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 389
    .line 390
    .line 391
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/l;->c:I

    .line 392
    .line 393
    if-nez v2, :cond_f

    .line 394
    .line 395
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_f
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 399
    .line 400
    :goto_7
    invoke-virtual {v10, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 404
    .line 405
    .line 406
    :cond_10
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/i;->e:Ly/d;

    .line 407
    .line 408
    iget-object v4, v2, Ly/d;->a:Landroid/graphics/Shader;

    .line 409
    .line 410
    if-eqz v4, :cond_11

    .line 411
    .line 412
    goto :goto_8

    .line 413
    :cond_11
    iget v4, v2, Ly/d;->c:I

    .line 414
    .line 415
    if-eqz v4, :cond_16

    .line 416
    .line 417
    :goto_8
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/m;->d:Landroid/graphics/Paint;

    .line 418
    .line 419
    if-nez v4, :cond_12

    .line 420
    .line 421
    new-instance v4, Landroid/graphics/Paint;

    .line 422
    .line 423
    const/4 v11, 0x1

    .line 424
    invoke-direct {v4, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 425
    .line 426
    .line 427
    iput-object v4, v6, Landroidx/vectordrawable/graphics/drawable/m;->d:Landroid/graphics/Paint;

    .line 428
    .line 429
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 430
    .line 431
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    .line 433
    .line 434
    :cond_12
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/m;->d:Landroid/graphics/Paint;

    .line 435
    .line 436
    iget-object v11, v0, Landroidx/vectordrawable/graphics/drawable/i;->n:Landroid/graphics/Paint$Join;

    .line 437
    .line 438
    if-eqz v11, :cond_13

    .line 439
    .line 440
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 441
    .line 442
    .line 443
    :cond_13
    iget-object v11, v0, Landroidx/vectordrawable/graphics/drawable/i;->m:Landroid/graphics/Paint$Cap;

    .line 444
    .line 445
    if-eqz v11, :cond_14

    .line 446
    .line 447
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 448
    .line 449
    .line 450
    :cond_14
    iget v11, v0, Landroidx/vectordrawable/graphics/drawable/i;->o:F

    .line 451
    .line 452
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 453
    .line 454
    .line 455
    iget-object v11, v2, Ly/d;->a:Landroid/graphics/Shader;

    .line 456
    .line 457
    if-eqz v11, :cond_15

    .line 458
    .line 459
    invoke-virtual {v11, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 463
    .line 464
    .line 465
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/i;->h:F

    .line 466
    .line 467
    mul-float/2addr v2, v15

    .line 468
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 473
    .line 474
    .line 475
    goto :goto_9

    .line 476
    :cond_15
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 477
    .line 478
    .line 479
    const/16 v11, 0xff

    .line 480
    .line 481
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 482
    .line 483
    .line 484
    iget v2, v2, Ly/d;->c:I

    .line 485
    .line 486
    iget v11, v0, Landroidx/vectordrawable/graphics/drawable/i;->h:F

    .line 487
    .line 488
    sget-object v12, Landroidx/vectordrawable/graphics/drawable/p;->j:Landroid/graphics/PorterDuff$Mode;

    .line 489
    .line 490
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 491
    .line 492
    .line 493
    move-result v12

    .line 494
    const v14, 0xffffff

    .line 495
    .line 496
    .line 497
    and-int/2addr v2, v14

    .line 498
    int-to-float v12, v12

    .line 499
    mul-float/2addr v12, v11

    .line 500
    float-to-int v11, v12

    .line 501
    shl-int/lit8 v11, v11, 0x18

    .line 502
    .line 503
    or-int/2addr v2, v11

    .line 504
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    .line 506
    .line 507
    :goto_9
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 508
    .line 509
    .line 510
    mul-float v5, v5, p2

    .line 511
    .line 512
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/i;->f:F

    .line 513
    .line 514
    mul-float/2addr v0, v5

    .line 515
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 519
    .line 520
    .line 521
    :cond_16
    :goto_a
    add-int/lit8 v11, v17, 0x1

    .line 522
    .line 523
    const/4 v10, 0x0

    .line 524
    goto/16 :goto_0

    .line 525
    .line 526
    :cond_17
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    nop

    .line 531
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getAlpha()F
    .locals 2

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/m;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/m;->l:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/m;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/m;->l:I

    return-void
.end method
