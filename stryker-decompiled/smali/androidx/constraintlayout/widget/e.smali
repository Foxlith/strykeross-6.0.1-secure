.class public final Landroidx/constraintlayout/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/e;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Landroidx/constraintlayout/widget/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static a(III)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p0, v2, :cond_2

    const/high16 p0, -0x80000000

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p2, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Lq/d;Lr/b;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v3, v1, Lq/d;->g0:I

    .line 11
    .line 12
    const/16 v4, 0x8

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    .line 17
    iput v5, v2, Lr/b;->e:I

    .line 18
    .line 19
    iput v5, v2, Lr/b;->f:I

    .line 20
    .line 21
    :goto_0
    iput v5, v2, Lr/b;->g:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v3, v1, Lq/d;->T:Lq/d;

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iget v3, v2, Lr/b;->a:I

    .line 30
    .line 31
    iget v4, v2, Lr/b;->b:I

    .line 32
    .line 33
    iget v6, v2, Lr/b;->c:I

    .line 34
    .line 35
    iget v7, v2, Lr/b;->d:I

    .line 36
    .line 37
    iget v8, v0, Landroidx/constraintlayout/widget/e;->b:I

    .line 38
    .line 39
    iget v9, v0, Landroidx/constraintlayout/widget/e;->c:I

    .line 40
    .line 41
    add-int/2addr v8, v9

    .line 42
    iget v9, v0, Landroidx/constraintlayout/widget/e;->d:I

    .line 43
    .line 44
    iget-object v10, v1, Lq/d;->f0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v10, Landroid/view/View;

    .line 47
    .line 48
    invoke-static {v3}, Lo/i;->c(I)I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    iget-object v12, v1, Lq/d;->K:Lq/c;

    .line 53
    .line 54
    iget-object v13, v1, Lq/d;->I:Lq/c;

    .line 55
    .line 56
    const/4 v14, 0x1

    .line 57
    const/4 v15, 0x3

    .line 58
    const/4 v5, 0x2

    .line 59
    if-eqz v11, :cond_c

    .line 60
    .line 61
    if-eq v11, v14, :cond_d

    .line 62
    .line 63
    if-eq v11, v5, :cond_6

    .line 64
    .line 65
    if-eq v11, v15, :cond_3

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    goto :goto_4

    .line 69
    :cond_3
    iget v6, v0, Landroidx/constraintlayout/widget/e;->f:I

    .line 70
    .line 71
    if-eqz v13, :cond_4

    .line 72
    .line 73
    iget v11, v13, Lq/c;->g:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/4 v11, 0x0

    .line 77
    :goto_1
    if-eqz v12, :cond_5

    .line 78
    .line 79
    iget v15, v12, Lq/c;->g:I

    .line 80
    .line 81
    add-int/2addr v11, v15

    .line 82
    :cond_5
    add-int/2addr v9, v11

    .line 83
    const/4 v11, -0x1

    .line 84
    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    iget v6, v0, Landroidx/constraintlayout/widget/e;->f:I

    .line 90
    .line 91
    const/4 v11, -0x2

    .line 92
    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    iget v9, v1, Lq/d;->r:I

    .line 97
    .line 98
    if-ne v9, v14, :cond_7

    .line 99
    .line 100
    move v9, v14

    .line 101
    goto :goto_2

    .line 102
    :cond_7
    const/4 v9, 0x0

    .line 103
    :goto_2
    iget v11, v2, Lr/b;->j:I

    .line 104
    .line 105
    if-eq v11, v14, :cond_8

    .line 106
    .line 107
    if-ne v11, v5, :cond_e

    .line 108
    .line 109
    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    if-ne v11, v15, :cond_9

    .line 118
    .line 119
    move v11, v14

    .line 120
    goto :goto_3

    .line 121
    :cond_9
    const/4 v11, 0x0

    .line 122
    :goto_3
    iget v15, v2, Lr/b;->j:I

    .line 123
    .line 124
    if-eq v15, v5, :cond_b

    .line 125
    .line 126
    if-eqz v9, :cond_b

    .line 127
    .line 128
    if-eqz v9, :cond_a

    .line 129
    .line 130
    if-nez v11, :cond_b

    .line 131
    .line 132
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lq/d;->B()Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eqz v9, :cond_e

    .line 137
    .line 138
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    :cond_c
    const/high16 v11, 0x40000000    # 2.0f

    .line 143
    .line 144
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    goto :goto_4

    .line 149
    :cond_d
    const/high16 v11, 0x40000000    # 2.0f

    .line 150
    .line 151
    iget v6, v0, Landroidx/constraintlayout/widget/e;->f:I

    .line 152
    .line 153
    const/4 v15, -0x2

    .line 154
    invoke-static {v6, v9, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    :cond_e
    :goto_4
    invoke-static {v4}, Lo/i;->c(I)I

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-eqz v9, :cond_18

    .line 163
    .line 164
    if-eq v9, v14, :cond_19

    .line 165
    .line 166
    if-eq v9, v5, :cond_12

    .line 167
    .line 168
    const/4 v7, 0x3

    .line 169
    if-eq v9, v7, :cond_f

    .line 170
    .line 171
    const/4 v7, 0x0

    .line 172
    goto :goto_8

    .line 173
    :cond_f
    iget v7, v0, Landroidx/constraintlayout/widget/e;->g:I

    .line 174
    .line 175
    if-eqz v13, :cond_10

    .line 176
    .line 177
    iget-object v9, v1, Lq/d;->J:Lq/c;

    .line 178
    .line 179
    iget v9, v9, Lq/c;->g:I

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_10
    const/4 v9, 0x0

    .line 183
    :goto_5
    if-eqz v12, :cond_11

    .line 184
    .line 185
    iget-object v11, v1, Lq/d;->L:Lq/c;

    .line 186
    .line 187
    iget v11, v11, Lq/c;->g:I

    .line 188
    .line 189
    add-int/2addr v9, v11

    .line 190
    :cond_11
    add-int/2addr v8, v9

    .line 191
    const/4 v9, -0x1

    .line 192
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    goto :goto_8

    .line 197
    :cond_12
    iget v7, v0, Landroidx/constraintlayout/widget/e;->g:I

    .line 198
    .line 199
    const/4 v9, -0x2

    .line 200
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    iget v8, v1, Lq/d;->s:I

    .line 205
    .line 206
    if-ne v8, v14, :cond_13

    .line 207
    .line 208
    move v8, v14

    .line 209
    goto :goto_6

    .line 210
    :cond_13
    const/4 v8, 0x0

    .line 211
    :goto_6
    iget v9, v2, Lr/b;->j:I

    .line 212
    .line 213
    if-eq v9, v14, :cond_14

    .line 214
    .line 215
    if-ne v9, v5, :cond_1a

    .line 216
    .line 217
    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    .line 222
    .line 223
    .line 224
    move-result v11

    .line 225
    if-ne v9, v11, :cond_15

    .line 226
    .line 227
    move v9, v14

    .line 228
    goto :goto_7

    .line 229
    :cond_15
    const/4 v9, 0x0

    .line 230
    :goto_7
    iget v11, v2, Lr/b;->j:I

    .line 231
    .line 232
    if-eq v11, v5, :cond_17

    .line 233
    .line 234
    if-eqz v8, :cond_17

    .line 235
    .line 236
    if-eqz v8, :cond_16

    .line 237
    .line 238
    if-nez v9, :cond_17

    .line 239
    .line 240
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lq/d;->C()Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-eqz v8, :cond_1a

    .line 245
    .line 246
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    :cond_18
    const/high16 v9, 0x40000000    # 2.0f

    .line 251
    .line 252
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    goto :goto_8

    .line 257
    :cond_19
    const/high16 v9, 0x40000000    # 2.0f

    .line 258
    .line 259
    iget v7, v0, Landroidx/constraintlayout/widget/e;->g:I

    .line 260
    .line 261
    const/4 v11, -0x2

    .line 262
    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    :cond_1a
    :goto_8
    iget-object v8, v1, Lq/d;->T:Lq/d;

    .line 267
    .line 268
    check-cast v8, Lq/e;

    .line 269
    .line 270
    iget-object v9, v0, Landroidx/constraintlayout/widget/e;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 271
    .line 272
    if-eqz v8, :cond_1b

    .line 273
    .line 274
    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    const/16 v12, 0x100

    .line 279
    .line 280
    invoke-static {v11, v12}, Lq/k;->b(II)Z

    .line 281
    .line 282
    .line 283
    move-result v11

    .line 284
    if-eqz v11, :cond_1b

    .line 285
    .line 286
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 287
    .line 288
    .line 289
    move-result v11

    .line 290
    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    .line 291
    .line 292
    .line 293
    move-result v12

    .line 294
    if-ne v11, v12, :cond_1b

    .line 295
    .line 296
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    invoke-virtual {v8}, Lq/d;->r()I

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    if-ge v11, v12, :cond_1b

    .line 305
    .line 306
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    .line 311
    .line 312
    .line 313
    move-result v12

    .line 314
    if-ne v11, v12, :cond_1b

    .line 315
    .line 316
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 317
    .line 318
    .line 319
    move-result v11

    .line 320
    invoke-virtual {v8}, Lq/d;->l()I

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    if-ge v11, v8, :cond_1b

    .line 325
    .line 326
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    iget v11, v1, Lq/d;->a0:I

    .line 331
    .line 332
    if-ne v8, v11, :cond_1b

    .line 333
    .line 334
    invoke-virtual/range {p1 .. p1}, Lq/d;->A()Z

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    if-nez v8, :cond_1b

    .line 339
    .line 340
    iget v8, v1, Lq/d;->G:I

    .line 341
    .line 342
    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    .line 343
    .line 344
    .line 345
    move-result v11

    .line 346
    invoke-static {v8, v6, v11}, Landroidx/constraintlayout/widget/e;->a(III)Z

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    if-eqz v8, :cond_1b

    .line 351
    .line 352
    iget v8, v1, Lq/d;->H:I

    .line 353
    .line 354
    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    .line 355
    .line 356
    .line 357
    move-result v11

    .line 358
    invoke-static {v8, v7, v11}, Landroidx/constraintlayout/widget/e;->a(III)Z

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    if-eqz v8, :cond_1b

    .line 363
    .line 364
    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    iput v3, v2, Lr/b;->e:I

    .line 369
    .line 370
    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    iput v3, v2, Lr/b;->f:I

    .line 375
    .line 376
    iget v1, v1, Lq/d;->a0:I

    .line 377
    .line 378
    iput v1, v2, Lr/b;->g:I

    .line 379
    .line 380
    return-void

    .line 381
    :cond_1b
    const/4 v8, 0x3

    .line 382
    if-ne v3, v8, :cond_1c

    .line 383
    .line 384
    move v11, v14

    .line 385
    goto :goto_9

    .line 386
    :cond_1c
    const/4 v11, 0x0

    .line 387
    :goto_9
    if-ne v4, v8, :cond_1d

    .line 388
    .line 389
    move v8, v14

    .line 390
    goto :goto_a

    .line 391
    :cond_1d
    const/4 v8, 0x0

    .line 392
    :goto_a
    const/4 v12, 0x4

    .line 393
    if-eq v4, v12, :cond_1f

    .line 394
    .line 395
    if-ne v4, v14, :cond_1e

    .line 396
    .line 397
    goto :goto_b

    .line 398
    :cond_1e
    const/4 v4, 0x0

    .line 399
    goto :goto_c

    .line 400
    :cond_1f
    :goto_b
    move v4, v14

    .line 401
    :goto_c
    if-eq v3, v12, :cond_21

    .line 402
    .line 403
    if-ne v3, v14, :cond_20

    .line 404
    .line 405
    goto :goto_d

    .line 406
    :cond_20
    const/4 v3, 0x0

    .line 407
    goto :goto_e

    .line 408
    :cond_21
    :goto_d
    move v3, v14

    .line 409
    :goto_e
    const/4 v12, 0x0

    .line 410
    if-eqz v11, :cond_22

    .line 411
    .line 412
    iget v13, v1, Lq/d;->W:F

    .line 413
    .line 414
    cmpl-float v13, v13, v12

    .line 415
    .line 416
    if-lez v13, :cond_22

    .line 417
    .line 418
    move v13, v14

    .line 419
    goto :goto_f

    .line 420
    :cond_22
    const/4 v13, 0x0

    .line 421
    :goto_f
    if-eqz v8, :cond_23

    .line 422
    .line 423
    iget v15, v1, Lq/d;->W:F

    .line 424
    .line 425
    cmpl-float v12, v15, v12

    .line 426
    .line 427
    if-lez v12, :cond_23

    .line 428
    .line 429
    move v12, v14

    .line 430
    goto :goto_10

    .line 431
    :cond_23
    const/4 v12, 0x0

    .line 432
    :goto_10
    if-nez v10, :cond_24

    .line 433
    .line 434
    return-void

    .line 435
    :cond_24
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 436
    .line 437
    .line 438
    move-result-object v15

    .line 439
    check-cast v15, Landroidx/constraintlayout/widget/d;

    .line 440
    .line 441
    iget v0, v2, Lr/b;->j:I

    .line 442
    .line 443
    if-eq v0, v14, :cond_26

    .line 444
    .line 445
    if-eq v0, v5, :cond_26

    .line 446
    .line 447
    if-eqz v11, :cond_26

    .line 448
    .line 449
    iget v0, v1, Lq/d;->r:I

    .line 450
    .line 451
    if-nez v0, :cond_26

    .line 452
    .line 453
    if-eqz v8, :cond_26

    .line 454
    .line 455
    iget v0, v1, Lq/d;->s:I

    .line 456
    .line 457
    if-eqz v0, :cond_25

    .line 458
    .line 459
    goto :goto_11

    .line 460
    :cond_25
    const/4 v0, 0x0

    .line 461
    const/4 v3, 0x0

    .line 462
    const/4 v4, -0x1

    .line 463
    const/4 v5, 0x0

    .line 464
    const/4 v14, 0x0

    .line 465
    goto/16 :goto_1a

    .line 466
    .line 467
    :cond_26
    :goto_11
    instance-of v0, v10, Landroidx/constraintlayout/widget/u;

    .line 468
    .line 469
    if-eqz v0, :cond_27

    .line 470
    .line 471
    instance-of v0, v1, Lq/g;

    .line 472
    .line 473
    if-eqz v0, :cond_27

    .line 474
    .line 475
    move-object v0, v1

    .line 476
    check-cast v0, Lq/g;

    .line 477
    .line 478
    move-object v5, v10

    .line 479
    check-cast v5, Landroidx/constraintlayout/widget/u;

    .line 480
    .line 481
    invoke-virtual {v5, v0, v6, v7}, Landroidx/constraintlayout/widget/u;->j(Lq/g;II)V

    .line 482
    .line 483
    .line 484
    goto :goto_12

    .line 485
    :cond_27
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 486
    .line 487
    .line 488
    :goto_12
    iput v6, v1, Lq/d;->G:I

    .line 489
    .line 490
    iput v7, v1, Lq/d;->H:I

    .line 491
    .line 492
    const/4 v0, 0x0

    .line 493
    iput-boolean v0, v1, Lq/d;->g:Z

    .line 494
    .line 495
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 504
    .line 505
    .line 506
    move-result v8

    .line 507
    iget v11, v1, Lq/d;->u:I

    .line 508
    .line 509
    if-lez v11, :cond_28

    .line 510
    .line 511
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 512
    .line 513
    .line 514
    move-result v11

    .line 515
    goto :goto_13

    .line 516
    :cond_28
    move v11, v0

    .line 517
    :goto_13
    iget v14, v1, Lq/d;->v:I

    .line 518
    .line 519
    if-lez v14, :cond_29

    .line 520
    .line 521
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    .line 522
    .line 523
    .line 524
    move-result v11

    .line 525
    :cond_29
    iget v14, v1, Lq/d;->x:I

    .line 526
    .line 527
    if-lez v14, :cond_2a

    .line 528
    .line 529
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    .line 530
    .line 531
    .line 532
    move-result v14

    .line 533
    :goto_14
    move/from16 v16, v6

    .line 534
    .line 535
    goto :goto_15

    .line 536
    :cond_2a
    move v14, v5

    .line 537
    goto :goto_14

    .line 538
    :goto_15
    iget v6, v1, Lq/d;->y:I

    .line 539
    .line 540
    if-lez v6, :cond_2b

    .line 541
    .line 542
    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    .line 543
    .line 544
    .line 545
    move-result v14

    .line 546
    :cond_2b
    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    const/4 v9, 0x1

    .line 551
    invoke-static {v6, v9}, Lq/k;->b(II)Z

    .line 552
    .line 553
    .line 554
    move-result v6

    .line 555
    if-nez v6, :cond_2d

    .line 556
    .line 557
    const/high16 v6, 0x3f000000    # 0.5f

    .line 558
    .line 559
    if-eqz v13, :cond_2c

    .line 560
    .line 561
    if-eqz v4, :cond_2c

    .line 562
    .line 563
    iget v3, v1, Lq/d;->W:F

    .line 564
    .line 565
    int-to-float v4, v14

    .line 566
    mul-float/2addr v4, v3

    .line 567
    add-float/2addr v4, v6

    .line 568
    float-to-int v3, v4

    .line 569
    move v11, v3

    .line 570
    goto :goto_16

    .line 571
    :cond_2c
    if-eqz v12, :cond_2d

    .line 572
    .line 573
    if-eqz v3, :cond_2d

    .line 574
    .line 575
    iget v3, v1, Lq/d;->W:F

    .line 576
    .line 577
    int-to-float v4, v11

    .line 578
    div-float/2addr v4, v3

    .line 579
    add-float/2addr v4, v6

    .line 580
    float-to-int v3, v4

    .line 581
    move v14, v3

    .line 582
    :cond_2d
    :goto_16
    if-ne v0, v11, :cond_2f

    .line 583
    .line 584
    if-eq v5, v14, :cond_2e

    .line 585
    .line 586
    goto :goto_18

    .line 587
    :cond_2e
    move v5, v8

    .line 588
    move v3, v11

    .line 589
    const/4 v0, 0x0

    .line 590
    :goto_17
    const/4 v4, -0x1

    .line 591
    goto :goto_1a

    .line 592
    :cond_2f
    :goto_18
    if-eq v0, v11, :cond_30

    .line 593
    .line 594
    const/high16 v0, 0x40000000    # 2.0f

    .line 595
    .line 596
    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 597
    .line 598
    .line 599
    move-result v6

    .line 600
    goto :goto_19

    .line 601
    :cond_30
    const/high16 v0, 0x40000000    # 2.0f

    .line 602
    .line 603
    move/from16 v6, v16

    .line 604
    .line 605
    :goto_19
    if-eq v5, v14, :cond_31

    .line 606
    .line 607
    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 608
    .line 609
    .line 610
    move-result v7

    .line 611
    :cond_31
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 612
    .line 613
    .line 614
    iput v6, v1, Lq/d;->G:I

    .line 615
    .line 616
    iput v7, v1, Lq/d;->H:I

    .line 617
    .line 618
    const/4 v0, 0x0

    .line 619
    iput-boolean v0, v1, Lq/d;->g:Z

    .line 620
    .line 621
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 626
    .line 627
    .line 628
    move-result v4

    .line 629
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    move v14, v4

    .line 634
    goto :goto_17

    .line 635
    :goto_1a
    if-eq v5, v4, :cond_32

    .line 636
    .line 637
    const/4 v4, 0x1

    .line 638
    goto :goto_1b

    .line 639
    :cond_32
    move v4, v0

    .line 640
    :goto_1b
    iget v6, v2, Lr/b;->c:I

    .line 641
    .line 642
    if-ne v3, v6, :cond_33

    .line 643
    .line 644
    iget v6, v2, Lr/b;->d:I

    .line 645
    .line 646
    if-eq v14, v6, :cond_34

    .line 647
    .line 648
    :cond_33
    const/4 v0, 0x1

    .line 649
    :cond_34
    iput-boolean v0, v2, Lr/b;->i:Z

    .line 650
    .line 651
    iget-boolean v0, v15, Landroidx/constraintlayout/widget/d;->c0:Z

    .line 652
    .line 653
    if-eqz v0, :cond_35

    .line 654
    .line 655
    const/4 v9, 0x1

    .line 656
    goto :goto_1c

    .line 657
    :cond_35
    move v9, v4

    .line 658
    :goto_1c
    if-eqz v9, :cond_36

    .line 659
    .line 660
    const/4 v0, -0x1

    .line 661
    if-eq v5, v0, :cond_36

    .line 662
    .line 663
    iget v0, v1, Lq/d;->a0:I

    .line 664
    .line 665
    if-eq v0, v5, :cond_36

    .line 666
    .line 667
    const/4 v0, 0x1

    .line 668
    iput-boolean v0, v2, Lr/b;->i:Z

    .line 669
    .line 670
    :cond_36
    iput v3, v2, Lr/b;->e:I

    .line 671
    .line 672
    iput v14, v2, Lr/b;->f:I

    .line 673
    .line 674
    iput-boolean v9, v2, Lr/b;->h:Z

    .line 675
    .line 676
    goto/16 :goto_0
.end method
