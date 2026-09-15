.class public abstract Le0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le0/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le0/b;-><init>(I)V

    sput-object v0, Le0/d;->a:Le0/b;

    return-void
.end method

.method public static a(Landroid/content/Context;Le0/e;)Le0/j;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, v0, Le0/e;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    invoke-virtual {v1, v3, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-eqz v4, :cond_11

    .line 20
    .line 21
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v8, v0, Le0/e;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_10

    .line 30
    .line 31
    iget-object v3, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    const/16 v5, 0x40

    .line 34
    .line 35
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 40
    .line 41
    new-instance v3, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    array-length v5, v1

    .line 47
    move v8, v7

    .line 48
    :goto_0
    if-ge v8, v5, :cond_0

    .line 49
    .line 50
    aget-object v9, v1, v8

    .line 51
    .line 52
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    add-int/lit8 v8, v8, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Le0/d;->a:Le0/b;

    .line 63
    .line 64
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 65
    .line 66
    .line 67
    iget-object v5, v0, Le0/e;->d:Ljava/util/List;

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-static {v2, v7}, Lv1/f;->O(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    :goto_1
    move v2, v7

    .line 77
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    const/4 v9, 0x0

    .line 82
    if-ge v2, v8, :cond_4

    .line 83
    .line 84
    new-instance v8, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    check-cast v10, Ljava/util/Collection;

    .line 91
    .line 92
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-eq v10, v11, :cond_2

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_2
    move v10, v7

    .line 110
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-ge v10, v11, :cond_5

    .line 115
    .line 116
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    check-cast v11, [B

    .line 121
    .line 122
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    check-cast v12, [B

    .line 127
    .line 128
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-nez v11, :cond_3

    .line 133
    .line 134
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    move-object v4, v9

    .line 141
    :cond_5
    const/4 v8, 0x1

    .line 142
    if-nez v4, :cond_6

    .line 143
    .line 144
    new-instance v0, Le0/j;

    .line 145
    .line 146
    invoke-direct {v0, v8, v9}, Le0/j;-><init>(I[Le0/k;)V

    .line 147
    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_6
    iget-object v1, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 151
    .line 152
    const-string v10, "result_code"

    .line 153
    .line 154
    const-string v11, "font_italic"

    .line 155
    .line 156
    const-string v12, "font_weight"

    .line 157
    .line 158
    const-string v13, "font_ttc_index"

    .line 159
    .line 160
    const-string v14, "file_id"

    .line 161
    .line 162
    const-string v15, "_id"

    .line 163
    .line 164
    new-instance v16, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance v2, Landroid/net/Uri$Builder;

    .line 170
    .line 171
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v3, "content"

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    new-instance v2, Landroid/net/Uri$Builder;

    .line 189
    .line 190
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const-string v2, "file"

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const/4 v1, 0x7

    .line 212
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    .line 213
    .line 214
    aput-object v15, v2, v7

    .line 215
    .line 216
    aput-object v14, v2, v8

    .line 217
    .line 218
    const/4 v1, 0x2

    .line 219
    aput-object v13, v2, v1

    .line 220
    .line 221
    const-string v1, "font_variation_settings"

    .line 222
    .line 223
    const/4 v3, 0x3

    .line 224
    aput-object v1, v2, v3

    .line 225
    .line 226
    const/4 v1, 0x4

    .line 227
    aput-object v12, v2, v1

    .line 228
    .line 229
    const/4 v1, 0x5

    .line 230
    aput-object v11, v2, v1

    .line 231
    .line 232
    const/4 v1, 0x6

    .line 233
    aput-object v10, v2, v1

    .line 234
    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    const-string v3, "query = ?"

    .line 240
    .line 241
    new-array v9, v8, [Ljava/lang/String;

    .line 242
    .line 243
    iget-object v0, v0, Le0/e;->c:Ljava/lang/String;

    .line 244
    .line 245
    aput-object v0, v9, v7

    .line 246
    .line 247
    const/16 v18, 0x0

    .line 248
    .line 249
    move-object v0, v1

    .line 250
    move-object v1, v5

    .line 251
    move-object v7, v4

    .line 252
    move-object v4, v9

    .line 253
    move-object v9, v5

    .line 254
    move-object/from16 v5, v18

    .line 255
    .line 256
    invoke-static/range {v0 .. v6}, Le0/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    .line 257
    .line 258
    .line 259
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    if-eqz v1, :cond_c

    .line 261
    .line 262
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-lez v0, :cond_c

    .line 267
    .line 268
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    if-eqz v11, :cond_d

    .line 302
    .line 303
    const/4 v11, -0x1

    .line 304
    if-eq v0, v11, :cond_7

    .line 305
    .line 306
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 307
    .line 308
    .line 309
    move-result v12

    .line 310
    move/from16 v18, v12

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :catchall_0
    move-exception v0

    .line 314
    move-object v9, v1

    .line 315
    goto :goto_d

    .line 316
    :cond_7
    const/16 v18, 0x0

    .line 317
    .line 318
    :goto_6
    if-eq v5, v11, :cond_8

    .line 319
    .line 320
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 321
    .line 322
    .line 323
    move-result v12

    .line 324
    move v15, v12

    .line 325
    goto :goto_7

    .line 326
    :cond_8
    const/4 v15, 0x0

    .line 327
    :goto_7
    if-ne v4, v11, :cond_9

    .line 328
    .line 329
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 330
    .line 331
    .line 332
    move-result-wide v12

    .line 333
    invoke-static {v9, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 334
    .line 335
    .line 336
    move-result-object v12

    .line 337
    :goto_8
    move-object v14, v12

    .line 338
    goto :goto_9

    .line 339
    :cond_9
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 340
    .line 341
    .line 342
    move-result-wide v12

    .line 343
    invoke-static {v7, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 344
    .line 345
    .line 346
    move-result-object v12

    .line 347
    goto :goto_8

    .line 348
    :goto_9
    if-eq v6, v11, :cond_a

    .line 349
    .line 350
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 351
    .line 352
    .line 353
    move-result v12

    .line 354
    :goto_a
    move/from16 v16, v12

    .line 355
    .line 356
    goto :goto_b

    .line 357
    :cond_a
    const/16 v12, 0x190

    .line 358
    .line 359
    goto :goto_a

    .line 360
    :goto_b
    if-eq v10, v11, :cond_b

    .line 361
    .line 362
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 363
    .line 364
    .line 365
    move-result v11

    .line 366
    if-ne v11, v8, :cond_b

    .line 367
    .line 368
    move/from16 v17, v8

    .line 369
    .line 370
    goto :goto_c

    .line 371
    :cond_b
    const/16 v17, 0x0

    .line 372
    .line 373
    :goto_c
    new-instance v11, Le0/k;

    .line 374
    .line 375
    move-object v13, v11

    .line 376
    invoke-direct/range {v13 .. v18}, Le0/k;-><init>(Landroid/net/Uri;IIZI)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_c
    move-object/from16 v2, v16

    .line 384
    .line 385
    :cond_d
    if-eqz v1, :cond_e

    .line 386
    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 388
    .line 389
    .line 390
    :cond_e
    const/4 v0, 0x0

    .line 391
    new-array v1, v0, [Le0/k;

    .line 392
    .line 393
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    check-cast v1, [Le0/k;

    .line 398
    .line 399
    new-instance v2, Le0/j;

    .line 400
    .line 401
    invoke-direct {v2, v0, v1}, Le0/j;-><init>(I[Le0/k;)V

    .line 402
    .line 403
    .line 404
    return-object v2

    .line 405
    :catchall_1
    move-exception v0

    .line 406
    const/4 v9, 0x0

    .line 407
    :goto_d
    if-eqz v9, :cond_f

    .line 408
    .line 409
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 410
    .line 411
    .line 412
    :cond_f
    throw v0

    .line 413
    :cond_10
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 414
    .line 415
    const-string v1, "Found content provider "

    .line 416
    .line 417
    const-string v2, ", but package was not "

    .line 418
    .line 419
    invoke-static {v1, v3, v2, v8}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v0

    .line 427
    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 428
    .line 429
    const-string v1, "No package found for authority: "

    .line 430
    .line 431
    invoke-static {v1, v3}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw v0
.end method
