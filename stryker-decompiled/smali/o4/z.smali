.class public final synthetic Lo4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/wifi/Wifi;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo4/z;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo4/z;->b:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 7
    .line 8
    return-void
.end method

.method private final a()V
    .locals 17

    .line 1
    sget v0, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v2, v1, Lo4/z;->b:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "wlan0"

    .line 11
    .line 12
    :try_start_0
    iget-object v3, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 18
    .line 19
    .line 20
    move-result v3
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v4, v2, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x1

    .line 25
    const/4 v7, 0x4

    .line 26
    const/4 v8, 0x3

    .line 27
    const-string v9, "mon"

    .line 28
    .line 29
    const-string v10, "wifi"

    .line 30
    .line 31
    if-eqz v3, :cond_b

    .line 32
    .line 33
    :try_start_1
    new-instance v3, Lu3/g;

    .line 34
    .line 35
    invoke-direct {v3}, Lu3/g;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v11, "Rootless WiFi: passing USB adapter into the VM\u2026"

    .line 39
    .line 40
    invoke-virtual {v3, v6, v11, v10}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v11, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 44
    .line 45
    iget-object v11, v11, Ll4/l;->c:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v11}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    invoke-virtual {v11}, Lu2/h;->j()Z

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    if-eqz v11, :cond_0

    .line 56
    .line 57
    const-string v12, "USB adapter attached \u2014 driver OK"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto/16 :goto_d

    .line 62
    .line 63
    :catch_1
    move-exception v0

    .line 64
    goto/16 :goto_d

    .line 65
    .line 66
    :cond_0
    const-string v12, "USB adapter not usable"

    .line 67
    .line 68
    :goto_0
    const/4 v13, 0x2

    .line 69
    if-eqz v11, :cond_1

    .line 70
    .line 71
    move v14, v13

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v14, v8

    .line 74
    :goto_1
    invoke-virtual {v3, v14, v12, v10}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    if-nez v11, :cond_3

    .line 78
    .line 79
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 80
    .line 81
    iget-object v0, v0, Ll4/l;->c:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v0, v0, Lu2/h;->o:Lu2/l;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 92
    .line 93
    iget-object v0, v0, Ll4/l;->c:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v0, v0, Lu2/h;->o:Lu2/l;

    .line 100
    .line 101
    invoke-virtual {v0}, Lu2/l;->f()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    new-instance v0, Lo4/z;

    .line 108
    .line 109
    invoke-direct {v0, v2, v13}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    new-instance v0, Lo4/z;

    .line 114
    .line 115
    invoke-direct {v0, v2, v8}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-virtual {v2, v0}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_e

    .line 122
    .line 123
    :cond_3
    iget-object v11, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 124
    .line 125
    const-string v12, "wlan_wifi"

    .line 126
    .line 127
    invoke-virtual {v11, v12}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    new-instance v12, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    move v14, v5

    .line 137
    :goto_3
    const/16 v15, 0x14

    .line 138
    .line 139
    if-ge v14, v15, :cond_6

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    if-eqz v15, :cond_6

    .line 146
    .line 147
    iget-object v12, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 148
    .line 149
    invoke-virtual {v12}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    if-eqz v15, :cond_4

    .line 158
    .line 159
    :goto_4
    move v14, v6

    .line 160
    goto :goto_5

    .line 161
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v15

    .line 180
    if-eqz v15, :cond_5

    .line 181
    .line 182
    new-instance v14, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v11
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    goto :goto_4

    .line 198
    :cond_5
    const-wide/16 v15, 0x1f4

    .line 199
    .line 200
    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    .line 202
    .line 203
    :catch_2
    add-int/lit8 v14, v14, 0x1

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    move v14, v5

    .line 207
    :goto_5
    :try_start_3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 208
    .line 209
    .line 210
    move-result v15

    .line 211
    if-nez v15, :cond_7

    .line 212
    .line 213
    goto/16 :goto_e

    .line 214
    .line 215
    :cond_7
    if-nez v14, :cond_8

    .line 216
    .line 217
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    if-nez v15, :cond_8

    .line 222
    .line 223
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    check-cast v11, Ljava/lang/String;

    .line 228
    .line 229
    iget-object v14, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 230
    .line 231
    invoke-virtual {v14, v11}, Ll4/l;->n0(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iput-object v11, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 235
    .line 236
    new-instance v14, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v15, "Adopted guest interface \'"

    .line 242
    .line 243
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v15, "\'"

    .line 250
    .line 251
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v14

    .line 258
    invoke-virtual {v3, v13, v14, v10}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    new-instance v14, Ld4/d;

    .line 262
    .line 263
    const/16 v15, 0xa

    .line 264
    .line 265
    invoke-direct {v14, v2, v11, v15}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v14}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 269
    .line 270
    .line 271
    move v14, v6

    .line 272
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v6, "Guest interfaces: "

    .line 278
    .line 279
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    if-eqz v14, :cond_9

    .line 290
    .line 291
    move v12, v13

    .line 292
    goto :goto_6

    .line 293
    :cond_9
    move v12, v8

    .line 294
    :goto_6
    invoke-virtual {v3, v12, v6, v10}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    if-nez v14, :cond_a

    .line 298
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v4, "Interface \'"

    .line 305
    .line 306
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v4, "\' never appeared \u2014 guest USB/driver diagnostics:"

    .line 313
    .line 314
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v3, v8, v0, v10}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 325
    .line 326
    const-string v3, "echo \'### lsusb\'; lsusb 2>&1; echo \'### ip link\'; ip -br link 2>&1; echo \'### iw dev\'; iw dev 2>&1; echo \'### dmesg\'; dmesg 2>&1 | grep -iE \'usb|wlan|firmware|cfg80211|ieee80211|rtl|ath|mt7|88x\' | tail -40"

    .line 327
    .line 328
    invoke-virtual {v0, v3}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 329
    .line 330
    .line 331
    new-instance v0, Lo4/z;

    .line 332
    .line 333
    invoke-direct {v0, v2, v7}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :cond_a
    iget-object v6, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 339
    .line 340
    invoke-virtual {v6, v11}, Ll4/l;->h0(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 341
    .line 342
    .line 343
    const-wide/16 v11, 0x4b0

    .line 344
    .line 345
    :try_start_4
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    .line 346
    .line 347
    .line 348
    :catch_3
    :try_start_5
    const-string v6, "Adapter ready \u2014 scanning\u2026"

    .line 349
    .line 350
    invoke-virtual {v3, v13, v6, v10}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_b
    iget-object v3, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 354
    .line 355
    invoke-virtual {v3}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    iget-object v11, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    if-eqz v6, :cond_c

    .line 381
    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    iget-object v11, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    iput-object v6, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 400
    .line 401
    :cond_c
    iget-object v6, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-eqz v3, :cond_e

    .line 408
    .line 409
    iget-object v3, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 410
    .line 411
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v3
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 415
    const-string v6, " up"

    .line 416
    .line 417
    const-string v11, "ip link set "

    .line 418
    .line 419
    if-nez v3, :cond_d

    .line 420
    .line 421
    :try_start_6
    iget-object v3, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-eqz v3, :cond_d

    .line 428
    .line 429
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 430
    .line 431
    iget-object v3, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {v0, v3}, Ll4/l;->u(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 437
    .line 438
    const-string v3, ""

    .line 439
    .line 440
    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    iput-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 445
    .line 446
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 447
    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget-object v9, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 457
    .line 458
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    :goto_7
    invoke-virtual {v0, v3}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 469
    .line 470
    .line 471
    goto :goto_8

    .line 472
    :cond_d
    iget-object v3, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 473
    .line 474
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-nez v0, :cond_e

    .line 479
    .line 480
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 481
    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    iget-object v9, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 491
    .line 492
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    goto :goto_7

    .line 503
    :cond_e
    :goto_8
    new-instance v0, Lo4/a;

    .line 504
    .line 505
    iget-object v3, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 506
    .line 507
    iget-object v6, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 508
    .line 509
    invoke-direct {v0, v6, v3}, Lo4/a;-><init>(Ll4/l;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    new-array v3, v5, [Ljava/lang/Void;

    .line 513
    .line 514
    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    check-cast v0, Ljava/util/ArrayList;

    .line 523
    .line 524
    iput-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 525
    .line 526
    iget-object v3, v2, Lcom/zalexdev/stryker/wifi/Wifi;->w:Lcom/zalexdev/stryker/MainActivity;

    .line 527
    .line 528
    if-eqz v3, :cond_f

    .line 529
    .line 530
    iput-object v0, v3, Lcom/zalexdev/stryker/MainActivity;->g:Ljava/util/ArrayList;

    .line 531
    .line 532
    :cond_f
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 533
    .line 534
    const-string v3, "geomac_bg_scan"

    .line 535
    .line 536
    invoke-virtual {v0, v3}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    if-eqz v0, :cond_11

    .line 541
    .line 542
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 543
    .line 544
    if-eqz v0, :cond_11

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    :cond_10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    if-eqz v3, :cond_11

    .line 555
    .line 556
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    check-cast v3, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 561
    .line 562
    if-eqz v3, :cond_10

    .line 563
    .line 564
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    if-eqz v6, :cond_10

    .line 569
    .line 570
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v6

    .line 574
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    if-nez v6, :cond_10

    .line 579
    .line 580
    iget-object v6, v2, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    .line 581
    .line 582
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v9

    .line 586
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    sget-object v11, Ly2/a;->b:Ly2/a;

    .line 591
    .line 592
    invoke-static {v6, v9, v3, v11, v5}, Lw2/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ly2/a;Z)V

    .line 593
    .line 594
    .line 595
    goto :goto_9

    .line 596
    :cond_11
    :goto_a
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    const/4 v3, 0x5

    .line 603
    if-eqz v0, :cond_13

    .line 604
    .line 605
    iget v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->v:I

    .line 606
    .line 607
    if-ge v0, v3, :cond_13

    .line 608
    .line 609
    if-ne v0, v7, :cond_12

    .line 610
    .line 611
    goto :goto_b

    .line 612
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 613
    .line 614
    iput v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->v:I

    .line 615
    .line 616
    const-wide/16 v11, 0xbb8

    .line 617
    .line 618
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 619
    .line 620
    .line 621
    new-instance v0, Lo4/a;

    .line 622
    .line 623
    iget-object v3, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 624
    .line 625
    iget-object v6, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 626
    .line 627
    invoke-direct {v0, v6, v3}, Lo4/a;-><init>(Ll4/l;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    new-array v3, v5, [Ljava/lang/Void;

    .line 631
    .line 632
    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    check-cast v0, Ljava/util/ArrayList;

    .line 641
    .line 642
    iput-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 643
    .line 644
    goto :goto_a

    .line 645
    :cond_13
    :goto_b
    move v0, v5

    .line 646
    :goto_c
    iget-object v6, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 647
    .line 648
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 649
    .line 650
    .line 651
    move-result v6

    .line 652
    if-ge v0, v6, :cond_16

    .line 653
    .line 654
    iget-object v6, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v6

    .line 660
    check-cast v6, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 661
    .line 662
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v6

    .line 666
    if-eqz v6, :cond_15

    .line 667
    .line 668
    iget-object v7, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 669
    .line 670
    invoke-virtual {v7, v6}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 675
    .line 676
    .line 677
    move-result v7

    .line 678
    if-nez v7, :cond_15

    .line 679
    .line 680
    iget-object v7, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 681
    .line 682
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v7

    .line 686
    check-cast v7, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 687
    .line 688
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 689
    .line 690
    invoke-virtual {v7, v9}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    .line 691
    .line 692
    .line 693
    iget-object v9, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 694
    .line 695
    invoke-virtual {v9, v6}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 696
    .line 697
    .line 698
    move-result-object v9

    .line 699
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v9

    .line 703
    check-cast v9, Ljava/lang/String;

    .line 704
    .line 705
    invoke-virtual {v7, v9}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPsk(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    iget-object v9, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 709
    .line 710
    invoke-virtual {v9, v6}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 711
    .line 712
    .line 713
    move-result-object v9

    .line 714
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 715
    .line 716
    .line 717
    move-result v9

    .line 718
    const/4 v11, 0x1

    .line 719
    if-le v9, v11, :cond_14

    .line 720
    .line 721
    iget-object v9, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 722
    .line 723
    invoke-virtual {v9, v6}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 724
    .line 725
    .line 726
    move-result-object v6

    .line 727
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v6

    .line 731
    check-cast v6, Ljava/lang/String;

    .line 732
    .line 733
    invoke-virtual {v7, v6}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPin(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    :cond_14
    iget-object v6, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 737
    .line 738
    invoke-virtual {v6, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    :cond_15
    add-int/lit8 v0, v0, 0x1

    .line 742
    .line 743
    goto :goto_c

    .line 744
    :cond_16
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    .line 745
    .line 746
    if-eqz v0, :cond_1a

    .line 747
    .line 748
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 749
    .line 750
    .line 751
    move-result v0

    .line 752
    if-nez v0, :cond_17

    .line 753
    .line 754
    goto :goto_e

    .line 755
    :cond_17
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 756
    .line 757
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    if-eqz v0, :cond_18

    .line 762
    .line 763
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 764
    .line 765
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 769
    .line 770
    .line 771
    move-result v0

    .line 772
    if-eqz v0, :cond_18

    .line 773
    .line 774
    const-string v0, "Scan returned 0 networks \u2014 guest state:"

    .line 775
    .line 776
    invoke-static {v8, v0, v10}, Lu3/g;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 780
    .line 781
    new-instance v4, Ljava/lang/StringBuilder;

    .line 782
    .line 783
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    .line 785
    .line 786
    const-string v5, "echo \'### iw dev\'; iw dev 2>&1; echo \'### reg\'; iw reg get 2>&1; echo \'### link\'; ip -br link 2>&1; echo \'### scan-head\'; iw dev "

    .line 787
    .line 788
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    iget-object v5, v2, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 792
    .line 793
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    const-string v5, " scan 2>&1 | head -25"

    .line 797
    .line 798
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v4

    .line 805
    invoke-virtual {v0, v4}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 806
    .line 807
    .line 808
    :cond_18
    iget-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 809
    .line 810
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    if-eqz v0, :cond_19

    .line 815
    .line 816
    new-instance v0, Lo4/z;

    .line 817
    .line 818
    invoke-direct {v0, v2, v3}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 819
    .line 820
    .line 821
    goto/16 :goto_2

    .line 822
    .line 823
    :cond_19
    new-instance v0, Lo4/u;

    .line 824
    .line 825
    iget-object v3, v2, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    .line 826
    .line 827
    iget-object v4, v2, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    .line 828
    .line 829
    iget-object v5, v2, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 830
    .line 831
    invoke-direct {v0, v3, v4, v5}, Lo4/u;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 832
    .line 833
    .line 834
    iput-object v0, v2, Lcom/zalexdev/stryker/wifi/Wifi;->F:Lo4/u;

    .line 835
    .line 836
    const/4 v3, 0x1

    .line 837
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    .line 838
    .line 839
    .line 840
    new-instance v0, Lo4/z;

    .line 841
    .line 842
    const/4 v3, 0x6

    .line 843
    invoke-direct {v0, v2, v3}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 844
    .line 845
    .line 846
    goto/16 :goto_2

    .line 847
    .line 848
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 849
    .line 850
    .line 851
    new-instance v0, Lo4/z;

    .line 852
    .line 853
    const/4 v3, 0x7

    .line 854
    invoke-direct {v0, v2, v3}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v2, v0}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 858
    .line 859
    .line 860
    :cond_1a
    :goto_e
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lo4/z;->a:I

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    const v2, 0x7f120015

    .line 6
    .line 7
    .line 8
    const-string v3, "svc wifi enable"

    .line 9
    .line 10
    const v4, 0x7f13072f

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/16 v6, 0x8

    .line 15
    .line 16
    const/4 v7, 0x1

    .line 17
    iget-object v8, p0, Lo4/z;->b:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 23
    .line 24
    const-string v1, "wlan_wps"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 31
    .line 32
    invoke-virtual {v1}, Ll4/l;->B()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const-string v4, " up"

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const-string v2, "ip link set "

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-lez v3, :cond_0

    .line 58
    .line 59
    iget-object v3, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v3, v5}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    :cond_0
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-lez v3, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const-string v2, "ifconfig "

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-lez v5, :cond_2

    .line 123
    .line 124
    iget-object v5, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 125
    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v5, v6}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    :cond_2
    if-eqz v1, :cond_3

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-lez v5, :cond_3

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_3

    .line 157
    .line 158
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 159
    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    :cond_3
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 179
    .line 180
    invoke-virtual {v0}, Ll4/l;->R()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_4

    .line 185
    .line 186
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 187
    .line 188
    invoke-virtual {v0, v3}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    :cond_4
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 193
    .line 194
    iget-object v1, v0, Ll4/l;->e:Ll4/m;

    .line 195
    .line 196
    invoke-virtual {v0}, Ll4/l;->y()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v1, v0}, Ll4/m;->b(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_1
    sget v0, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    new-instance v0, Ljava/lang/Thread;

    .line 210
    .line 211
    new-instance v1, Lo4/z;

    .line 212
    .line 213
    const/16 v2, 0xa

    .line 214
    .line 215
    invoke-direct {v1, v8, v2}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    .line 223
    .line 224
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_5

    .line 234
    .line 235
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 236
    .line 237
    invoke-virtual {v0}, Ll4/l;->R()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_5

    .line 242
    .line 243
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 244
    .line 245
    invoke-virtual {v0}, Ll4/l;->B()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-string v1, "wlan0"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_5

    .line 256
    .line 257
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 258
    .line 259
    invoke-virtual {v0, v3}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    :cond_5
    return-void

    .line 263
    :pswitch_2
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 264
    .line 265
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 269
    .line 270
    invoke-virtual {v0, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 271
    .line 272
    .line 273
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 274
    .line 275
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_3
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->E:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    const/16 v1, 0x40

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 284
    .line 285
    .line 286
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->E:Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    .line 288
    iget-object v1, v8, Lcom/zalexdev/stryker/wifi/Wifi;->F:Lo4/u;

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8, v7}, Lcom/zalexdev/stryker/wifi/Wifi;->e(Z)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8}, Lcom/zalexdev/stryker/wifi/Wifi;->j()V

    .line 297
    .line 298
    .line 299
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 300
    .line 301
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 305
    .line 306
    invoke-virtual {v0, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->x:Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->show()V

    .line 312
    .line 313
    .line 314
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 315
    .line 316
    if-eqz v0, :cond_6

    .line 317
    .line 318
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 319
    .line 320
    .line 321
    :cond_6
    invoke-virtual {v8}, Lcom/zalexdev/stryker/wifi/Wifi;->h()V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :pswitch_4
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 326
    .line 327
    if-eqz v0, :cond_7

    .line 328
    .line 329
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 330
    .line 331
    .line 332
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 335
    .line 336
    .line 337
    :cond_7
    invoke-virtual {v8, v5}, Lcom/zalexdev/stryker/wifi/Wifi;->e(Z)V

    .line 338
    .line 339
    .line 340
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 341
    .line 342
    const v2, 0x7f13071e

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 346
    .line 347
    .line 348
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 349
    .line 350
    const v2, 0x7f1300f7

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 354
    .line 355
    .line 356
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    .line 357
    .line 358
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 359
    .line 360
    .line 361
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    .line 362
    .line 363
    const v2, 0x7f130680

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 367
    .line 368
    .line 369
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    .line 370
    .line 371
    new-instance v2, Lo4/v;

    .line 372
    .line 373
    const/4 v3, 0x5

    .line 374
    invoke-direct {v2, v8, v3}, Lo4/v;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    .line 379
    .line 380
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 381
    .line 382
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 383
    .line 384
    .line 385
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 386
    .line 387
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 388
    .line 389
    .line 390
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 391
    .line 392
    const v2, 0x7f130733

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 396
    .line 397
    .line 398
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->l:Lcom/google/android/material/textview/MaterialTextView;

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    .line 402
    .line 403
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 404
    .line 405
    invoke-virtual {v0, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 406
    .line 407
    .line 408
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 409
    .line 410
    invoke-virtual {v0, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    :pswitch_5
    invoke-static {v8}, Lcom/zalexdev/stryker/wifi/Wifi;->d(Lcom/zalexdev/stryker/wifi/Wifi;)V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :pswitch_6
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 419
    .line 420
    if-eqz v0, :cond_8

    .line 421
    .line 422
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 423
    .line 424
    .line 425
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 426
    .line 427
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 428
    .line 429
    .line 430
    :cond_8
    invoke-virtual {v8, v5}, Lcom/zalexdev/stryker/wifi/Wifi;->e(Z)V

    .line 431
    .line 432
    .line 433
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 434
    .line 435
    const-string v2, "No Wi-Fi adapter"

    .line 436
    .line 437
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    .line 439
    .line 440
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 441
    .line 442
    const-string v2, "Rootless Wi-Fi runs through a USB adapter passed into the VM. Plug one in and attach it."

    .line 443
    .line 444
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    .line 446
    .line 447
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    .line 448
    .line 449
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 450
    .line 451
    .line 452
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    .line 453
    .line 454
    const-string v2, "Attach adapter"

    .line 455
    .line 456
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    .line 458
    .line 459
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    .line 460
    .line 461
    new-instance v2, Lo4/v;

    .line 462
    .line 463
    const/4 v3, 0x6

    .line 464
    invoke-direct {v2, v8, v3}, Lo4/v;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 471
    .line 472
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 476
    .line 477
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 478
    .line 479
    .line 480
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 481
    .line 482
    const-string v2, "No adapter attached"

    .line 483
    .line 484
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .line 486
    .line 487
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->l:Lcom/google/android/material/textview/MaterialTextView;

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 493
    .line 494
    invoke-virtual {v0, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 495
    .line 496
    .line 497
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 498
    .line 499
    invoke-virtual {v0, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 500
    .line 501
    .line 502
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->x:Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 503
    .line 504
    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->hide()V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    :pswitch_7
    invoke-static {v8}, Lcom/zalexdev/stryker/wifi/Wifi;->d(Lcom/zalexdev/stryker/wifi/Wifi;)V

    .line 509
    .line 510
    .line 511
    return-void

    .line 512
    :pswitch_8
    iget-object v0, v8, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 513
    .line 514
    invoke-virtual {v0}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    new-instance v1, Ld4/d;

    .line 519
    .line 520
    const/16 v2, 0xb

    .line 521
    .line 522
    invoke-direct {v1, v8, v0, v2}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v8, v1}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :pswitch_9
    invoke-direct {p0}, Lo4/z;->a()V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
