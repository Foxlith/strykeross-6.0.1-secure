.class public final synthetic Ls3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls3/t;


# direct methods
.method public synthetic constructor <init>(Ls3/t;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ls3/r;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ls3/r;->b:Ls3/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Ls3/r;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ls3/r;->b:Ls3/t;

    .line 9
    .line 10
    iget-object v0, v0, Ls3/t;->u:Ls3/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v3, v0, Ls3/b;->a:Ly0/p;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iget-object v3, v3, Ly0/p;->j:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v4, v3

    .line 22
    check-cast v4, Lf/u0;

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    check-cast v3, Lf/u0;

    .line 28
    .line 29
    invoke-virtual {v3}, Lf/u0;->e()I

    .line 30
    .line 31
    .line 32
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-gtz v3, :cond_2

    .line 34
    .line 35
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, v0, Ls3/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 38
    .line 39
    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_2
    const/16 v4, 0x20

    .line 43
    .line 44
    :try_start_2
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-ge v4, v2, :cond_3

    .line 49
    .line 50
    move v4, v2

    .line 51
    :cond_3
    add-int v5, v3, v4

    .line 52
    .line 53
    sub-int/2addr v5, v2

    .line 54
    div-int/2addr v5, v4

    .line 55
    if-ge v5, v2, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    move v2, v5

    .line 59
    :goto_1
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    .line 60
    .line 61
    invoke-direct {v5, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 62
    .line 63
    .line 64
    :goto_2
    if-ge v1, v4, :cond_7

    .line 65
    .line 66
    mul-int v6, v1, v2

    .line 67
    .line 68
    add-int v7, v6, v2

    .line 69
    .line 70
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-lt v6, v3, :cond_5

    .line 75
    .line 76
    :goto_3
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :catch_0
    move-exception v1

    .line 81
    goto :goto_6

    .line 82
    :cond_5
    invoke-virtual {v0, v6, v7, v5, v1}, Ls3/g;->i(IILjava/util/concurrent/CountDownLatch;I)Ljava/lang/Thread;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-nez v6, :cond_6

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    iget-object v7, v0, Ls3/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 90
    .line 91
    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :catch_1
    :try_start_4
    iget-object v7, v0, Ls3/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    .line 100
    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    iget-boolean v1, v0, Ls3/b;->c:Z

    .line 108
    .line 109
    if-eqz v1, :cond_8

    .line 110
    .line 111
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 112
    .line 113
    const-wide/16 v2, 0x64

    .line 114
    .line 115
    invoke-virtual {v5, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    :cond_8
    iget-boolean v1, v0, Ls3/b;->c:Z

    .line 122
    .line 123
    if-nez v1, :cond_1

    .line 124
    .line 125
    iget-object v1, v0, Ls3/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_a

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Ljava/lang/Thread;

    .line 142
    .line 143
    if-eqz v2, :cond_9

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_a
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 150
    .line 151
    const-wide/16 v2, 0x7d0

    .line 152
    .line 153
    invoke-virtual {v5, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catchall_0
    :try_start_5
    const-string v1, "sweep aborted"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ls3/b;->g(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catchall_1
    move-exception v1

    .line 164
    goto :goto_8

    .line 165
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v3, "sweep failed: "

    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ls3/b;->g(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :catch_3
    :goto_7
    return-void

    .line 197
    :goto_8
    :try_start_6
    iget-object v0, v0, Ls3/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 200
    .line 201
    .line 202
    :catch_4
    throw v1

    .line 203
    :pswitch_0
    iget-object v0, p0, Ls3/r;->b:Ls3/t;

    .line 204
    .line 205
    const-string v3, "Scan failed: "

    .line 206
    .line 207
    const-string v4, "Neighbour table readable: "

    .line 208
    .line 209
    const-string v5, "Non-root discovery: "

    .line 210
    .line 211
    const-string v6, "Scanning "

    .line 212
    .line 213
    iget-object v7, v0, Ls3/t;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 214
    .line 215
    invoke-virtual {v7, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-nez v2, :cond_b

    .line 220
    .line 221
    goto/16 :goto_e

    .line 222
    .line 223
    :cond_b
    :try_start_7
    iget-object v2, v0, Ls3/t;->e:Lv1/t;

    .line 224
    .line 225
    iget-object v7, v0, Ls3/t;->a:Landroid/content/Context;

    .line 226
    .line 227
    invoke-virtual {v2, v7}, Lv1/t;->f(Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    iget-object v2, v0, Ls3/t;->b:Ll4/l;

    .line 231
    .line 232
    if-nez v2, :cond_c

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    goto :goto_9

    .line 236
    :cond_c
    const-string v7, "local_scan_target"

    .line 237
    .line 238
    invoke-virtual {v2, v7}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    :goto_9
    iget-object v7, v0, Ls3/t;->a:Landroid/content/Context;

    .line 243
    .line 244
    invoke-static {v7, v2}, Ly0/p;->a(Landroid/content/Context;Ljava/lang/String;)Ly0/p;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    iput-object v2, v0, Ls3/t;->t:Ly0/p;

    .line 249
    .line 250
    iget-object v7, v2, Ly0/p;->j:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v7, Lf/u0;

    .line 253
    .line 254
    if-eqz v7, :cond_10

    .line 255
    .line 256
    iget-object v2, v2, Ly0/p;->a:Ljava/lang/String;

    .line 257
    .line 258
    if-eqz v2, :cond_10

    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_10

    .line 265
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v6, v0, Ls3/t;->t:Ly0/p;

    .line 272
    .line 273
    iget-object v6, v6, Ly0/p;->j:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v6, Lf/u0;

    .line 276
    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    iget-wide v8, v6, Lf/u0;->a:J

    .line 283
    .line 284
    invoke-static {v8, v9}, Lf/u0;->f(J)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v8, "/"

    .line 292
    .line 293
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget v6, v6, Lf/u0;->c:I

    .line 297
    .line 298
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v0, v2}, Ls3/t;->v(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v5, v0, Ls3/t;->t:Ly0/p;

    .line 321
    .line 322
    invoke-virtual {v5}, Ly0/p;->b()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v0, v2}, Ls3/t;->j(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Ls3/t;->q()V

    .line 337
    .line 338
    .line 339
    iget-object v2, v0, Ls3/t;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-nez v2, :cond_d

    .line 346
    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object v4, v0, Ls3/t;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 353
    .line 354
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v4, " entries"

    .line 362
    .line 363
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    :goto_a
    invoke-virtual {v0, v2}, Ls3/t;->j(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto :goto_b

    .line 374
    :catchall_2
    move-exception v2

    .line 375
    goto :goto_d

    .line 376
    :cond_d
    invoke-static {}, Lcom/zalexdev/stryker/localnetwork/nonroot/Neighbours;->b()V

    .line 377
    .line 378
    .line 379
    sget-boolean v2, Lcom/zalexdev/stryker/localnetwork/nonroot/Neighbours;->b:Z

    .line 380
    .line 381
    if-nez v2, :cond_e

    .line 382
    .line 383
    const-string v2, "Neighbour lookup unavailable, IP-only mode"

    .line 384
    .line 385
    goto :goto_a

    .line 386
    :cond_e
    const-string v2, "Neighbour table empty for now, will re-read after the sweep"

    .line 387
    .line 388
    goto :goto_a

    .line 389
    :goto_b
    invoke-virtual {v0}, Ls3/t;->u()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Ls3/t;->r()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Ls3/t;->c()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Ls3/t;->q()V

    .line 399
    .line 400
    .line 401
    iget-object v2, v0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 402
    .line 403
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-nez v2, :cond_f

    .line 408
    .line 409
    invoke-virtual {v0}, Ls3/t;->f()V

    .line 410
    .line 411
    .line 412
    :cond_f
    invoke-virtual {v0}, Ls3/t;->n()V

    .line 413
    .line 414
    .line 415
    goto :goto_c

    .line 416
    :cond_10
    const-string v2, "No usable IPv4 network"

    .line 417
    .line 418
    invoke-virtual {v0, v2}, Ls3/t;->v(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 419
    .line 420
    .line 421
    :catchall_3
    :goto_c
    invoke-virtual {v0}, Ls3/t;->x()V

    .line 422
    .line 423
    .line 424
    iget-object v2, v0, Ls3/t;->e:Lv1/t;

    .line 425
    .line 426
    invoke-virtual {v2}, Lv1/t;->s()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Ls3/t;->g()V

    .line 430
    .line 431
    .line 432
    iget-object v0, v0, Ls3/t;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 433
    .line 434
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 435
    .line 436
    .line 437
    goto :goto_e

    .line 438
    :goto_d
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v0, v2}, Ls3/t;->j(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 451
    .line 452
    .line 453
    :try_start_9
    invoke-virtual {v0}, Ls3/t;->n()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 454
    .line 455
    .line 456
    goto :goto_c

    .line 457
    :goto_e
    return-void

    .line 458
    :catchall_4
    move-exception v2

    .line 459
    invoke-virtual {v0}, Ls3/t;->x()V

    .line 460
    .line 461
    .line 462
    iget-object v3, v0, Ls3/t;->e:Lv1/t;

    .line 463
    .line 464
    invoke-virtual {v3}, Lv1/t;->s()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0}, Ls3/t;->g()V

    .line 468
    .line 469
    .line 470
    iget-object v0, v0, Ls3/t;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 471
    .line 472
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 473
    .line 474
    .line 475
    throw v2

    .line 476
    nop

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
