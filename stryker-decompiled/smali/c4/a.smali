.class public final Lc4/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lg3/b;

.field public final c:Ll4/l;

.field public d:Ljava/lang/Process;

.field public volatile e:Lu2/b;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lg3/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lc4/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lc4/a;->b:Lg3/b;

    new-instance p1, Ll4/l;

    invoke-direct {p1, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lc4/a;->c:Ll4/l;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "/data/data/com.zalexdev.stryker/files/chroot_exec \'"

    .line 4
    .line 5
    iget-object v0, p0, Lc4/a;->c:Ll4/l;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    iget-object p1, p0, Lc4/a;->a:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, " "

    .line 23
    .line 24
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, " -su "

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_6

    .line 48
    .line 49
    const-string v0, " -o "

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    const-string v0, " -sn "

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_6

    .line 64
    .line 65
    const-string v0, " -pe "

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_6

    .line 72
    .line 73
    const-string v0, " -pp "

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    const-string v0, " -pm "

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    const-string v0, " -so "

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_6

    .line 96
    .line 97
    const-string v0, " -ss "

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    const-string v0, " -sa "

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    const-string v0, " arp-scan "

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_0

    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_0
    :try_start_0
    iget-object p1, p0, Lc4/a;->c:Ll4/l;

    .line 124
    .line 125
    iget-object p1, p1, Ll4/l;->c:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {p1}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object v0, p0, Lc4/a;->a:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lu2/h;->t(Ljava/lang/String;)Lu2/b;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lc4/a;->e:Lu2/b;

    .line 138
    .line 139
    iget-object p1, p0, Lc4/a;->e:Lu2/b;

    .line 140
    .line 141
    iget-object p1, p1, Lu2/b;->c:Ljava/io/BufferedReader;

    .line 142
    .line 143
    :goto_0
    iget-boolean v0, p0, Lc4/a;->f:Z

    .line 144
    .line 145
    if-nez v0, :cond_2

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    .line 153
    const-string v3, "__STRYKER_EXIT__"

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    if-eqz v3, :cond_1

    .line 160
    .line 161
    const/16 p1, 0x10

    .line 162
    .line 163
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    if-nez p1, :cond_2

    .line 176
    .line 177
    move p1, v1

    .line 178
    goto :goto_1

    .line 179
    :catchall_0
    move-exception p1

    .line 180
    goto :goto_4

    .line 181
    :catch_0
    move-exception p1

    .line 182
    goto :goto_2

    .line 183
    :cond_1
    :try_start_2
    filled-new-array {v0}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :catch_1
    :cond_2
    move p1, v2

    .line 192
    :goto_1
    iget-object v0, p0, Lc4/a;->e:Lu2/b;

    .line 193
    .line 194
    if-eqz v0, :cond_3

    .line 195
    .line 196
    :try_start_3
    iget-object v0, p0, Lc4/a;->e:Lu2/b;

    .line 197
    .line 198
    invoke-virtual {v0}, Lu2/b;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 199
    .line 200
    .line 201
    :catch_2
    :cond_3
    if-eqz p1, :cond_4

    .line 202
    .line 203
    iget-boolean p1, p0, Lc4/a;->f:Z

    .line 204
    .line 205
    if-nez p1, :cond_4

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lc4/a;->e:Lu2/b;

    .line 212
    .line 213
    if-eqz p1, :cond_4

    .line 214
    .line 215
    :try_start_5
    iget-object p1, p0, Lc4/a;->e:Lu2/b;

    .line 216
    .line 217
    invoke-virtual {p1}, Lu2/b;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 218
    .line 219
    .line 220
    :catch_3
    :cond_4
    move v1, v2

    .line 221
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    goto/16 :goto_d

    .line 226
    .line 227
    :goto_4
    iget-object v0, p0, Lc4/a;->e:Lu2/b;

    .line 228
    .line 229
    if-eqz v0, :cond_5

    .line 230
    .line 231
    :try_start_6
    iget-object v0, p0, Lc4/a;->e:Lu2/b;

    .line 232
    .line 233
    invoke-virtual {v0}, Lu2/b;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 234
    .line 235
    .line 236
    :catch_4
    :cond_5
    throw p1

    .line 237
    :cond_6
    :goto_5
    const-string p1, "[stryker] Raw-socket/L2 scan needs an adapter on the LAN (root engine)"

    .line 238
    .line 239
    filled-new-array {p1}, [Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 247
    .line 248
    goto/16 :goto_d

    .line 249
    .line 250
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v3, "su"

    .line 255
    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iput-object v0, p0, Lc4/a;->d:Ljava/lang/Process;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    iget-object v3, p0, Lc4/a;->d:Ljava/lang/Process;

    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    iget-object v4, p0, Lc4/a;->d:Ljava/lang/Process;

    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Lc4/a;->a:Ljava/lang/String;

    .line 284
    .line 285
    const-string v6, "\'"

    .line 286
    .line 287
    const-string v7, "\'\\\'\'"

    .line 288
    .line 289
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string p1, "\' && echo SCAN_DONE_OK || echo SCAN_DONE_ERR"

    .line 297
    .line 298
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const/16 p1, 0xa

    .line 314
    .line 315
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 327
    .line 328
    .line 329
    const-string p1, "exit\n"

    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 342
    .line 343
    .line 344
    new-instance p1, Ljava/io/BufferedReader;

    .line 345
    .line 346
    new-instance v0, Ljava/io/InputStreamReader;

    .line 347
    .line 348
    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 352
    .line 353
    .line 354
    :goto_6
    iget-boolean v0, p0, Lc4/a;->f:Z

    .line 355
    .line 356
    if-nez v0, :cond_9

    .line 357
    .line 358
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    if-eqz v0, :cond_9

    .line 363
    .line 364
    const-string v4, "SCAN_DONE_OK"

    .line 365
    .line 366
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-eqz v4, :cond_8

    .line 371
    .line 372
    move v0, v1

    .line 373
    goto :goto_8

    .line 374
    :cond_8
    const-string v4, "SCAN_DONE_ERR"

    .line 375
    .line 376
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-eqz v4, :cond_a

    .line 381
    .line 382
    :cond_9
    move v0, v2

    .line 383
    goto :goto_8

    .line 384
    :cond_a
    filled-new-array {v0}, [Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5

    .line 389
    .line 390
    .line 391
    goto :goto_6

    .line 392
    :catch_5
    move-exception p1

    .line 393
    :goto_7
    move v0, v2

    .line 394
    goto :goto_a

    .line 395
    :catch_6
    move-exception p1

    .line 396
    goto :goto_7

    .line 397
    :goto_8
    :try_start_8
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 398
    .line 399
    .line 400
    new-instance p1, Ljava/io/BufferedReader;

    .line 401
    .line 402
    new-instance v4, Ljava/io/InputStreamReader;

    .line 403
    .line 404
    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 405
    .line 406
    .line 407
    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 408
    .line 409
    .line 410
    :goto_9
    iget-boolean v3, p0, Lc4/a;->f:Z

    .line 411
    .line 412
    if-nez v3, :cond_b

    .line 413
    .line 414
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    if-eqz v3, :cond_b

    .line 419
    .line 420
    new-array v4, v1, [Ljava/lang/String;

    .line 421
    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string v6, "[stderr] "

    .line 428
    .line 429
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    aput-object v3, v4, v2

    .line 440
    .line 441
    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    goto :goto_9

    .line 445
    :catch_7
    move-exception p1

    .line 446
    goto :goto_a

    .line 447
    :catch_8
    move-exception p1

    .line 448
    goto :goto_a

    .line 449
    :cond_b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 450
    .line 451
    .line 452
    iget-object p1, p0, Lc4/a;->d:Ljava/lang/Process;

    .line 453
    .line 454
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    .line 455
    .line 456
    .line 457
    iget-object p1, p0, Lc4/a;->d:Ljava/lang/Process;

    .line 458
    .line 459
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7

    .line 460
    .line 461
    .line 462
    goto :goto_b

    .line 463
    :goto_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    :goto_b
    if-eqz v0, :cond_c

    .line 467
    .line 468
    iget-boolean p1, p0, Lc4/a;->f:Z

    .line 469
    .line 470
    if-nez p1, :cond_c

    .line 471
    .line 472
    goto :goto_c

    .line 473
    :cond_c
    move v1, v2

    .line 474
    :goto_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    :goto_d
    return-object p1
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p1, p0, Lc4/a;->b:Lg3/b;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lg3/b;->g(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v0, p0, Lc4/a;->b:Lg3/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Lg3/b;->g(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lc4/a;->b:Lg3/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget-object p1, p1, v1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lg3/b;->h(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
