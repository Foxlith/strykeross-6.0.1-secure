.class public final Landroidx/core/view/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final a:Landroidx/core/view/u1;

.field public b:Landroidx/core/view/q2;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/u1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/core/view/x1;->a:Landroidx/core/view/u1;

    .line 5
    .line 6
    sget-object p2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/core/view/r0;->a(Landroid/view/View;)Landroidx/core/view/q2;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v0, 0x1e

    .line 17
    .line 18
    if-lt p2, v0, :cond_0

    .line 19
    .line 20
    new-instance p2, Landroidx/core/view/h2;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Landroidx/core/view/h2;-><init>(Landroidx/core/view/q2;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, 0x1d

    .line 27
    .line 28
    if-lt p2, v0, :cond_1

    .line 29
    .line 30
    new-instance p2, Landroidx/core/view/g2;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Landroidx/core/view/g2;-><init>(Landroidx/core/view/q2;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p2, Landroidx/core/view/f2;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Landroidx/core/view/f2;-><init>(Landroidx/core/view/q2;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p2}, Landroidx/core/view/i2;->b()Landroidx/core/view/q2;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    :goto_1
    iput-object p1, p0, Landroidx/core/view/x1;->b:Landroidx/core/view/q2;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLaidOut()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static/range {p1 .. p2}, Landroidx/core/view/q2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, v7, Landroidx/core/view/x1;->b:Landroidx/core/view/q2;

    .line 18
    .line 19
    invoke-static/range {p1 .. p2}, Landroidx/core/view/y1;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-static/range {p1 .. p2}, Landroidx/core/view/q2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    iget-object v0, v7, Landroidx/core/view/x1;->b:Landroidx/core/view/q2;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Landroidx/core/view/r0;->a(Landroid/view/View;)Landroidx/core/view/q2;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, v7, Landroidx/core/view/x1;->b:Landroidx/core/view/q2;

    .line 39
    .line 40
    :cond_1
    iget-object v0, v7, Landroidx/core/view/x1;->b:Landroidx/core/view/q2;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    iput-object v10, v7, Landroidx/core/view/x1;->b:Landroidx/core/view/q2;

    .line 45
    .line 46
    invoke-static/range {p1 .. p2}, Landroidx/core/view/y1;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_2
    invoke-static/range {p1 .. p1}, Landroidx/core/view/y1;->j(Landroid/view/View;)Landroidx/core/view/u1;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, v0, Landroidx/core/view/u1;->mDispachedInsets:Landroid/view/WindowInsets;

    .line 58
    .line 59
    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-static/range {p1 .. p2}, Landroidx/core/view/y1;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0

    .line 70
    :cond_3
    iget-object v0, v7, Landroidx/core/view/x1;->b:Landroidx/core/view/q2;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    const/4 v4, 0x0

    .line 74
    :goto_0
    iget-object v3, v10, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 75
    .line 76
    const/16 v5, 0x100

    .line 77
    .line 78
    if-gt v2, v5, :cond_5

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iget-object v5, v0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 85
    .line 86
    invoke-virtual {v5, v2}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v3, v5}, Lz/f;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    or-int/2addr v4, v2

    .line 97
    :cond_4
    shl-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    if-nez v4, :cond_6

    .line 101
    .line 102
    invoke-static/range {p1 .. p2}, Landroidx/core/view/y1;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :cond_6
    iget-object v5, v7, Landroidx/core/view/x1;->b:Landroidx/core/view/q2;

    .line 108
    .line 109
    new-instance v11, Landroidx/core/view/d2;

    .line 110
    .line 111
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 112
    .line 113
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 114
    .line 115
    .line 116
    const-wide/16 v12, 0xa0

    .line 117
    .line 118
    invoke-direct {v11, v4, v0, v12, v13}, Landroidx/core/view/d2;-><init>(ILandroid/view/animation/DecelerateInterpolator;J)V

    .line 119
    .line 120
    .line 121
    iget-object v0, v11, Landroidx/core/view/d2;->a:Landroidx/core/view/c2;

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v2}, Landroidx/core/view/c2;->d(F)V

    .line 125
    .line 126
    .line 127
    const/4 v0, 0x2

    .line 128
    new-array v0, v0, [F

    .line 129
    .line 130
    fill-array-data v0, :array_0

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v2, v11, Landroidx/core/view/d2;->a:Landroidx/core/view/c2;

    .line 138
    .line 139
    invoke-virtual {v2}, Landroidx/core/view/c2;->a()J

    .line 140
    .line 141
    .line 142
    move-result-wide v12

    .line 143
    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    invoke-virtual {v3, v4}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v2, v5, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 152
    .line 153
    invoke-virtual {v2, v4}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iget v3, v0, Lz/f;->a:I

    .line 158
    .line 159
    iget v13, v2, Lz/f;->a:I

    .line 160
    .line 161
    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    iget v13, v0, Lz/f;->b:I

    .line 166
    .line 167
    iget v14, v2, Lz/f;->b:I

    .line 168
    .line 169
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    iget v6, v0, Lz/f;->c:I

    .line 174
    .line 175
    iget v1, v2, Lz/f;->c:I

    .line 176
    .line 177
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    move-object/from16 v16, v12

    .line 182
    .line 183
    iget v12, v0, Lz/f;->d:I

    .line 184
    .line 185
    move/from16 v17, v4

    .line 186
    .line 187
    iget v4, v2, Lz/f;->d:I

    .line 188
    .line 189
    move-object/from16 v18, v5

    .line 190
    .line 191
    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    invoke-static {v3, v15, v7, v5}, Lz/f;->b(IIII)Lz/f;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    iget v0, v0, Lz/f;->a:I

    .line 200
    .line 201
    iget v2, v2, Lz/f;->a:I

    .line 202
    .line 203
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    invoke-static {v0, v2, v1, v4}, Lz/f;->b(IIII)Lz/f;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    new-instance v6, Landroidx/core/view/t1;

    .line 224
    .line 225
    invoke-direct {v6, v3, v0}, Landroidx/core/view/t1;-><init>(Lz/f;Lz/f;)V

    .line 226
    .line 227
    .line 228
    const/4 v0, 0x0

    .line 229
    invoke-static {v8, v11, v9, v0}, Landroidx/core/view/y1;->f(Landroid/view/View;Landroidx/core/view/d2;Landroid/view/WindowInsets;Z)V

    .line 230
    .line 231
    .line 232
    new-instance v7, Landroidx/core/view/v1;

    .line 233
    .line 234
    move-object v0, v7

    .line 235
    move-object v1, v11

    .line 236
    move-object v2, v10

    .line 237
    move-object/from16 v3, v18

    .line 238
    .line 239
    move/from16 v4, v17

    .line 240
    .line 241
    move-object/from16 v5, p1

    .line 242
    .line 243
    invoke-direct/range {v0 .. v5}, Landroidx/core/view/v1;-><init>(Landroidx/core/view/d2;Landroidx/core/view/q2;Landroidx/core/view/q2;ILandroid/view/View;)V

    .line 244
    .line 245
    .line 246
    move-object/from16 v5, v16

    .line 247
    .line 248
    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    .line 250
    .line 251
    new-instance v0, Landroidx/core/view/n1;

    .line 252
    .line 253
    const/4 v1, 0x1

    .line 254
    move-object/from16 v7, p0

    .line 255
    .line 256
    invoke-direct {v0, v7, v11, v8, v1}, Landroidx/core/view/n1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    .line 261
    .line 262
    new-instance v12, Landroidx/core/view/w1;

    .line 263
    .line 264
    const/4 v13, 0x0

    .line 265
    move-object v0, v12

    .line 266
    move-object/from16 v1, p0

    .line 267
    .line 268
    move-object/from16 v2, p1

    .line 269
    .line 270
    move-object v3, v11

    .line 271
    move-object v4, v6

    .line 272
    move v6, v13

    .line 273
    invoke-direct/range {v0 .. v6}, Landroidx/core/view/w1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 274
    .line 275
    .line 276
    invoke-static {v8, v12}, Landroidx/core/view/d0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 277
    .line 278
    .line 279
    iput-object v10, v7, Landroidx/core/view/x1;->b:Landroidx/core/view/q2;

    .line 280
    .line 281
    invoke-static/range {p1 .. p2}, Landroidx/core/view/y1;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    return-object v0

    .line 286
    nop

    .line 287
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
