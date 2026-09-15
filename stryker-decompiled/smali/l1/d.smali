.class public final Ll1/d;
.super Landroidx/recyclerview/widget/b1;
.source "SourceFile"


# instance fields
.field public a:Ll1/k;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public e:I

.field public f:I

.field public final g:Ll1/c;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll1/d;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 7
    .line 8
    iput-object p1, p0, Ll1/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    iput-object p1, p0, Ll1/d;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    .line 18
    new-instance p1, Ll1/c;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ll1/d;->g:Ll1/c;

    .line 24
    .line 25
    invoke-virtual {p0}, Ll1/d;->b()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget v0, p0, Ll1/d;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Ll1/d;->f:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ll1/d;->f:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Ll1/d;->f:I

    iget-object v0, p0, Ll1/d;->a:Ll1/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ll1/k;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ll1/d;->e:I

    .line 3
    .line 4
    iput v0, p0, Ll1/d;->f:I

    .line 5
    .line 6
    iget-object v1, p0, Ll1/d;->g:Ll1/c;

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    iput v2, v1, Ll1/c;->a:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput v3, v1, Ll1/c;->b:F

    .line 13
    .line 14
    iput v0, v1, Ll1/c;->c:I

    .line 15
    .line 16
    iput v2, p0, Ll1/d;->h:I

    .line 17
    .line 18
    iput v2, p0, Ll1/d;->i:I

    .line 19
    .line 20
    iput-boolean v0, p0, Ll1/d;->j:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Ll1/d;->k:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Ll1/d;->m:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Ll1/d;->l:Z

    .line 27
    .line 28
    return-void
.end method

