.class public final Lcom/zalexdev/stryker/utils/SparklineView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public b:I

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0xa0

    .line 5
    .line 6
    new-array p1, p1, [F

    .line 7
    .line 8
    iput-object p1, p0, Lcom/zalexdev/stryker/utils/SparklineView;->a:[F

    .line 9
    .line 10
    new-instance p1, Landroid/graphics/Paint;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/zalexdev/stryker/utils/SparklineView;->c:Landroid/graphics/Paint;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/zalexdev/stryker/utils/SparklineView;->d:Landroid/graphics/Paint;

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/zalexdev/stryker/utils/SparklineView;->e:Landroid/graphics/Paint;

    .line 31
    .line 32
    new-instance v2, Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/zalexdev/stryker/utils/SparklineView;->f:Landroid/graphics/Paint;

    .line 38
    .line 39
    new-instance p2, Landroid/graphics/Path;

    .line 40
    .line 41
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/zalexdev/stryker/utils/SparklineView;->g:Landroid/graphics/Path;

    .line 45
    .line 46
    new-instance p2, Landroid/graphics/Path;

    .line 47
    .line 48
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/zalexdev/stryker/utils/SparklineView;->h:Landroid/graphics/Path;

    .line 52
    .line 53
    const p2, -0xe1771b

    .line 54
    .line 55
    .line 56
    iput p2, p0, Lcom/zalexdev/stryker/utils/SparklineView;->i:I

    .line 57
    .line 58
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    .line 62
    .line 63
    const v3, 0x3fe66666    # 1.8f

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v3}, Lcom/zalexdev/stryker/utils/SparklineView;->a(F)F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    .line 72
    .line 73
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 76
    .line 77
    .line 78
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 81
    .line 82
    .line 83
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    .line 90
    .line 91
    const p2, 0x3f19999a    # 0.6f

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p2}, Lcom/zalexdev/stryker/utils/SparklineView;->a(F)F

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    .line 100
    .line 101
    const p2, 0x22808080

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    .line 109
    .line 110
    iget p2, p0, Lcom/zalexdev/stryker/utils/SparklineView;->i:I

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    .line 114
    .line 115
    iget p1, p0, Lcom/zalexdev/stryker/utils/SparklineView;->i:I

    .line 116
    .line 117
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public final b(I)F
    .locals 3

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/utils/SparklineView;->b:I

    iget-object v1, p0, Lcom/zalexdev/stryker/utils/SparklineView;->a:[F

    const/16 v2, 0xa0

    if-ge v0, v2, :cond_0

    aget p1, v1, p1

    return p1

    :cond_0
    rem-int/2addr p1, v2

    aget p1, v1, p1

    return p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v8, v1

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    const/4 v9, 0x0

    .line 19
    cmpg-float v2, v8, v9

    .line 20
    .line 21
    if-lez v2, :cond_c

    .line 22
    .line 23
    cmpg-float v2, v1, v9

    .line 24
    .line 25
    if-gtz v2, :cond_0

    .line 26
    .line 27
    goto/16 :goto_9

    .line 28
    .line 29
    :cond_0
    const/high16 v10, 0x40000000    # 2.0f

    .line 30
    .line 31
    invoke-virtual {v0, v10}, Lcom/zalexdev/stryker/utils/SparklineView;->a(F)F

    .line 32
    .line 33
    .line 34
    move-result v19

    .line 35
    sub-float v15, v1, v19

    .line 36
    .line 37
    const/4 v14, 0x1

    .line 38
    move v11, v14

    .line 39
    :goto_0
    const/4 v1, 0x4

    .line 40
    if-ge v11, v1, :cond_1

    .line 41
    .line 42
    sub-float v1, v15, v19

    .line 43
    .line 44
    int-to-float v2, v11

    .line 45
    mul-float/2addr v1, v2

    .line 46
    const/high16 v2, 0x40800000    # 4.0f

    .line 47
    .line 48
    div-float/2addr v1, v2

    .line 49
    add-float v5, v1, v19

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    iget-object v6, v0, Lcom/zalexdev/stryker/utils/SparklineView;->e:Landroid/graphics/Paint;

    .line 53
    .line 54
    move-object/from16 v1, p1

    .line 55
    .line 56
    move v3, v5

    .line 57
    move v4, v8

    .line 58
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v11, v11, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget v1, v0, Lcom/zalexdev/stryker/utils/SparklineView;->b:I

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    if-ge v1, v2, :cond_2

    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    iget-boolean v1, v0, Lcom/zalexdev/stryker/utils/SparklineView;->j:Z

    .line 71
    .line 72
    iget-object v2, v0, Lcom/zalexdev/stryker/utils/SparklineView;->d:Landroid/graphics/Paint;

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 78
    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    iget v5, v0, Lcom/zalexdev/stryker/utils/SparklineView;->i:I

    .line 82
    .line 83
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    const/16 v13, 0x66

    .line 96
    .line 97
    invoke-static {v13, v6, v11, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 98
    .line 99
    .line 100
    move-result v16

    .line 101
    iget v5, v0, Lcom/zalexdev/stryker/utils/SparklineView;->i:I

    .line 102
    .line 103
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-static {v3, v6, v11, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 116
    .line 117
    .line 118
    move-result v17

    .line 119
    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 120
    .line 121
    move-object v11, v1

    .line 122
    move/from16 v13, v19

    .line 123
    .line 124
    move v5, v14

    .line 125
    move v14, v4

    .line 126
    move v4, v15

    .line 127
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 131
    .line 132
    .line 133
    iput-boolean v5, v0, Lcom/zalexdev/stryker/utils/SparklineView;->j:Z

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    move v5, v14

    .line 137
    move v4, v15

    .line 138
    :goto_1
    iget v1, v0, Lcom/zalexdev/stryker/utils/SparklineView;->b:I

    .line 139
    .line 140
    if-le v1, v5, :cond_4

    .line 141
    .line 142
    sub-int/2addr v1, v5

    .line 143
    int-to-float v1, v1

    .line 144
    div-float v1, v8, v1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    move v1, v8

    .line 148
    :goto_2
    const/4 v6, -0x1

    .line 149
    :goto_3
    iget v11, v0, Lcom/zalexdev/stryker/utils/SparklineView;->b:I

    .line 150
    .line 151
    if-ge v3, v11, :cond_b

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/utils/SparklineView;->b(I)F

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    cmpg-float v11, v11, v9

    .line 158
    .line 159
    if-gez v11, :cond_5

    .line 160
    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_5
    move v6, v3

    .line 165
    :goto_4
    iget v11, v0, Lcom/zalexdev/stryker/utils/SparklineView;->b:I

    .line 166
    .line 167
    if-ge v6, v11, :cond_6

    .line 168
    .line 169
    invoke-virtual {v0, v6}, Lcom/zalexdev/stryker/utils/SparklineView;->b(I)F

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    cmpl-float v11, v11, v9

    .line 174
    .line 175
    if-ltz v11, :cond_6

    .line 176
    .line 177
    add-int/lit8 v6, v6, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    sub-int v11, v6, v3

    .line 181
    .line 182
    if-ge v11, v5, :cond_7

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_7
    iget-object v12, v0, Lcom/zalexdev/stryker/utils/SparklineView;->g:Landroid/graphics/Path;

    .line 186
    .line 187
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 188
    .line 189
    .line 190
    iget-object v13, v0, Lcom/zalexdev/stryker/utils/SparklineView;->h:Landroid/graphics/Path;

    .line 191
    .line 192
    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 193
    .line 194
    .line 195
    int-to-float v14, v3

    .line 196
    mul-float/2addr v14, v1

    .line 197
    move v15, v3

    .line 198
    :goto_5
    if-ge v15, v6, :cond_9

    .line 199
    .line 200
    int-to-float v14, v15

    .line 201
    mul-float/2addr v14, v1

    .line 202
    sub-float v16, v4, v19

    .line 203
    .line 204
    invoke-virtual {v0, v15}, Lcom/zalexdev/stryker/utils/SparklineView;->b(I)F

    .line 205
    .line 206
    .line 207
    move-result v17

    .line 208
    mul-float v17, v17, v16

    .line 209
    .line 210
    sub-float v9, v4, v17

    .line 211
    .line 212
    if-ne v15, v3, :cond_8

    .line 213
    .line 214
    invoke-virtual {v12, v14, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v14, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 218
    .line 219
    .line 220
    :goto_6
    invoke-virtual {v13, v14, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_8
    invoke-virtual {v12, v14, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    .line 226
    .line 227
    goto :goto_6

    .line 228
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 229
    .line 230
    const/4 v9, 0x0

    .line 231
    goto :goto_5

    .line 232
    :cond_9
    invoke-virtual {v13, v14, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v13, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    .line 240
    .line 241
    if-le v11, v5, :cond_a

    .line 242
    .line 243
    iget-object v3, v0, Lcom/zalexdev/stryker/utils/SparklineView;->c:Landroid/graphics/Paint;

    .line 244
    .line 245
    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 246
    .line 247
    .line 248
    :cond_a
    :goto_8
    add-int/lit8 v3, v6, -0x1

    .line 249
    .line 250
    const/4 v9, 0x0

    .line 251
    move/from16 v20, v6

    .line 252
    .line 253
    move v6, v3

    .line 254
    move/from16 v3, v20

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_b
    if-ltz v6, :cond_c

    .line 258
    .line 259
    int-to-float v2, v6

    .line 260
    mul-float/2addr v1, v2

    .line 261
    sub-float v15, v4, v19

    .line 262
    .line 263
    invoke-virtual {v0, v6}, Lcom/zalexdev/stryker/utils/SparklineView;->b(I)F

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    mul-float/2addr v2, v15

    .line 268
    sub-float v15, v4, v2

    .line 269
    .line 270
    invoke-virtual {v0, v10}, Lcom/zalexdev/stryker/utils/SparklineView;->a(F)F

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    sub-float/2addr v8, v2

    .line 275
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    const v2, 0x40266666    # 2.6f

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/utils/SparklineView;->a(F)F

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    iget-object v3, v0, Lcom/zalexdev/stryker/utils/SparklineView;->f:Landroid/graphics/Paint;

    .line 287
    .line 288
    invoke-virtual {v7, v1, v15, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 289
    .line 290
    .line 291
    :cond_c
    :goto_9
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/utils/SparklineView;->j:Z

    return-void
.end method

.method public setAccent(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/zalexdev/stryker/utils/SparklineView;->i:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/zalexdev/stryker/utils/SparklineView;->j:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/zalexdev/stryker/utils/SparklineView;->c:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/zalexdev/stryker/utils/SparklineView;->f:Landroid/graphics/Paint;

    .line 12
    .line 13
    iget v0, p0, Lcom/zalexdev/stryker/utils/SparklineView;->i:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setValues([F)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/zalexdev/stryker/utils/SparklineView;->b:I

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p1

    add-int/lit16 v1, v1, -0xa0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    iget v2, p0, Lcom/zalexdev/stryker/utils/SparklineView;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/zalexdev/stryker/utils/SparklineView;->b:I

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/zalexdev/stryker/utils/SparklineView;->a:[F

    aput v1, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
