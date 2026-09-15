.class public final Landroidx/transition/g;
.super Landroidx/transition/u;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Landroidx/transition/c;

.field public static final c:Landroidx/transition/c;

.field public static final d:Landroidx/transition/c;

.field public static final e:Landroidx/transition/c;

.field public static final f:Landroidx/transition/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "android:changeBounds:clip"

    .line 2
    .line 3
    const-string v1, "android:changeBounds:parent"

    .line 4
    .line 5
    const-string v2, "android:changeBounds:bounds"

    .line 6
    .line 7
    const-string v3, "android:changeBounds:windowX"

    .line 8
    .line 9
    const-string v4, "android:changeBounds:windowY"

    .line 10
    .line 11
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/transition/g;->a:[Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Landroidx/transition/b;

    .line 18
    .line 19
    const-string v1, "boundsOrigin"

    .line 20
    .line 21
    const-class v2, Landroid/graphics/PointF;

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, v0, Landroidx/transition/b;->a:Landroid/graphics/Rect;

    .line 32
    .line 33
    new-instance v0, Landroidx/transition/c;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    const-string v3, "topLeft"

    .line 37
    .line 38
    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/transition/g;->b:Landroidx/transition/c;

    .line 42
    .line 43
    new-instance v0, Landroidx/transition/c;

    .line 44
    .line 45
    const-string v1, "bottomRight"

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-direct {v0, v2, v1, v4}, Landroidx/transition/c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Landroidx/transition/g;->c:Landroidx/transition/c;

    .line 52
    .line 53
    new-instance v0, Landroidx/transition/c;

    .line 54
    .line 55
    const/4 v4, 0x2

    .line 56
    invoke-direct {v0, v2, v1, v4}, Landroidx/transition/c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Landroidx/transition/g;->d:Landroidx/transition/c;

    .line 60
    .line 61
    new-instance v0, Landroidx/transition/c;

    .line 62
    .line 63
    const/4 v1, 0x3

    .line 64
    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Landroidx/transition/g;->e:Landroidx/transition/c;

    .line 68
    .line 69
    new-instance v0, Landroidx/transition/c;

    .line 70
    .line 71
    const-string v1, "position"

    .line 72
    .line 73
    const/4 v3, 0x4

    .line 74
    invoke-direct {v0, v2, v1, v3}, Landroidx/transition/c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Landroidx/transition/g;->f:Landroidx/transition/c;

    .line 78
    .line 79
    return-void
.end method

.method public static e(Landroidx/transition/c0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/transition/c0;->b:Landroid/view/View;

    .line 2
    .line 3
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/n0;->c(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v2, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .line 45
    .line 46
    const-string v0, "android:changeBounds:bounds"

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Landroidx/transition/c0;->b:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v0, "android:changeBounds:parent"

    .line 58
    .line 59
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/c0;)V
    .locals 0

    invoke-static {p1}, Landroidx/transition/g;->e(Landroidx/transition/c0;)V

    return-void
.end method

.method public final captureStartValues(Landroidx/transition/c0;)V
    .locals 0

    invoke-static {p1}, Landroidx/transition/g;->e(Landroidx/transition/c0;)V

    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;
    .locals 19

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    :cond_0
    move-object/from16 v1, p0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto/16 :goto_7

    .line 13
    .line 14
    :cond_1
    iget-object v0, v0, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    iget-object v3, v1, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    .line 17
    .line 18
    const-string v4, "android:changeBounds:parent"

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Landroid/view/ViewGroup;

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    if-nez v4, :cond_3

    .line 35
    .line 36
    :cond_2
    move-object/from16 v1, p0

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    goto/16 :goto_7

    .line 40
    .line 41
    :cond_3
    iget-object v1, v1, Landroidx/transition/c0;->b:Landroid/view/View;

    .line 42
    .line 43
    const-string v4, "android:changeBounds:bounds"

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroid/graphics/Rect;

    .line 56
    .line 57
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 60
    .line 61
    iget v8, v5, Landroid/graphics/Rect;->top:I

    .line 62
    .line 63
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 64
    .line 65
    iget v10, v5, Landroid/graphics/Rect;->right:I

    .line 66
    .line 67
    iget v11, v4, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 70
    .line 71
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 72
    .line 73
    sub-int v12, v10, v6

    .line 74
    .line 75
    sub-int v13, v5, v8

    .line 76
    .line 77
    sub-int v14, v11, v7

    .line 78
    .line 79
    sub-int v15, v4, v9

    .line 80
    .line 81
    const-string v2, "android:changeBounds:clip"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/graphics/Rect;

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroid/graphics/Rect;

    .line 94
    .line 95
    const/4 v3, 0x1

    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    if-eqz v12, :cond_4

    .line 99
    .line 100
    if-nez v13, :cond_5

    .line 101
    .line 102
    :cond_4
    if-eqz v14, :cond_9

    .line 103
    .line 104
    if-eqz v15, :cond_9

    .line 105
    .line 106
    :cond_5
    if-ne v6, v7, :cond_7

    .line 107
    .line 108
    if-eq v8, v9, :cond_6

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    move/from16 v17, v16

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_7
    :goto_0
    move/from16 v17, v3

    .line 115
    .line 116
    :goto_1
    if-ne v10, v11, :cond_8

    .line 117
    .line 118
    if-eq v5, v4, :cond_a

    .line 119
    .line 120
    :cond_8
    add-int/lit8 v17, v17, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_9
    move/from16 v17, v16

    .line 124
    .line 125
    :cond_a
    :goto_2
    if-eqz v0, :cond_b

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v18

    .line 131
    if-eqz v18, :cond_c

    .line 132
    .line 133
    :cond_b
    if-nez v0, :cond_d

    .line 134
    .line 135
    if-eqz v2, :cond_d

    .line 136
    .line 137
    :cond_c
    add-int/lit8 v17, v17, 0x1

    .line 138
    .line 139
    :cond_d
    move/from16 v0, v17

    .line 140
    .line 141
    if-lez v0, :cond_13

    .line 142
    .line 143
    invoke-static {v1, v6, v8, v10, v5}, Landroidx/transition/e0;->a(Landroid/view/View;IIII)V

    .line 144
    .line 145
    .line 146
    const/4 v2, 0x2

    .line 147
    if-ne v0, v2, :cond_f

    .line 148
    .line 149
    if-ne v12, v14, :cond_e

    .line 150
    .line 151
    if-ne v13, v15, :cond_e

    .line 152
    .line 153
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/u;->getPathMotion()Landroidx/transition/n;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    int-to-float v2, v6

    .line 158
    int-to-float v4, v8

    .line 159
    int-to-float v5, v7

    .line 160
    int-to-float v6, v9

    .line 161
    invoke-virtual {v0, v2, v4, v5, v6}, Landroidx/transition/n;->getPath(FFFF)Landroid/graphics/Path;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sget-object v2, Landroidx/transition/g;->f:Landroidx/transition/c;

    .line 166
    .line 167
    :goto_3
    const/4 v4, 0x0

    .line 168
    invoke-static {v1, v2, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    goto :goto_5

    .line 173
    :cond_e
    new-instance v0, Landroidx/transition/f;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object v1, v0, Landroidx/transition/f;->e:Landroid/view/View;

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/u;->getPathMotion()Landroidx/transition/n;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    int-to-float v6, v6

    .line 185
    int-to-float v8, v8

    .line 186
    int-to-float v7, v7

    .line 187
    int-to-float v9, v9

    .line 188
    invoke-virtual {v12, v6, v8, v7, v9}, Landroidx/transition/n;->getPath(FFFF)Landroid/graphics/Path;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    sget-object v7, Landroidx/transition/g;->b:Landroidx/transition/c;

    .line 193
    .line 194
    const/4 v8, 0x0

    .line 195
    invoke-static {v0, v7, v8, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/u;->getPathMotion()Landroidx/transition/n;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    int-to-float v9, v10

    .line 204
    int-to-float v5, v5

    .line 205
    int-to-float v10, v11

    .line 206
    int-to-float v4, v4

    .line 207
    invoke-virtual {v7, v9, v5, v10, v4}, Landroidx/transition/n;->getPath(FFFF)Landroid/graphics/Path;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    sget-object v5, Landroidx/transition/g;->c:Landroidx/transition/c;

    .line 212
    .line 213
    invoke-static {v0, v5, v8, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 218
    .line 219
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 220
    .line 221
    .line 222
    new-array v2, v2, [Landroid/animation/Animator;

    .line 223
    .line 224
    aput-object v6, v2, v16

    .line 225
    .line 226
    aput-object v4, v2, v3

    .line 227
    .line 228
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 229
    .line 230
    .line 231
    new-instance v2, Landroidx/transition/d;

    .line 232
    .line 233
    invoke-direct {v2, v0}, Landroidx/transition/d;-><init>(Landroidx/transition/f;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    .line 238
    .line 239
    move-object v0, v5

    .line 240
    goto :goto_5

    .line 241
    :cond_f
    if-ne v6, v7, :cond_11

    .line 242
    .line 243
    if-eq v8, v9, :cond_10

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/u;->getPathMotion()Landroidx/transition/n;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    int-to-float v2, v10

    .line 251
    int-to-float v5, v5

    .line 252
    int-to-float v6, v11

    .line 253
    int-to-float v4, v4

    .line 254
    invoke-virtual {v0, v2, v5, v6, v4}, Landroidx/transition/n;->getPath(FFFF)Landroid/graphics/Path;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    sget-object v2, Landroidx/transition/g;->d:Landroidx/transition/c;

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_11
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/u;->getPathMotion()Landroidx/transition/n;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    int-to-float v2, v6

    .line 266
    int-to-float v4, v8

    .line 267
    int-to-float v5, v7

    .line 268
    int-to-float v6, v9

    .line 269
    invoke-virtual {v0, v2, v4, v5, v6}, Landroidx/transition/n;->getPath(FFFF)Landroid/graphics/Path;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    sget-object v2, Landroidx/transition/g;->e:Landroidx/transition/c;

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 281
    .line 282
    if-eqz v2, :cond_12

    .line 283
    .line 284
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Landroid/view/ViewGroup;

    .line 289
    .line 290
    invoke-static {v1, v3}, Lg/a;->F(Landroid/view/ViewGroup;Z)V

    .line 291
    .line 292
    .line 293
    new-instance v2, Landroidx/transition/e;

    .line 294
    .line 295
    invoke-direct {v2, v1}, Landroidx/transition/e;-><init>(Landroid/view/ViewGroup;)V

    .line 296
    .line 297
    .line 298
    move-object/from16 v1, p0

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Landroidx/transition/u;->addListener(Landroidx/transition/t;)Landroidx/transition/u;

    .line 301
    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_12
    move-object/from16 v1, p0

    .line 305
    .line 306
    :goto_6
    return-object v0

    .line 307
    :cond_13
    move-object/from16 v1, p0

    .line 308
    .line 309
    const/4 v0, 0x0

    .line 310
    :goto_7
    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/transition/g;->a:[Ljava/lang/String;

    return-object v0
.end method
