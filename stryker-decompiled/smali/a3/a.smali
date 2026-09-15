.class public abstract La3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "#1565C0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, La3/a;->a:I

    const-string v0, "#7E57C2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, La3/a;->b:I

    const-string v0, "#F57C00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, La3/a;->c:I

    const-string v0, "#2E7D32"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, La3/a;->d:I

    const-string v0, "#D81B60"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, La3/a;->e:I

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, La3/a;->f:Landroid/util/LruCache;

    return-void
.end method

.method public static a(Ly2/a;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget p0, La3/a;->a:I

    return p0

    :cond_0
    sget p0, La3/a;->e:I

    return p0

    :cond_1
    sget p0, La3/a;->d:I

    return p0

    :cond_2
    sget p0, La3/a;->c:I

    return p0

    :cond_3
    sget p0, La3/a;->b:I

    return p0
.end method

.method public static b(Landroid/content/Context;Ly2/a;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 17

    .line 1
    invoke-static/range {p1 .. p1}, La3/a;->a(Ly2/a;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, La3/a;->f:Landroid/util/LruCache;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/graphics/Bitmap;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 28
    .line 29
    const/high16 v3, 0x42000000    # 32.0f

    .line 30
    .line 31
    mul-float/2addr v3, v2

    .line 32
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/high16 v4, 0x42280000    # 42.0f

    .line 37
    .line 38
    mul-float/2addr v4, v2

    .line 39
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 44
    .line 45
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    new-instance v12, Landroid/graphics/Canvas;

    .line 50
    .line 51
    invoke-direct {v12, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .line 53
    .line 54
    new-instance v6, Landroid/graphics/Paint;

    .line 55
    .line 56
    const/4 v7, 0x1

    .line 57
    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 58
    .line 59
    .line 60
    const/high16 v8, 0x33000000

    .line 61
    .line 62
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    .line 64
    .line 65
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 66
    .line 67
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    .line 69
    .line 70
    new-instance v9, Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-direct {v9, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    .line 80
    .line 81
    new-instance v10, Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-direct {v10, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const/4 v11, -0x1

    .line 87
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    .line 92
    .line 93
    new-instance v13, Landroid/graphics/Paint;

    .line 94
    .line 95
    invoke-direct {v13, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    .line 100
    .line 101
    int-to-float v3, v3

    .line 102
    const/high16 v8, 0x40000000    # 2.0f

    .line 103
    .line 104
    div-float v14, v3, v8

    .line 105
    .line 106
    const v11, 0x3eeb851f    # 0.46f

    .line 107
    .line 108
    .line 109
    mul-float/2addr v3, v11

    .line 110
    mul-float/2addr v8, v2

    .line 111
    add-float v11, v3, v8

    .line 112
    .line 113
    const/high16 v15, 0x3fc00000    # 1.5f

    .line 114
    .line 115
    mul-float/2addr v15, v2

    .line 116
    add-float/2addr v15, v11

    .line 117
    int-to-float v4, v4

    .line 118
    sub-float v8, v4, v8

    .line 119
    .line 120
    invoke-static {v14, v15, v3, v8}, La3/a;->c(FFFF)Landroid/graphics/Path;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v12, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    const/high16 v6, 0x40800000    # 4.0f

    .line 128
    .line 129
    mul-float/2addr v2, v6

    .line 130
    sub-float/2addr v4, v2

    .line 131
    invoke-static {v14, v11, v3, v4}, La3/a;->c(FFFF)Landroid/graphics/Path;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v12, v2, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    .line 137
    .line 138
    const v2, 0x3f1eb852    # 0.62f

    .line 139
    .line 140
    .line 141
    mul-float/2addr v3, v2

    .line 142
    invoke-virtual {v12, v14, v11, v3, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    .line 144
    .line 145
    const v2, 0x3f0ccccd    # 0.55f

    .line 146
    .line 147
    .line 148
    mul-float/2addr v2, v3

    .line 149
    add-float/2addr v2, v11

    .line 150
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 151
    .line 152
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    .line 154
    .line 155
    const v4, 0x3e6147ae    # 0.22f

    .line 156
    .line 157
    .line 158
    mul-float/2addr v4, v3

    .line 159
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    .line 161
    .line 162
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 163
    .line 164
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 165
    .line 166
    .line 167
    const/4 v4, 0x3

    .line 168
    new-array v15, v4, [F

    .line 169
    .line 170
    const v6, 0x3f866666    # 1.05f

    .line 171
    .line 172
    .line 173
    mul-float/2addr v6, v3

    .line 174
    const/4 v8, 0x0

    .line 175
    aput v6, v15, v8

    .line 176
    .line 177
    const v6, 0x3f3851ec    # 0.72f

    .line 178
    .line 179
    .line 180
    mul-float/2addr v6, v3

    .line 181
    aput v6, v15, v7

    .line 182
    .line 183
    const v6, 0x3ec28f5c    # 0.38f

    .line 184
    .line 185
    .line 186
    mul-float/2addr v6, v3

    .line 187
    const/4 v7, 0x2

    .line 188
    aput v6, v15, v7

    .line 189
    .line 190
    move v11, v8

    .line 191
    :goto_0
    if-ge v11, v4, :cond_0

    .line 192
    .line 193
    aget v6, v15, v11

    .line 194
    .line 195
    new-instance v7, Landroid/graphics/RectF;

    .line 196
    .line 197
    sub-float v8, v14, v6

    .line 198
    .line 199
    sub-float v9, v2, v6

    .line 200
    .line 201
    add-float v10, v14, v6

    .line 202
    .line 203
    add-float/2addr v6, v2

    .line 204
    invoke-direct {v7, v8, v9, v10, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 205
    .line 206
    .line 207
    const/high16 v8, 0x43610000    # 225.0f

    .line 208
    .line 209
    const/high16 v9, 0x42b40000    # 90.0f

    .line 210
    .line 211
    const/4 v10, 0x0

    .line 212
    move-object v6, v12

    .line 213
    move/from16 v16, v11

    .line 214
    .line 215
    move-object v11, v13

    .line 216
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 217
    .line 218
    .line 219
    add-int/lit8 v11, v16, 0x1

    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_0
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 223
    .line 224
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    .line 226
    .line 227
    const v4, 0x3e0f5c29    # 0.14f

    .line 228
    .line 229
    .line 230
    mul-float/2addr v3, v4

    .line 231
    invoke-virtual {v12, v14, v2, v3, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v1, v0, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-object v2, v5

    .line 242
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 243
    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 249
    .line 250
    .line 251
    return-object v0
.end method

.method public static c(FFFF)Landroid/graphics/Path;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const v1, 0x3f47ae14    # 0.78f

    mul-float/2addr v1, p2

    sub-float v2, p0, v1

    const v3, 0x3f0ccccd    # 0.55f

    mul-float/2addr v3, p2

    add-float/2addr v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, p0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-object v0
.end method
