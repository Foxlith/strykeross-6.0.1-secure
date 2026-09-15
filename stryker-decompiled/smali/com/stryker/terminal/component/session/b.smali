.class public final synthetic Lcom/stryker/terminal/component/session/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/inputmethod/InputMethodManager;Lcom/stryker/terminal/component/session/XSession;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/component/session/b;->a:I

    iput p1, p0, Lcom/stryker/terminal/component/session/b;->b:I

    iput-object p2, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/io/Serializable;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/stryker/terminal/component/session/b;->a:I

    iput-object p1, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/stryker/terminal/component/session/b;->b:I

    iput-object p3, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/stryker/terminal/component/session/b;->a:I

    iput-object p1, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    iput p3, p0, Lcom/stryker/terminal/component/session/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/stryker/terminal/component/session/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/io/InputStream;

    .line 15
    .line 16
    iget v2, p0, Lcom/stryker/terminal/component/session/b;->b:I

    .line 17
    .line 18
    sget-object v3, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->j:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 24
    .line 25
    new-instance v4, Ljava/io/InputStreamReader;

    .line 26
    .line 27
    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const-string v4, "ERR"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v4, v1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->n(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "{"

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->g(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_4

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_3

    .line 64
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception v1

    .line 69
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 73
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    :goto_4
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 80
    .line 81
    iget v3, p0, Lcom/stryker/terminal/component/session/b;->b:I

    .line 82
    .line 83
    iget-object v4, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v4, Ljava/util/List;

    .line 86
    .line 87
    iget-boolean v5, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    .line 88
    .line 89
    if-nez v5, :cond_6

    .line 90
    .line 91
    iget v5, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->r:I

    .line 92
    .line 93
    if-eq v3, v5, :cond_2

    .line 94
    .line 95
    goto :goto_7

    .line 96
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_4

    .line 101
    .line 102
    iget-object v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->e:Lu3/i;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_3

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_3
    iget-object v5, v3, Lu3/i;->b:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    .line 122
    .line 123
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-virtual {v3, v6, v5}, Landroidx/recyclerview/widget/k0;->notifyItemRangeInserted(II)V

    .line 128
    .line 129
    .line 130
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    sub-int/2addr v3, v1

    .line 135
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lu3/a;

    .line 140
    .line 141
    iget-wide v5, v3, Lu3/a;->a:J

    .line 142
    .line 143
    iput-wide v5, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->v:J

    .line 144
    .line 145
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    const/16 v4, 0xc8

    .line 150
    .line 151
    if-ne v3, v4, :cond_5

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_5
    move v1, v2

    .line 155
    :goto_6
    iput-boolean v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->t:Z

    .line 156
    .line 157
    iput-boolean v2, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->s:Z

    .line 158
    .line 159
    :cond_6
    :goto_7
    return-void

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    .line 161
    .line 162
    move-object v2, v0

    .line 163
    check-cast v2, Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 164
    .line 165
    iget-object v0, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Lv1/t;

    .line 168
    .line 169
    iget v3, p0, Lcom/stryker/terminal/component/session/b;->b:I

    .line 170
    .line 171
    iget-object v1, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->c:Lu3/e;

    .line 172
    .line 173
    const-wide v4, 0x7fffffffffffffffL

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v0, v4, v5}, Lu3/e;->h(Lv1/t;J)Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iget-object v1, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->c:Lu3/e;

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Lu3/e;->b(Lv1/t;)J

    .line 185
    .line 186
    .line 187
    move-result-wide v5

    .line 188
    iget-object v0, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 189
    .line 190
    new-instance v7, Lu3/o;

    .line 191
    .line 192
    move-object v1, v7

    .line 193
    invoke-direct/range {v1 .. v6}, Lu3/o;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;ILjava/util/ArrayList;J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v0, Lg3/b;

    .line 203
    .line 204
    iget-object v1, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v1, Lcom/zalexdev/stryker/custom/Device;

    .line 207
    .line 208
    iget v2, p0, Lcom/stryker/terminal/component/session/b;->b:I

    .line 209
    .line 210
    iget-object v3, v0, Lg3/b;->b:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v3, Lr3/v;

    .line 213
    .line 214
    iget-boolean v3, v3, Lr3/v;->g:Z

    .line 215
    .line 216
    if-nez v3, :cond_7

    .line 217
    .line 218
    iget-object v0, v0, Lg3/b;->b:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v0, Lr3/v;

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2}, Lr3/v;->d(Lcom/zalexdev/stryker/custom/Device;I)V

    .line 223
    .line 224
    .line 225
    :cond_7
    return-void

    .line 226
    :pswitch_3
    iget-object v0, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Lr3/t;

    .line 229
    .line 230
    iget-object v3, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v3, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    const/4 v4, 0x4

    .line 238
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    iget v2, p0, Lcom/stryker/terminal/component/session/b;->b:I

    .line 248
    .line 249
    iget-object v0, v0, Lr3/t;->a:Landroid/content/Context;

    .line 250
    .line 251
    if-ne v2, v1, :cond_8

    .line 252
    .line 253
    const v1, 0x7f060302

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    filled-new-array {v0}, [I

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 265
    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_8
    const/4 v1, 0x2

    .line 269
    if-ne v2, v1, :cond_9

    .line 270
    .line 271
    const v1, 0x7f060073

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    filled-new-array {v0}, [I

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 283
    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_9
    const/4 v1, 0x3

    .line 287
    if-ne v2, v1, :cond_a

    .line 288
    .line 289
    const v1, 0x7f060339

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    filled-new-array {v0}, [I

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 301
    .line 302
    .line 303
    :cond_a
    :goto_8
    return-void

    .line 304
    :pswitch_4
    iget-object v0, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v0, Lr3/t;

    .line 307
    .line 308
    iget-object v3, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v3, Lcom/zalexdev/stryker/custom/Device;

    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    const-string v5, "ip route get "

    .line 320
    .line 321
    :try_start_5
    iget-object v6, v0, Lr3/t;->d:Ll4/l;

    .line 322
    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v4, " 2>/dev/null"

    .line 332
    .line 333
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v6, v4}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    :cond_b
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-eqz v5, :cond_d

    .line 353
    .line 354
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    check-cast v5, Ljava/lang/String;

    .line 359
    .line 360
    if-nez v5, :cond_c

    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_c
    const-string v6, "via 10.0.2.2"

    .line 364
    .line 365
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    if-eqz v6, :cond_e

    .line 370
    .line 371
    :catchall_2
    :cond_d
    move v1, v2

    .line 372
    goto :goto_a

    .line 373
    :cond_e
    const-string v6, " dev "

    .line 374
    .line 375
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 376
    .line 377
    .line 378
    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 379
    if-eqz v5, :cond_b

    .line 380
    .line 381
    :goto_a
    new-instance v2, Lr3/c;

    .line 382
    .line 383
    iget v4, p0, Lcom/stryker/terminal/component/session/b;->b:I

    .line 384
    .line 385
    invoke-direct {v2, v0, v1, v3, v4}, Lr3/c;-><init>(Lr3/t;ZLcom/zalexdev/stryker/custom/Device;I)V

    .line 386
    .line 387
    .line 388
    iget-object v0, v0, Lr3/t;->b:Landroid/app/Activity;

    .line 389
    .line 390
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :pswitch_5
    iget-object v0, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v0, Lp2/r;

    .line 397
    .line 398
    iget-object v1, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v1, Ljava/lang/CharSequence;

    .line 401
    .line 402
    iget-object v3, v0, Lp2/r;->k:Lp2/j;

    .line 403
    .line 404
    if-eqz v3, :cond_f

    .line 405
    .line 406
    iget v4, p0, Lcom/stryker/terminal/component/session/b;->b:I

    .line 407
    .line 408
    invoke-virtual {v3, v4, v2}, Lp2/j;->c(IZ)V

    .line 409
    .line 410
    .line 411
    iget-object v0, v0, Lp2/r;->k:Lp2/j;

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Lp2/j;->e(Ljava/lang/CharSequence;)V

    .line 414
    .line 415
    .line 416
    :cond_f
    return-void

    .line 417
    :pswitch_6
    iget-object v0, p0, Lcom/stryker/terminal/component/session/b;->c:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 420
    .line 421
    iget-object v1, p0, Lcom/stryker/terminal/component/session/b;->d:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v1, Lcom/stryker/terminal/component/session/XSession;

    .line 424
    .line 425
    iget v2, p0, Lcom/stryker/terminal/component/session/b;->b:I

    .line 426
    .line 427
    invoke-static {v2, v0, v1}, Lcom/stryker/terminal/component/session/XSession;->b(ILandroid/view/inputmethod/InputMethodManager;Lcom/stryker/terminal/component/session/XSession;)V

    .line 428
    .line 429
    .line 430
    return-void

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
