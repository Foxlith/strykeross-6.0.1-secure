.class public Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

.field public final b:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

.field public final c:I

.field public final d:I

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Rect;

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/Rect;

.field public final j:I

.field public k:I

.field public final l:Landroid/graphics/Point;

.field public final m:Landroid/graphics/Point;

.field public n:Z

.field public o:Landroid/animation/Animator;

.field public p:Z

.field public q:I

.field public r:Z

.field public final s:Landroidx/activity/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/util/AttributeSet;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->g:Landroid/graphics/Rect;

    .line 14
    .line 15
    new-instance v2, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v2, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->h:Landroid/graphics/Rect;

    .line 21
    .line 22
    new-instance v2, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->i:Landroid/graphics/Rect;

    .line 28
    .line 29
    new-instance v2, Landroid/graphics/Point;

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iput-object v2, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->l:Landroid/graphics/Point;

    .line 36
    .line 37
    new-instance v2, Landroid/graphics/Point;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 41
    .line 42
    .line 43
    iput-object v2, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->m:Landroid/graphics/Point;

    .line 44
    .line 45
    const/16 v2, 0x5dc

    .line 46
    .line 47
    iput v2, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->q:I

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    iput-boolean v5, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->r:Z

    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iput-object v0, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 57
    .line 58
    new-instance v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    .line 59
    .line 60
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v8, Landroid/graphics/Path;

    .line 64
    .line 65
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v8, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->e:Landroid/graphics/Path;

    .line 69
    .line 70
    new-instance v8, Landroid/graphics/RectF;

    .line 71
    .line 72
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v8, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->f:Landroid/graphics/RectF;

    .line 76
    .line 77
    const/high16 v8, -0x1000000

    .line 78
    .line 79
    iput v8, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->h:I

    .line 80
    .line 81
    new-instance v9, Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->i:Landroid/graphics/Rect;

    .line 87
    .line 88
    new-instance v9, Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->j:Landroid/graphics/Rect;

    .line 94
    .line 95
    new-instance v9, Landroid/graphics/Rect;

    .line 96
    .line 97
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 101
    .line 102
    new-instance v9, Landroid/graphics/Rect;

    .line 103
    .line 104
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->n:Landroid/graphics/Rect;

    .line 108
    .line 109
    const/high16 v9, 0x3f800000    # 1.0f

    .line 110
    .line 111
    iput v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->o:F

    .line 112
    .line 113
    iput-object v6, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->b:Landroid/content/res/Resources;

    .line 114
    .line 115
    iput-object v0, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 116
    .line 117
    new-instance v9, Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-direct {v9, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 120
    .line 121
    .line 122
    iput-object v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->g:Landroid/graphics/Paint;

    .line 123
    .line 124
    new-instance v9, Landroid/graphics/Paint;

    .line 125
    .line 126
    invoke-direct {v9, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 127
    .line 128
    .line 129
    iput-object v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->m:Landroid/graphics/Paint;

    .line 130
    .line 131
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    const/4 v10, 0x2

    .line 139
    const/high16 v11, 0x42600000    # 56.0f

    .line 140
    .line 141
    invoke-static {v10, v11, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    float-to-int v9, v9

    .line 146
    iget-object v12, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->m:Landroid/graphics/Paint;

    .line 147
    .line 148
    int-to-float v9, v9

    .line 149
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    .line 151
    .line 152
    iget-object v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 153
    .line 154
    iget-object v12, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 155
    .line 156
    invoke-virtual {v9, v12}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 164
    .line 165
    const/high16 v12, 0x42b00000    # 88.0f

    .line 166
    .line 167
    mul-float/2addr v9, v12

    .line 168
    float-to-int v9, v9

    .line 169
    iput v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->c:I

    .line 170
    .line 171
    div-int/2addr v9, v10

    .line 172
    iput v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->d:I

    .line 173
    .line 174
    iget-object v9, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 175
    .line 176
    iget-object v13, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 177
    .line 178
    invoke-virtual {v9, v13}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 179
    .line 180
    .line 181
    iput-object v7, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    .line 182
    .line 183
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 188
    .line 189
    const/high16 v13, 0x42400000    # 48.0f

    .line 190
    .line 191
    mul-float/2addr v13, v9

    .line 192
    float-to-int v9, v13

    .line 193
    iput v9, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->c:I

    .line 194
    .line 195
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 200
    .line 201
    const/high16 v13, 0x41000000    # 8.0f

    .line 202
    .line 203
    mul-float/2addr v13, v9

    .line 204
    float-to-int v9, v13

    .line 205
    iput v9, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->d:I

    .line 206
    .line 207
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 212
    .line 213
    const/high16 v13, -0x3e400000    # -24.0f

    .line 214
    .line 215
    mul-float/2addr v13, v9

    .line 216
    float-to-int v9, v13

    .line 217
    iput v9, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->j:I

    .line 218
    .line 219
    new-instance v9, Landroid/graphics/Paint;

    .line 220
    .line 221
    invoke-direct {v9, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 222
    .line 223
    .line 224
    iput-object v9, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->e:Landroid/graphics/Paint;

    .line 225
    .line 226
    new-instance v13, Landroid/graphics/Paint;

    .line 227
    .line 228
    invoke-direct {v13, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 229
    .line 230
    .line 231
    iput-object v13, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->f:Landroid/graphics/Paint;

    .line 232
    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    sget-object v15, Lb2/a;->a:[I

    .line 238
    .line 239
    move-object/from16 v12, p3

    .line 240
    .line 241
    invoke-virtual {v14, v12, v15, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    :try_start_0
    invoke-virtual {v12, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    iput-boolean v14, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->r:Z

    .line 250
    .line 251
    invoke-virtual {v12, v5, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    iput v2, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->q:I

    .line 256
    .line 257
    const/high16 v2, 0x1f000000

    .line 258
    .line 259
    const/16 v14, 0x8

    .line 260
    .line 261
    invoke-virtual {v12, v14, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    const/4 v14, 0x7

    .line 266
    invoke-virtual {v12, v14, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    const/4 v15, 0x3

    .line 271
    invoke-virtual {v12, v15, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    const/4 v15, 0x5

    .line 276
    invoke-virtual {v12, v15, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 281
    .line 282
    .line 283
    move-result-object v15

    .line 284
    invoke-static {v10, v11, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    float-to-int v11, v11

    .line 289
    const/4 v15, 0x6

    .line 290
    invoke-virtual {v12, v15, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 299
    .line 300
    const/high16 v15, 0x42b00000    # 88.0f

    .line 301
    .line 302
    mul-float/2addr v6, v15

    .line 303
    float-to-int v6, v6

    .line 304
    invoke-virtual {v12, v10, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    const/4 v15, 0x4

    .line 309
    invoke-virtual {v12, v15, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    .line 318
    .line 319
    iput v8, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->h:I

    .line 320
    .line 321
    iget-object v2, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->g:Landroid/graphics/Paint;

    .line 322
    .line 323
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    .line 325
    .line 326
    iget-object v2, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 327
    .line 328
    iget-object v8, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 329
    .line 330
    invoke-virtual {v2, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 331
    .line 332
    .line 333
    iget-object v2, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->m:Landroid/graphics/Paint;

    .line 334
    .line 335
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    .line 337
    .line 338
    iget-object v2, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 339
    .line 340
    iget-object v3, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 341
    .line 342
    invoke-virtual {v2, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 343
    .line 344
    .line 345
    iget-object v2, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->m:Landroid/graphics/Paint;

    .line 346
    .line 347
    int-to-float v3, v11

    .line 348
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 349
    .line 350
    .line 351
    iget-object v2, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 352
    .line 353
    iget-object v3, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 354
    .line 355
    invoke-virtual {v2, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 356
    .line 357
    .line 358
    iput v6, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->c:I

    .line 359
    .line 360
    div-int/2addr v6, v10

    .line 361
    iput v6, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->d:I

    .line 362
    .line 363
    iget-object v2, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 364
    .line 365
    iget-object v3, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 366
    .line 367
    invoke-virtual {v2, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 368
    .line 369
    .line 370
    iput v4, v7, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    .line 372
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 373
    .line 374
    .line 375
    new-instance v2, Landroidx/activity/d;

    .line 376
    .line 377
    const/16 v3, 0x10

    .line 378
    .line 379
    invoke-direct {v2, v1, v3}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 380
    .line 381
    .line 382
    iput-object v2, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->s:Landroidx/activity/d;

    .line 383
    .line 384
    new-instance v2, Landroidx/recyclerview/widget/o;

    .line 385
    .line 386
    invoke-direct {v2, v1, v5}, Landroidx/recyclerview/widget/o;-><init>(Ljava/lang/Object;I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/b1;)V

    .line 390
    .line 391
    .line 392
    iget-boolean v0, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->r:Z

    .line 393
    .line 394
    if-eqz v0, :cond_0

    .line 395
    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b()V

    .line 397
    .line 398
    .line 399
    :cond_0
    return-void

    .line 400
    :catchall_0
    move-exception v0

    .line 401
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 402
    .line 403
    .line 404
    throw v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;III)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    float-to-int v6, v6

    .line 26
    iget-object v7, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->l:Landroid/graphics/Point;

    .line 27
    .line 28
    if-eqz v5, :cond_b

    .line 29
    .line 30
    iget-object v8, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v10, 0x1

    .line 34
    if-eq v5, v10, :cond_a

    .line 35
    .line 36
    const/4 v11, 0x2

    .line 37
    if-eq v5, v11, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    if-eq v5, v1, :cond_a

    .line 41
    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :cond_0
    iget-boolean v5, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->n:Z

    .line 45
    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    iget v5, v7, Landroid/graphics/Point;->x:I

    .line 49
    .line 50
    iget v12, v7, Landroid/graphics/Point;->y:I

    .line 51
    .line 52
    iget v13, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->d:I

    .line 53
    .line 54
    add-int/2addr v13, v5

    .line 55
    iget v14, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->c:I

    .line 56
    .line 57
    add-int/2addr v14, v12

    .line 58
    iget-object v15, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->g:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v15, v5, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    .line 62
    .line 63
    iget v5, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->j:I

    .line 64
    .line 65
    invoke-virtual {v15, v5, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v15, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    sub-int v1, v6, v2

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-le v1, v4, :cond_1

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 91
    .line 92
    .line 93
    iput-boolean v10, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->n:Z

    .line 94
    .line 95
    iget v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->k:I

    .line 96
    .line 97
    sub-int v2, p4, v2

    .line 98
    .line 99
    add-int/2addr v2, v1

    .line 100
    iput v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->k:I

    .line 101
    .line 102
    invoke-virtual {v8, v10}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a(Z)V

    .line 103
    .line 104
    .line 105
    :cond_1
    iget-boolean v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->n:Z

    .line 106
    .line 107
    if-eqz v1, :cond_c

    .line 108
    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->c:I

    .line 114
    .line 115
    sub-int/2addr v1, v2

    .line 116
    iget v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->k:I

    .line 117
    .line 118
    sub-int/2addr v6, v2

    .line 119
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    int-to-float v2, v2

    .line 128
    int-to-float v4, v9

    .line 129
    sub-float/2addr v2, v4

    .line 130
    int-to-float v1, v1

    .line 131
    div-float/2addr v2, v1

    .line 132
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const-string v4, ""

    .line 141
    .line 142
    if-nez v1, :cond_2

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    instance-of v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 150
    .line 151
    if-eqz v5, :cond_3

    .line 152
    .line 153
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 158
    .line 159
    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 160
    .line 161
    int-to-double v12, v1

    .line 162
    int-to-double v14, v5

    .line 163
    div-double/2addr v12, v14

    .line 164
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 165
    .line 166
    .line 167
    move-result-wide v12

    .line 168
    double-to-int v6, v12

    .line 169
    goto :goto_0

    .line 170
    :cond_3
    move v6, v1

    .line 171
    move v5, v10

    .line 172
    :goto_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 173
    .line 174
    .line 175
    iget-object v12, v3, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->b:Ld2/a;

    .line 176
    .line 177
    invoke-virtual {v3, v12}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->t(Ld2/a;)V

    .line 178
    .line 179
    .line 180
    int-to-float v1, v1

    .line 181
    mul-float/2addr v1, v2

    .line 182
    iget v13, v12, Ld2/a;->c:I

    .line 183
    .line 184
    mul-int/2addr v6, v13

    .line 185
    invoke-virtual {v3, v6}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->s(I)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    int-to-float v6, v6

    .line 190
    mul-float/2addr v6, v2

    .line 191
    float-to-int v6, v6

    .line 192
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    check-cast v13, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 197
    .line 198
    mul-int/2addr v5, v6

    .line 199
    iget v12, v12, Ld2/a;->c:I

    .line 200
    .line 201
    div-int/2addr v5, v12

    .line 202
    rem-int/2addr v6, v12

    .line 203
    neg-int v6, v6

    .line 204
    invoke-virtual {v13, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    instance-of v5, v5, Ld2/b;

    .line 212
    .line 213
    if-nez v5, :cond_4

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    .line 217
    .line 218
    cmpl-float v2, v2, v4

    .line 219
    .line 220
    if-nez v2, :cond_5

    .line 221
    .line 222
    sub-float/2addr v1, v4

    .line 223
    :cond_5
    float-to-int v1, v1

    .line 224
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Ld2/b;

    .line 229
    .line 230
    invoke-interface {v2, v1}, Ld2/b;->getSectionName(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    :goto_1
    iget-object v1, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->l:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_6

    .line 241
    .line 242
    iput-object v4, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->l:Ljava/lang/String;

    .line 243
    .line 244
    iget-object v1, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->m:Landroid/graphics/Paint;

    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    iget-object v5, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->n:Landroid/graphics/Rect;

    .line 251
    .line 252
    invoke-virtual {v1, v4, v9, v2, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 253
    .line 254
    .line 255
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 256
    .line 257
    int-to-float v2, v2

    .line 258
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    add-float/2addr v1, v2

    .line 263
    float-to-int v1, v1

    .line 264
    iput v1, v5, Landroid/graphics/Rect;->right:I

    .line 265
    .line 266
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    xor-int/2addr v1, v10

    .line 271
    invoke-virtual {v8, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a(Z)V

    .line 272
    .line 273
    .line 274
    iget v1, v7, Landroid/graphics/Point;->y:I

    .line 275
    .line 276
    iget-object v2, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->i:Landroid/graphics/Rect;

    .line 277
    .line 278
    iget-object v4, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 279
    .line 280
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 281
    .line 282
    .line 283
    iget v5, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->o:F

    .line 284
    .line 285
    const/4 v6, 0x0

    .line 286
    cmpl-float v5, v5, v6

    .line 287
    .line 288
    if-lez v5, :cond_9

    .line 289
    .line 290
    iget-object v5, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->l:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-nez v5, :cond_9

    .line 297
    .line 298
    invoke-virtual {v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getScrollBarWidth()I

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    iget v6, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->c:I

    .line 303
    .line 304
    iget-object v7, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->n:Landroid/graphics/Rect;

    .line 305
    .line 306
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    sub-int/2addr v6, v9

    .line 311
    div-int/2addr v6, v11

    .line 312
    iget v9, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->c:I

    .line 313
    .line 314
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    mul-int/2addr v6, v11

    .line 319
    add-int/2addr v6, v7

    .line 320
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    iget v7, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->r:I

    .line 325
    .line 326
    if-ne v7, v10, :cond_7

    .line 327
    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    sub-int/2addr v1, v6

    .line 333
    div-int/2addr v1, v11

    .line 334
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 335
    .line 336
    add-int/2addr v1, v6

    .line 337
    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 338
    .line 339
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    sub-int/2addr v1, v9

    .line 344
    div-int/2addr v1, v11

    .line 345
    :goto_2
    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_7
    iget-object v7, v8, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->b:Landroid/content/res/Resources;

    .line 349
    .line 350
    invoke-static {v7}, Li5/a;->l0(Landroid/content/res/Resources;)Z

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    if-eqz v7, :cond_8

    .line 355
    .line 356
    invoke-virtual {v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getScrollBarWidth()I

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    mul-int/2addr v7, v11

    .line 361
    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 362
    .line 363
    add-int/2addr v7, v6

    .line 364
    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 365
    .line 366
    goto :goto_3

    .line 367
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    invoke-virtual {v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getScrollBarWidth()I

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    mul-int/2addr v8, v11

    .line 376
    sub-int/2addr v7, v8

    .line 377
    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 378
    .line 379
    sub-int/2addr v7, v6

    .line 380
    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 381
    .line 382
    :goto_3
    sub-int/2addr v1, v9

    .line 383
    invoke-virtual {v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getScrollBarThumbHeight()I

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    div-int/2addr v6, v11

    .line 388
    add-int/2addr v6, v1

    .line 389
    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 390
    .line 391
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    sub-int/2addr v1, v5

    .line 396
    sub-int/2addr v1, v9

    .line 397
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    goto :goto_2

    .line 406
    :goto_4
    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 407
    .line 408
    add-int/2addr v1, v9

    .line 409
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_9
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 413
    .line 414
    .line 415
    :goto_5
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 419
    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_a
    iput v9, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->k:I

    .line 423
    .line 424
    iget-boolean v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->n:Z

    .line 425
    .line 426
    if-eqz v1, :cond_c

    .line 427
    .line 428
    iput-boolean v9, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->n:Z

    .line 429
    .line 430
    invoke-virtual {v8, v9}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a(Z)V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_b
    iget v3, v7, Landroid/graphics/Point;->x:I

    .line 435
    .line 436
    iget v4, v7, Landroid/graphics/Point;->y:I

    .line 437
    .line 438
    iget v5, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->d:I

    .line 439
    .line 440
    add-int/2addr v5, v3

    .line 441
    iget v6, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->c:I

    .line 442
    .line 443
    add-int/2addr v6, v4

    .line 444
    iget-object v8, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->g:Landroid/graphics/Rect;

    .line 445
    .line 446
    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 447
    .line 448
    .line 449
    iget v3, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->j:I

    .line 450
    .line 451
    invoke-virtual {v8, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-eqz v1, :cond_c

    .line 459
    .line 460
    iget v1, v7, Landroid/graphics/Point;->y:I

    .line 461
    .line 462
    sub-int v1, v2, v1

    .line 463
    .line 464
    iput v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->k:I

    .line 465
    .line 466
    :cond_c
    :goto_6
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->s:Landroidx/activity/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->q:I

    .line 13
    .line 14
    int-to-long v2, v2

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final c(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->l:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-ne v1, p1, :cond_0

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ne v2, p2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->m:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    add-int v4, v1, v3

    iget v5, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->d:I

    add-int/2addr v1, v3

    iget-object v6, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->h:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v5, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget p2, v2, Landroid/graphics/Point;->x:I

    add-int v0, p1, p2

    iget v1, v2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    add-int/2addr p1, v3

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr p2, v2

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->i:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getOffsetX()I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->m:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public setOffsetX(I)V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->m:Landroid/graphics/Point;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 4
    .line 5
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    if-ne v2, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->l:Landroid/graphics/Point;

    .line 11
    .line 12
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 13
    .line 14
    add-int/2addr v4, v2

    .line 15
    iget v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->d:I

    .line 16
    .line 17
    add-int v5, v4, v2

    .line 18
    .line 19
    iget-object v6, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 20
    .line 21
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    iget v8, v0, Landroid/graphics/Point;->y:I

    .line 26
    .line 27
    add-int/2addr v7, v8

    .line 28
    iget-object v8, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->h:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {v8, v4, v1, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    .line 34
    .line 35
    .line 36
    iget p1, v3, Landroid/graphics/Point;->x:I

    .line 37
    .line 38
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 39
    .line 40
    add-int/2addr p1, v1

    .line 41
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 42
    .line 43
    add-int/2addr v2, p1

    .line 44
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 49
    .line 50
    add-int/2addr v3, v0

    .line 51
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->i:Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method
