.class public final synthetic Ll4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp2/q;

.field public final synthetic c:Lu3/e;


# direct methods
.method public synthetic constructor <init>(Lp2/q;Lu3/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ll4/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll4/d;->b:Lp2/q;

    .line 7
    .line 8
    iput-object p2, p0, Ll4/d;->c:Lu3/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Ll4/d;->a:I

    .line 2
    .line 3
    const-string v1, "XX:XX:XX:XX:XX:XX"

    .line 4
    .line 5
    const-string v2, "((\\w{2}:){5}\\w{2})"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x2

    .line 9
    iget-object v5, p0, Ll4/d;->c:Lu3/e;

    .line 10
    .line 11
    iget-object v6, p0, Ll4/d;->b:Lp2/q;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/io/BufferedReader;

    .line 20
    .line 21
    new-instance v1, Ljava/io/InputStreamReader;

    .line 22
    .line 23
    iget-object v2, v6, Lp2/q;->b:Ljava/io/InputStream;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    iget-object v2, v6, Lp2/q;->e:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    invoke-virtual {v5, v3, v2, v1}, Lu3/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    :goto_1
    iget-object v2, v6, Lp2/q;->f:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v7, "[E] "

    .line 60
    .line 61
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    sget-object v2, Lp2/q;->i:Landroid/app/Activity;

    .line 75
    .line 76
    new-instance v3, Ll4/e;

    .line 77
    .line 78
    invoke-direct {v3, v6, v1, v4}, Ll4/e;-><init>(Lp2/q;Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void

    .line 89
    :pswitch_0
    const-string v0, "/data/data/com.zalexdev.stryker/files/chroot_exec \'bash\'"

    .line 90
    .line 91
    invoke-virtual {v6, v0}, Lp2/q;->c(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v6, Lp2/q;->d:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_3

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    check-cast v7, Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v5, :cond_2

    .line 113
    .line 114
    iget-object v8, v6, Lp2/q;->e:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v5, v3, v8, v7}, Lu3/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {v6, v7}, Lp2/q;->c(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_3
    const-string v0, "exit"

    .line 124
    .line 125
    invoke-virtual {v6, v0}, Lp2/q;->c(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :try_start_1
    iget-object v0, v6, Lp2/q;->c:Ljava/io/OutputStream;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .line 132
    .line 133
    :catch_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 134
    .line 135
    new-instance v7, Ljava/io/InputStreamReader;

    .line 136
    .line 137
    iget-object v8, v6, Lp2/q;->a:Ljava/io/InputStream;

    .line 138
    .line 139
    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    .line 144
    .line 145
    new-instance v7, Ljava/lang/Thread;

    .line 146
    .line 147
    new-instance v8, Ll4/d;

    .line 148
    .line 149
    invoke-direct {v8, v6, v5, v4}, Ll4/d;-><init>(Lp2/q;Lu3/e;I)V

    .line 150
    .line 151
    .line 152
    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 156
    .line 157
    .line 158
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    if-eqz v7, :cond_6

    .line 163
    .line 164
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    iget-object v8, v6, Lp2/q;->f:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-eqz v9, :cond_4

    .line 186
    .line 187
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    goto :goto_5

    .line 196
    :catch_2
    move-exception v0

    .line 197
    goto :goto_6

    .line 198
    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 199
    .line 200
    iget-object v8, v6, Lp2/q;->e:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v5, v4, v8, v7}, Lu3/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_5
    sget-object v8, Lp2/q;->i:Landroid/app/Activity;

    .line 206
    .line 207
    new-instance v9, Ll4/e;

    .line 208
    .line 209
    invoke-direct {v9, v6, v7, v3}, Ll4/e;-><init>(Lp2/q;Ljava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    .line 218
    .line 219
    :cond_6
    :try_start_3
    sget-object v0, Lp2/q;->k:Ljava/lang/Process;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :catch_3
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    :goto_7
    sget-object v0, Lp2/q;->k:Ljava/lang/Process;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 232
    .line 233
    .line 234
    sget-object v0, Lp2/q;->i:Landroid/app/Activity;

    .line 235
    .line 236
    new-instance v1, Ll4/f;

    .line 237
    .line 238
    invoke-direct {v1, v6, v3}, Ll4/f;-><init>(Lp2/q;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    iget-object v7, v6, Lp2/q;->d:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    if-eqz v8, :cond_8

    .line 261
    .line 262
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    check-cast v8, Ljava/lang/String;

    .line 267
    .line 268
    if-eqz v5, :cond_7

    .line 269
    .line 270
    iget-object v9, v6, Lp2/q;->e:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v5, v3, v9, v8}, Lu3/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const/16 v8, 0xa

    .line 279
    .line 280
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_8
    const/4 v3, 0x0

    .line 285
    :try_start_4
    sget-object v7, Lp2/q;->l:Ll4/l;

    .line 286
    .line 287
    iget-object v7, v7, Ll4/l;->c:Landroid/content/Context;

    .line 288
    .line 289
    invoke-static {v7}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v7, v0}, Lu2/h;->t(Ljava/lang/String;)Lu2/b;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iput-object v0, v6, Lp2/q;->g:Lu2/b;

    .line 302
    .line 303
    :goto_9
    iget-object v0, v6, Lp2/q;->g:Lu2/b;

    .line 304
    .line 305
    iget-object v0, v0, Lu2/b;->c:Ljava/io/BufferedReader;

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz v0, :cond_c

    .line 312
    .line 313
    const-string v7, "__STRYKER_EXIT__"

    .line 314
    .line 315
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-eqz v7, :cond_9

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    iget-object v7, v6, Lp2/q;->f:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    if-eqz v8, :cond_a

    .line 344
    .line 345
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    goto :goto_a

    .line 354
    :catchall_0
    move-exception v0

    .line 355
    goto :goto_f

    .line 356
    :catch_4
    move-exception v0

    .line 357
    goto :goto_d

    .line 358
    :cond_a
    :goto_a
    if-eqz v5, :cond_b

    .line 359
    .line 360
    iget-object v7, v6, Lp2/q;->e:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v5, v4, v7, v0}, Lu3/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :cond_b
    sget-object v7, Lp2/q;->i:Landroid/app/Activity;

    .line 366
    .line 367
    new-instance v8, Ll4/e;

    .line 368
    .line 369
    invoke-direct {v8, v6, v0, v3}, Ll4/e;-><init>(Lp2/q;Ljava/lang/String;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 373
    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_c
    :goto_b
    iget-object v0, v6, Lp2/q;->g:Lu2/b;

    .line 377
    .line 378
    if-eqz v0, :cond_d

    .line 379
    .line 380
    :goto_c
    invoke-virtual {v0}, Lu2/b;->a()V

    .line 381
    .line 382
    .line 383
    goto :goto_e

    .line 384
    :goto_d
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 385
    .line 386
    .line 387
    iget-object v0, v6, Lp2/q;->g:Lu2/b;

    .line 388
    .line 389
    if-eqz v0, :cond_d

    .line 390
    .line 391
    goto :goto_c

    .line 392
    :cond_d
    :goto_e
    sget-object v0, Lp2/q;->i:Landroid/app/Activity;

    .line 393
    .line 394
    new-instance v1, Ll4/f;

    .line 395
    .line 396
    invoke-direct {v1, v6, v3}, Ll4/f;-><init>(Lp2/q;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :goto_f
    iget-object v1, v6, Lp2/q;->g:Lu2/b;

    .line 404
    .line 405
    if-eqz v1, :cond_e

    .line 406
    .line 407
    invoke-virtual {v1}, Lu2/b;->a()V

    .line 408
    .line 409
    .line 410
    :cond_e
    throw v0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
