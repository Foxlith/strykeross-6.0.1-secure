.class public final Lm3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static final b:Ljava/util/Set;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "REM"

    const-string v2, "DELAY"

    const-string v3, "DEFAULTDELAY"

    const-string v4, "DEFAULT_DELAY"

    const-string v5, "DEFAULTCHARDELAY"

    const-string v6, "DEFAULT_CHAR_DELAY"

    const-string v7, "STRING"

    const-string v8, "STRINGLN"

    const-string v9, "STRINGDELAY"

    const-string v10, "STRING_DELAY"

    const-string v11, "REPEAT"

    const-string v12, "END_REPEAT"

    const-string v13, "DEFINE"

    const-string v14, "VAR"

    const-string v15, "ATTACKMODE"

    const-string v16, "HOLD"

    const-string v17, "RELEASE"

    const-string v18, "RELEASE_ALL"

    const-string v19, "IF"

    const-string v20, "ELSE"

    const-string v21, "END_IF"

    const-string v22, "WHILE"

    const-string v23, "END_WHILE"

    const-string v24, "FUNCTION"

    const-string v25, "END_FUNCTION"

    const-string v26, "RETURN"

    const-string v27, "MOUSE_MOVE"

    const-string v28, "MOUSE_CLICK"

    const-string v29, "MOUSE_SCROLL"

    const-string v30, "IMPORT"

    const-string v31, "INCLUDE"

    const-string v32, "GETWINHI"

    const-string v33, "CAPTURE"

    const-string v34, "WINHI"

    const-string v35, "SCREEN"

    const-string v36, "VIEW"

    const-string v37, "STARTSCREEN"

    const-string v38, "STARTVIEW"

    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lm3/a;->b:Ljava/util/Set;

    return-void
.end method

