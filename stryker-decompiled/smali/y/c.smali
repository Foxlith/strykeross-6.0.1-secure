.class public abstract Ly/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ly/c;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-static {p0, p1, v0, p2}, Ly/c;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "selector"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_23

    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/2addr v3, v4

    .line 25
    const/16 v5, 0x14

    .line 26
    .line 27
    new-array v6, v5, [[I

    .line 28
    .line 29
    new-array v5, v5, [I

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    move v8, v7

    .line 33
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-eq v9, v4, :cond_22

    .line 38
    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    const/4 v11, 0x3

    .line 44
    if-ge v10, v3, :cond_0

    .line 45
    .line 46
    if-eq v9, v11, :cond_22

    .line 47
    .line 48
    :cond_0
    const/4 v12, 0x2

    .line 49
    if-ne v9, v12, :cond_1

    .line 50
    .line 51
    if-gt v10, v3, :cond_1

    .line 52
    .line 53
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-string v10, "item"

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_2

    .line 64
    .line 65
    :cond_1
    move/from16 v28, v3

    .line 66
    .line 67
    move/from16 v16, v4

    .line 68
    .line 69
    goto/16 :goto_1c

    .line 70
    .line 71
    :cond_2
    sget-object v9, Lu/a;->a:[I

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    :goto_1
    const/4 v10, -0x1

    .line 85
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const v14, -0xff01

    .line 90
    .line 91
    .line 92
    const/16 v15, 0x1f

    .line 93
    .line 94
    if-eq v13, v10, :cond_6

    .line 95
    .line 96
    sget-object v10, Ly/c;->a:Ljava/lang/ThreadLocal;

    .line 97
    .line 98
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v16

    .line 102
    check-cast v16, Landroid/util/TypedValue;

    .line 103
    .line 104
    if-nez v16, :cond_4

    .line 105
    .line 106
    new-instance v12, Landroid/util/TypedValue;

    .line 107
    .line 108
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move-object/from16 v12, v16

    .line 116
    .line 117
    :goto_2
    invoke-virtual {v0, v13, v12, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 118
    .line 119
    .line 120
    iget v10, v12, Landroid/util/TypedValue;->type:I

    .line 121
    .line 122
    const/16 v12, 0x1c

    .line 123
    .line 124
    if-lt v10, v12, :cond_5

    .line 125
    .line 126
    if-gt v10, v15, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v0, v10, v2}, Ly/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 138
    .line 139
    .line 140
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_4

    .line 142
    :catch_0
    :cond_6
    :goto_3
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    :goto_4
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    const/high16 v13, 0x3f800000    # 1.0f

    .line 151
    .line 152
    if-eqz v12, :cond_7

    .line 153
    .line 154
    invoke-virtual {v9, v4, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    goto :goto_5

    .line 159
    :cond_7
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 160
    .line 161
    .line 162
    move-result v12

    .line 163
    if-eqz v12, :cond_8

    .line 164
    .line 165
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    goto :goto_5

    .line 170
    :cond_8
    move v11, v13

    .line 171
    :goto_5
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 172
    .line 173
    const/4 v14, 0x4

    .line 174
    const/high16 v4, -0x40800000    # -1.0f

    .line 175
    .line 176
    if-lt v12, v15, :cond_9

    .line 177
    .line 178
    const/4 v12, 0x2

    .line 179
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    if-eqz v15, :cond_9

    .line 184
    .line 185
    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    goto :goto_6

    .line 190
    :cond_9
    invoke-virtual {v9, v14, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    :goto_6
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    .line 196
    .line 197
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    new-array v12, v9, [I

    .line 202
    .line 203
    move v14, v7

    .line 204
    move v15, v14

    .line 205
    :goto_7
    if-ge v15, v9, :cond_c

    .line 206
    .line 207
    invoke-interface {v1, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    const v7, 0x10101a5

    .line 212
    .line 213
    .line 214
    if-eq v13, v7, :cond_b

    .line 215
    .line 216
    const v7, 0x101031f

    .line 217
    .line 218
    .line 219
    if-eq v13, v7, :cond_b

    .line 220
    .line 221
    const v7, 0x7f040031

    .line 222
    .line 223
    .line 224
    if-eq v13, v7, :cond_b

    .line 225
    .line 226
    const v7, 0x7f04029b

    .line 227
    .line 228
    .line 229
    if-eq v13, v7, :cond_b

    .line 230
    .line 231
    add-int/lit8 v7, v14, 0x1

    .line 232
    .line 233
    const/4 v0, 0x0

    .line 234
    invoke-interface {v1, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 235
    .line 236
    .line 237
    move-result v19

    .line 238
    if-eqz v19, :cond_a

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_a
    neg-int v13, v13

    .line 242
    :goto_8
    aput v13, v12, v14

    .line 243
    .line 244
    move v14, v7

    .line 245
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 246
    .line 247
    move-object/from16 v0, p0

    .line 248
    .line 249
    const/4 v7, 0x0

    .line 250
    const/high16 v13, 0x3f800000    # 1.0f

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_c
    invoke-static {v12, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const/4 v7, 0x0

    .line 258
    cmpl-float v9, v4, v7

    .line 259
    .line 260
    const/high16 v12, 0x42c80000    # 100.0f

    .line 261
    .line 262
    if-ltz v9, :cond_d

    .line 263
    .line 264
    cmpg-float v9, v4, v12

    .line 265
    .line 266
    if-gtz v9, :cond_d

    .line 267
    .line 268
    const/4 v9, 0x1

    .line 269
    :goto_9
    const/high16 v13, 0x3f800000    # 1.0f

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_d
    const/4 v9, 0x0

    .line 273
    goto :goto_9

    .line 274
    :goto_a
    cmpl-float v14, v11, v13

    .line 275
    .line 276
    if-nez v14, :cond_e

    .line 277
    .line 278
    if-nez v9, :cond_e

    .line 279
    .line 280
    move-object v7, v0

    .line 281
    move/from16 v28, v3

    .line 282
    .line 283
    const/16 v16, 0x1

    .line 284
    .line 285
    goto/16 :goto_19

    .line 286
    .line 287
    :cond_e
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    int-to-float v13, v13

    .line 292
    mul-float/2addr v13, v11

    .line 293
    const/high16 v11, 0x3f000000    # 0.5f

    .line 294
    .line 295
    add-float/2addr v13, v11

    .line 296
    float-to-int v11, v13

    .line 297
    const/16 v13, 0xff

    .line 298
    .line 299
    const/4 v14, 0x0

    .line 300
    invoke-static {v11, v14, v13}, Lv1/f;->j(III)I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    if-eqz v9, :cond_1d

    .line 305
    .line 306
    invoke-static {v10}, Ly/a;->a(I)Ly/a;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    sget-object v10, Ly/s;->k:Ly/s;

    .line 311
    .line 312
    iget v13, v9, Ly/a;->b:F

    .line 313
    .line 314
    float-to-double v14, v13

    .line 315
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 316
    .line 317
    cmpg-double v14, v14, v19

    .line 318
    .line 319
    if-ltz v14, :cond_f

    .line 320
    .line 321
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 322
    .line 323
    .line 324
    move-result v14

    .line 325
    int-to-double v14, v14

    .line 326
    const-wide/16 v19, 0x0

    .line 327
    .line 328
    cmpg-double v14, v14, v19

    .line 329
    .line 330
    if-lez v14, :cond_f

    .line 331
    .line 332
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 333
    .line 334
    .line 335
    move-result v14

    .line 336
    int-to-double v14, v14

    .line 337
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 338
    .line 339
    cmpl-double v14, v14, v19

    .line 340
    .line 341
    if-ltz v14, :cond_10

    .line 342
    .line 343
    :cond_f
    move-object v7, v0

    .line 344
    move/from16 v28, v3

    .line 345
    .line 346
    const/16 v16, 0x1

    .line 347
    .line 348
    goto/16 :goto_17

    .line 349
    .line 350
    :cond_10
    iget v9, v9, Ly/a;->a:F

    .line 351
    .line 352
    cmpg-float v14, v9, v7

    .line 353
    .line 354
    if-gez v14, :cond_11

    .line 355
    .line 356
    move v9, v7

    .line 357
    goto :goto_b

    .line 358
    :cond_11
    const/high16 v14, 0x43b40000    # 360.0f

    .line 359
    .line 360
    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    .line 361
    .line 362
    .line 363
    move-result v9

    .line 364
    :goto_b
    move/from16 v20, v7

    .line 365
    .line 366
    move v15, v13

    .line 367
    const/4 v14, 0x0

    .line 368
    const/16 v19, 0x1

    .line 369
    .line 370
    :goto_c
    sub-float v21, v20, v13

    .line 371
    .line 372
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    .line 373
    .line 374
    .line 375
    move-result v21

    .line 376
    const v22, 0x3ecccccd    # 0.4f

    .line 377
    .line 378
    .line 379
    cmpl-float v21, v21, v22

    .line 380
    .line 381
    if-ltz v21, :cond_1b

    .line 382
    .line 383
    const/high16 v21, 0x447a0000    # 1000.0f

    .line 384
    .line 385
    move/from16 v23, v7

    .line 386
    .line 387
    move/from16 v24, v12

    .line 388
    .line 389
    move/from16 v22, v21

    .line 390
    .line 391
    const/16 v25, 0x0

    .line 392
    .line 393
    :goto_d
    sub-float v26, v23, v24

    .line 394
    .line 395
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    .line 396
    .line 397
    .line 398
    move-result v26

    .line 399
    const v27, 0x3c23d70a    # 0.01f

    .line 400
    .line 401
    .line 402
    cmpl-float v26, v26, v27

    .line 403
    .line 404
    const/high16 v27, 0x40000000    # 2.0f

    .line 405
    .line 406
    if-lez v26, :cond_17

    .line 407
    .line 408
    sub-float v26, v24, v23

    .line 409
    .line 410
    div-float v26, v26, v27

    .line 411
    .line 412
    add-float v7, v26, v23

    .line 413
    .line 414
    invoke-static {v7, v15, v9}, Ly/a;->b(FFF)Ly/a;

    .line 415
    .line 416
    .line 417
    move-result-object v12

    .line 418
    sget-object v1, Ly/s;->k:Ly/s;

    .line 419
    .line 420
    invoke-virtual {v12, v1}, Ly/a;->c(Ly/s;)I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 425
    .line 426
    .line 427
    move-result v12

    .line 428
    invoke-static {v12}, Ly/b;->b(I)F

    .line 429
    .line 430
    .line 431
    move-result v12

    .line 432
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 433
    .line 434
    .line 435
    move-result v28

    .line 436
    invoke-static/range {v28 .. v28}, Ly/b;->b(I)F

    .line 437
    .line 438
    .line 439
    move-result v28

    .line 440
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 441
    .line 442
    .line 443
    move-result v29

    .line 444
    invoke-static/range {v29 .. v29}, Ly/b;->b(I)F

    .line 445
    .line 446
    .line 447
    move-result v29

    .line 448
    sget-object v30, Ly/b;->d:[[F

    .line 449
    .line 450
    const/16 v16, 0x1

    .line 451
    .line 452
    aget-object v30, v30, v16

    .line 453
    .line 454
    const/16 v18, 0x0

    .line 455
    .line 456
    aget v31, v30, v18

    .line 457
    .line 458
    mul-float v12, v12, v31

    .line 459
    .line 460
    aget v31, v30, v16

    .line 461
    .line 462
    mul-float v28, v28, v31

    .line 463
    .line 464
    add-float v28, v28, v12

    .line 465
    .line 466
    const/4 v12, 0x2

    .line 467
    aget v17, v30, v12

    .line 468
    .line 469
    mul-float v29, v29, v17

    .line 470
    .line 471
    add-float v29, v29, v28

    .line 472
    .line 473
    const/high16 v17, 0x42c80000    # 100.0f

    .line 474
    .line 475
    div-float v12, v29, v17

    .line 476
    .line 477
    const v28, 0x3c111aa7

    .line 478
    .line 479
    .line 480
    cmpg-float v28, v12, v28

    .line 481
    .line 482
    if-gtz v28, :cond_12

    .line 483
    .line 484
    const v28, 0x4461d2f7

    .line 485
    .line 486
    .line 487
    mul-float v12, v12, v28

    .line 488
    .line 489
    move/from16 v28, v3

    .line 490
    .line 491
    goto :goto_e

    .line 492
    :cond_12
    move/from16 v28, v3

    .line 493
    .line 494
    float-to-double v2, v12

    .line 495
    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    .line 496
    .line 497
    .line 498
    move-result-wide v2

    .line 499
    double-to-float v2, v2

    .line 500
    const/high16 v3, 0x42e80000    # 116.0f

    .line 501
    .line 502
    mul-float/2addr v2, v3

    .line 503
    const/high16 v3, 0x41800000    # 16.0f

    .line 504
    .line 505
    sub-float v12, v2, v3

    .line 506
    .line 507
    :goto_e
    sub-float v2, v4, v12

    .line 508
    .line 509
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    const v3, 0x3e4ccccd    # 0.2f

    .line 514
    .line 515
    .line 516
    cmpg-float v3, v2, v3

    .line 517
    .line 518
    if-gez v3, :cond_14

    .line 519
    .line 520
    invoke-static {v1}, Ly/a;->a(I)Ly/a;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    iget v3, v1, Ly/a;->c:F

    .line 525
    .line 526
    move/from16 v29, v2

    .line 527
    .line 528
    iget v2, v1, Ly/a;->b:F

    .line 529
    .line 530
    invoke-static {v3, v2, v9}, Ly/a;->b(FFF)Ly/a;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    iget v3, v1, Ly/a;->d:F

    .line 535
    .line 536
    move/from16 v30, v7

    .line 537
    .line 538
    iget v7, v2, Ly/a;->d:F

    .line 539
    .line 540
    sub-float/2addr v3, v7

    .line 541
    iget v7, v1, Ly/a;->e:F

    .line 542
    .line 543
    move/from16 v31, v9

    .line 544
    .line 545
    iget v9, v2, Ly/a;->e:F

    .line 546
    .line 547
    sub-float/2addr v7, v9

    .line 548
    iget v9, v1, Ly/a;->f:F

    .line 549
    .line 550
    iget v2, v2, Ly/a;->f:F

    .line 551
    .line 552
    sub-float/2addr v9, v2

    .line 553
    mul-float/2addr v3, v3

    .line 554
    mul-float/2addr v7, v7

    .line 555
    add-float/2addr v7, v3

    .line 556
    mul-float/2addr v9, v9

    .line 557
    add-float/2addr v9, v7

    .line 558
    float-to-double v2, v9

    .line 559
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 560
    .line 561
    .line 562
    move-result-wide v2

    .line 563
    move-object v7, v0

    .line 564
    move-object v9, v1

    .line 565
    const-wide v0, 0x3fe428f5c28f5c29L    # 0.63

    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 571
    .line 572
    .line 573
    move-result-wide v0

    .line 574
    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    mul-double/2addr v0, v2

    .line 580
    double-to-float v0, v0

    .line 581
    const/high16 v1, 0x3f800000    # 1.0f

    .line 582
    .line 583
    cmpg-float v2, v0, v1

    .line 584
    .line 585
    if-gtz v2, :cond_13

    .line 586
    .line 587
    move/from16 v22, v0

    .line 588
    .line 589
    move-object/from16 v25, v9

    .line 590
    .line 591
    move/from16 v21, v29

    .line 592
    .line 593
    :cond_13
    :goto_f
    const/4 v0, 0x0

    .line 594
    goto :goto_10

    .line 595
    :cond_14
    move/from16 v30, v7

    .line 596
    .line 597
    move/from16 v31, v9

    .line 598
    .line 599
    const/high16 v1, 0x3f800000    # 1.0f

    .line 600
    .line 601
    move-object v7, v0

    .line 602
    goto :goto_f

    .line 603
    :goto_10
    cmpl-float v2, v21, v0

    .line 604
    .line 605
    if-nez v2, :cond_15

    .line 606
    .line 607
    cmpl-float v2, v22, v0

    .line 608
    .line 609
    if-nez v2, :cond_15

    .line 610
    .line 611
    :goto_11
    move-object/from16 v2, v25

    .line 612
    .line 613
    goto :goto_13

    .line 614
    :cond_15
    cmpg-float v2, v12, v4

    .line 615
    .line 616
    if-gez v2, :cond_16

    .line 617
    .line 618
    move/from16 v23, v30

    .line 619
    .line 620
    goto :goto_12

    .line 621
    :cond_16
    move/from16 v24, v30

    .line 622
    .line 623
    :goto_12
    move-object/from16 v1, p2

    .line 624
    .line 625
    move-object/from16 v2, p3

    .line 626
    .line 627
    move/from16 v12, v17

    .line 628
    .line 629
    move/from16 v3, v28

    .line 630
    .line 631
    move/from16 v9, v31

    .line 632
    .line 633
    move-object/from16 v32, v7

    .line 634
    .line 635
    move v7, v0

    .line 636
    move-object/from16 v0, v32

    .line 637
    .line 638
    goto/16 :goto_d

    .line 639
    .line 640
    :cond_17
    move/from16 v28, v3

    .line 641
    .line 642
    move/from16 v31, v9

    .line 643
    .line 644
    move/from16 v17, v12

    .line 645
    .line 646
    const/high16 v1, 0x3f800000    # 1.0f

    .line 647
    .line 648
    const/16 v16, 0x1

    .line 649
    .line 650
    move/from16 v32, v7

    .line 651
    .line 652
    move-object v7, v0

    .line 653
    move/from16 v0, v32

    .line 654
    .line 655
    goto :goto_11

    .line 656
    :goto_13
    if-eqz v19, :cond_19

    .line 657
    .line 658
    if-eqz v2, :cond_18

    .line 659
    .line 660
    invoke-virtual {v2, v10}, Ly/a;->c(Ly/s;)I

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    :goto_14
    move v10, v0

    .line 665
    goto :goto_18

    .line 666
    :cond_18
    sub-float v2, v13, v20

    .line 667
    .line 668
    div-float v2, v2, v27

    .line 669
    .line 670
    add-float v15, v2, v20

    .line 671
    .line 672
    move-object/from16 v1, p2

    .line 673
    .line 674
    move-object/from16 v2, p3

    .line 675
    .line 676
    move/from16 v12, v17

    .line 677
    .line 678
    move/from16 v3, v28

    .line 679
    .line 680
    move/from16 v9, v31

    .line 681
    .line 682
    const/16 v19, 0x0

    .line 683
    .line 684
    :goto_15
    move-object/from16 v32, v7

    .line 685
    .line 686
    move v7, v0

    .line 687
    move-object/from16 v0, v32

    .line 688
    .line 689
    goto/16 :goto_c

    .line 690
    .line 691
    :cond_19
    if-nez v2, :cond_1a

    .line 692
    .line 693
    move v13, v15

    .line 694
    goto :goto_16

    .line 695
    :cond_1a
    move-object v14, v2

    .line 696
    move/from16 v20, v15

    .line 697
    .line 698
    :goto_16
    sub-float v2, v13, v20

    .line 699
    .line 700
    div-float v2, v2, v27

    .line 701
    .line 702
    add-float v15, v2, v20

    .line 703
    .line 704
    move-object/from16 v1, p2

    .line 705
    .line 706
    move-object/from16 v2, p3

    .line 707
    .line 708
    move/from16 v12, v17

    .line 709
    .line 710
    move/from16 v3, v28

    .line 711
    .line 712
    move/from16 v9, v31

    .line 713
    .line 714
    goto :goto_15

    .line 715
    :cond_1b
    move-object v7, v0

    .line 716
    move/from16 v28, v3

    .line 717
    .line 718
    const/16 v16, 0x1

    .line 719
    .line 720
    if-nez v14, :cond_1c

    .line 721
    .line 722
    :goto_17
    invoke-static {v4}, Ly/b;->a(F)I

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    goto :goto_14

    .line 727
    :cond_1c
    invoke-virtual {v14, v10}, Ly/a;->c(Ly/s;)I

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    goto :goto_14

    .line 732
    :cond_1d
    move-object v7, v0

    .line 733
    move/from16 v28, v3

    .line 734
    .line 735
    const/16 v16, 0x1

    .line 736
    .line 737
    :goto_18
    const v0, 0xffffff

    .line 738
    .line 739
    .line 740
    and-int/2addr v0, v10

    .line 741
    shl-int/lit8 v1, v11, 0x18

    .line 742
    .line 743
    or-int v10, v0, v1

    .line 744
    .line 745
    :goto_19
    add-int/lit8 v0, v8, 0x1

    .line 746
    .line 747
    array-length v1, v5

    .line 748
    const/16 v2, 0x8

    .line 749
    .line 750
    if-le v0, v1, :cond_1f

    .line 751
    .line 752
    const/4 v1, 0x4

    .line 753
    if-gt v8, v1, :cond_1e

    .line 754
    .line 755
    move v1, v2

    .line 756
    goto :goto_1a

    .line 757
    :cond_1e
    mul-int/lit8 v1, v8, 0x2

    .line 758
    .line 759
    :goto_1a
    new-array v1, v1, [I

    .line 760
    .line 761
    const/4 v3, 0x0

    .line 762
    invoke-static {v5, v3, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 763
    .line 764
    .line 765
    move-object v5, v1

    .line 766
    :cond_1f
    aput v10, v5, v8

    .line 767
    .line 768
    array-length v1, v6

    .line 769
    if-le v0, v1, :cond_21

    .line 770
    .line 771
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    const/4 v3, 0x4

    .line 780
    if-gt v8, v3, :cond_20

    .line 781
    .line 782
    goto :goto_1b

    .line 783
    :cond_20
    mul-int/lit8 v2, v8, 0x2

    .line 784
    .line 785
    :goto_1b
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    check-cast v1, [Ljava/lang/Object;

    .line 790
    .line 791
    const/4 v2, 0x0

    .line 792
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 793
    .line 794
    .line 795
    move-object v6, v1

    .line 796
    :cond_21
    aput-object v7, v6, v8

    .line 797
    .line 798
    check-cast v6, [[I

    .line 799
    .line 800
    move-object/from16 v1, p2

    .line 801
    .line 802
    move-object/from16 v2, p3

    .line 803
    .line 804
    move v8, v0

    .line 805
    move/from16 v4, v16

    .line 806
    .line 807
    move/from16 v3, v28

    .line 808
    .line 809
    const/4 v7, 0x0

    .line 810
    move-object/from16 v0, p0

    .line 811
    .line 812
    goto/16 :goto_0

    .line 813
    .line 814
    :goto_1c
    move-object/from16 v0, p0

    .line 815
    .line 816
    move-object/from16 v1, p2

    .line 817
    .line 818
    move-object/from16 v2, p3

    .line 819
    .line 820
    move/from16 v4, v16

    .line 821
    .line 822
    move/from16 v3, v28

    .line 823
    .line 824
    const/4 v7, 0x0

    .line 825
    goto/16 :goto_0

    .line 826
    .line 827
    :cond_22
    new-array v0, v8, [I

    .line 828
    .line 829
    new-array v1, v8, [[I

    .line 830
    .line 831
    const/4 v2, 0x0

    .line 832
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    .line 834
    .line 835
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    .line 837
    .line 838
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 839
    .line 840
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 841
    .line 842
    .line 843
    return-object v2

    .line 844
    :cond_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 845
    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    .line 847
    .line 848
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .line 850
    .line 851
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    const-string v2, ": invalid color state list tag "

    .line 859
    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    throw v0
.end method
