.class public final Lo4/h0;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:[Z

.field public final synthetic g:Lcom/zalexdev/stryker/wifi/Wifi;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/h0;->g:Lcom/zalexdev/stryker/wifi/Wifi;

    iput-object p2, p0, Lo4/h0;->a:Ljava/lang/String;

    iput-object p3, p0, Lo4/h0;->b:[Ljava/lang/String;

    iput-object p4, p0, Lo4/h0;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lo4/h0;->d:Landroid/widget/TextView;

    iput-object p6, p0, Lo4/h0;->e:Landroid/widget/TextView;

    iput-object p7, p0, Lo4/h0;->f:[Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 9
    .line 10
    new-instance v0, Ljava/io/FileReader;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v4, v12, Lo4/h0;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v4, "/handshakenow-01.csv"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-string v3, ","

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    move-object v3, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_4

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_3

    .line 66
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    move-object v2, v0

    .line 72
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_8

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    move-object v13, v1

    .line 94
    check-cast v13, Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/4 v14, 0x1

    .line 101
    if-le v1, v14, :cond_6

    .line 102
    .line 103
    const/4 v15, 0x0

    .line 104
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .line 110
    const-string v11, "BSSID"

    .line 111
    .line 112
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iget-object v10, v12, Lo4/h0;->f:[Z

    .line 117
    .line 118
    iget-object v9, v12, Lo4/h0;->g:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 119
    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    iget-object v1, v9, Lcom/zalexdev/stryker/wifi/Wifi;->y:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    iget-object v1, v9, Lcom/zalexdev/stryker/wifi/Wifi;->D:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    new-instance v8, Ljava/util/ArrayList;

    .line 135
    .line 136
    iget-object v1, v9, Lcom/zalexdev/stryker/wifi/Wifi;->y:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    .line 140
    .line 141
    new-instance v7, Ljava/util/ArrayList;

    .line 142
    .line 143
    iget-object v1, v9, Lcom/zalexdev/stryker/wifi/Wifi;->A:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    .line 147
    .line 148
    new-instance v5, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v1, v9, Lcom/zalexdev/stryker/wifi/Wifi;->D:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_1

    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_1
    iget-object v1, v12, Lo4/h0;->b:[Ljava/lang/String;

    .line 180
    .line 181
    aget-object v16, v1, v15

    .line 182
    .line 183
    iget-object v3, v12, Lo4/h0;->c:Landroid/widget/TextView;

    .line 184
    .line 185
    iget-object v2, v12, Lo4/h0;->d:Landroid/widget/TextView;

    .line 186
    .line 187
    iget-object v1, v12, Lo4/h0;->e:Landroid/widget/TextView;

    .line 188
    .line 189
    new-instance v14, Lo4/g0;

    .line 190
    .line 191
    move-object/from16 v17, v1

    .line 192
    .line 193
    move-object v1, v14

    .line 194
    move-object/from16 v18, v2

    .line 195
    .line 196
    move-object/from16 v2, p0

    .line 197
    .line 198
    move-object/from16 v19, v5

    .line 199
    .line 200
    move-object/from16 v5, v18

    .line 201
    .line 202
    move-object/from16 v18, v8

    .line 203
    .line 204
    move-object/from16 v8, v19

    .line 205
    .line 206
    move-object v15, v9

    .line 207
    move-object/from16 v9, v16

    .line 208
    .line 209
    move-object/from16 v16, v10

    .line 210
    .line 211
    move-object/from16 v10, v18

    .line 212
    .line 213
    move-object/from16 v18, v0

    .line 214
    .line 215
    move-object v0, v11

    .line 216
    move-object/from16 v11, v17

    .line 217
    .line 218
    invoke-direct/range {v1 .. v11}, Lo4/g0;-><init>(Lo4/h0;Landroid/widget/TextView;ILandroid/widget/TextView;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v15, v14}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v15, Lcom/zalexdev/stryker/wifi/Wifi;->y:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 227
    .line 228
    .line 229
    iget-object v1, v15, Lcom/zalexdev/stryker/wifi/Wifi;->D:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 232
    .line 233
    .line 234
    iget-object v1, v15, Lcom/zalexdev/stryker/wifi/Wifi;->z:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 237
    .line 238
    .line 239
    const/4 v1, 0x0

    .line 240
    aput-boolean v1, v16, v1

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_2
    move-object/from16 v18, v0

    .line 244
    .line 245
    move-object/from16 v16, v10

    .line 246
    .line 247
    move-object v0, v11

    .line 248
    move v1, v15

    .line 249
    move-object v15, v9

    .line 250
    :goto_7
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Ljava/lang/String;

    .line 255
    .line 256
    const-string v3, "Station MAC"

    .line 257
    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_3

    .line 263
    .line 264
    const/4 v2, 0x1

    .line 265
    aput-boolean v2, v16, v1

    .line 266
    .line 267
    :cond_3
    aget-boolean v2, v16, v1

    .line 268
    .line 269
    if-nez v2, :cond_5

    .line 270
    .line 271
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_5

    .line 282
    .line 283
    new-instance v0, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 284
    .line 285
    invoke-direct {v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setMac(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    add-int/lit8 v1, v1, -0x2

    .line 302
    .line 303
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    check-cast v1, Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setSsid(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v15, Lcom/zalexdev/stryker/wifi/Wifi;->D:Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_4

    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    const-string v2, ""

    .line 325
    .line 326
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-nez v1, :cond_4

    .line 331
    .line 332
    iget-object v1, v15, Lcom/zalexdev/stryker/wifi/Wifi;->D:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    iget-object v1, v15, Lcom/zalexdev/stryker/wifi/Wifi;->z:Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    iget-object v1, v15, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 347
    .line 348
    const-string v2, "geomac_bg_scan"

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_4

    .line 355
    .line 356
    iget-object v1, v15, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    .line 357
    .line 358
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    sget-object v4, Ly2/a;->b:Ly2/a;

    .line 367
    .line 368
    const/4 v5, 0x0

    .line 369
    invoke-static {v1, v2, v0, v4, v5}, Lw2/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ly2/a;Z)V

    .line 370
    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_4
    const/4 v5, 0x0

    .line 374
    goto :goto_8

    .line 375
    :cond_5
    move v5, v1

    .line 376
    :goto_8
    aget-boolean v0, v16, v5

    .line 377
    .line 378
    if-eqz v0, :cond_7

    .line 379
    .line 380
    iget-object v0, v15, Lcom/zalexdev/stryker/wifi/Wifi;->y:Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-nez v0, :cond_7

    .line 391
    .line 392
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-nez v0, :cond_7

    .line 403
    .line 404
    iget-object v0, v15, Lcom/zalexdev/stryker/wifi/Wifi;->z:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-nez v0, :cond_7

    .line 415
    .line 416
    iget-object v0, v15, Lcom/zalexdev/stryker/wifi/Wifi;->y:Ljava/util/ArrayList;

    .line 417
    .line 418
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    check-cast v1, Ljava/lang/String;

    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    goto :goto_9

    .line 428
    :cond_6
    move-object/from16 v18, v0

    .line 429
    .line 430
    :cond_7
    :goto_9
    move-object/from16 v0, v18

    .line 431
    .line 432
    goto/16 :goto_5

    .line 433
    .line 434
    :cond_8
    return-void
.end method