.method public static a(Landroid/text/Editable;)V
    .locals 13

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-class v2, Landroid/text/style/CharacterStyle;

    .line 7
    .line 8
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    move v3, v1

    .line 16
    :goto_0
    if-ge v3, v2, :cond_2

    .line 17
    .line 18
    aget-object v4, v0, v3

    .line 19
    .line 20
    instance-of v5, v4, Landroid/text/style/ForegroundColorSpan;

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    instance-of v5, v4, Landroid/text/style/StyleSpan;

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    move v2, v1

    .line 39
    move v3, v2

    .line 40
    :goto_1
    if-gt v2, v0, :cond_22

    .line 41
    .line 42
    if-eq v2, v0, :cond_3

    .line 43
    .line 44
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/16 v5, 0xa

    .line 49
    .line 50
    if-ne v4, v5, :cond_21

    .line 51
    .line 52
    :cond_3
    if-lt v3, v2, :cond_4

    .line 53
    .line 54
    goto/16 :goto_15

    .line 55
    .line 56
    :cond_4
    move v4, v3

    .line 57
    :goto_2
    if-ge v4, v2, :cond_5

    .line 58
    .line 59
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    if-lt v4, v2, :cond_6

    .line 73
    .line 74
    goto/16 :goto_15

    .line 75
    .line 76
    :cond_6
    move v5, v4

    .line 77
    :goto_3
    if-ge v5, v2, :cond_7

    .line 78
    .line 79
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_7

    .line 88
    .line 89
    add-int/lit8 v5, v5, 0x1

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    invoke-interface {p0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const-string v7, "REM"

    .line 107
    .line 108
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    const v9, -0x948d80

    .line 113
    .line 114
    .line 115
    const/16 v10, 0x21

    .line 116
    .line 117
    if-nez v8, :cond_1f

    .line 118
    .line 119
    const-string v8, "//"

    .line 120
    .line 121
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_8

    .line 126
    .line 127
    goto/16 :goto_14

    .line 128
    .line 129
    :cond_8
    sget-object v3, Lm3/a;->b:Ljava/util/Set;

    .line 130
    .line 131
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    const/4 v8, 0x1

    .line 136
    const v11, -0x109400

    .line 137
    .line 138
    .line 139
    if-eqz v3, :cond_14

    .line 140
    .line 141
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 142
    .line 143
    const v12, -0xea9a40

    .line 144
    .line 145
    .line 146
    invoke-direct {v3, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p0, v3, v4, v5, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 150
    .line 151
    .line 152
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 153
    .line 154
    invoke-direct {v3, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p0, v3, v4, v5, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 158
    .line 159
    .line 160
    :goto_4
    if-ge v5, v2, :cond_9

    .line 161
    .line 162
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_9

    .line 171
    .line 172
    add-int/lit8 v5, v5, 0x1

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_9
    if-ge v5, v2, :cond_20

    .line 176
    .line 177
    const-string v3, "STRING"

    .line 178
    .line 179
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    const v4, -0xd182ce

    .line 184
    .line 185
    .line 186
    if-nez v3, :cond_13

    .line 187
    .line 188
    const-string v3, "STRINGLN"

    .line 189
    .line 190
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_a

    .line 195
    .line 196
    goto/16 :goto_c

    .line 197
    .line 198
    :cond_a
    const-string v3, "STRINGDELAY"

    .line 199
    .line 200
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-nez v3, :cond_10

    .line 205
    .line 206
    const-string v3, "STRING_DELAY"

    .line 207
    .line 208
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_b

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_b
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_c

    .line 220
    .line 221
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 222
    .line 223
    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 224
    .line 225
    .line 226
    :goto_5
    invoke-interface {p0, v3, v5, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_15

    .line 230
    .line 231
    :cond_c
    :goto_6
    if-ge v5, v2, :cond_20

    .line 232
    .line 233
    :goto_7
    if-ge v5, v2, :cond_d

    .line 234
    .line 235
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-nez v3, :cond_d

    .line 244
    .line 245
    add-int/lit8 v5, v5, 0x1

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_d
    move v3, v5

    .line 249
    :goto_8
    if-ge v3, v2, :cond_e

    .line 250
    .line 251
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_e

    .line 260
    .line 261
    add-int/lit8 v3, v3, 0x1

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_e
    if-ge v5, v3, :cond_f

    .line 265
    .line 266
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 267
    .line 268
    invoke-direct {v4, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 269
    .line 270
    .line 271
    invoke-interface {p0, v4, v5, v3, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 272
    .line 273
    .line 274
    :cond_f
    move v5, v3

    .line 275
    goto :goto_6

    .line 276
    :cond_10
    :goto_9
    move v3, v5

    .line 277
    :goto_a
    if-ge v3, v2, :cond_11

    .line 278
    .line 279
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-nez v6, :cond_11

    .line 288
    .line 289
    add-int/lit8 v3, v3, 0x1

    .line 290
    .line 291
    goto :goto_a

    .line 292
    :cond_11
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 293
    .line 294
    invoke-direct {v6, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 295
    .line 296
    .line 297
    invoke-interface {p0, v6, v5, v3, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 298
    .line 299
    .line 300
    :goto_b
    if-ge v3, v2, :cond_12

    .line 301
    .line 302
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-eqz v5, :cond_12

    .line 311
    .line 312
    add-int/lit8 v3, v3, 0x1

    .line 313
    .line 314
    goto :goto_b

    .line 315
    :cond_12
    if-ge v3, v2, :cond_20

    .line 316
    .line 317
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 318
    .line 319
    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 320
    .line 321
    .line 322
    invoke-interface {p0, v5, v3, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_15

    .line 326
    .line 327
    :cond_13
    :goto_c
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 328
    .line 329
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_14
    :goto_d
    if-ge v4, v2, :cond_20

    .line 334
    .line 335
    :goto_e
    if-ge v4, v2, :cond_15

    .line 336
    .line 337
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-eqz v3, :cond_15

    .line 346
    .line 347
    add-int/lit8 v4, v4, 0x1

    .line 348
    .line 349
    goto :goto_e

    .line 350
    :cond_15
    move v3, v4

    .line 351
    :goto_f
    if-ge v3, v2, :cond_16

    .line 352
    .line 353
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-nez v5, :cond_16

    .line 362
    .line 363
    add-int/lit8 v3, v3, 0x1

    .line 364
    .line 365
    goto :goto_f

    .line 366
    :cond_16
    if-ne v4, v3, :cond_17

    .line 367
    .line 368
    goto/16 :goto_15

    .line 369
    .line 370
    :cond_17
    invoke-interface {p0, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 379
    .line 380
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    sget-object v9, Lg3/d;->a:Ljava/util/Map;

    .line 385
    .line 386
    invoke-virtual {v7, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    sget-object v12, Lg3/d;->a:Ljava/util/Map;

    .line 391
    .line 392
    invoke-interface {v12, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    if-eqz v9, :cond_18

    .line 397
    .line 398
    const v5, -0x71db56

    .line 399
    .line 400
    .line 401
    goto :goto_12

    .line 402
    :cond_18
    invoke-virtual {v7, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    sget-object v7, Lg3/d;->b:Ljava/util/Map;

    .line 407
    .line 408
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    check-cast v6, Ljava/lang/Integer;

    .line 413
    .line 414
    if-eqz v6, :cond_19

    .line 415
    .line 416
    const v5, -0xff7685

    .line 417
    .line 418
    .line 419
    goto :goto_12

    .line 420
    :cond_19
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    if-eqz v6, :cond_1a

    .line 425
    .line 426
    goto :goto_13

    .line 427
    :cond_1a
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    const/16 v7, 0x2d

    .line 432
    .line 433
    if-ne v6, v7, :cond_1b

    .line 434
    .line 435
    move v6, v8

    .line 436
    goto :goto_10

    .line 437
    :cond_1b
    move v6, v1

    .line 438
    :goto_10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    if-ne v6, v7, :cond_1c

    .line 443
    .line 444
    goto :goto_13

    .line 445
    :cond_1c
    :goto_11
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    if-ge v6, v7, :cond_1e

    .line 450
    .line 451
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    .line 452
    .line 453
    .line 454
    move-result v7

    .line 455
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    if-nez v7, :cond_1d

    .line 460
    .line 461
    goto :goto_13

    .line 462
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    .line 463
    .line 464
    goto :goto_11

    .line 465
    :cond_1e
    move v5, v11

    .line 466
    :goto_12
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 467
    .line 468
    invoke-direct {v6, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 469
    .line 470
    .line 471
    invoke-interface {p0, v6, v4, v3, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 472
    .line 473
    .line 474
    :goto_13
    move v4, v3

    .line 475
    goto/16 :goto_d

    .line 476
    .line 477
    :cond_1f
    :goto_14
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 478
    .line 479
    invoke-direct {v4, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 480
    .line 481
    .line 482
    invoke-interface {p0, v4, v3, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 483
    .line 484
    .line 485
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 486
    .line 487
    const/4 v5, 0x2

    .line 488
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 489
    .line 490
    .line 491
    invoke-interface {p0, v4, v3, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 492
    .line 493
    .line 494
    :cond_20
    :goto_15
    add-int/lit8 v3, v2, 0x1

    .line 495
    .line 496
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 497
    .line 498
    goto/16 :goto_1

    .line 499
    .line 500
    :cond_22
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm3/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm3/a;->a:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lm3/a;->a(Landroid/text/Editable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lm3/a;->a:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lm3/a;->a:Z

    throw p1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
