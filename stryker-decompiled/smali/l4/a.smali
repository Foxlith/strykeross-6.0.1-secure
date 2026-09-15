.class public final synthetic Ll4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll4/c;


# direct methods
.method public synthetic constructor <init>(Ll4/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll4/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll4/a;->b:Ll4/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Ll4/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll4/a;->b:Ll4/c;

    .line 7
    .line 8
    iget-object v1, v0, Ll4/c;->l:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ll4/c;->b(Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Ll4/a;->b:Ll4/c;

    .line 15
    .line 16
    invoke-virtual {v0}, Ll4/c;->d()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget-object v0, p0, Ll4/a;->b:Ll4/c;

    .line 21
    .line 22
    iget-object v1, v0, Ll4/c;->l:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ll4/c;->b(Ljava/util/ArrayList;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_2
    iget-object v0, p0, Ll4/a;->b:Ll4/c;

    .line 29
    .line 30
    invoke-virtual {v0}, Ll4/c;->d()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_3
    iget-object v0, p0, Ll4/a;->b:Ll4/c;

    .line 35
    .line 36
    iget-boolean v1, v0, Ll4/c;->r:Z

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iput-boolean v2, v0, Ll4/c;->n:Z

    .line 42
    .line 43
    goto/16 :goto_e

    .line 44
    .line 45
    :cond_0
    iget-boolean v1, v0, Ll4/c;->p:Z

    .line 46
    .line 47
    const-string v3, "JOBFINISHED"

    .line 48
    .line 49
    const-string v4, "STRYKER:"

    .line 50
    .line 51
    const/4 v5, 0x3

    .line 52
    const/4 v6, 0x2

    .line 53
    const/4 v7, 0x1

    .line 54
    if-eqz v1, :cond_8

    .line 55
    .line 56
    iget-object v1, v0, Ll4/c;->a:Landroid/app/Activity;

    .line 57
    .line 58
    new-instance v8, Ll4/a;

    .line 59
    .line 60
    invoke-direct {v8, v0, v5}, Ll4/a;-><init>(Ll4/c;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Ll4/c;->m:Lu3/g;

    .line 67
    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v9, "Rootless command: "

    .line 71
    .line 72
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v9, v0, Ll4/c;->h:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    iget-object v9, v0, Ll4/c;->i:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v7, v8, v9}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :try_start_0
    iget-boolean v1, v0, Ll4/c;->r:Z

    .line 90
    .line 91
    if-nez v1, :cond_5

    .line 92
    .line 93
    iget-object v1, v0, Ll4/c;->d:Ll4/l;

    .line 94
    .line 95
    iget-object v1, v1, Ll4/l;->c:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v1}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v8, v0, Ll4/c;->h:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v1, v8}, Lu2/h;->t(Ljava/lang/String;)Lu2/b;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, v0, Ll4/c;->q:Lu2/b;

    .line 108
    .line 109
    :goto_0
    iget-boolean v1, v0, Ll4/c;->r:Z

    .line 110
    .line 111
    if-nez v1, :cond_5

    .line 112
    .line 113
    iget-object v1, v0, Ll4/c;->q:Lu2/b;

    .line 114
    .line 115
    iget-object v1, v1, Lu2/b;->c:Ljava/io/BufferedReader;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    const-string v8, "__STRYKER_EXIT__"

    .line 124
    .line 125
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-nez v8, :cond_2

    .line 141
    .line 142
    iget-object v8, v0, Ll4/c;->a:Landroid/app/Activity;

    .line 143
    .line 144
    new-instance v9, Ll4/b;

    .line 145
    .line 146
    invoke-direct {v9, v0, v1, v7}, Ll4/b;-><init>(Ll4/c;Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catchall_0
    move-exception v1

    .line 154
    goto :goto_6

    .line 155
    :catch_0
    move-exception v1

    .line 156
    goto :goto_4

    .line 157
    :cond_2
    :goto_1
    iget-boolean v8, v0, Ll4/c;->o:Z

    .line 158
    .line 159
    if-nez v8, :cond_3

    .line 160
    .line 161
    iget-object v8, v0, Ll4/c;->m:Lu3/g;

    .line 162
    .line 163
    iget-object v9, v0, Ll4/c;->i:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v8, v6, v1, v9}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-eqz v8, :cond_4

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_4
    iget-object v8, v0, Ll4/c;->l:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_5
    :goto_2
    iget-object v1, v0, Ll4/c;->q:Lu2/b;

    .line 182
    .line 183
    if-eqz v1, :cond_6

    .line 184
    .line 185
    :goto_3
    iget-object v1, v0, Ll4/c;->q:Lu2/b;

    .line 186
    .line 187
    invoke-virtual {v1}, Lu2/b;->a()V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :goto_4
    :try_start_1
    iget-object v3, v0, Ll4/c;->m:Lu3/g;

    .line 192
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v6, "Rootless exec failed (VM not reachable?): "

    .line 199
    .line 200
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iget-object v4, v0, Ll4/c;->i:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v3, v5, v1, v4}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Ll4/c;->q:Lu2/b;

    .line 220
    .line 221
    if-eqz v1, :cond_6

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_6
    :goto_5
    iget-object v1, v0, Ll4/c;->a:Landroid/app/Activity;

    .line 225
    .line 226
    new-instance v3, Ll4/a;

    .line 227
    .line 228
    const/4 v4, 0x4

    .line 229
    invoke-direct {v3, v0, v4}, Ll4/a;-><init>(Ll4/c;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    .line 234
    .line 235
    iput-boolean v2, v0, Ll4/c;->n:Z

    .line 236
    .line 237
    goto/16 :goto_e

    .line 238
    .line 239
    :goto_6
    iget-object v2, v0, Ll4/c;->q:Lu2/b;

    .line 240
    .line 241
    if-eqz v2, :cond_7

    .line 242
    .line 243
    iget-object v0, v0, Ll4/c;->q:Lu2/b;

    .line 244
    .line 245
    invoke-virtual {v0}, Lu2/b;->a()V

    .line 246
    .line 247
    .line 248
    :cond_7
    throw v1

    .line 249
    :cond_8
    iget-object v1, v0, Ll4/c;->d:Ll4/l;

    .line 250
    .line 251
    invoke-virtual {v1}, Ll4/l;->w()Ljava/lang/Process;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iput-object v1, v0, Ll4/c;->c:Ljava/lang/Process;

    .line 256
    .line 257
    iget-boolean v1, v0, Ll4/c;->r:Z

    .line 258
    .line 259
    if-eqz v1, :cond_9

    .line 260
    .line 261
    :try_start_2
    iget-object v1, v0, Ll4/c;->c:Ljava/lang/Process;

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 264
    .line 265
    .line 266
    :catch_1
    :goto_7
    iput-boolean v2, v0, Ll4/c;->n:Z

    .line 267
    .line 268
    goto/16 :goto_e

    .line 269
    .line 270
    :cond_9
    iget-object v1, v0, Ll4/c;->c:Ljava/lang/Process;

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    iput-object v1, v0, Ll4/c;->e:Ljava/io/InputStream;

    .line 277
    .line 278
    iget-object v1, v0, Ll4/c;->c:Ljava/lang/Process;

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    iput-object v1, v0, Ll4/c;->f:Ljava/io/InputStream;

    .line 285
    .line 286
    iget-object v1, v0, Ll4/c;->c:Ljava/lang/Process;

    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    iput-object v1, v0, Ll4/c;->g:Ljava/io/OutputStream;

    .line 293
    .line 294
    iget-object v1, v0, Ll4/c;->a:Landroid/app/Activity;

    .line 295
    .line 296
    new-instance v8, Ll4/a;

    .line 297
    .line 298
    invoke-direct {v8, v0, v7}, Ll4/a;-><init>(Ll4/c;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v0, Ll4/c;->h:Ljava/lang/String;

    .line 305
    .line 306
    iget-boolean v8, v0, Ll4/c;->p:Z

    .line 307
    .line 308
    if-eqz v8, :cond_a

    .line 309
    .line 310
    goto :goto_a

    .line 311
    :cond_a
    :try_start_3
    iget-boolean v8, v0, Ll4/c;->j:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 312
    .line 313
    const-string v9, "\n"

    .line 314
    .line 315
    const-string v10, "exit\n"

    .line 316
    .line 317
    if-eqz v8, :cond_b

    .line 318
    .line 319
    :try_start_4
    iget-object v8, v0, Ll4/c;->g:Ljava/io/OutputStream;

    .line 320
    .line 321
    const-string v11, "/data/data/com.zalexdev.stryker/files/chroot_exec \'bash\'\n"

    .line 322
    .line 323
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    .line 324
    .line 325
    .line 326
    move-result-object v11

    .line 327
    invoke-virtual {v8, v11}, Ljava/io/OutputStream;->write([B)V

    .line 328
    .line 329
    .line 330
    iget-object v8, v0, Ll4/c;->g:Ljava/io/OutputStream;

    .line 331
    .line 332
    new-instance v11, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Ll4/c;->g:Ljava/io/OutputStream;

    .line 355
    .line 356
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    invoke-virtual {v1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v0, Ll4/c;->g:Ljava/io/OutputStream;

    .line 364
    .line 365
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    invoke-virtual {v1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 370
    .line 371
    .line 372
    goto :goto_8

    .line 373
    :catch_2
    move-exception v1

    .line 374
    goto :goto_9

    .line 375
    :cond_b
    iget-object v8, v0, Ll4/c;->g:Ljava/io/OutputStream;

    .line 376
    .line 377
    new-instance v11, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V

    .line 397
    .line 398
    .line 399
    iget-object v1, v0, Ll4/c;->g:Ljava/io/OutputStream;

    .line 400
    .line 401
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    invoke-virtual {v1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 406
    .line 407
    .line 408
    :goto_8
    iget-object v1, v0, Ll4/c;->g:Ljava/io/OutputStream;

    .line 409
    .line 410
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 411
    .line 412
    .line 413
    goto :goto_a

    .line 414
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 415
    .line 416
    .line 417
    :goto_a
    iget-object v1, v0, Ll4/c;->m:Lu3/g;

    .line 418
    .line 419
    new-instance v8, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v9, "Command: "

    .line 422
    .line 423
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    iget-object v9, v0, Ll4/c;->h:Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    iget-object v9, v0, Ll4/c;->i:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v1, v7, v8, v9}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    new-instance v1, Ljava/io/BufferedReader;

    .line 441
    .line 442
    new-instance v7, Ljava/io/InputStreamReader;

    .line 443
    .line 444
    iget-object v8, v0, Ll4/c;->e:Ljava/io/InputStream;

    .line 445
    .line 446
    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 447
    .line 448
    .line 449
    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 450
    .line 451
    .line 452
    :goto_b
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    if-eqz v7, :cond_f

    .line 457
    .line 458
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 463
    .line 464
    .line 465
    move-result v8

    .line 466
    if-nez v8, :cond_c

    .line 467
    .line 468
    iget-object v8, v0, Ll4/c;->a:Landroid/app/Activity;

    .line 469
    .line 470
    new-instance v9, Ll4/b;

    .line 471
    .line 472
    invoke-direct {v9, v0, v7, v2}, Ll4/b;-><init>(Ll4/c;Ljava/lang/String;I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 476
    .line 477
    .line 478
    :cond_c
    iget-boolean v8, v0, Ll4/c;->o:Z

    .line 479
    .line 480
    if-nez v8, :cond_d

    .line 481
    .line 482
    iget-object v8, v0, Ll4/c;->m:Lu3/g;

    .line 483
    .line 484
    iget-object v9, v0, Ll4/c;->i:Ljava/lang/String;

    .line 485
    .line 486
    invoke-virtual {v8, v6, v7, v9}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    :cond_d
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 490
    .line 491
    .line 492
    move-result v8

    .line 493
    if-eqz v8, :cond_e

    .line 494
    .line 495
    iget-object v8, v0, Ll4/c;->c:Ljava/lang/Process;

    .line 496
    .line 497
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 498
    .line 499
    .line 500
    :cond_e
    iget-object v8, v0, Ll4/c;->l:Ljava/util/ArrayList;

    .line 501
    .line 502
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 503
    .line 504
    .line 505
    goto :goto_b

    .line 506
    :catch_3
    :cond_f
    new-instance v1, Ljava/io/BufferedReader;

    .line 507
    .line 508
    new-instance v3, Ljava/io/InputStreamReader;

    .line 509
    .line 510
    iget-object v4, v0, Ll4/c;->f:Ljava/io/InputStream;

    .line 511
    .line 512
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 513
    .line 514
    .line 515
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 516
    .line 517
    .line 518
    :goto_c
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    if-eqz v3, :cond_11

    .line 523
    .line 524
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    iget-boolean v4, v0, Ll4/c;->o:Z

    .line 529
    .line 530
    if-nez v4, :cond_10

    .line 531
    .line 532
    iget-object v4, v0, Ll4/c;->m:Lu3/g;

    .line 533
    .line 534
    iget-object v7, v0, Ll4/c;->i:Ljava/lang/String;

    .line 535
    .line 536
    invoke-virtual {v4, v5, v3, v7}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    :cond_10
    iget-object v4, v0, Ll4/c;->l:Ljava/util/ArrayList;

    .line 540
    .line 541
    new-instance v7, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .line 545
    .line 546
    const-string v8, "[E] "

    .line 547
    .line 548
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 559
    .line 560
    .line 561
    goto :goto_c

    .line 562
    :catch_4
    :cond_11
    :try_start_7
    iget-object v1, v0, Ll4/c;->c:Ljava/lang/Process;

    .line 563
    .line 564
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5

    .line 565
    .line 566
    .line 567
    goto :goto_d

    .line 568
    :catch_5
    move-exception v1

    .line 569
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 570
    .line 571
    .line 572
    :goto_d
    iget-object v1, v0, Ll4/c;->c:Ljava/lang/Process;

    .line 573
    .line 574
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 575
    .line 576
    .line 577
    iget-object v1, v0, Ll4/c;->a:Landroid/app/Activity;

    .line 578
    .line 579
    new-instance v3, Ll4/a;

    .line 580
    .line 581
    invoke-direct {v3, v0, v6}, Ll4/a;-><init>(Ll4/c;I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_7

    .line 588
    .line 589
    :goto_e
    return-void

    .line 590
    nop

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
