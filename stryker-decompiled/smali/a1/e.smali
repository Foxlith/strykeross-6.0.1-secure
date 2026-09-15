.class public final La1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V
    .locals 1

    .line 1
    const-string v0, "foreignKeys"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/e;->a:Ljava/lang/String;

    iput-object p2, p0, La1/e;->b:Ljava/util/Map;

    iput-object p3, p0, La1/e;->c:Ljava/util/Set;

    iput-object p4, p0, La1/e;->d:Ljava/util/Set;

    return-void
.end method

.method public static final a(Ld1/c;Ljava/lang/String;)La1/e;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "seq"

    .line 6
    .line 7
    const-string v3, "id"

    .line 8
    .line 9
    const-string v4, "type"

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v6, "PRAGMA table_info(`"

    .line 14
    .line 15
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v6, "`)"

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v0, v5}, Ld1/c;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    .line 35
    .line 36
    .line 37
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v9, "name"

    .line 40
    .line 41
    if-gtz v7, :cond_0

    .line 42
    .line 43
    :try_start_1
    sget-object v4, Lx4/p;->a:Lx4/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    invoke-static {v5, v8}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :goto_0
    move-object v1, v0

    .line 51
    goto/16 :goto_18

    .line 52
    .line 53
    :cond_0
    :try_start_2
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    const-string v13, "notnull"

    .line 62
    .line 63
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    const-string v14, "pk"

    .line 68
    .line 69
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    const-string v15, "dflt_value"

    .line 74
    .line 75
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v15

    .line 79
    new-instance v10, Ly4/f;

    .line 80
    .line 81
    invoke-direct {v10}, Ly4/f;-><init>()V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 85
    .line 86
    .line 87
    move-result v16

    .line 88
    if-eqz v16, :cond_2

    .line 89
    .line 90
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 99
    .line 100
    .line 101
    move-result v17

    .line 102
    if-eqz v17, :cond_1

    .line 103
    .line 104
    const/16 v20, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    const/16 v20, 0x0

    .line 108
    .line 109
    :goto_2
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 110
    .line 111
    .line 112
    move-result v21

    .line 113
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v22

    .line 117
    invoke-static {v8, v9}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    move/from16 v24, v7

    .line 121
    .line 122
    new-instance v7, La1/a;

    .line 123
    .line 124
    invoke-static {v11, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/16 v23, 0x2

    .line 128
    .line 129
    move-object/from16 v17, v7

    .line 130
    .line 131
    move-object/from16 v18, v8

    .line 132
    .line 133
    move-object/from16 v19, v11

    .line 134
    .line 135
    invoke-direct/range {v17 .. v23}, La1/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v8, v7}, Ly4/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move/from16 v7, v24

    .line 142
    .line 143
    const/4 v8, 0x0

    .line 144
    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v10}, Ly4/f;->d()V

    .line 148
    .line 149
    .line 150
    const/4 v4, 0x1

    .line 151
    iput-boolean v4, v10, Ly4/f;->l:Z

    .line 152
    .line 153
    iget v4, v10, Ly4/f;->h:I

    .line 154
    .line 155
    if-lez v4, :cond_3

    .line 156
    .line 157
    move-object v4, v10

    .line 158
    :goto_3
    const/4 v7, 0x0

    .line 159
    goto :goto_4

    .line 160
    :cond_3
    sget-object v4, Ly4/f;->m:Ly4/f;

    .line 161
    .line 162
    const-string v7, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>"

    .line 163
    .line 164
    invoke-static {v4, v7}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :goto_4
    invoke-static {v5, v7}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v7, "PRAGMA foreign_key_list(`"

    .line 174
    .line 175
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v0, v5}, Ld1/c;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    :try_start_3
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    const-string v10, "table"

    .line 201
    .line 202
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    const-string v11, "on_delete"

    .line 207
    .line 208
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    const-string v12, "on_update"

    .line 213
    .line 214
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    const-string v13, "from"

    .line 227
    .line 228
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    const-string v14, "to"

    .line 233
    .line 234
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v14

    .line 238
    new-instance v15, Ly4/b;

    .line 239
    .line 240
    invoke-direct {v15}, Ly4/b;-><init>()V

    .line 241
    .line 242
    .line 243
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 244
    .line 245
    .line 246
    move-result v17

    .line 247
    if-eqz v17, :cond_4

    .line 248
    .line 249
    move-object/from16 v17, v4

    .line 250
    .line 251
    new-instance v4, La1/c;

    .line 252
    .line 253
    move-object/from16 v18, v9

    .line 254
    .line 255
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    move/from16 v19, v3

    .line 260
    .line 261
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    move/from16 v20, v2

    .line 266
    .line 267
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    move/from16 v21, v13

    .line 272
    .line 273
    const-string v13, "cursor.getString(fromColumnIndex)"

    .line 274
    .line 275
    invoke-static {v2, v13}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    move/from16 v22, v14

    .line 283
    .line 284
    const-string v14, "cursor.getString(toColumnIndex)"

    .line 285
    .line 286
    invoke-static {v13, v14}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-direct {v4, v2, v9, v13, v3}, La1/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v15, v4}, Ly4/b;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-object/from16 v4, v17

    .line 296
    .line 297
    move-object/from16 v9, v18

    .line 298
    .line 299
    move/from16 v3, v19

    .line 300
    .line 301
    move/from16 v2, v20

    .line 302
    .line 303
    move/from16 v13, v21

    .line 304
    .line 305
    move/from16 v14, v22

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_4
    move-object/from16 v17, v4

    .line 309
    .line 310
    move-object/from16 v18, v9

    .line 311
    .line 312
    invoke-static {v15}, Lv1/f;->b(Ly4/b;)Ly4/b;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    const-string v3, "<this>"

    .line 317
    .line 318
    invoke-static {v2, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2}, Ly4/b;->a()I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    const/4 v4, 0x1

    .line 326
    if-gt v3, v4, :cond_5

    .line 327
    .line 328
    invoke-static {v2}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    const/4 v4, 0x0

    .line 333
    goto :goto_7

    .line 334
    :cond_5
    const/4 v4, 0x0

    .line 335
    new-array v3, v4, [Ljava/lang/Comparable;

    .line 336
    .line 337
    invoke-virtual {v2, v3}, Ly4/b;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    move-object v3, v2

    .line 342
    check-cast v3, [Ljava/lang/Comparable;

    .line 343
    .line 344
    array-length v9, v3

    .line 345
    const/4 v13, 0x1

    .line 346
    if-le v9, v13, :cond_6

    .line 347
    .line 348
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_6
    invoke-static {v2}, Lg5/i;->a0([Ljava/lang/Object;)Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    :goto_7
    const/4 v3, -0x1

    .line 356
    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 357
    .line 358
    .line 359
    new-instance v9, Ly4/i;

    .line 360
    .line 361
    invoke-direct {v9}, Ly4/i;-><init>()V

    .line 362
    .line 363
    .line 364
    :goto_8
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 365
    .line 366
    .line 367
    move-result v13

    .line 368
    if-eqz v13, :cond_b

    .line 369
    .line 370
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 371
    .line 372
    .line 373
    move-result v13

    .line 374
    if-eqz v13, :cond_7

    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_7
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    new-instance v14, Ljava/util/ArrayList;

    .line 382
    .line 383
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .line 385
    .line 386
    new-instance v15, Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .line 390
    .line 391
    new-instance v4, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v19

    .line 400
    :goto_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    .line 402
    .line 403
    move-result v20

    .line 404
    if-eqz v20, :cond_9

    .line 405
    .line 406
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    move-object/from16 v21, v2

    .line 411
    .line 412
    move-object v2, v3

    .line 413
    check-cast v2, La1/c;

    .line 414
    .line 415
    iget v2, v2, La1/c;->a:I

    .line 416
    .line 417
    if-ne v2, v13, :cond_8

    .line 418
    .line 419
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    :cond_8
    move-object/from16 v2, v21

    .line 423
    .line 424
    const/4 v3, -0x1

    .line 425
    goto :goto_9

    .line 426
    :catchall_1
    move-exception v0

    .line 427
    move-object v1, v0

    .line 428
    goto/16 :goto_17

    .line 429
    .line 430
    :cond_9
    move-object/from16 v21, v2

    .line 431
    .line 432
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-eqz v3, :cond_a

    .line 441
    .line 442
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    check-cast v3, La1/c;

    .line 447
    .line 448
    iget-object v4, v3, La1/c;->c:Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    iget-object v3, v3, La1/c;->d:Ljava/lang/String;

    .line 454
    .line 455
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    goto :goto_a

    .line 459
    :cond_a
    new-instance v2, La1/b;

    .line 460
    .line 461
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    const-string v4, "cursor.getString(tableColumnIndex)"

    .line 466
    .line 467
    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    const-string v13, "cursor.getString(onDeleteColumnIndex)"

    .line 475
    .line 476
    invoke-static {v4, v13}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v13

    .line 483
    move/from16 v19, v7

    .line 484
    .line 485
    const-string v7, "cursor.getString(onUpdateColumnIndex)"

    .line 486
    .line 487
    invoke-static {v13, v7}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    move-object/from16 v24, v2

    .line 491
    .line 492
    move-object/from16 v25, v3

    .line 493
    .line 494
    move-object/from16 v26, v4

    .line 495
    .line 496
    move-object/from16 v27, v13

    .line 497
    .line 498
    move-object/from16 v28, v14

    .line 499
    .line 500
    move-object/from16 v29, v15

    .line 501
    .line 502
    invoke-direct/range {v24 .. v29}, La1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v9, v2}, Ly4/i;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move/from16 v7, v19

    .line 509
    .line 510
    move-object/from16 v2, v21

    .line 511
    .line 512
    const/4 v3, -0x1

    .line 513
    const/4 v4, 0x0

    .line 514
    goto/16 :goto_8

    .line 515
    .line 516
    :cond_b
    invoke-static {v9}, Lv1/f;->c(Ly4/i;)Ly4/i;

    .line 517
    .line 518
    .line 519
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 520
    const/4 v3, 0x0

    .line 521
    invoke-static {v5, v3}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 522
    .line 523
    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    const-string v4, "PRAGMA index_list(`"

    .line 527
    .line 528
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    invoke-virtual {v0, v3}, Ld1/c;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    move-object/from16 v4, v18

    .line 546
    .line 547
    :try_start_4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 548
    .line 549
    .line 550
    move-result v5

    .line 551
    const-string v7, "origin"

    .line 552
    .line 553
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    move-result v7

    .line 557
    const-string v8, "unique"

    .line 558
    .line 559
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    move-result v8

    .line 563
    const/4 v9, -0x1

    .line 564
    if-eq v5, v9, :cond_c

    .line 565
    .line 566
    if-eq v7, v9, :cond_c

    .line 567
    .line 568
    if-ne v8, v9, :cond_d

    .line 569
    .line 570
    :cond_c
    const/4 v0, 0x0

    .line 571
    goto/16 :goto_14

    .line 572
    .line 573
    :cond_d
    new-instance v9, Ly4/i;

    .line 574
    .line 575
    invoke-direct {v9}, Ly4/i;-><init>()V

    .line 576
    .line 577
    .line 578
    :goto_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 579
    .line 580
    .line 581
    move-result v10

    .line 582
    if-eqz v10, :cond_16

    .line 583
    .line 584
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v10

    .line 588
    const-string v11, "c"

    .line 589
    .line 590
    invoke-static {v11, v10}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v10

    .line 594
    if-nez v10, :cond_e

    .line 595
    .line 596
    goto :goto_b

    .line 597
    :cond_e
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v10

    .line 601
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 602
    .line 603
    .line 604
    move-result v11

    .line 605
    const/4 v12, 0x1

    .line 606
    if-ne v11, v12, :cond_f

    .line 607
    .line 608
    move v11, v12

    .line 609
    goto :goto_c

    .line 610
    :cond_f
    const/4 v11, 0x0

    .line 611
    :goto_c
    invoke-static {v10, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    new-instance v13, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    const-string v14, "PRAGMA index_xinfo(`"

    .line 617
    .line 618
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v13

    .line 631
    invoke-virtual {v0, v13}, Ld1/c;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 632
    .line 633
    .line 634
    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 635
    :try_start_5
    const-string v14, "seqno"

    .line 636
    .line 637
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    move-result v14

    .line 641
    const-string v15, "cid"

    .line 642
    .line 643
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    move-result v15

    .line 647
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 648
    .line 649
    .line 650
    move-result v12

    .line 651
    const-string v0, "desc"

    .line 652
    .line 653
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    move-object/from16 v18, v4

    .line 658
    .line 659
    const/4 v4, -0x1

    .line 660
    if-eq v14, v4, :cond_10

    .line 661
    .line 662
    if-eq v15, v4, :cond_10

    .line 663
    .line 664
    if-eq v12, v4, :cond_10

    .line 665
    .line 666
    if-ne v0, v4, :cond_11

    .line 667
    .line 668
    :cond_10
    move/from16 v19, v5

    .line 669
    .line 670
    move-object/from16 v22, v6

    .line 671
    .line 672
    move/from16 v23, v7

    .line 673
    .line 674
    move/from16 v25, v8

    .line 675
    .line 676
    const/4 v0, 0x0

    .line 677
    goto/16 :goto_10

    .line 678
    .line 679
    :cond_11
    new-instance v4, Ljava/util/TreeMap;

    .line 680
    .line 681
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 682
    .line 683
    .line 684
    move/from16 v19, v5

    .line 685
    .line 686
    new-instance v5, Ljava/util/TreeMap;

    .line 687
    .line 688
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 689
    .line 690
    .line 691
    :goto_d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 692
    .line 693
    .line 694
    move-result v21

    .line 695
    if-eqz v21, :cond_14

    .line 696
    .line 697
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 698
    .line 699
    .line 700
    move-result v21

    .line 701
    if-gez v21, :cond_12

    .line 702
    .line 703
    goto :goto_d

    .line 704
    :cond_12
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 705
    .line 706
    .line 707
    move-result v21

    .line 708
    move-object/from16 v22, v6

    .line 709
    .line 710
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 715
    .line 716
    .line 717
    move-result v23

    .line 718
    if-lez v23, :cond_13

    .line 719
    .line 720
    const-string v23, "DESC"

    .line 721
    .line 722
    :goto_e
    move/from16 v24, v0

    .line 723
    .line 724
    move-object/from16 v0, v23

    .line 725
    .line 726
    move/from16 v23, v7

    .line 727
    .line 728
    goto :goto_f

    .line 729
    :catchall_2
    move-exception v0

    .line 730
    move-object v1, v0

    .line 731
    goto/16 :goto_12

    .line 732
    .line 733
    :cond_13
    const-string v23, "ASC"

    .line 734
    .line 735
    goto :goto_e

    .line 736
    :goto_f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 737
    .line 738
    .line 739
    move-result-object v7

    .line 740
    move/from16 v25, v8

    .line 741
    .line 742
    const-string v8, "columnName"

    .line 743
    .line 744
    invoke-static {v6, v8}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v4, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 751
    .line 752
    .line 753
    move-result-object v6

    .line 754
    invoke-virtual {v5, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-object/from16 v6, v22

    .line 758
    .line 759
    move/from16 v7, v23

    .line 760
    .line 761
    move/from16 v0, v24

    .line 762
    .line 763
    move/from16 v8, v25

    .line 764
    .line 765
    goto :goto_d

    .line 766
    :cond_14
    move-object/from16 v22, v6

    .line 767
    .line 768
    move/from16 v23, v7

    .line 769
    .line 770
    move/from16 v25, v8

    .line 771
    .line 772
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    const-string v4, "columnsMap.values"

    .line 777
    .line 778
    invoke-static {v0, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    invoke-static {v0}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    const-string v5, "ordersMap.values"

    .line 790
    .line 791
    invoke-static {v4, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    invoke-static {v4}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    new-instance v5, La1/d;

    .line 799
    .line 800
    invoke-direct {v5, v10, v11, v0, v4}, La1/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 801
    .line 802
    .line 803
    const/4 v0, 0x0

    .line 804
    :try_start_6
    invoke-static {v13, v0}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 805
    .line 806
    .line 807
    const/4 v0, 0x0

    .line 808
    goto :goto_11

    .line 809
    :goto_10
    invoke-static {v13, v0}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 810
    .line 811
    .line 812
    move-object v5, v0

    .line 813
    :goto_11
    if-nez v5, :cond_15

    .line 814
    .line 815
    invoke-static {v3, v0}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 816
    .line 817
    .line 818
    const/4 v8, 0x0

    .line 819
    goto :goto_15

    .line 820
    :cond_15
    :try_start_7
    invoke-virtual {v9, v5}, Ly4/i;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 821
    .line 822
    .line 823
    move-object/from16 v0, p0

    .line 824
    .line 825
    move-object/from16 v4, v18

    .line 826
    .line 827
    move/from16 v5, v19

    .line 828
    .line 829
    move-object/from16 v6, v22

    .line 830
    .line 831
    move/from16 v7, v23

    .line 832
    .line 833
    move/from16 v8, v25

    .line 834
    .line 835
    goto/16 :goto_b

    .line 836
    .line 837
    :catchall_3
    move-exception v0

    .line 838
    move-object v1, v0

    .line 839
    goto :goto_16

    .line 840
    :goto_12
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 841
    :catchall_4
    move-exception v0

    .line 842
    move-object v2, v0

    .line 843
    :try_start_9
    invoke-static {v13, v1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 844
    .line 845
    .line 846
    throw v2

    .line 847
    :cond_16
    invoke-static {v9}, Lv1/f;->c(Ly4/i;)Ly4/i;

    .line 848
    .line 849
    .line 850
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 851
    const/4 v4, 0x0

    .line 852
    invoke-static {v3, v4}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 853
    .line 854
    .line 855
    :goto_13
    move-object v8, v0

    .line 856
    goto :goto_15

    .line 857
    :goto_14
    invoke-static {v3, v0}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 858
    .line 859
    .line 860
    goto :goto_13

    .line 861
    :goto_15
    new-instance v0, La1/e;

    .line 862
    .line 863
    move-object/from16 v4, v17

    .line 864
    .line 865
    invoke-direct {v0, v1, v4, v2, v8}, La1/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 866
    .line 867
    .line 868
    return-object v0

    .line 869
    :goto_16
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 870
    :catchall_5
    move-exception v0

    .line 871
    move-object v2, v0

    .line 872
    invoke-static {v3, v1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 873
    .line 874
    .line 875
    throw v2

    .line 876
    :goto_17
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 877
    :catchall_6
    move-exception v0

    .line 878
    move-object v2, v0

    .line 879
    invoke-static {v5, v1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 880
    .line 881
    .line 882
    throw v2

    .line 883
    :goto_18
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 884
    :catchall_7
    move-exception v0

    .line 885
    move-object v2, v0

    .line 886
    invoke-static {v5, v1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 887
    .line 888
    .line 889
    throw v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, La1/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, La1/e;

    iget-object v1, p1, La1/e;->a:Ljava/lang/String;

    iget-object v3, p0, La1/e;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, La1/e;->b:Ljava/util/Map;

    iget-object v3, p1, La1/e;->b:Ljava/util/Map;

    invoke-static {v1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, La1/e;->c:Ljava/util/Set;

    iget-object v3, p1, La1/e;->c:Ljava/util/Set;

    invoke-static {v1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, La1/e;->d:Ljava/util/Set;

    if-eqz v1, :cond_6

    iget-object p1, p1, La1/e;->d:Ljava/util/Set;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v1, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_6
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, La1/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La1/e;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, La1/e;->c:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TableInfo{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La1/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La1/e;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foreignKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La1/e;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La1/e;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
