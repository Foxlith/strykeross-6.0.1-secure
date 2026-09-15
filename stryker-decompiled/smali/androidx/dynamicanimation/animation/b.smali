.class public final Landroidx/dynamicanimation/animation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Landroidx/dynamicanimation/animation/c;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/b;->a:Landroidx/dynamicanimation/animation/c;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/dynamicanimation/animation/b;->a:Landroidx/dynamicanimation/animation/c;

    .line 4
    .line 5
    iget-object v1, v1, Lf0/h;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lf/q0;

    .line 8
    .line 9
    iget-object v2, v1, Lf/q0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroidx/dynamicanimation/animation/d;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    iput-wide v3, v2, Landroidx/dynamicanimation/animation/d;->e:J

    .line 18
    .line 19
    iget-object v2, v1, Lf/q0;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Landroidx/dynamicanimation/animation/d;

    .line 22
    .line 23
    iget-wide v3, v2, Landroidx/dynamicanimation/animation/d;->e:J

    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    const/4 v7, 0x0

    .line 30
    move v8, v7

    .line 31
    :goto_0
    iget-object v9, v2, Landroidx/dynamicanimation/animation/d;->b:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    if-ge v8, v10, :cond_e

    .line 38
    .line 39
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    check-cast v9, Landroidx/dynamicanimation/animation/a;

    .line 44
    .line 45
    if-nez v9, :cond_1

    .line 46
    .line 47
    :cond_0
    :goto_1
    move/from16 v16, v8

    .line 48
    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :cond_1
    iget-object v10, v2, Landroidx/dynamicanimation/animation/d;->a:Ln/k;

    .line 52
    .line 53
    const/4 v12, 0x0

    .line 54
    invoke-virtual {v10, v9, v12}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    check-cast v13, Ljava/lang/Long;

    .line 59
    .line 60
    if-nez v13, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v13

    .line 67
    cmp-long v13, v13, v5

    .line 68
    .line 69
    if-gez v13, :cond_0

    .line 70
    .line 71
    invoke-virtual {v10, v9}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :goto_2
    check-cast v9, Landroidx/dynamicanimation/animation/k;

    .line 75
    .line 76
    iget-wide v13, v9, Landroidx/dynamicanimation/animation/k;->i:J

    .line 77
    .line 78
    const-wide/16 v11, 0x0

    .line 79
    .line 80
    cmp-long v10, v13, v11

    .line 81
    .line 82
    if-nez v10, :cond_3

    .line 83
    .line 84
    iput-wide v3, v9, Landroidx/dynamicanimation/animation/k;->i:J

    .line 85
    .line 86
    iget v10, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 87
    .line 88
    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/k;->a(F)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    sub-long v18, v3, v13

    .line 93
    .line 94
    iput-wide v3, v9, Landroidx/dynamicanimation/animation/k;->i:J

    .line 95
    .line 96
    iget-boolean v10, v9, Landroidx/dynamicanimation/animation/k;->o:Z

    .line 97
    .line 98
    const/4 v14, 0x0

    .line 99
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    .line 100
    .line 101
    .line 102
    if-eqz v10, :cond_5

    .line 103
    .line 104
    iget v10, v9, Landroidx/dynamicanimation/animation/k;->n:F

    .line 105
    .line 106
    cmpl-float v15, v10, v13

    .line 107
    .line 108
    if-eqz v15, :cond_4

    .line 109
    .line 110
    iget-object v15, v9, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 111
    .line 112
    float-to-double v11, v10

    .line 113
    iput-wide v11, v15, Landroidx/dynamicanimation/animation/l;->i:D

    .line 114
    .line 115
    iput v13, v9, Landroidx/dynamicanimation/animation/k;->n:F

    .line 116
    .line 117
    :cond_4
    iget-object v10, v9, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 118
    .line 119
    iget-wide v10, v10, Landroidx/dynamicanimation/animation/l;->i:D

    .line 120
    .line 121
    double-to-float v10, v10

    .line 122
    iput v10, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 123
    .line 124
    iput v14, v9, Landroidx/dynamicanimation/animation/k;->a:F

    .line 125
    .line 126
    iput-boolean v7, v9, Landroidx/dynamicanimation/animation/k;->o:Z

    .line 127
    .line 128
    move/from16 v16, v8

    .line 129
    .line 130
    :goto_3
    const/4 v7, 0x1

    .line 131
    goto/16 :goto_5

    .line 132
    .line 133
    :cond_5
    iget v10, v9, Landroidx/dynamicanimation/animation/k;->n:F

    .line 134
    .line 135
    cmpl-float v10, v10, v13

    .line 136
    .line 137
    if-eqz v10, :cond_6

    .line 138
    .line 139
    iget-object v10, v9, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 140
    .line 141
    iget-wide v11, v10, Landroidx/dynamicanimation/animation/l;->i:D

    .line 142
    .line 143
    iget v11, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 144
    .line 145
    float-to-double v11, v11

    .line 146
    iget v15, v9, Landroidx/dynamicanimation/animation/k;->a:F

    .line 147
    .line 148
    float-to-double v14, v15

    .line 149
    const-wide/16 v20, 0x2

    .line 150
    .line 151
    div-long v27, v18, v20

    .line 152
    .line 153
    move-object/from16 v20, v10

    .line 154
    .line 155
    move-wide/from16 v21, v11

    .line 156
    .line 157
    move-wide/from16 v23, v14

    .line 158
    .line 159
    move-wide/from16 v25, v27

    .line 160
    .line 161
    invoke-virtual/range {v20 .. v26}, Landroidx/dynamicanimation/animation/l;->a(DDJ)Landroidx/dynamicanimation/animation/f;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    iget-object v11, v9, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 166
    .line 167
    iget v12, v9, Landroidx/dynamicanimation/animation/k;->n:F

    .line 168
    .line 169
    float-to-double v14, v12

    .line 170
    iput-wide v14, v11, Landroidx/dynamicanimation/animation/l;->i:D

    .line 171
    .line 172
    iput v13, v9, Landroidx/dynamicanimation/animation/k;->n:F

    .line 173
    .line 174
    iget v12, v10, Landroidx/dynamicanimation/animation/f;->a:F

    .line 175
    .line 176
    float-to-double v12, v12

    .line 177
    iget v10, v10, Landroidx/dynamicanimation/animation/f;->b:F

    .line 178
    .line 179
    float-to-double v14, v10

    .line 180
    move-object/from16 v22, v11

    .line 181
    .line 182
    move-wide/from16 v23, v12

    .line 183
    .line 184
    move-wide/from16 v25, v14

    .line 185
    .line 186
    invoke-virtual/range {v22 .. v28}, Landroidx/dynamicanimation/animation/l;->a(DDJ)Landroidx/dynamicanimation/animation/f;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    iget v11, v10, Landroidx/dynamicanimation/animation/f;->a:F

    .line 191
    .line 192
    iput v11, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 193
    .line 194
    iget v10, v10, Landroidx/dynamicanimation/animation/f;->b:F

    .line 195
    .line 196
    iput v10, v9, Landroidx/dynamicanimation/animation/k;->a:F

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    goto :goto_4

    .line 200
    :cond_6
    iget-object v13, v9, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 201
    .line 202
    iget v10, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 203
    .line 204
    float-to-double v14, v10

    .line 205
    iget v10, v9, Landroidx/dynamicanimation/animation/k;->a:F

    .line 206
    .line 207
    float-to-double v10, v10

    .line 208
    const/4 v12, 0x0

    .line 209
    move-wide/from16 v16, v10

    .line 210
    .line 211
    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/l;->a(DDJ)Landroidx/dynamicanimation/animation/f;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    iget v11, v10, Landroidx/dynamicanimation/animation/f;->a:F

    .line 216
    .line 217
    iput v11, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 218
    .line 219
    iget v10, v10, Landroidx/dynamicanimation/animation/f;->b:F

    .line 220
    .line 221
    iput v10, v9, Landroidx/dynamicanimation/animation/k;->a:F

    .line 222
    .line 223
    :goto_4
    iget v10, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 224
    .line 225
    iget v11, v9, Landroidx/dynamicanimation/animation/k;->h:F

    .line 226
    .line 227
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    iput v10, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 232
    .line 233
    iget v11, v9, Landroidx/dynamicanimation/animation/k;->g:F

    .line 234
    .line 235
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    iput v10, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 240
    .line 241
    iget v11, v9, Landroidx/dynamicanimation/animation/k;->a:F

    .line 242
    .line 243
    iget-object v13, v9, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 244
    .line 245
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    float-to-double v14, v11

    .line 253
    move/from16 v16, v8

    .line 254
    .line 255
    iget-wide v7, v13, Landroidx/dynamicanimation/animation/l;->e:D

    .line 256
    .line 257
    cmpg-double v7, v14, v7

    .line 258
    .line 259
    if-gez v7, :cond_7

    .line 260
    .line 261
    iget-wide v7, v13, Landroidx/dynamicanimation/animation/l;->i:D

    .line 262
    .line 263
    double-to-float v7, v7

    .line 264
    sub-float/2addr v10, v7

    .line 265
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    float-to-double v7, v7

    .line 270
    iget-wide v13, v13, Landroidx/dynamicanimation/animation/l;->d:D

    .line 271
    .line 272
    cmpg-double v7, v7, v13

    .line 273
    .line 274
    if-gez v7, :cond_7

    .line 275
    .line 276
    iget-object v7, v9, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 277
    .line 278
    iget-wide v7, v7, Landroidx/dynamicanimation/animation/l;->i:D

    .line 279
    .line 280
    double-to-float v7, v7

    .line 281
    iput v7, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 282
    .line 283
    iput v12, v9, Landroidx/dynamicanimation/animation/k;->a:F

    .line 284
    .line 285
    goto/16 :goto_3

    .line 286
    .line 287
    :cond_7
    const/4 v7, 0x0

    .line 288
    :goto_5
    iget v8, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 289
    .line 290
    iget v10, v9, Landroidx/dynamicanimation/animation/k;->g:F

    .line 291
    .line 292
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    iput v8, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 297
    .line 298
    iget v10, v9, Landroidx/dynamicanimation/animation/k;->h:F

    .line 299
    .line 300
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    iput v8, v9, Landroidx/dynamicanimation/animation/k;->b:F

    .line 305
    .line 306
    invoke-virtual {v9, v8}, Landroidx/dynamicanimation/animation/k;->a(F)V

    .line 307
    .line 308
    .line 309
    if-eqz v7, :cond_d

    .line 310
    .line 311
    const/4 v7, 0x0

    .line 312
    iput-boolean v7, v9, Landroidx/dynamicanimation/animation/k;->f:Z

    .line 313
    .line 314
    sget-object v7, Landroidx/dynamicanimation/animation/d;->g:Ljava/lang/ThreadLocal;

    .line 315
    .line 316
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    if-nez v8, :cond_8

    .line 321
    .line 322
    new-instance v8, Landroidx/dynamicanimation/animation/d;

    .line 323
    .line 324
    invoke-direct {v8}, Landroidx/dynamicanimation/animation/d;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_8
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    check-cast v7, Landroidx/dynamicanimation/animation/d;

    .line 335
    .line 336
    iget-object v8, v7, Landroidx/dynamicanimation/animation/d;->a:Ln/k;

    .line 337
    .line 338
    invoke-virtual {v8, v9}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    iget-object v8, v7, Landroidx/dynamicanimation/animation/d;->b:Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 344
    .line 345
    .line 346
    move-result v10

    .line 347
    if-ltz v10, :cond_9

    .line 348
    .line 349
    const/4 v12, 0x0

    .line 350
    invoke-virtual {v8, v10, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    const/4 v8, 0x1

    .line 354
    iput-boolean v8, v7, Landroidx/dynamicanimation/animation/d;->f:Z

    .line 355
    .line 356
    :cond_9
    const-wide/16 v7, 0x0

    .line 357
    .line 358
    iput-wide v7, v9, Landroidx/dynamicanimation/animation/k;->i:J

    .line 359
    .line 360
    const/4 v7, 0x0

    .line 361
    iput-boolean v7, v9, Landroidx/dynamicanimation/animation/k;->c:Z

    .line 362
    .line 363
    const/4 v7, 0x0

    .line 364
    :goto_6
    iget-object v8, v9, Landroidx/dynamicanimation/animation/k;->k:Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    if-ge v7, v10, :cond_b

    .line 371
    .line 372
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    if-nez v10, :cond_a

    .line 377
    .line 378
    add-int/lit8 v7, v7, 0x1

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :cond_a
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-static {v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    const/4 v1, 0x0

    .line 389
    throw v1

    .line 390
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    const/4 v9, 0x1

    .line 395
    sub-int/2addr v7, v9

    .line 396
    :goto_7
    if-ltz v7, :cond_d

    .line 397
    .line 398
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    if-nez v9, :cond_c

    .line 403
    .line 404
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    :cond_c
    add-int/lit8 v7, v7, -0x1

    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_d
    :goto_8
    add-int/lit8 v8, v16, 0x1

    .line 411
    .line 412
    const/4 v7, 0x0

    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_e
    iget-boolean v3, v2, Landroidx/dynamicanimation/animation/d;->f:Z

    .line 416
    .line 417
    if-eqz v3, :cond_11

    .line 418
    .line 419
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    const/4 v4, 0x1

    .line 424
    sub-int/2addr v3, v4

    .line 425
    :goto_9
    if-ltz v3, :cond_10

    .line 426
    .line 427
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    if-nez v4, :cond_f

    .line 432
    .line 433
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    :cond_f
    add-int/lit8 v3, v3, -0x1

    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_10
    const/4 v3, 0x0

    .line 440
    iput-boolean v3, v2, Landroidx/dynamicanimation/animation/d;->f:Z

    .line 441
    .line 442
    :cond_11
    iget-object v2, v1, Lf/q0;->b:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v2, Landroidx/dynamicanimation/animation/d;

    .line 445
    .line 446
    iget-object v2, v2, Landroidx/dynamicanimation/animation/d;->b:Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-lez v2, :cond_13

    .line 453
    .line 454
    iget-object v1, v1, Lf/q0;->b:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v1, Landroidx/dynamicanimation/animation/d;

    .line 457
    .line 458
    iget-object v2, v1, Landroidx/dynamicanimation/animation/d;->d:Landroidx/dynamicanimation/animation/c;

    .line 459
    .line 460
    if-nez v2, :cond_12

    .line 461
    .line 462
    new-instance v2, Landroidx/dynamicanimation/animation/c;

    .line 463
    .line 464
    iget-object v3, v1, Landroidx/dynamicanimation/animation/d;->c:Lf/q0;

    .line 465
    .line 466
    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/c;-><init>(Lf/q0;)V

    .line 467
    .line 468
    .line 469
    iput-object v2, v1, Landroidx/dynamicanimation/animation/d;->d:Landroidx/dynamicanimation/animation/c;

    .line 470
    .line 471
    :cond_12
    iget-object v1, v1, Landroidx/dynamicanimation/animation/d;->d:Landroidx/dynamicanimation/animation/c;

    .line 472
    .line 473
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/c;->c()V

    .line 474
    .line 475
    .line 476
    :cond_13
    return-void
.end method
