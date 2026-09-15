.class public final synthetic Ln1/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p6, p0, Ln1/b0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ln1/b0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Ln1/b0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Ln1/b0;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p4, p0, Ln1/b0;->e:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p5, p0, Ln1/b0;->f:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Ln1/b0;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, v1, Ln1/b0;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/zalexdev/stryker/wifi/Wifi;

    .line 16
    .line 17
    iget-object v2, v1, Ln1/b0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v3, v1, Ln1/b0;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v5, v1, Ln1/b0;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v5, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 28
    .line 29
    iget-object v6, v1, Ln1/b0;->f:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v6, Landroid/widget/TextView;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 34
    .line 35
    const-string v7, "hide"

    .line 36
    .line 37
    invoke-virtual {v0, v7}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-string v0, "XX:XX:XX:XX:XX:XX"

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getModel()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getModel()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-lez v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getModel()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void

    .line 91
    :pswitch_0
    iget-object v0, v1, Ln1/b0;->c:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Lo4/p;

    .line 94
    .line 95
    iget-object v2, v1, Ln1/b0;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Landroid/widget/ImageView;

    .line 98
    .line 99
    iget-object v3, v1, Ln1/b0;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v3, Landroid/widget/ProgressBar;

    .line 102
    .line 103
    iget-object v4, v1, Ln1/b0;->e:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v4, Landroid/widget/TextView;

    .line 106
    .line 107
    iget-object v5, v1, Ln1/b0;->f:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v5, Ljava/util/Timer;

    .line 110
    .line 111
    iget-object v6, v0, Ll4/h;->c:Ll4/l;

    .line 112
    .line 113
    const/high16 v7, 0x3f800000    # 1.0f

    .line 114
    .line 115
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {v2, v7}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, v0, Ll4/h;->c:Ll4/l;

    .line 126
    .line 127
    const/4 v6, 0x0

    .line 128
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v3, v6}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 136
    .line 137
    .line 138
    const v2, 0x104000a

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    .line 145
    .line 146
    .line 147
    iget-object v2, v0, Lo4/p;->q:Lo4/u;

    .line 148
    .line 149
    iget-object v2, v2, Lo4/u;->k:Lr3/q;

    .line 150
    .line 151
    if-eqz v2, :cond_2

    .line 152
    .line 153
    iget-object v2, v0, Lo4/p;->q:Lo4/u;

    .line 154
    .line 155
    iget-object v2, v2, Lo4/u;->k:Lr3/q;

    .line 156
    .line 157
    invoke-virtual {v2}, Ll4/c;->a()V

    .line 158
    .line 159
    .line 160
    :cond_2
    iget-object v2, v0, Lo4/p;->q:Lo4/u;

    .line 161
    .line 162
    iget-object v2, v2, Lo4/u;->g:Ll4/c;

    .line 163
    .line 164
    if-eqz v2, :cond_3

    .line 165
    .line 166
    iget-object v0, v0, Lo4/p;->q:Lo4/u;

    .line 167
    .line 168
    iget-object v0, v0, Lo4/u;->g:Ll4/c;

    .line 169
    .line 170
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 171
    .line 172
    .line 173
    :cond_3
    return-void

    .line 174
    :pswitch_1
    iget-object v0, v1, Ln1/b0;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 177
    .line 178
    iget-object v2, v1, Ln1/b0;->b:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v2, Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 181
    .line 182
    iget-object v3, v1, Ln1/b0;->d:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 185
    .line 186
    iget-object v6, v1, Ln1/b0;->e:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v6, Ljava/util/ArrayList;

    .line 189
    .line 190
    iget-object v7, v1, Ln1/b0;->f:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v7, Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_5

    .line 212
    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Ljava/lang/String;

    .line 218
    .line 219
    if-eqz v2, :cond_4

    .line 220
    .line 221
    const-string v3, "created:"

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_4

    .line 228
    .line 229
    const v0, 0x7f13052c

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_5
    const v0, 0x7f13052d

    .line 234
    .line 235
    .line 236
    :goto_2
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :pswitch_2
    iget-object v0, v1, Ln1/b0;->c:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v0, Lr3/t;

    .line 243
    .line 244
    iget-object v3, v1, Ln1/b0;->b:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v3, Landroid/widget/TextView;

    .line 247
    .line 248
    iget-object v4, v1, Ln1/b0;->d:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v4, Lcom/zalexdev/stryker/custom/Exploit;

    .line 251
    .line 252
    iget-object v5, v1, Ln1/b0;->e:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v5, Landroid/widget/TextView;

    .line 255
    .line 256
    iget-object v6, v1, Ln1/b0;->f:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v6, Landroid/widget/ScrollView;

    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    iget-object v0, v0, Lr3/t;->a:Landroid/content/Context;

    .line 272
    .line 273
    const v8, 0x7f1300a6

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v3, "\n\u2500\u2500 "

    .line 286
    .line 287
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v3, " \u2500\u2500\n"

    .line 298
    .line 299
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v3, "$ "

    .line 312
    .line 313
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Exploit;->genereteLaunchCommand()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v3, "\n"

    .line 324
    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 333
    .line 334
    .line 335
    if-nez v6, :cond_6

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_6
    new-instance v0, Ln3/d;

    .line 339
    .line 340
    invoke-direct {v0, v6, v2}, Ln3/d;-><init>(Landroid/widget/ScrollView;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 344
    .line 345
    .line 346
    :goto_3
    return-void

    .line 347
    :pswitch_3
    iget-object v0, v1, Ln1/b0;->c:Ljava/lang/Object;

    .line 348
    .line 349
    move-object v7, v0

    .line 350
    check-cast v7, Lb3/g;

    .line 351
    .line 352
    iget-object v0, v1, Ln1/b0;->b:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v0, Ljava/lang/String;

    .line 355
    .line 356
    iget-object v4, v1, Ln1/b0;->d:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v4, Ljava/lang/String;

    .line 359
    .line 360
    iget-object v6, v1, Ln1/b0;->e:Ljava/lang/Object;

    .line 361
    .line 362
    move-object v8, v6

    .line 363
    check-cast v8, Lb3/f;

    .line 364
    .line 365
    iget-object v6, v1, Ln1/b0;->f:Ljava/lang/Object;

    .line 366
    .line 367
    move-object v10, v6

    .line 368
    check-cast v10, Ljava/lang/String;

    .line 369
    .line 370
    iget-object v12, v7, Lb3/g;->c:Landroid/app/Activity;

    .line 371
    .line 372
    const-string v6, "/sdcard/Stryker"

    .line 373
    .line 374
    iget-object v9, v7, Lb3/g;->d:Ll4/l;

    .line 375
    .line 376
    :try_start_0
    iget v11, v7, Lb3/g;->f:I

    .line 377
    .line 378
    add-int/2addr v11, v5

    .line 379
    iput v11, v7, Lb3/g;->f:I

    .line 380
    .line 381
    invoke-virtual {v9}, Ll4/l;->H()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v14

    .line 389
    invoke-virtual {v9}, Ll4/l;->H()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v15

    .line 397
    new-instance v0, Lc3/b;

    .line 398
    .line 399
    iget-object v4, v7, Lb3/g;->d:Ll4/l;

    .line 400
    .line 401
    iget-object v5, v7, Lb3/g;->c:Landroid/app/Activity;

    .line 402
    .line 403
    iget-object v6, v7, Lb3/g;->b:Landroid/content/Context;

    .line 404
    .line 405
    iget-object v9, v8, Lb3/f;->b:Landroid/widget/TextView;

    .line 406
    .line 407
    iget-object v11, v8, Lb3/f;->c:Landroid/widget/TextView;

    .line 408
    .line 409
    iget v13, v7, Lb3/g;->f:I

    .line 410
    .line 411
    move/from16 v21, v13

    .line 412
    .line 413
    move-object v13, v0

    .line 414
    move-object/from16 v16, v4

    .line 415
    .line 416
    move-object/from16 v17, v5

    .line 417
    .line 418
    move-object/from16 v18, v6

    .line 419
    .line 420
    move-object/from16 v19, v9

    .line 421
    .line 422
    move-object/from16 v20, v11

    .line 423
    .line 424
    invoke-direct/range {v13 .. v21}, Lc3/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ll4/l;Landroid/app/Activity;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 425
    .line 426
    .line 427
    new-instance v4, Lw2/h;

    .line 428
    .line 429
    invoke-direct {v4, v8, v0, v2}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v12, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 433
    .line 434
    .line 435
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 436
    .line 437
    new-array v3, v3, [Ljava/lang/Void;

    .line 438
    .line 439
    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    move-object v9, v0

    .line 448
    check-cast v9, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 449
    .line 450
    new-instance v0, Lj2/b;

    .line 451
    .line 452
    const/4 v11, 0x6

    .line 453
    move-object v6, v0

    .line 454
    invoke-direct/range {v6 .. v11}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v12, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .line 459
    .line 460
    goto :goto_5

    .line 461
    :catch_0
    move-exception v0

    .line 462
    goto :goto_4

    .line 463
    :catch_1
    move-exception v0

    .line 464
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 465
    .line 466
    .line 467
    :goto_5
    return-void

    .line 468
    :pswitch_4
    iget-object v0, v1, Ln1/b0;->c:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v0, Lcom/zalexdev/stryker/geomac/GeoMacInline;

    .line 471
    .line 472
    iget-object v2, v1, Ln1/b0;->b:Ljava/lang/Object;

    .line 473
    .line 474
    move-object v10, v2

    .line 475
    check-cast v10, Ljava/lang/String;

    .line 476
    .line 477
    iget-object v2, v1, Ln1/b0;->d:Ljava/lang/Object;

    .line 478
    .line 479
    move-object v8, v2

    .line 480
    check-cast v8, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 481
    .line 482
    iget-object v2, v1, Ln1/b0;->e:Ljava/lang/Object;

    .line 483
    .line 484
    move-object v11, v2

    .line 485
    check-cast v11, Lorg/osmdroid/api/IMapController;

    .line 486
    .line 487
    iget-object v2, v1, Ln1/b0;->f:Ljava/lang/Object;

    .line 488
    .line 489
    move-object v12, v2

    .line 490
    check-cast v12, Lorg/osmdroid/views/MapView;

    .line 491
    .line 492
    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMacInline;->a:Ll4/l;

    .line 493
    .line 494
    invoke-static {v2, v10}, Lw2/c;->a(Ll4/l;Ljava/lang/String;)[D

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    if-nez v2, :cond_7

    .line 499
    .line 500
    const-string v2, ""

    .line 501
    .line 502
    :goto_6
    move-object v9, v2

    .line 503
    goto :goto_7

    .line 504
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    aget-wide v6, v2, v3

    .line 510
    .line 511
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v3, ","

    .line 515
    .line 516
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    aget-wide v5, v2, v5

    .line 520
    .line 521
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    goto :goto_6

    .line 529
    :goto_7
    new-instance v2, Lw2/l;

    .line 530
    .line 531
    const/4 v13, 0x0

    .line 532
    move-object v6, v2

    .line 533
    move-object v7, v0

    .line 534
    invoke-direct/range {v6 .. v13}, Lw2/l;-><init>(Ljava/lang/Object;Landroid/widget/ProgressBar;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 538
    .line 539
    .line 540
    return-void

    .line 541
    :pswitch_5
    iget-object v0, v1, Ln1/b0;->c:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v0, Ln1/a0;

    .line 544
    .line 545
    iget-object v2, v1, Ln1/b0;->b:Ljava/lang/Object;

    .line 546
    .line 547
    check-cast v2, Ljava/lang/String;

    .line 548
    .line 549
    iget-object v3, v1, Ln1/b0;->d:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v3, Ln1/m;

    .line 552
    .line 553
    iget-object v4, v1, Ln1/b0;->e:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v4, Lj5/a;

    .line 556
    .line 557
    iget-object v6, v1, Ln1/b0;->f:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast v6, Lm1/x;

    .line 560
    .line 561
    const-string v7, "$this_enqueueUniquelyNamedPeriodic"

    .line 562
    .line 563
    invoke-static {v0, v7}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    const-string v7, "$name"

    .line 567
    .line 568
    invoke-static {v2, v7}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    const-string v7, "$operation"

    .line 572
    .line 573
    invoke-static {v3, v7}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    const-string v7, "$enqueueNew"

    .line 577
    .line 578
    invoke-static {v4, v7}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    const-string v7, "$workRequest"

    .line 582
    .line 583
    invoke-static {v6, v7}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    iget-object v7, v0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 587
    .line 588
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 589
    .line 590
    .line 591
    move-result-object v7

    .line 592
    invoke-virtual {v7, v2}, Lv1/r;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 593
    .line 594
    .line 595
    move-result-object v8

    .line 596
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 597
    .line 598
    .line 599
    move-result v9

    .line 600
    if-le v9, v5, :cond_8

    .line 601
    .line 602
    new-instance v0, Lm1/q;

    .line 603
    .line 604
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 605
    .line 606
    const-string v4, "Can\'t apply UPDATE policy to the chains of work."

    .line 607
    .line 608
    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-direct {v0, v2}, Lm1/q;-><init>(Ljava/lang/Throwable;)V

    .line 612
    .line 613
    .line 614
    :goto_8
    invoke-virtual {v3, v0}, Ln1/m;->a(Lv1/f;)V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_a

    .line 618
    .line 619
    :cond_8
    invoke-static {v8}, Lx4/m;->x0(Ljava/util/List;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v5

    .line 623
    check-cast v5, Lv1/o;

    .line 624
    .line 625
    if-nez v5, :cond_9

    .line 626
    .line 627
    :goto_9
    invoke-interface {v4}, Lj5/a;->invoke()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    goto/16 :goto_a

    .line 631
    .line 632
    :cond_9
    iget-object v8, v5, Lv1/o;->a:Ljava/lang/String;

    .line 633
    .line 634
    invoke-virtual {v7, v8}, Lv1/r;->h(Ljava/lang/String;)Lv1/p;

    .line 635
    .line 636
    .line 637
    move-result-object v9

    .line 638
    if-nez v9, :cond_a

    .line 639
    .line 640
    new-instance v0, Lm1/q;

    .line 641
    .line 642
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 643
    .line 644
    new-instance v5, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    const-string v6, "WorkSpec with "

    .line 647
    .line 648
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    const-string v6, ", that matches a name \""

    .line 655
    .line 656
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    const-string v2, "\", wasn\'t found"

    .line 663
    .line 664
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-direct {v0, v4}, Lm1/q;-><init>(Ljava/lang/Throwable;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v3, v0}, Ln1/m;->a(Lv1/f;)V

    .line 678
    .line 679
    .line 680
    goto :goto_a

    .line 681
    :cond_a
    invoke-virtual {v9}, Lv1/p;->d()Z

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    if-nez v2, :cond_b

    .line 686
    .line 687
    new-instance v0, Lm1/q;

    .line 688
    .line 689
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 690
    .line 691
    const-string v4, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    .line 692
    .line 693
    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-direct {v0, v2}, Lm1/q;-><init>(Ljava/lang/Throwable;)V

    .line 697
    .line 698
    .line 699
    goto :goto_8

    .line 700
    :cond_b
    const/4 v2, 0x6

    .line 701
    iget v9, v5, Lv1/o;->b:I

    .line 702
    .line 703
    if-ne v9, v2, :cond_c

    .line 704
    .line 705
    invoke-virtual {v7, v8}, Lv1/r;->a(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    goto :goto_9

    .line 709
    :cond_c
    iget-object v10, v6, Lm1/x;->b:Lv1/p;

    .line 710
    .line 711
    iget-object v11, v5, Lv1/o;->a:Ljava/lang/String;

    .line 712
    .line 713
    const/4 v13, 0x0

    .line 714
    const/4 v14, 0x0

    .line 715
    const/4 v15, 0x0

    .line 716
    const-wide/16 v16, 0x0

    .line 717
    .line 718
    const/16 v18, 0x0

    .line 719
    .line 720
    const v19, 0xffffe

    .line 721
    .line 722
    .line 723
    const/4 v12, 0x0

    .line 724
    invoke-static/range {v10 .. v19}, Lv1/p;->b(Lv1/p;Ljava/lang/String;ILjava/lang/String;Lm1/e;IJII)Lv1/p;

    .line 725
    .line 726
    .line 727
    move-result-object v24

    .line 728
    :try_start_1
    iget-object v2, v0, Ln1/a0;->h:Ln1/p;

    .line 729
    .line 730
    const-string v4, "processor"

    .line 731
    .line 732
    invoke-static {v2, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    iget-object v4, v0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 736
    .line 737
    const-string v5, "workDatabase"

    .line 738
    .line 739
    invoke-static {v4, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    iget-object v5, v0, Ln1/a0;->d:Lm1/b;

    .line 743
    .line 744
    const-string v7, "configuration"

    .line 745
    .line 746
    invoke-static {v5, v7}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    iget-object v0, v0, Ln1/a0;->g:Ljava/util/List;

    .line 750
    .line 751
    const-string v7, "schedulers"

    .line 752
    .line 753
    invoke-static {v0, v7}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    iget-object v6, v6, Lm1/x;->c:Ljava/util/Set;

    .line 757
    .line 758
    move-object/from16 v20, v2

    .line 759
    .line 760
    move-object/from16 v21, v4

    .line 761
    .line 762
    move-object/from16 v22, v5

    .line 763
    .line 764
    move-object/from16 v23, v0

    .line 765
    .line 766
    move-object/from16 v25, v6

    .line 767
    .line 768
    invoke-static/range {v20 .. v25}, Landroidx/lifecycle/k;->m(Ln1/p;Landroidx/work/impl/WorkDatabase;Lm1/b;Ljava/util/List;Lv1/p;Ljava/util/Set;)V

    .line 769
    .line 770
    .line 771
    sget-object v0, Lm1/t;->a:Lm1/s;

    .line 772
    .line 773
    invoke-virtual {v3, v0}, Ln1/m;->a(Lv1/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    .line 775
    .line 776
    goto :goto_a

    .line 777
    :catchall_0
    move-exception v0

    .line 778
    new-instance v2, Lm1/q;

    .line 779
    .line 780
    invoke-direct {v2, v0}, Lm1/q;-><init>(Ljava/lang/Throwable;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v3, v2}, Ln1/m;->a(Lv1/f;)V

    .line 784
    .line 785
    .line 786
    :goto_a
    return-void

    .line 787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
