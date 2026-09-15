.class public final Lg/d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final l:F


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:Z

.field public final g:Landroid/graphics/Path;

.field public final h:I

.field public i:F

.field public final j:F

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lg/d;->l:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg/d;->a:Landroid/graphics/Paint;

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lg/d;->g:Landroid/graphics/Path;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    iput v1, p0, Lg/d;->k:I

    .line 20
    .line 21
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v3, Le/a;->n:[I

    .line 45
    .line 46
    const v4, 0x7f1400d8

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    const v6, 0x7f040196

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v5, v3, v6, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v3, 0x3

    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eq v3, v5, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 73
    .line 74
    .line 75
    :cond_0
    const/4 v3, 0x7

    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    cmpl-float v6, v6, v3

    .line 86
    .line 87
    if-eqz v6, :cond_1

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    .line 91
    .line 92
    const/high16 v0, 0x40000000    # 2.0f

    .line 93
    .line 94
    div-float/2addr v3, v0

    .line 95
    float-to-double v6, v3

    .line 96
    sget v0, Lg/d;->l:F

    .line 97
    .line 98
    float-to-double v8, v0

    .line 99
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v8

    .line 103
    mul-double/2addr v8, v6

    .line 104
    double-to-float v0, v8

    .line 105
    iput v0, p0, Lg/d;->j:F

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 108
    .line 109
    .line 110
    :cond_1
    const/4 v0, 0x6

    .line 111
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iget-boolean v3, p0, Lg/d;->f:Z

    .line 116
    .line 117
    if-eq v3, v0, :cond_2

    .line 118
    .line 119
    iput-boolean v0, p0, Lg/d;->f:Z

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 122
    .line 123
    .line 124
    :cond_2
    const/4 v0, 0x5

    .line 125
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    int-to-float v0, v0

    .line 134
    iget v3, p0, Lg/d;->e:F

    .line 135
    .line 136
    cmpl-float v3, v0, v3

    .line 137
    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    iput v0, p0, Lg/d;->e:F

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 143
    .line 144
    .line 145
    :cond_3
    const/4 v0, 0x4

    .line 146
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    iput v0, p0, Lg/d;->h:I

    .line 151
    .line 152
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    int-to-float v0, v0

    .line 161
    iput v0, p0, Lg/d;->c:F

    .line 162
    .line 163
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    int-to-float v0, v0

    .line 172
    iput v0, p0, Lg/d;->b:F

    .line 173
    .line 174
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    iput v0, p0, Lg/d;->d:F

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public static a(FFF)F
    .locals 0

    .line 1
    invoke-static {p1, p0, p2, p0}, Landroid/support/v4/media/session/a;->e(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    iget v5, v0, Lg/d;->k:I

    .line 12
    .line 13
    if-eqz v5, :cond_2

    .line 14
    .line 15
    if-eq v5, v4, :cond_1

    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    if-eq v5, v6, :cond_0

    .line 19
    .line 20
    invoke-static/range {p0 .. p0}, La0/c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-ne v5, v4, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static/range {p0 .. p0}, La0/c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_2

    .line 32
    .line 33
    :cond_1
    :goto_0
    move v3, v4

    .line 34
    :cond_2
    iget v5, v0, Lg/d;->b:F

    .line 35
    .line 36
    mul-float/2addr v5, v5

    .line 37
    const/high16 v6, 0x40000000    # 2.0f

    .line 38
    .line 39
    mul-float/2addr v5, v6

    .line 40
    float-to-double v7, v5

    .line 41
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    double-to-float v5, v7

    .line 46
    iget v7, v0, Lg/d;->i:F

    .line 47
    .line 48
    iget v8, v0, Lg/d;->c:F

    .line 49
    .line 50
    invoke-static {v8, v5, v7}, Lg/d;->a(FFF)F

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    iget v7, v0, Lg/d;->d:F

    .line 55
    .line 56
    iget v9, v0, Lg/d;->i:F

    .line 57
    .line 58
    invoke-static {v8, v7, v9}, Lg/d;->a(FFF)F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    iget v8, v0, Lg/d;->j:F

    .line 63
    .line 64
    iget v9, v0, Lg/d;->i:F

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    invoke-static {v10, v8, v9}, Lg/d;->a(FFF)F

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    int-to-float v8, v8

    .line 76
    sget v9, Lg/d;->l:F

    .line 77
    .line 78
    iget v11, v0, Lg/d;->i:F

    .line 79
    .line 80
    invoke-static {v10, v9, v11}, Lg/d;->a(FFF)F

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    move v11, v10

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/high16 v11, -0x3ccc0000    # -180.0f

    .line 89
    .line 90
    :goto_1
    const/high16 v12, 0x43340000    # 180.0f

    .line 91
    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    move v13, v12

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    move v13, v10

    .line 97
    :goto_2
    iget v14, v0, Lg/d;->i:F

    .line 98
    .line 99
    invoke-static {v11, v13, v14}, Lg/d;->a(FFF)F

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    float-to-double v13, v5

    .line 104
    float-to-double v4, v9

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 106
    .line 107
    .line 108
    move-result-wide v16

    .line 109
    mul-double v16, v16, v13

    .line 110
    .line 111
    move/from16 v18, v11

    .line 112
    .line 113
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    .line 114
    .line 115
    .line 116
    move-result-wide v10

    .line 117
    long-to-float v10, v10

    .line 118
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    mul-double/2addr v4, v13

    .line 123
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 124
    .line 125
    .line 126
    move-result-wide v4

    .line 127
    long-to-float v4, v4

    .line 128
    iget-object v5, v0, Lg/d;->g:Landroid/graphics/Path;

    .line 129
    .line 130
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 131
    .line 132
    .line 133
    iget v11, v0, Lg/d;->e:F

    .line 134
    .line 135
    iget-object v13, v0, Lg/d;->a:Landroid/graphics/Paint;

    .line 136
    .line 137
    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    add-float/2addr v14, v11

    .line 142
    iget v11, v0, Lg/d;->j:F

    .line 143
    .line 144
    neg-float v11, v11

    .line 145
    iget v9, v0, Lg/d;->i:F

    .line 146
    .line 147
    invoke-static {v14, v11, v9}, Lg/d;->a(FFF)F

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    neg-float v11, v7

    .line 152
    div-float/2addr v11, v6

    .line 153
    add-float v14, v11, v8

    .line 154
    .line 155
    const/4 v15, 0x0

    .line 156
    invoke-virtual {v5, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 157
    .line 158
    .line 159
    mul-float/2addr v8, v6

    .line 160
    sub-float/2addr v7, v8

    .line 161
    invoke-virtual {v5, v7, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v11, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v10, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 168
    .line 169
    .line 170
    neg-float v7, v9

    .line 171
    invoke-virtual {v5, v11, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    .line 173
    .line 174
    neg-float v4, v4

    .line 175
    invoke-virtual {v5, v10, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    .line 183
    .line 184
    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    int-to-float v7, v7

    .line 193
    const/high16 v8, 0x40400000    # 3.0f

    .line 194
    .line 195
    mul-float/2addr v8, v4

    .line 196
    sub-float/2addr v7, v8

    .line 197
    iget v8, v0, Lg/d;->e:F

    .line 198
    .line 199
    mul-float/2addr v6, v8

    .line 200
    sub-float/2addr v7, v6

    .line 201
    float-to-int v6, v7

    .line 202
    div-int/lit8 v6, v6, 0x4

    .line 203
    .line 204
    mul-int/lit8 v6, v6, 0x2

    .line 205
    .line 206
    int-to-float v6, v6

    .line 207
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 208
    .line 209
    mul-float/2addr v4, v7

    .line 210
    add-float/2addr v4, v8

    .line 211
    add-float/2addr v4, v6

    .line 212
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    int-to-float v2, v2

    .line 217
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 218
    .line 219
    .line 220
    iget-boolean v2, v0, Lg/d;->f:Z

    .line 221
    .line 222
    if-eqz v2, :cond_6

    .line 223
    .line 224
    if-eqz v3, :cond_5

    .line 225
    .line 226
    const/4 v4, -0x1

    .line 227
    goto :goto_3

    .line 228
    :cond_5
    const/4 v4, 0x1

    .line 229
    :goto_3
    int-to-float v2, v4

    .line 230
    mul-float v11, v18, v2

    .line 231
    .line 232
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_6
    if-eqz v3, :cond_7

    .line 237
    .line 238
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 239
    .line 240
    .line 241
    :cond_7
    :goto_4
    invoke-virtual {v1, v5, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lg/d;->h:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lg/d;->h:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
