.class public final synthetic Lt3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln3/i;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ln3/i;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lt3/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lt3/c;->b:Ln3/i;

    .line 7
    .line 8
    iput-object p2, p0, Lt3/c;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lt3/c;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v1, Lt3/c;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v11, v1, Lt3/c;->b:Ln3/i;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v5, v0

    .line 31
    check-cast v5, Lcom/zalexdev/stryker/custom/Device;

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/16 v6, 0x3e8

    .line 42
    .line 43
    invoke-virtual {v0, v6}, Ljava/net/InetAddress;->isReachable(I)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v6, "."

    .line 54
    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_0

    .line 70
    .line 71
    const-string v6, "\\."

    .line 72
    .line 73
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    aget-object v0, v0, v2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    goto :goto_2

    .line 82
    :cond_0
    :goto_1
    invoke-virtual {v5, v0}, Lcom/zalexdev/stryker/custom/Device;->setSubname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_3
    invoke-virtual {v5, v2}, Lcom/zalexdev/stryker/custom/Device;->setShim(Z)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Landroidx/emoji2/text/m;

    .line 93
    .line 94
    const/16 v6, 0x1c

    .line 95
    .line 96
    invoke-direct {v0, v11, v5, v3, v6}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    iget-object v5, v11, Ll4/c;->a:Landroid/app/Activity;

    .line 100
    .line 101
    invoke-virtual {v5, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    return-void

    .line 106
    :pswitch_0
    const-string v0, " "

    .line 107
    .line 108
    iget-object v4, v11, Ll4/c;->m:Lu3/g;

    .line 109
    .line 110
    iget-object v5, v11, Ll4/c;->a:Landroid/app/Activity;

    .line 111
    .line 112
    iget-object v12, v11, Ln3/i;->t:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v6, v11, Ll4/c;->d:Ll4/l;

    .line 115
    .line 116
    const-string v7, "arp-scan -I "

    .line 117
    .line 118
    :try_start_1
    new-instance v8, Lt3/d;

    .line 119
    .line 120
    invoke-direct {v8, v11, v2}, Lt3/d;-><init>(Ln3/i;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    .line 125
    .line 126
    const-string v8, "Started local network scanner"

    .line 127
    .line 128
    const/4 v13, 0x1

    .line 129
    invoke-virtual {v4, v13, v8}, Lu3/g;->e(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object v7, v12

    .line 138
    check-cast v7, Lr3/v;

    .line 139
    .line 140
    iget-object v7, v7, Lr3/v;->e:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v7, " -l"

    .line 146
    .line 147
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {v6, v7}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    const-string v8, "STARTEDARPSCAN"

    .line 159
    .line 160
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    .line 165
    .line 166
    move-object v7, v12

    .line 167
    check-cast v7, Lr3/v;

    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-static {v3}, Lr3/v;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    new-instance v7, Lt3/d;

    .line 177
    .line 178
    invoke-direct {v7, v11, v13}, Lt3/d;-><init>(Ln3/i;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v3}, Ll4/l;->k0(Ljava/util/ArrayList;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    if-eqz v8, :cond_3

    .line 196
    .line 197
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    check-cast v8, Lcom/zalexdev/stryker/custom/Device;

    .line 202
    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v10, "Found device: "

    .line 209
    .line 210
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v8}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8}, Lcom/zalexdev/stryker/custom/Device;->getVendor()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    const/4 v10, 0x2

    .line 245
    invoke-virtual {v4, v10, v9}, Lu3/g;->e(ILjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance v9, Lw2/h;

    .line 249
    .line 250
    const/16 v10, 0x14

    .line 251
    .line 252
    invoke-direct {v9, v11, v8, v10}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :catch_1
    move-exception v0

    .line 260
    goto/16 :goto_a

    .line 261
    .line 262
    :cond_3
    const-string v0, "autoScan"

    .line 263
    .line 264
    invoke-virtual {v6, v0}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_c

    .line 269
    .line 270
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 271
    .line 272
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    const-string v14, "autoBanner"

    .line 280
    .line 281
    iget-object v15, v6, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 282
    .line 283
    const/4 v5, 0x4

    .line 284
    const-string v16, ""

    .line 285
    .line 286
    const-string v17, " --script=banner"

    .line 287
    .line 288
    if-ge v2, v5, :cond_6

    .line 289
    .line 290
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_b

    .line 299
    .line 300
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    move-object v6, v4

    .line 305
    check-cast v6, Lcom/zalexdev/stryker/custom/Device;

    .line 306
    .line 307
    move-object v4, v12

    .line 308
    check-cast v4, Lr3/v;

    .line 309
    .line 310
    invoke-virtual {v4, v6}, Lr3/v;->a(Lcom/zalexdev/stryker/custom/Device;)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_5

    .line 315
    .line 316
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    invoke-interface {v15, v14, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-eqz v4, :cond_4

    .line 325
    .line 326
    move-object/from16 v7, v17

    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_4
    move-object/from16 v7, v16

    .line 330
    .line 331
    :goto_6
    new-instance v10, Ljava/lang/Thread;

    .line 332
    .line 333
    new-instance v9, Lt3/e;

    .line 334
    .line 335
    const/16 v18, 0x0

    .line 336
    .line 337
    move-object v4, v9

    .line 338
    move-object v5, v11

    .line 339
    move-object v13, v9

    .line 340
    move-object v9, v0

    .line 341
    move-object v1, v10

    .line 342
    move/from16 v10, v18

    .line 343
    .line 344
    invoke-direct/range {v4 .. v10}, Lt3/e;-><init>(Ln3/i;Lcom/zalexdev/stryker/custom/Device;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    .line 345
    .line 346
    .line 347
    invoke-direct {v1, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 351
    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 355
    .line 356
    .line 357
    :goto_7
    move-object/from16 v1, p0

    .line 358
    .line 359
    const/4 v13, 0x1

    .line 360
    goto :goto_5

    .line 361
    :cond_6
    const-string v1, "max_par"

    .line 362
    .line 363
    const/4 v2, 0x3

    .line 364
    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    const/4 v5, 0x1

    .line 369
    if-ge v1, v5, :cond_7

    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_7
    move v2, v1

    .line 373
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    const-string v5, "Max threads: "

    .line 379
    .line 380
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    const/4 v5, 0x1

    .line 391
    invoke-virtual {v4, v5, v1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-interface {v15, v14, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_8

    .line 399
    .line 400
    move-object/from16 v16, v17

    .line 401
    .line 402
    :cond_8
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-eqz v4, :cond_a

    .line 415
    .line 416
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    move-object v6, v4

    .line 421
    check-cast v6, Lcom/zalexdev/stryker/custom/Device;

    .line 422
    .line 423
    move-object v4, v12

    .line 424
    check-cast v4, Lr3/v;

    .line 425
    .line 426
    invoke-virtual {v4, v6}, Lr3/v;->a(Lcom/zalexdev/stryker/custom/Device;)Z

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    if-eqz v4, :cond_9

    .line 431
    .line 432
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    new-instance v13, Lt3/e;

    .line 437
    .line 438
    const/4 v10, 0x1

    .line 439
    move-object v4, v13

    .line 440
    move-object v5, v11

    .line 441
    move-object/from16 v7, v16

    .line 442
    .line 443
    move-object v9, v0

    .line 444
    invoke-direct/range {v4 .. v10}, Lt3/e;-><init>(Ln3/i;Lcom/zalexdev/stryker/custom/Device;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    .line 445
    .line 446
    .line 447
    invoke-interface {v1, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 448
    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 452
    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_a
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 456
    .line 457
    .line 458
    :cond_b
    new-instance v1, Ljava/lang/Thread;

    .line 459
    .line 460
    new-instance v2, Landroidx/emoji2/text/m;

    .line 461
    .line 462
    const/16 v4, 0x1b

    .line 463
    .line 464
    invoke-direct {v2, v11, v0, v3, v4}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 465
    .line 466
    .line 467
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 471
    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_c
    new-instance v0, Ljava/lang/Thread;

    .line 475
    .line 476
    new-instance v1, Lt3/c;

    .line 477
    .line 478
    const/4 v2, 0x1

    .line 479
    invoke-direct {v1, v11, v3, v2}, Lt3/c;-><init>(Ln3/i;Ljava/util/ArrayList;I)V

    .line 480
    .line 481
    .line 482
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 486
    .line 487
    .line 488
    goto :goto_b

    .line 489
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 490
    .line 491
    .line 492
    :goto_b
    return-void

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
