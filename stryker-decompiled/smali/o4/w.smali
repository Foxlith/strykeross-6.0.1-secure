.class public final synthetic Lo4/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/wifi/Wifi;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:[Ljava/util/Timer;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:[Ll4/c;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Ljava/util/ArrayList;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Landroid/widget/TextView;

.field public final synthetic l:[I

.field public final synthetic m:Landroid/widget/TextView;

.field public final synthetic n:Landroid/widget/TextView;

.field public final synthetic p:Landroid/widget/ImageView;

.field public final synthetic q:Landroid/widget/ProgressBar;

.field public final synthetic r:Landroid/widget/TextView;

.field public final synthetic s:Landroid/view/View;

.field public final synthetic t:Landroid/widget/TextView;

.field public final synthetic u:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;[Ljava/util/Timer;Landroid/widget/TextView;[Ll4/c;Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;[ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 1
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lo4/w;->a:Lcom/zalexdev/stryker/wifi/Wifi;

    move-object v1, p2

    iput-object v1, v0, Lo4/w;->b:Ljava/util/ArrayList;

    move-object v1, p3

    iput-object v1, v0, Lo4/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, p4

    iput-object v1, v0, Lo4/w;->d:[Ljava/util/Timer;

    move-object v1, p5

    iput-object v1, v0, Lo4/w;->e:Landroid/widget/TextView;

    move-object v1, p6

    iput-object v1, v0, Lo4/w;->f:[Ll4/c;

    move-object v1, p7

    iput-object v1, v0, Lo4/w;->g:Landroid/widget/TextView;

    move-object v1, p8

    iput-object v1, v0, Lo4/w;->h:Ljava/util/ArrayList;

    move-object v1, p9

    iput-object v1, v0, Lo4/w;->i:Landroid/widget/TextView;

    move-object v1, p10

    iput-object v1, v0, Lo4/w;->j:Landroid/widget/TextView;

    move-object v1, p11

    iput-object v1, v0, Lo4/w;->k:Landroid/widget/TextView;

    move-object v1, p12

    iput-object v1, v0, Lo4/w;->l:[I

    move-object v1, p13

    iput-object v1, v0, Lo4/w;->m:Landroid/widget/TextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lo4/w;->n:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lo4/w;->p:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lo4/w;->q:Landroid/widget/ProgressBar;

    move-object/from16 v1, p17

    iput-object v1, v0, Lo4/w;->r:Landroid/widget/TextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lo4/w;->s:Landroid/view/View;

    move-object/from16 v1, p19

    iput-object v1, v0, Lo4/w;->t:Landroid/widget/TextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lo4/w;->u:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 41

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v9, v1, Lo4/w;->e:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object v15, v1, Lo4/w;->f:[Ll4/c;

    .line 6
    .line 7
    iget-object v14, v1, Lo4/w;->g:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v13, v1, Lo4/w;->i:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v12, v1, Lo4/w;->j:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v11, v1, Lo4/w;->k:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v10, v1, Lo4/w;->l:[I

    .line 16
    .line 17
    iget-object v8, v1, Lo4/w;->m:Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object v7, v1, Lo4/w;->n:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v6, v1, Lo4/w;->p:Landroid/widget/ImageView;

    .line 22
    .line 23
    iget-object v5, v1, Lo4/w;->q:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    iget-object v4, v1, Lo4/w;->r:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v3, v1, Lo4/w;->s:Landroid/view/View;

    .line 28
    .line 29
    iget-object v2, v1, Lo4/w;->t:Landroid/widget/TextView;

    .line 30
    .line 31
    move-object/from16 v16, v10

    .line 32
    .line 33
    iget-object v10, v1, Lo4/w;->u:Landroid/widget/TextView;

    .line 34
    .line 35
    move-object/from16 v17, v10

    .line 36
    .line 37
    iget-object v10, v1, Lo4/w;->a:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 38
    .line 39
    iget-object v0, v10, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 40
    .line 41
    invoke-virtual {v0}, Ll4/l;->t0()V

    .line 42
    .line 43
    .line 44
    const/16 v25, 0x0

    .line 45
    .line 46
    filled-new-array/range {v25 .. v25}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v26

    .line 50
    move-object/from16 v18, v11

    .line 51
    .line 52
    iget-object v11, v1, Lo4/w;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v27

    .line 58
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    move-object/from16 v19, v11

    .line 63
    .line 64
    iget-object v11, v1, Lo4/w;->d:[Ljava/util/Timer;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object/from16 v21, v12

    .line 73
    .line 74
    move-object v12, v0

    .line 75
    check-cast v12, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 76
    .line 77
    iget-object v0, v1, Lo4/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    move-object/from16 v34, v2

    .line 86
    .line 87
    move-object/from16 v35, v3

    .line 88
    .line 89
    move-object/from16 v36, v4

    .line 90
    .line 91
    move-object/from16 v37, v5

    .line 92
    .line 93
    move-object/from16 v38, v6

    .line 94
    .line 95
    move-object v7, v10

    .line 96
    move-object v3, v13

    .line 97
    move-object/from16 v5, v16

    .line 98
    .line 99
    move-object/from16 v6, v17

    .line 100
    .line 101
    move-object/from16 v8, v18

    .line 102
    .line 103
    move-object/from16 v29, v21

    .line 104
    .line 105
    :goto_1
    const/16 v1, 0xa

    .line 106
    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :cond_0
    filled-new-array/range {v25 .. v25}, [I

    .line 110
    .line 111
    .line 112
    move-result-object v22

    .line 113
    const/16 v0, 0x3c

    .line 114
    .line 115
    filled-new-array {v0}, [I

    .line 116
    .line 117
    .line 118
    move-result-object v23

    .line 119
    :try_start_0
    aget-object v0, v11, v25

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :goto_2
    new-instance v28, Ljava/util/Timer;

    .line 130
    .line 131
    invoke-direct/range {v28 .. v28}, Ljava/util/Timer;-><init>()V

    .line 132
    .line 133
    .line 134
    aput-object v28, v11, v25

    .line 135
    .line 136
    new-instance v29, Lo4/d0;

    .line 137
    .line 138
    move-object/from16 v34, v2

    .line 139
    .line 140
    move-object/from16 v2, v29

    .line 141
    .line 142
    move-object/from16 v35, v3

    .line 143
    .line 144
    move-object v3, v10

    .line 145
    move-object/from16 v36, v4

    .line 146
    .line 147
    move-object/from16 v4, v23

    .line 148
    .line 149
    move-object/from16 v37, v5

    .line 150
    .line 151
    move-object v5, v9

    .line 152
    move-object/from16 v38, v6

    .line 153
    .line 154
    move-object v6, v15

    .line 155
    move-object/from16 v39, v7

    .line 156
    .line 157
    move-object v7, v11

    .line 158
    move-object/from16 v40, v8

    .line 159
    .line 160
    move-object v8, v14

    .line 161
    invoke-direct/range {v2 .. v8}, Lo4/d0;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;[ILandroid/widget/TextView;[Ll4/c;[Ljava/util/Timer;Landroid/widget/TextView;)V

    .line 162
    .line 163
    .line 164
    const-wide/16 v30, 0x0

    .line 165
    .line 166
    const-wide/16 v32, 0x3e8

    .line 167
    .line 168
    invoke-virtual/range {v28 .. v33}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v12}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getWps()Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_2

    .line 180
    .line 181
    iget-object v0, v12, Lcom/zalexdev/stryker/custom/WiFINetwork;->isBlocked:Ljava/lang/Boolean;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_2

    .line 188
    .line 189
    invoke-virtual {v12}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v11, v1, Lo4/w;->h:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_2

    .line 200
    .line 201
    new-instance v0, Ln1/b0;

    .line 202
    .line 203
    const/4 v8, 0x6

    .line 204
    move-object v2, v0

    .line 205
    move-object v3, v10

    .line 206
    move-object v4, v13

    .line 207
    move-object/from16 v5, v21

    .line 208
    .line 209
    move-object v6, v12

    .line 210
    move-object/from16 v7, v18

    .line 211
    .line 212
    invoke-direct/range {v2 .. v8}, Ln1/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10, v0}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 216
    .line 217
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v2, " python3 -u /CORE/PixieWps/pixie.py -i "

    .line 221
    .line 222
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v2, v10, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 226
    .line 227
    const-string v3, "wlan_wps"

    .line 228
    .line 229
    invoke-virtual {v2, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-object v2, v10, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 237
    .line 238
    invoke-virtual {v2}, Ll4/l;->u0()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v2, " -K -F -b "

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v12}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    new-instance v2, Lo4/e0;

    .line 262
    .line 263
    iget-object v3, v10, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    .line 264
    .line 265
    iget-object v4, v10, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    .line 266
    .line 267
    move-object v7, v10

    .line 268
    move-object/from16 v5, v16

    .line 269
    .line 270
    move-object/from16 v6, v17

    .line 271
    .line 272
    move-object v10, v2

    .line 273
    move-object/from16 v8, v18

    .line 274
    .line 275
    move-object/from16 v28, v19

    .line 276
    .line 277
    const/16 v1, 0xa

    .line 278
    .line 279
    move-object/from16 v18, v11

    .line 280
    .line 281
    move-object v11, v7

    .line 282
    move-object/from16 v16, v12

    .line 283
    .line 284
    move-object/from16 v29, v21

    .line 285
    .line 286
    move-object v12, v3

    .line 287
    move-object v3, v13

    .line 288
    move-object v13, v4

    .line 289
    move-object v4, v14

    .line 290
    move-object v14, v0

    .line 291
    move-object/from16 v30, v15

    .line 292
    .line 293
    move-object v15, v5

    .line 294
    move-object/from16 v17, v26

    .line 295
    .line 296
    move-object/from16 v19, v40

    .line 297
    .line 298
    move-object/from16 v20, v39

    .line 299
    .line 300
    move-object/from16 v21, v28

    .line 301
    .line 302
    move-object/from16 v23, v30

    .line 303
    .line 304
    move-object/from16 v24, v4

    .line 305
    .line 306
    invoke-direct/range {v10 .. v24}, Lo4/e0;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;Landroidx/fragment/app/a0;Landroid/content/Context;Ljava/lang/String;[ILcom/zalexdev/stryker/custom/WiFINetwork;[ILjava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;[I[Ll4/c;Landroid/widget/TextView;)V

    .line 307
    .line 308
    .line 309
    aput-object v2, v30, v25

    .line 310
    .line 311
    iput-object v2, v7, Lcom/zalexdev/stryker/wifi/Wifi;->J:Lo4/e0;

    .line 312
    .line 313
    :goto_3
    aget-object v0, v30, v25

    .line 314
    .line 315
    iget-boolean v0, v0, Ll4/c;->n:Z

    .line 316
    .line 317
    if-eqz v0, :cond_1

    .line 318
    .line 319
    const-wide/16 v10, 0x7d0

    .line 320
    .line 321
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :catch_1
    move-exception v0

    .line 326
    move-object v2, v0

    .line 327
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 328
    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    .line 332
    .line 333
    new-instance v2, Lo4/z;

    .line 334
    .line 335
    invoke-direct {v2, v7, v1}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 336
    .line 337
    .line 338
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 342
    .line 343
    .line 344
    new-instance v0, Lo4/k;

    .line 345
    .line 346
    const/4 v1, 0x3

    .line 347
    invoke-direct {v0, v4, v1}, Lo4/k;-><init>(Landroid/widget/TextView;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v0}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_2
    move-object v7, v10

    .line 355
    move-object v3, v13

    .line 356
    move-object v4, v14

    .line 357
    move-object/from16 v30, v15

    .line 358
    .line 359
    move-object/from16 v5, v16

    .line 360
    .line 361
    move-object/from16 v6, v17

    .line 362
    .line 363
    move-object/from16 v8, v18

    .line 364
    .line 365
    move-object/from16 v28, v19

    .line 366
    .line 367
    move-object/from16 v29, v21

    .line 368
    .line 369
    :goto_4
    move-object/from16 v1, p0

    .line 370
    .line 371
    move-object v13, v3

    .line 372
    move-object v14, v4

    .line 373
    move-object/from16 v16, v5

    .line 374
    .line 375
    move-object/from16 v17, v6

    .line 376
    .line 377
    move-object v10, v7

    .line 378
    move-object/from16 v18, v8

    .line 379
    .line 380
    move-object/from16 v11, v28

    .line 381
    .line 382
    move-object/from16 v12, v29

    .line 383
    .line 384
    move-object/from16 v15, v30

    .line 385
    .line 386
    move-object/from16 v2, v34

    .line 387
    .line 388
    move-object/from16 v3, v35

    .line 389
    .line 390
    move-object/from16 v4, v36

    .line 391
    .line 392
    move-object/from16 v5, v37

    .line 393
    .line 394
    move-object/from16 v6, v38

    .line 395
    .line 396
    move-object/from16 v7, v39

    .line 397
    .line 398
    move-object/from16 v8, v40

    .line 399
    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :cond_3
    move-object/from16 v34, v2

    .line 403
    .line 404
    move-object/from16 v35, v3

    .line 405
    .line 406
    move-object/from16 v36, v4

    .line 407
    .line 408
    move-object/from16 v37, v5

    .line 409
    .line 410
    move-object/from16 v38, v6

    .line 411
    .line 412
    move-object v7, v10

    .line 413
    move-object/from16 v29, v12

    .line 414
    .line 415
    move-object v3, v13

    .line 416
    move-object/from16 v5, v16

    .line 417
    .line 418
    move-object/from16 v6, v17

    .line 419
    .line 420
    move-object/from16 v8, v18

    .line 421
    .line 422
    goto/16 :goto_1

    .line 423
    .line 424
    :goto_5
    new-instance v0, Ljava/lang/Thread;

    .line 425
    .line 426
    new-instance v2, Lo4/z;

    .line 427
    .line 428
    invoke-direct {v2, v7, v1}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 429
    .line 430
    .line 431
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 435
    .line 436
    .line 437
    :try_start_2
    aget-object v0, v11, v25

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 440
    .line 441
    .line 442
    goto :goto_6

    .line 443
    :catch_2
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 445
    .line 446
    .line 447
    :goto_6
    new-instance v0, Lo4/a0;

    .line 448
    .line 449
    move-object/from16 v16, v0

    .line 450
    .line 451
    move-object/from16 v17, v7

    .line 452
    .line 453
    move-object/from16 v18, v38

    .line 454
    .line 455
    move-object/from16 v19, v37

    .line 456
    .line 457
    move-object/from16 v20, v36

    .line 458
    .line 459
    move-object/from16 v21, v35

    .line 460
    .line 461
    move-object/from16 v22, v5

    .line 462
    .line 463
    move-object/from16 v23, v26

    .line 464
    .line 465
    move-object/from16 v24, v34

    .line 466
    .line 467
    move-object/from16 v25, v6

    .line 468
    .line 469
    move-object/from16 v26, v29

    .line 470
    .line 471
    move-object/from16 v27, v3

    .line 472
    .line 473
    move-object/from16 v28, v8

    .line 474
    .line 475
    invoke-direct/range {v16 .. v28}, Lo4/a0;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;[I[ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v7, v0}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 479
    .line 480
    .line 481
    return-void
.end method
