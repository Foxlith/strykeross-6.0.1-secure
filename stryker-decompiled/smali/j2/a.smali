.class public final synthetic Lj2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lj2/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lj2/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v0, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/zalexdev/stryker/MainActivity;->n()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 18
    .line 19
    iput-boolean v3, v0, Lcom/zalexdev/stryker/MainActivity;->c:Z

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/zalexdev/stryker/MainActivity;->k()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v4, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_7

    .line 34
    .line 35
    sget-boolean v0, Lg/a;->b:Z

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_0
    const-string v0, "stryker_promo"

    .line 42
    .line 43
    invoke-virtual {v4, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string v0, "launches"

    .line 48
    .line 49
    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    add-int/2addr v6, v2

    .line 54
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-interface {v7, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    .line 64
    .line 65
    if-ge v6, v1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "github_done"

    .line 74
    .line 75
    invoke-interface {v5, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_2
    const-string v1, "blog_done"

    .line 89
    .line 90
    invoke-interface {v5, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    new-instance v1, Ljava/util/Random;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 113
    .line 114
    .line 115
    const/16 v3, 0x64

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    const/16 v6, 0x1e

    .line 122
    .line 123
    if-lt v3, v6, :cond_5

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    sput-boolean v2, Lg/a;->b:Z

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/Integer;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_6

    .line 147
    .line 148
    const-string v6, "github_done"

    .line 149
    .line 150
    const v7, 0x7f130567

    .line 151
    .line 152
    .line 153
    const v8, 0x7f130566

    .line 154
    .line 155
    .line 156
    const v9, 0x7f130565

    .line 157
    .line 158
    .line 159
    const-string v10, "https://github.com/zalexdev/strykerapp"

    .line 160
    .line 161
    :goto_0
    invoke-static/range {v4 .. v10}, Lg/a;->D(Lcom/zalexdev/stryker/MainActivity;Landroid/content/SharedPreferences;Ljava/lang/String;IIILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    const-string v6, "blog_done"

    .line 166
    .line 167
    const v7, 0x7f130564

    .line 168
    .line 169
    .line 170
    const v8, 0x7f130563

    .line 171
    .line 172
    .line 173
    const v9, 0x7f130562

    .line 174
    .line 175
    .line 176
    const-string v10, "https://zalexdev.com"

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_7
    :goto_1
    return-void

    .line 180
    :pswitch_2
    iget-object v0, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 181
    .line 182
    iget-object v0, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 183
    .line 184
    invoke-virtual {v0}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_3
    iget-object v0, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 189
    .line 190
    iget-object v1, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 191
    .line 192
    if-eqz v1, :cond_8

    .line 193
    .line 194
    const-string v2, "msf"

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_8

    .line 201
    .line 202
    new-instance v1, Lz3/d;

    .line 203
    .line 204
    invoke-direct {v1, v0}, Lz3/d;-><init>(Landroid/content/Context;)V

    .line 205
    .line 206
    .line 207
    iput-object v1, v0, Lcom/zalexdev/stryker/MainActivity;->f:Lz3/d;

    .line 208
    .line 209
    :cond_8
    iget-object v0, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 210
    .line 211
    if-eqz v0, :cond_9

    .line 212
    .line 213
    const-string v1, "/data/data/com.zalexdev.stryker/files"

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ll4/l;->i(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_9
    return-void

    .line 219
    :pswitch_4
    iget-object v0, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 222
    .line 223
    invoke-virtual {v0}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_5
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 228
    .line 229
    iget-object v0, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    new-instance v1, Landroid/os/Handler;

    .line 235
    .line 236
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    .line 242
    .line 243
    new-instance v2, Lj2/a;

    .line 244
    .line 245
    const/4 v4, 0x7

    .line 246
    invoke-direct {v2, v0, v4}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 247
    .line 248
    .line 249
    const-wide/16 v4, 0x5dc

    .line 250
    .line 251
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    .line 253
    .line 254
    new-instance v6, Ljava/util/Timer;

    .line 255
    .line 256
    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 257
    .line 258
    .line 259
    new-instance v7, Lj2/m;

    .line 260
    .line 261
    invoke-direct {v7, v0, v3}, Lj2/m;-><init>(Landroid/content/ContextWrapper;I)V

    .line 262
    .line 263
    .line 264
    const-wide/16 v8, 0x0

    .line 265
    .line 266
    const-wide/16 v10, 0x12c

    .line 267
    .line 268
    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :pswitch_6
    iget-object v0, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 275
    .line 276
    const-string v1, "/data/data/com.zalexdev.stryker/files/Stryker.apk"

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ll4/l;->s(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_7
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 283
    .line 284
    iget-object v0, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 285
    .line 286
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    const/4 v4, 0x0

    .line 291
    :try_start_0
    const-string v5, ""

    .line 292
    .line 293
    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_2

    .line 298
    :catch_0
    move-object v5, v4

    .line 299
    :goto_2
    if-eqz v5, :cond_11

    .line 300
    .line 301
    array-length v6, v5

    .line 302
    move v7, v3

    .line 303
    :goto_3
    if-ge v7, v6, :cond_11

    .line 304
    .line 305
    aget-object v8, v5, v7

    .line 306
    .line 307
    const-string v9, "busybox64"

    .line 308
    .line 309
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    if-eqz v9, :cond_a

    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_a
    const-string v9, "rootless"

    .line 317
    .line 318
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    if-eqz v9, :cond_b

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_b
    :try_start_1
    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 326
    .line 327
    .line 328
    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 329
    :try_start_2
    new-instance v10, Ljava/io/File;

    .line 330
    .line 331
    const-string v11, "/data/data/com.zalexdev.stryker/files/"

    .line 332
    .line 333
    invoke-direct {v10, v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    new-instance v8, Ljava/io/FileOutputStream;

    .line 337
    .line 338
    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    .line 340
    .line 341
    const/16 v11, 0x400

    .line 342
    .line 343
    :try_start_3
    new-array v11, v11, [B

    .line 344
    .line 345
    :goto_4
    invoke-virtual {v9, v11}, Ljava/io/InputStream;->read([B)I

    .line 346
    .line 347
    .line 348
    move-result v12

    .line 349
    const/4 v13, -0x1

    .line 350
    if-eq v12, v13, :cond_c

    .line 351
    .line 352
    invoke-virtual {v8, v11, v3, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 353
    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_c
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 357
    .line 358
    .line 359
    :try_start_4
    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 360
    .line 361
    .line 362
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 363
    .line 364
    .line 365
    goto :goto_8

    .line 366
    :catchall_0
    move-exception v0

    .line 367
    move-object v8, v4

    .line 368
    :goto_5
    move-object v4, v9

    .line 369
    goto :goto_6

    .line 370
    :catch_1
    move-object v8, v4

    .line 371
    goto :goto_7

    .line 372
    :catchall_1
    move-exception v0

    .line 373
    goto :goto_5

    .line 374
    :catchall_2
    move-exception v0

    .line 375
    move-object v8, v4

    .line 376
    :goto_6
    if-eqz v4, :cond_d

    .line 377
    .line 378
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 379
    .line 380
    .line 381
    :catch_2
    :cond_d
    if-eqz v8, :cond_e

    .line 382
    .line 383
    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 384
    .line 385
    .line 386
    :catch_3
    :cond_e
    throw v0

    .line 387
    :catch_4
    move-object v8, v4

    .line 388
    move-object v9, v8

    .line 389
    :catch_5
    :goto_7
    if-eqz v9, :cond_f

    .line 390
    .line 391
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 392
    .line 393
    .line 394
    :catch_6
    :cond_f
    if-eqz v8, :cond_10

    .line 395
    .line 396
    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 397
    .line 398
    .line 399
    :catch_7
    :cond_10
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 400
    .line 401
    goto :goto_3

    .line 402
    :cond_11
    invoke-static {v0, v3}, Ll4/l;->v(Landroid/content/Context;Z)Z

    .line 403
    .line 404
    .line 405
    return-void

    .line 406
    :pswitch_8
    iget-object v0, p0, Lj2/a;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 407
    .line 408
    iget-object v2, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 409
    .line 410
    const-string v4, "/data/local/stryker/release/usr"

    .line 411
    .line 412
    invoke-virtual {v2, v4}, Ll4/l;->d(Ljava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-nez v2, :cond_12

    .line 417
    .line 418
    iput-boolean v3, v0, Lcom/zalexdev/stryker/MainActivity;->n:Z

    .line 419
    .line 420
    new-instance v1, Landroid/content/Intent;

    .line 421
    .line 422
    const-class v2, Lcom/zalexdev/stryker/appintro/AppIntroActivity;

    .line 423
    .line 424
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    .line 426
    .line 427
    const-string v2, "update"

    .line 428
    .line 429
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 433
    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_12
    iget-object v2, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 437
    .line 438
    invoke-virtual {v2}, Ll4/l;->Q()Ljava/lang/Boolean;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    const/16 v3, 0xb

    .line 447
    .line 448
    if-nez v2, :cond_15

    .line 449
    .line 450
    iget-object v2, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 451
    .line 452
    const-string v4, "/data/data/com.zalexdev.stryker/files/bootroot"

    .line 453
    .line 454
    invoke-virtual {v2, v4}, Ll4/l;->r(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2}, Ll4/l;->Q()Ljava/lang/Boolean;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    if-eqz v4, :cond_13

    .line 466
    .line 467
    :try_start_a
    invoke-static {v2}, Li5/a;->F(Ll4/l;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 468
    .line 469
    .line 470
    :catchall_3
    :cond_13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_14

    .line 479
    .line 480
    goto :goto_9

    .line 481
    :cond_14
    new-instance v1, Lcom/zalexdev/stryker/Error;

    .line 482
    .line 483
    invoke-direct {v1}, Lcom/zalexdev/stryker/Error;-><init>()V

    .line 484
    .line 485
    .line 486
    new-instance v2, Lf/n0;

    .line 487
    .line 488
    invoke-direct {v2, v0, v1, v3}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 492
    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_15
    :goto_9
    new-instance v2, Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 496
    .line 497
    invoke-direct {v2}, Lcom/zalexdev/stryker/dashboard/Dashboard;-><init>()V

    .line 498
    .line 499
    .line 500
    new-instance v4, Lf/n0;

    .line 501
    .line 502
    invoke-direct {v4, v0, v2, v3}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 506
    .line 507
    .line 508
    new-instance v2, Lj2/a;

    .line 509
    .line 510
    invoke-direct {v2, v0, v1}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Lcom/zalexdev/stryker/MainActivity;->j()Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-nez v1, :cond_16

    .line 521
    .line 522
    new-instance v1, Ljava/lang/Thread;

    .line 523
    .line 524
    new-instance v2, Lj2/a;

    .line 525
    .line 526
    const/4 v3, 0x4

    .line 527
    invoke-direct {v2, v0, v3}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 528
    .line 529
    .line 530
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 534
    .line 535
    .line 536
    :cond_16
    new-instance v1, Ljava/lang/Thread;

    .line 537
    .line 538
    new-instance v2, Lj2/a;

    .line 539
    .line 540
    const/4 v3, 0x5

    .line 541
    invoke-direct {v2, v0, v3}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 542
    .line 543
    .line 544
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 548
    .line 549
    .line 550
    :goto_a
    return-void

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
