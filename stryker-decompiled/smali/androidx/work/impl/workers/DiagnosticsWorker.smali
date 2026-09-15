.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final g()Lm1/l;
    .locals 74

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lm1/m;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Ln1/a0;->M(Landroid/content/Context;)Ln1/a0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 10
    .line 11
    const-string v2, "workManager.workDatabase"

    .line 12
    .line 13
    invoke-static {v0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lv1/k;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Lv1/t;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->s()Lv1/h;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    const-wide/16 v8, 0x1

    .line 39
    .line 40
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    sub-long/2addr v5, v7

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const/4 v7, 0x1

    .line 49
    const-string v8, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    .line 50
    .line 51
    invoke-static {v7, v8}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v8, v7, v5, v6}, Ly0/y;->m(IJ)V

    .line 56
    .line 57
    .line 58
    iget-object v5, v2, Lv1/r;->a:Ly0/w;

    .line 59
    .line 60
    invoke-virtual {v5}, Ly0/w;->b()V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-virtual {v5, v8, v6}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :try_start_0
    const-string v9, "id"

    .line 69
    .line 70
    invoke-static {v5, v9}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const-string v10, "state"

    .line 75
    .line 76
    invoke-static {v5, v10}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    const-string v11, "worker_class_name"

    .line 81
    .line 82
    invoke-static {v5, v11}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    const-string v12, "input_merger_class_name"

    .line 87
    .line 88
    invoke-static {v5, v12}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    const-string v13, "input"

    .line 93
    .line 94
    invoke-static {v5, v13}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    const-string v14, "output"

    .line 99
    .line 100
    invoke-static {v5, v14}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    const-string v15, "initial_delay"

    .line 105
    .line 106
    invoke-static {v5, v15}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    const-string v6, "interval_duration"

    .line 111
    .line 112
    invoke-static {v5, v6}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    const-string v7, "flex_duration"

    .line 117
    .line 118
    invoke-static {v5, v7}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    const-string v1, "run_attempt_count"

    .line 123
    .line 124
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    move-object/from16 v16, v0

    .line 129
    .line 130
    const-string v0, "backoff_policy"

    .line 131
    .line 132
    invoke-static {v5, v0}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    move-object/from16 v17, v3

    .line 137
    .line 138
    const-string v3, "backoff_delay_duration"

    .line 139
    .line 140
    invoke-static {v5, v3}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    move-object/from16 v18, v4

    .line 145
    .line 146
    const-string v4, "last_enqueue_time"

    .line 147
    .line 148
    invoke-static {v5, v4}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    move-object/from16 v19, v2

    .line 153
    .line 154
    const-string v2, "minimum_retention_duration"

    .line 155
    .line 156
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    move-object/from16 v20, v8

    .line 161
    .line 162
    :try_start_1
    const-string v8, "schedule_requested_at"

    .line 163
    .line 164
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    move/from16 v21, v8

    .line 169
    .line 170
    const-string v8, "run_in_foreground"

    .line 171
    .line 172
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    move/from16 v22, v8

    .line 177
    .line 178
    const-string v8, "out_of_quota_policy"

    .line 179
    .line 180
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    move/from16 v23, v8

    .line 185
    .line 186
    const-string v8, "period_count"

    .line 187
    .line 188
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    move/from16 v24, v8

    .line 193
    .line 194
    const-string v8, "generation"

    .line 195
    .line 196
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    move/from16 v25, v8

    .line 201
    .line 202
    const-string v8, "required_network_type"

    .line 203
    .line 204
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    move/from16 v26, v8

    .line 209
    .line 210
    const-string v8, "requires_charging"

    .line 211
    .line 212
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    move/from16 v27, v8

    .line 217
    .line 218
    const-string v8, "requires_device_idle"

    .line 219
    .line 220
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    move/from16 v28, v8

    .line 225
    .line 226
    const-string v8, "requires_battery_not_low"

    .line 227
    .line 228
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    move/from16 v29, v8

    .line 233
    .line 234
    const-string v8, "requires_storage_not_low"

    .line 235
    .line 236
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    move/from16 v30, v8

    .line 241
    .line 242
    const-string v8, "trigger_content_update_delay"

    .line 243
    .line 244
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    move/from16 v31, v8

    .line 249
    .line 250
    const-string v8, "trigger_max_content_delay"

    .line 251
    .line 252
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    move/from16 v32, v8

    .line 257
    .line 258
    const-string v8, "content_uri_triggers"

    .line 259
    .line 260
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    move/from16 v33, v8

    .line 265
    .line 266
    new-instance v8, Ljava/util/ArrayList;

    .line 267
    .line 268
    move/from16 v34, v2

    .line 269
    .line 270
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    .line 276
    .line 277
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_b

    .line 282
    .line 283
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_0

    .line 288
    .line 289
    const/16 v36, 0x0

    .line 290
    .line 291
    goto :goto_1

    .line 292
    :cond_0
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    move-object/from16 v36, v2

    .line 297
    .line 298
    :goto_1
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-static {v2}, Lg/a;->m(I)I

    .line 303
    .line 304
    .line 305
    move-result v37

    .line 306
    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_1

    .line 311
    .line 312
    const/16 v38, 0x0

    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_1
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    move-object/from16 v38, v2

    .line 320
    .line 321
    :goto_2
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-eqz v2, :cond_2

    .line 326
    .line 327
    const/16 v39, 0x0

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_2
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    move-object/from16 v39, v2

    .line 335
    .line 336
    :goto_3
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eqz v2, :cond_3

    .line 341
    .line 342
    const/4 v2, 0x0

    .line 343
    goto :goto_4

    .line 344
    :cond_3
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    :goto_4
    invoke-static {v2}, Lm1/e;->a([B)Lm1/e;

    .line 349
    .line 350
    .line 351
    move-result-object v40

    .line 352
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_4

    .line 357
    .line 358
    const/4 v2, 0x0

    .line 359
    goto :goto_5

    .line 360
    :cond_4
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getBlob(I)[B

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    :goto_5
    invoke-static {v2}, Lm1/e;->a([B)Lm1/e;

    .line 365
    .line 366
    .line 367
    move-result-object v41

    .line 368
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 369
    .line 370
    .line 371
    move-result-wide v42

    .line 372
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 373
    .line 374
    .line 375
    move-result-wide v44

    .line 376
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 377
    .line 378
    .line 379
    move-result-wide v46

    .line 380
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 381
    .line 382
    .line 383
    move-result v49

    .line 384
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    invoke-static {v2}, Lg/a;->j(I)I

    .line 389
    .line 390
    .line 391
    move-result v50

    .line 392
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 393
    .line 394
    .line 395
    move-result-wide v51

    .line 396
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 397
    .line 398
    .line 399
    move-result-wide v53

    .line 400
    move/from16 v2, v34

    .line 401
    .line 402
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 403
    .line 404
    .line 405
    move-result-wide v55

    .line 406
    move/from16 v34, v0

    .line 407
    .line 408
    move/from16 v0, v21

    .line 409
    .line 410
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 411
    .line 412
    .line 413
    move-result-wide v57

    .line 414
    move/from16 v21, v0

    .line 415
    .line 416
    move/from16 v0, v22

    .line 417
    .line 418
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 419
    .line 420
    .line 421
    move-result v22

    .line 422
    const/16 v35, 0x0

    .line 423
    .line 424
    if-eqz v22, :cond_5

    .line 425
    .line 426
    move/from16 v22, v0

    .line 427
    .line 428
    move/from16 v0, v23

    .line 429
    .line 430
    const/16 v59, 0x1

    .line 431
    .line 432
    goto :goto_6

    .line 433
    :cond_5
    move/from16 v22, v0

    .line 434
    .line 435
    move/from16 v0, v23

    .line 436
    .line 437
    move/from16 v59, v35

    .line 438
    .line 439
    :goto_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 440
    .line 441
    .line 442
    move-result v23

    .line 443
    invoke-static/range {v23 .. v23}, Lg/a;->l(I)I

    .line 444
    .line 445
    .line 446
    move-result v60

    .line 447
    move/from16 v23, v0

    .line 448
    .line 449
    move/from16 v0, v24

    .line 450
    .line 451
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 452
    .line 453
    .line 454
    move-result v61

    .line 455
    move/from16 v24, v0

    .line 456
    .line 457
    move/from16 v0, v25

    .line 458
    .line 459
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 460
    .line 461
    .line 462
    move-result v62

    .line 463
    move/from16 v25, v0

    .line 464
    .line 465
    move/from16 v0, v26

    .line 466
    .line 467
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 468
    .line 469
    .line 470
    move-result v26

    .line 471
    invoke-static/range {v26 .. v26}, Lg/a;->k(I)I

    .line 472
    .line 473
    .line 474
    move-result v64

    .line 475
    move/from16 v26, v0

    .line 476
    .line 477
    move/from16 v0, v27

    .line 478
    .line 479
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 480
    .line 481
    .line 482
    move-result v27

    .line 483
    if-eqz v27, :cond_6

    .line 484
    .line 485
    move/from16 v27, v0

    .line 486
    .line 487
    move/from16 v0, v28

    .line 488
    .line 489
    const/16 v65, 0x1

    .line 490
    .line 491
    goto :goto_7

    .line 492
    :cond_6
    move/from16 v27, v0

    .line 493
    .line 494
    move/from16 v0, v28

    .line 495
    .line 496
    move/from16 v65, v35

    .line 497
    .line 498
    :goto_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 499
    .line 500
    .line 501
    move-result v28

    .line 502
    if-eqz v28, :cond_7

    .line 503
    .line 504
    move/from16 v28, v0

    .line 505
    .line 506
    move/from16 v0, v29

    .line 507
    .line 508
    const/16 v66, 0x1

    .line 509
    .line 510
    goto :goto_8

    .line 511
    :cond_7
    move/from16 v28, v0

    .line 512
    .line 513
    move/from16 v0, v29

    .line 514
    .line 515
    move/from16 v66, v35

    .line 516
    .line 517
    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 518
    .line 519
    .line 520
    move-result v29

    .line 521
    if-eqz v29, :cond_8

    .line 522
    .line 523
    move/from16 v29, v0

    .line 524
    .line 525
    move/from16 v0, v30

    .line 526
    .line 527
    const/16 v67, 0x1

    .line 528
    .line 529
    goto :goto_9

    .line 530
    :cond_8
    move/from16 v29, v0

    .line 531
    .line 532
    move/from16 v0, v30

    .line 533
    .line 534
    move/from16 v67, v35

    .line 535
    .line 536
    :goto_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 537
    .line 538
    .line 539
    move-result v30

    .line 540
    if-eqz v30, :cond_9

    .line 541
    .line 542
    move/from16 v30, v0

    .line 543
    .line 544
    move/from16 v0, v31

    .line 545
    .line 546
    const/16 v68, 0x1

    .line 547
    .line 548
    goto :goto_a

    .line 549
    :cond_9
    move/from16 v30, v0

    .line 550
    .line 551
    move/from16 v0, v31

    .line 552
    .line 553
    move/from16 v68, v35

    .line 554
    .line 555
    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 556
    .line 557
    .line 558
    move-result-wide v69

    .line 559
    move/from16 v31, v0

    .line 560
    .line 561
    move/from16 v0, v32

    .line 562
    .line 563
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 564
    .line 565
    .line 566
    move-result-wide v71

    .line 567
    move/from16 v32, v0

    .line 568
    .line 569
    move/from16 v0, v33

    .line 570
    .line 571
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 572
    .line 573
    .line 574
    move-result v33

    .line 575
    if-eqz v33, :cond_a

    .line 576
    .line 577
    const/16 v33, 0x0

    .line 578
    .line 579
    goto :goto_b

    .line 580
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 581
    .line 582
    .line 583
    move-result-object v33

    .line 584
    :goto_b
    invoke-static/range {v33 .. v33}, Lg/a;->c([B)Ljava/util/LinkedHashSet;

    .line 585
    .line 586
    .line 587
    move-result-object v73

    .line 588
    new-instance v48, Lm1/d;

    .line 589
    .line 590
    move-object/from16 v63, v48

    .line 591
    .line 592
    invoke-direct/range {v63 .. v73}, Lm1/d;-><init>(IZZZZJJLjava/util/Set;)V

    .line 593
    .line 594
    .line 595
    move/from16 v33, v0

    .line 596
    .line 597
    new-instance v0, Lv1/p;

    .line 598
    .line 599
    move-object/from16 v35, v0

    .line 600
    .line 601
    invoke-direct/range {v35 .. v62}, Lv1/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIII)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    .line 606
    .line 607
    move/from16 v0, v34

    .line 608
    .line 609
    move/from16 v34, v2

    .line 610
    .line 611
    goto/16 :goto_0

    .line 612
    .line 613
    :catchall_0
    move-exception v0

    .line 614
    goto/16 :goto_d

    .line 615
    .line 616
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 617
    .line 618
    .line 619
    invoke-virtual/range {v20 .. v20}, Ly0/y;->u()V

    .line 620
    .line 621
    .line 622
    invoke-virtual/range {v19 .. v19}, Lv1/r;->d()Ljava/util/ArrayList;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual/range {v19 .. v19}, Lv1/r;->b()Ljava/util/ArrayList;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    const/4 v3, 0x1

    .line 635
    xor-int/2addr v2, v3

    .line 636
    if-eqz v2, :cond_c

    .line 637
    .line 638
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    sget-object v3, Lz1/b;->a:Ljava/lang/String;

    .line 643
    .line 644
    const-string v4, "Recently completed work:\n\n"

    .line 645
    .line 646
    invoke-virtual {v2, v3, v4}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    move-object/from16 v6, v16

    .line 654
    .line 655
    move-object/from16 v4, v17

    .line 656
    .line 657
    move-object/from16 v5, v18

    .line 658
    .line 659
    invoke-static {v4, v5, v6, v8}, Lz1/b;->a(Lv1/k;Lv1/t;Lv1/h;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v7

    .line 663
    invoke-virtual {v2, v3, v7}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    goto :goto_c

    .line 667
    :cond_c
    move-object/from16 v6, v16

    .line 668
    .line 669
    move-object/from16 v4, v17

    .line 670
    .line 671
    move-object/from16 v5, v18

    .line 672
    .line 673
    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    const/4 v3, 0x1

    .line 678
    xor-int/2addr v2, v3

    .line 679
    if-eqz v2, :cond_d

    .line 680
    .line 681
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    sget-object v3, Lz1/b;->a:Ljava/lang/String;

    .line 686
    .line 687
    const-string v7, "Running work:\n\n"

    .line 688
    .line 689
    invoke-virtual {v2, v3, v7}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    invoke-static {v4, v5, v6, v0}, Lz1/b;->a(Lv1/k;Lv1/t;Lv1/h;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-virtual {v2, v3, v0}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    const/4 v2, 0x1

    .line 708
    xor-int/2addr v0, v2

    .line 709
    if-eqz v0, :cond_e

    .line 710
    .line 711
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    sget-object v2, Lz1/b;->a:Ljava/lang/String;

    .line 716
    .line 717
    const-string v3, "Enqueued work:\n\n"

    .line 718
    .line 719
    invoke-virtual {v0, v2, v3}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-static {v4, v5, v6, v1}, Lz1/b;->a(Lv1/k;Lv1/t;Lv1/h;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    invoke-virtual {v0, v2, v1}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    :cond_e
    new-instance v0, Lm1/k;

    .line 734
    .line 735
    sget-object v1, Lm1/e;->c:Lm1/e;

    .line 736
    .line 737
    invoke-direct {v0, v1}, Lm1/k;-><init>(Lm1/e;)V

    .line 738
    .line 739
    .line 740
    return-object v0

    .line 741
    :catchall_1
    move-exception v0

    .line 742
    move-object/from16 v20, v8

    .line 743
    .line 744
    :goto_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 745
    .line 746
    .line 747
    invoke-virtual/range {v20 .. v20}, Ly0/y;->u()V

    .line 748
    .line 749
    .line 750
    throw v0
.end method
