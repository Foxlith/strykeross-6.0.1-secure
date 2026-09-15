.class public final Lu2/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:J

.field public final c:J

.field public final d:I

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lu2/r;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lu2/r;->g:J

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lu2/r;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lu2/r;->d:I

    const-wide/16 v0, 0x64

    const-wide/16 v2, 0x1000

    :try_start_0
    sget p1, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {p1}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget p1, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {p1}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-wide v4, v2

    :catchall_1
    move-wide v6, v0

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long p1, v4, v8

    if-gtz p1, :cond_1

    goto :goto_2

    :cond_1
    move-wide v2, v4

    :goto_2
    iput-wide v2, p0, Lu2/r;->b:J

    cmp-long p1, v6, v8

    if-gtz p1, :cond_2

    goto :goto_3

    :cond_2
    move-wide v0, v6

    :goto_3
    iput-wide v0, p0, Lu2/r;->c:J

    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-array p1, p0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_1

    sub-int v4, p0, v3

    invoke-virtual {v1, p1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-gtz v3, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object v0

    :cond_2
    move p0, v2

    :goto_2
    if-ge p0, v3, :cond_4

    :try_start_3
    aget-byte v4, p1, p0

    if-nez v4, :cond_3

    const/16 v4, 0x20

    aput-byte v4, p1, p0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-object p0

    :catchall_2
    move-object v1, v0

    :catchall_3
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_5
    return-object v0
.end method


# virtual methods
.method public final b()Lu2/q;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lu2/q;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    iput v2, v1, Lu2/q;->a:I

    .line 10
    .line 11
    const/high16 v3, -0x40800000    # -1.0f

    .line 12
    .line 13
    iput v3, v1, Lu2/q;->d:F

    .line 14
    .line 15
    const-wide/16 v3, -0x1

    .line 16
    .line 17
    iput-wide v3, v1, Lu2/q;->e:J

    .line 18
    .line 19
    iget-wide v5, v0, Lu2/r;->i:J

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    cmp-long v5, v5, v7

    .line 24
    .line 25
    if-lez v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :try_start_0
    iget-object v5, v0, Lu2/r;->a:Landroid/content/Context;

    .line 29
    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v6, "activity"

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Landroid/app/ActivityManager;

    .line 41
    .line 42
    :goto_0
    if-nez v5, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    .line 46
    .line 47
    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 51
    .line 52
    .line 53
    iget-wide v5, v6, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 54
    .line 55
    iput-wide v5, v0, Lu2/r;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    :catchall_0
    :goto_1
    iget v5, v0, Lu2/r;->e:I

    .line 58
    .line 59
    const-string v6, "/proc/"

    .line 60
    .line 61
    if-lez v5, :cond_4

    .line 62
    .line 63
    new-instance v5, Ljava/io/File;

    .line 64
    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v10, v0, Lu2/r;->e:I

    .line 71
    .line 72
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_3

    .line 87
    .line 88
    iget v5, v0, Lu2/r;->e:I

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_3
    iput v2, v0, Lu2/r;->e:I

    .line 92
    .line 93
    iput-wide v3, v0, Lu2/r;->g:J

    .line 94
    .line 95
    iput-wide v7, v0, Lu2/r;->h:J

    .line 96
    .line 97
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v9

    .line 101
    iget-wide v11, v0, Lu2/r;->f:J

    .line 102
    .line 103
    sub-long v11, v9, v11

    .line 104
    .line 105
    const-wide/16 v13, 0x9c4

    .line 106
    .line 107
    cmp-long v5, v11, v13

    .line 108
    .line 109
    if-gez v5, :cond_5

    .line 110
    .line 111
    move v5, v2

    .line 112
    goto :goto_5

    .line 113
    :cond_5
    iput-wide v9, v0, Lu2/r;->f:J

    .line 114
    .line 115
    :try_start_1
    new-instance v5, Ljava/io/File;

    .line 116
    .line 117
    const-string v9, "/proc"

    .line 118
    .line 119
    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-nez v5, :cond_7

    .line 127
    .line 128
    :catchall_1
    :cond_6
    move v5, v2

    .line 129
    goto :goto_4

    .line 130
    :cond_7
    array-length v9, v5

    .line 131
    const/4 v10, 0x0

    .line 132
    :goto_2
    if-ge v10, v9, :cond_6

    .line 133
    .line 134
    aget-object v11, v5, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    .line 136
    :try_start_2
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v13, "/cmdline"

    .line 152
    .line 153
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    const/16 v13, 0x200

    .line 161
    .line 162
    invoke-static {v13, v12}, Lu2/r;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    if-eqz v12, :cond_9

    .line 167
    .line 168
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-eqz v13, :cond_8

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    const-string v13, "qemu-system"

    .line 176
    .line 177
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    if-eqz v12, :cond_9

    .line 182
    .line 183
    move v5, v11

    .line 184
    goto :goto_4

    .line 185
    :catch_0
    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :goto_4
    iput v5, v0, Lu2/r;->e:I

    .line 189
    .line 190
    :goto_5
    iput v5, v1, Lu2/q;->a:I

    .line 191
    .line 192
    if-gtz v5, :cond_a

    .line 193
    .line 194
    iput v2, v0, Lu2/r;->e:I

    .line 195
    .line 196
    iput-wide v7, v0, Lu2/r;->f:J

    .line 197
    .line 198
    iput-wide v3, v0, Lu2/r;->g:J

    .line 199
    .line 200
    iput-wide v7, v0, Lu2/r;->h:J

    .line 201
    .line 202
    return-object v1

    .line 203
    :cond_a
    const/4 v2, 0x1

    .line 204
    iput-boolean v2, v1, Lu2/q;->b:Z

    .line 205
    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v5, "/stat"

    .line 215
    .line 216
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const/16 v9, 0x400

    .line 224
    .line 225
    invoke-static {v9, v5}, Lu2/r;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    const-string v9, "\\s+"

    .line 230
    .line 231
    const/4 v10, 0x2

    .line 232
    if-nez v5, :cond_c

    .line 233
    .line 234
    :catch_1
    :cond_b
    :goto_6
    move-wide v11, v3

    .line 235
    goto :goto_7

    .line 236
    :cond_c
    const/16 v11, 0x29

    .line 237
    .line 238
    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    if-ltz v11, :cond_b

    .line 243
    .line 244
    add-int/2addr v11, v10

    .line 245
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    if-lt v11, v12, :cond_d

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_d
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    array-length v11, v5

    .line 265
    const/16 v12, 0xf

    .line 266
    .line 267
    if-ge v11, v12, :cond_e

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_e
    const/16 v11, 0xb

    .line 271
    .line 272
    :try_start_4
    aget-object v11, v5, v11

    .line 273
    .line 274
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 275
    .line 276
    .line 277
    move-result-wide v11

    .line 278
    const/16 v13, 0xc

    .line 279
    .line 280
    aget-object v5, v5, v13

    .line 281
    .line 282
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 283
    .line 284
    .line 285
    move-result-wide v13
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 286
    add-long/2addr v11, v13

    .line 287
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 288
    .line 289
    .line 290
    move-result-wide v13

    .line 291
    cmp-long v5, v11, v7

    .line 292
    .line 293
    if-gez v5, :cond_f

    .line 294
    .line 295
    iput-boolean v2, v1, Lu2/q;->c:Z

    .line 296
    .line 297
    iput-wide v3, v0, Lu2/r;->g:J

    .line 298
    .line 299
    iput-wide v7, v0, Lu2/r;->h:J

    .line 300
    .line 301
    move-object v4, v6

    .line 302
    goto :goto_9

    .line 303
    :cond_f
    iget-wide v3, v0, Lu2/r;->g:J

    .line 304
    .line 305
    cmp-long v5, v3, v7

    .line 306
    .line 307
    if-ltz v5, :cond_10

    .line 308
    .line 309
    move-wide/from16 v16, v3

    .line 310
    .line 311
    iget-wide v2, v0, Lu2/r;->h:J

    .line 312
    .line 313
    cmp-long v4, v2, v7

    .line 314
    .line 315
    if-lez v4, :cond_10

    .line 316
    .line 317
    cmp-long v4, v11, v16

    .line 318
    .line 319
    if-ltz v4, :cond_10

    .line 320
    .line 321
    sub-long v2, v13, v2

    .line 322
    .line 323
    long-to-double v2, v2

    .line 324
    const-wide v18, 0x41cdcd6500000000L    # 1.0E9

    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    div-double v2, v2, v18

    .line 330
    .line 331
    const-wide v18, 0x3fc3333333333333L    # 0.15

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    cmpl-double v4, v2, v18

    .line 337
    .line 338
    if-ltz v4, :cond_10

    .line 339
    .line 340
    sub-long v7, v11, v16

    .line 341
    .line 342
    long-to-double v7, v7

    .line 343
    move-object v4, v6

    .line 344
    iget-wide v5, v0, Lu2/r;->c:J

    .line 345
    .line 346
    long-to-double v5, v5

    .line 347
    div-double/2addr v7, v5

    .line 348
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 349
    .line 350
    mul-double/2addr v7, v5

    .line 351
    iget v15, v0, Lu2/r;->d:I

    .line 352
    .line 353
    move-wide/from16 v20, v11

    .line 354
    .line 355
    int-to-double v10, v15

    .line 356
    mul-double/2addr v2, v10

    .line 357
    div-double/2addr v7, v2

    .line 358
    const-wide/16 v2, 0x0

    .line 359
    .line 360
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    .line 361
    .line 362
    .line 363
    move-result-wide v5

    .line 364
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 365
    .line 366
    .line 367
    move-result-wide v2

    .line 368
    double-to-float v2, v2

    .line 369
    iput v2, v1, Lu2/q;->d:F

    .line 370
    .line 371
    move-wide/from16 v11, v20

    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_10
    move-object v4, v6

    .line 375
    :goto_8
    iput-wide v11, v0, Lu2/r;->g:J

    .line 376
    .line 377
    iput-wide v13, v0, Lu2/r;->h:J

    .line 378
    .line 379
    :goto_9
    iget v2, v1, Lu2/q;->a:I

    .line 380
    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string v2, "/statm"

    .line 390
    .line 391
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    const/16 v3, 0x100

    .line 399
    .line 400
    invoke-static {v3, v2}, Lu2/r;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    if-nez v2, :cond_11

    .line 405
    .line 406
    :catch_2
    :goto_a
    const-wide/16 v3, -0x1

    .line 407
    .line 408
    goto :goto_b

    .line 409
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    array-length v3, v2

    .line 418
    const/4 v4, 0x2

    .line 419
    if-ge v3, v4, :cond_12

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_12
    const/4 v3, 0x1

    .line 423
    :try_start_5
    aget-object v2, v2, v3

    .line 424
    .line 425
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 426
    .line 427
    .line 428
    move-result-wide v2

    .line 429
    iget-wide v6, v0, Lu2/r;->b:J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    .line 430
    .line 431
    mul-long v3, v2, v6

    .line 432
    .line 433
    :goto_b
    iput-wide v3, v1, Lu2/q;->e:J

    .line 434
    .line 435
    const-wide/16 v6, 0x0

    .line 436
    .line 437
    cmp-long v2, v3, v6

    .line 438
    .line 439
    if-gez v2, :cond_13

    .line 440
    .line 441
    const/4 v2, 0x1

    .line 442
    iput-boolean v2, v1, Lu2/q;->c:Z

    .line 443
    .line 444
    :cond_13
    return-object v1
.end method