.method public final c()V
    .locals 14

    .line 1
    iget-object v0, p0, Ll1/d;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Ll1/d;->g:Ll1/c;

    .line 8
    .line 9
    iput v1, v2, Ll1/c;->a:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, -0x1

    .line 14
    if-ne v1, v5, :cond_0

    .line 15
    .line 16
    iput v5, v2, Ll1/c;->a:I

    .line 17
    .line 18
    iput v4, v2, Ll1/c;->b:F

    .line 19
    .line 20
    iput v3, v2, Ll1/c;->c:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iput v5, v2, Ll1/c;->a:I

    .line 30
    .line 31
    iput v4, v2, Ll1/c;->b:F

    .line 32
    .line 33
    iput v3, v2, Ll1/c;->c:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->getRightDecorationWidth(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->getTopDecorationHeight(Landroid/view/View;)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 57
    .line 58
    if-eqz v10, :cond_2

    .line 59
    .line 60
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 61
    .line 62
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 63
    .line 64
    add-int/2addr v5, v10

    .line 65
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 66
    .line 67
    add-int/2addr v6, v10

    .line 68
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 69
    .line 70
    add-int/2addr v7, v10

    .line 71
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 72
    .line 73
    add-int/2addr v8, v9

    .line 74
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    add-int/2addr v9, v7

    .line 79
    add-int/2addr v9, v8

    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    add-int/2addr v8, v5

    .line 85
    add-int/2addr v8, v6

    .line 86
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/4 v10, 0x1

    .line 91
    iget-object v11, p0, Ll1/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    if-nez v6, :cond_4

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    sub-int/2addr v1, v5

    .line 100
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    sub-int/2addr v1, v5

    .line 105
    iget-object v5, p0, Ll1/d;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 106
    .line 107
    iget-object v5, v5, Landroidx/viewpager2/widget/ViewPager2;->g:Ll1/j;

    .line 108
    .line 109
    invoke-virtual {v5}, Landroidx/recyclerview/widget/w0;->getLayoutDirection()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-ne v5, v10, :cond_3

    .line 114
    .line 115
    neg-int v1, v1

    .line 116
    :cond_3
    move v9, v8

    .line 117
    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    sub-int/2addr v1, v7

    .line 123
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    sub-int/2addr v1, v5

    .line 128
    :goto_0
    neg-int v1, v1

    .line 129
    iput v1, v2, Ll1/c;->c:I

    .line 130
    .line 131
    if-gez v1, :cond_12

    .line 132
    .line 133
    new-instance v1, Ll1/a;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_5

    .line 143
    .line 144
    goto/16 :goto_9

    .line 145
    .line 146
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-nez v5, :cond_6

    .line 151
    .line 152
    move v5, v10

    .line 153
    goto :goto_1

    .line 154
    :cond_6
    move v5, v3

    .line 155
    :goto_1
    const/4 v6, 0x2

    .line 156
    filled-new-array {v4, v6}, [I

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 161
    .line 162
    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, [[I

    .line 167
    .line 168
    move v7, v3

    .line 169
    :goto_2
    if-ge v7, v4, :cond_b

    .line 170
    .line 171
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    if-eqz v8, :cond_a

    .line 176
    .line 177
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    instance-of v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    .line 183
    if-eqz v11, :cond_7

    .line 184
    .line 185
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    sget-object v9, Ll1/a;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    .line 190
    :goto_3
    aget-object v11, v6, v7

    .line 191
    .line 192
    if-eqz v5, :cond_8

    .line 193
    .line 194
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 199
    .line 200
    :goto_4
    sub-int/2addr v12, v13

    .line 201
    goto :goto_5

    .line 202
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :goto_5
    aput v12, v11, v3

    .line 210
    .line 211
    aget-object v11, v6, v7

    .line 212
    .line 213
    if-eqz v5, :cond_9

    .line 214
    .line 215
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 220
    .line 221
    :goto_6
    add-int/2addr v8, v9

    .line 222
    goto :goto_7

    .line 223
    :cond_9
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :goto_7
    aput v8, v11, v10

    .line 231
    .line 232
    add-int/lit8 v7, v7, 0x1

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    const-string v1, "null view contained in the view hierarchy"

    .line 238
    .line 239
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_b
    new-instance v5, Lo/g;

    .line 244
    .line 245
    invoke-direct {v5, v1, v10}, Lo/g;-><init>(Ljava/lang/Object;I)V

    .line 246
    .line 247
    .line 248
    invoke-static {v6, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 249
    .line 250
    .line 251
    move v1, v10

    .line 252
    :goto_8
    if-ge v1, v4, :cond_d

    .line 253
    .line 254
    add-int/lit8 v5, v1, -0x1

    .line 255
    .line 256
    aget-object v5, v6, v5

    .line 257
    .line 258
    aget v5, v5, v10

    .line 259
    .line 260
    aget-object v7, v6, v1

    .line 261
    .line 262
    aget v7, v7, v3

    .line 263
    .line 264
    if-eq v5, v7, :cond_c

    .line 265
    .line 266
    goto :goto_a

    .line 267
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_d
    aget-object v1, v6, v3

    .line 271
    .line 272
    aget v5, v1, v10

    .line 273
    .line 274
    aget v1, v1, v3

    .line 275
    .line 276
    sub-int/2addr v5, v1

    .line 277
    if-gtz v1, :cond_f

    .line 278
    .line 279
    sub-int/2addr v4, v10

    .line 280
    aget-object v1, v6, v4

    .line 281
    .line 282
    aget v1, v1, v10

    .line 283
    .line 284
    if-ge v1, v5, :cond_e

    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_e
    :goto_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-gt v1, v10, :cond_11

    .line 292
    .line 293
    :cond_f
    :goto_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    :goto_b
    if-ge v3, v1, :cond_11

    .line 298
    .line 299
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-static {v4}, Ll1/a;->a(Landroid/view/View;)Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-nez v4, :cond_10

    .line 308
    .line 309
    add-int/lit8 v3, v3, 0x1

    .line 310
    .line 311
    goto :goto_b

    .line 312
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 313
    .line 314
    const-string v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    .line 315
    .line 316
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v0

    .line 320
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 321
    .line 322
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 323
    .line 324
    iget v2, v2, Ll1/c;->c:I

    .line 325
    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    const-string v3, "Page can only be offset by a positive amount, not by %d"

    .line 335
    .line 336
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw v0

    .line 344
    :cond_12
    if-nez v9, :cond_13

    .line 345
    .line 346
    goto :goto_c

    .line 347
    :cond_13
    int-to-float v0, v1

    .line 348
    int-to-float v1, v9

    .line 349
    div-float v4, v0, v1

    .line 350
    .line 351
    :goto_c
    iput v4, v2, Ll1/c;->b:F

    .line 352
    .line 353
    return-void
.end method

.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    .line 1
    iget p1, p0, Ll1/d;->e:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    .line 8
    iget v3, p0, Ll1/d;->f:I

    .line 9
    .line 10
    if-eq v3, v2, :cond_3

    .line 11
    .line 12
    :cond_0
    if-ne p2, v2, :cond_3

    .line 13
    .line 14
    iput-boolean v1, p0, Ll1/d;->m:Z

    .line 15
    .line 16
    iput v2, p0, Ll1/d;->e:I

    .line 17
    .line 18
    iget p1, p0, Ll1/d;->i:I

    .line 19
    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    iput p1, p0, Ll1/d;->h:I

    .line 23
    .line 24
    iput v0, p0, Ll1/d;->i:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget p1, p0, Ll1/d;->h:I

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Ll1/d;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Ll1/d;->h:I

    .line 38
    .line 39
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Ll1/d;->a(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    const/4 v3, 0x4

    .line 44
    if-eq p1, v2, :cond_5

    .line 45
    .line 46
    if-ne p1, v3, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    move v4, v1

    .line 50
    goto :goto_2

    .line 51
    :cond_5
    :goto_1
    move v4, v2

    .line 52
    :goto_2
    const/4 v5, 0x2

    .line 53
    if-eqz v4, :cond_7

    .line 54
    .line 55
    if-ne p2, v5, :cond_7

    .line 56
    .line 57
    iget-boolean p1, p0, Ll1/d;->k:Z

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    invoke-virtual {p0, v5}, Ll1/d;->a(I)V

    .line 62
    .line 63
    .line 64
    iput-boolean v2, p0, Ll1/d;->j:Z

    .line 65
    .line 66
    :cond_6
    return-void

    .line 67
    :cond_7
    if-eq p1, v2, :cond_9

    .line 68
    .line 69
    if-ne p1, v3, :cond_8

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_8
    move v2, v1

    .line 73
    :cond_9
    :goto_3
    iget-object p1, p0, Ll1/d;->g:Ll1/c;

    .line 74
    .line 75
    if-eqz v2, :cond_c

    .line 76
    .line 77
    if-nez p2, :cond_c

    .line 78
    .line 79
    invoke-virtual {p0}, Ll1/d;->c()V

    .line 80
    .line 81
    .line 82
    iget-boolean v2, p0, Ll1/d;->k:Z

    .line 83
    .line 84
    if-nez v2, :cond_a

    .line 85
    .line 86
    iget v2, p1, Ll1/c;->a:I

    .line 87
    .line 88
    if-eq v2, v0, :cond_b

    .line 89
    .line 90
    iget-object v3, p0, Ll1/d;->a:Ll1/k;

    .line 91
    .line 92
    if-eqz v3, :cond_b

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    invoke-virtual {v3, v2, v4, v1}, Ll1/k;->onPageScrolled(IFI)V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_a
    iget v2, p1, Ll1/c;->c:I

    .line 100
    .line 101
    if-nez v2, :cond_c

    .line 102
    .line 103
    iget v2, p0, Ll1/d;->h:I

    .line 104
    .line 105
    iget v3, p1, Ll1/c;->a:I

    .line 106
    .line 107
    if-eq v2, v3, :cond_b

    .line 108
    .line 109
    iget-object v2, p0, Ll1/d;->a:Ll1/k;

    .line 110
    .line 111
    if-eqz v2, :cond_b

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ll1/k;->onPageSelected(I)V

    .line 114
    .line 115
    .line 116
    :cond_b
    :goto_4
    invoke-virtual {p0, v1}, Ll1/d;->a(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ll1/d;->b()V

    .line 120
    .line 121
    .line 122
    :cond_c
    iget v2, p0, Ll1/d;->e:I

    .line 123
    .line 124
    if-ne v2, v5, :cond_f

    .line 125
    .line 126
    if-nez p2, :cond_f

    .line 127
    .line 128
    iget-boolean p2, p0, Ll1/d;->l:Z

    .line 129
    .line 130
    if-eqz p2, :cond_f

    .line 131
    .line 132
    invoke-virtual {p0}, Ll1/d;->c()V

    .line 133
    .line 134
    .line 135
    iget p2, p1, Ll1/c;->c:I

    .line 136
    .line 137
    if-nez p2, :cond_f

    .line 138
    .line 139
    iget p2, p0, Ll1/d;->i:I

    .line 140
    .line 141
    iget p1, p1, Ll1/c;->a:I

    .line 142
    .line 143
    if-eq p2, p1, :cond_e

    .line 144
    .line 145
    if-ne p1, v0, :cond_d

    .line 146
    .line 147
    move p1, v1

    .line 148
    :cond_d
    iget-object p2, p0, Ll1/d;->a:Ll1/k;

    .line 149
    .line 150
    if-eqz p2, :cond_e

    .line 151
    .line 152
    invoke-virtual {p2, p1}, Ll1/k;->onPageSelected(I)V

    .line 153
    .line 154
    .line 155
    :cond_e
    invoke-virtual {p0, v1}, Ll1/d;->a(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ll1/d;->b()V

    .line 159
    .line 160
    .line 161
    :cond_f
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ll1/d;->k:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ll1/d;->c()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Ll1/d;->j:Z

    .line 8
    .line 9
    iget-object v1, p0, Ll1/d;->g:Ll1/c;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iput-boolean v3, p0, Ll1/d;->j:Z

    .line 16
    .line 17
    if-gtz p3, :cond_2

    .line 18
    .line 19
    if-nez p3, :cond_3

    .line 20
    .line 21
    if-gez p2, :cond_0

    .line 22
    .line 23
    move p2, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p2, v3

    .line 26
    :goto_0
    iget-object p3, p0, Ll1/d;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 27
    .line 28
    iget-object p3, p3, Landroidx/viewpager2/widget/ViewPager2;->g:Ll1/j;

    .line 29
    .line 30
    invoke-virtual {p3}, Landroidx/recyclerview/widget/w0;->getLayoutDirection()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-ne p3, p1, :cond_1

    .line 35
    .line 36
    move p3, p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move p3, v3

    .line 39
    :goto_1
    if-ne p2, p3, :cond_3

    .line 40
    .line 41
    :cond_2
    iget p2, v1, Ll1/c;->c:I

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    iget p2, v1, Ll1/c;->a:I

    .line 46
    .line 47
    add-int/2addr p2, p1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget p2, v1, Ll1/c;->a:I

    .line 50
    .line 51
    :goto_2
    iput p2, p0, Ll1/d;->i:I

    .line 52
    .line 53
    iget p3, p0, Ll1/d;->h:I

    .line 54
    .line 55
    if-eq p3, p2, :cond_6

    .line 56
    .line 57
    iget-object p3, p0, Ll1/d;->a:Ll1/k;

    .line 58
    .line 59
    if-eqz p3, :cond_6

    .line 60
    .line 61
    :goto_3
    invoke-virtual {p3, p2}, Ll1/k;->onPageSelected(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_4
    iget p2, p0, Ll1/d;->e:I

    .line 66
    .line 67
    if-nez p2, :cond_6

    .line 68
    .line 69
    iget p2, v1, Ll1/c;->a:I

    .line 70
    .line 71
    if-ne p2, v2, :cond_5

    .line 72
    .line 73
    move p2, v3

    .line 74
    :cond_5
    iget-object p3, p0, Ll1/d;->a:Ll1/k;

    .line 75
    .line 76
    if-eqz p3, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    :goto_4
    iget p2, v1, Ll1/c;->a:I

    .line 80
    .line 81
    if-ne p2, v2, :cond_7

    .line 82
    .line 83
    move p2, v3

    .line 84
    :cond_7
    iget p3, v1, Ll1/c;->b:F

    .line 85
    .line 86
    iget v0, v1, Ll1/c;->c:I

    .line 87
    .line 88
    iget-object v4, p0, Ll1/d;->a:Ll1/k;

    .line 89
    .line 90
    if-eqz v4, :cond_8

    .line 91
    .line 92
    invoke-virtual {v4, p2, p3, v0}, Ll1/k;->onPageScrolled(IFI)V

    .line 93
    .line 94
    .line 95
    :cond_8
    iget p2, v1, Ll1/c;->a:I

    .line 96
    .line 97
    iget p3, p0, Ll1/d;->i:I

    .line 98
    .line 99
    if-eq p2, p3, :cond_9

    .line 100
    .line 101
    if-ne p3, v2, :cond_a

    .line 102
    .line 103
    :cond_9
    iget p2, v1, Ll1/c;->c:I

    .line 104
    .line 105
    if-nez p2, :cond_a

    .line 106
    .line 107
    iget p2, p0, Ll1/d;->f:I

    .line 108
    .line 109
    if-eq p2, p1, :cond_a

    .line 110
    .line 111
    invoke-virtual {p0, v3}, Ll1/d;->a(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ll1/d;->b()V

    .line 115
    .line 116
    .line 117
    :cond_a
    return-void
.end method
