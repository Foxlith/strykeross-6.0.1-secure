.class public Lcom/zalexdev/stryker/logger/LoggerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public volatile A:Z

.field public B:Ljava/lang/Runnable;

.field public final C:Lu3/k;

.field public D:Lf/d0;

.field public a:Landroid/content/Context;

.field public b:Ll4/l;

.field public c:Lu3/e;

.field public final d:Lv1/t;

.field public e:Lu3/i;

.field public f:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public i:Landroid/view/View;

.field public j:Lcom/google/android/material/textview/MaterialTextView;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/view/View;

.field public m:Lcom/google/android/material/chip/ChipGroup;

.field public n:Lcom/google/android/material/chip/ChipGroup;

.field public p:Ljava/util/concurrent/ExecutorService;

.field public final q:Landroid/os/Handler;

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lv1/t;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lv1/t;-><init>(I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->r:I

    iput-boolean v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->s:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->t:Z

    iput-boolean v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->u:Z

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->v:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->w:J

    iput-wide v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->x:J

    iput-wide v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->y:J

    iput-boolean v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->z:Z

    iput-boolean v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    new-instance v1, Lu3/k;

    invoke-direct {v1, p0, v0}, Lu3/k;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    iput-object v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->C:Lu3/k;

    return-void
.end method


# virtual methods
.method public final d(Lv1/t;)Ljava/io/File;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/io/File;

    .line 4
    .line 5
    iget-object v0, v1, Lcom/zalexdev/stryker/logger/LoggerFragment;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v3, "stryker.log"

    .line 12
    .line 13
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Lcom/zalexdev/stryker/logger/LoggerFragment;->c:Lu3/e;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v4, "]"

    .line 22
    .line 23
    const-string v5, " ["

    .line 24
    .line 25
    const-string v6, "SELECT ts,level,tool,msg FROM log WHERE "

    .line 26
    .line 27
    new-instance v13, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    const-wide v8, 0x7fffffffffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide/16 v10, 0x0

    .line 38
    .line 39
    move-object/from16 v7, p1

    .line 40
    .line 41
    move-object v12, v13

    .line 42
    invoke-virtual/range {v7 .. v12}, Lv1/t;->h(JJLjava/util/ArrayList;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const/4 v10, 0x0

    .line 47
    :try_start_0
    iget-object v0, v0, Lu3/e;->b:Lu3/c;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    .line 51
    .line 52
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 53
    new-instance v14, Ljava/text/SimpleDateFormat;

    .line 54
    .line 55
    const-string v15, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 56
    .line 57
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 58
    .line 59
    invoke-direct {v14, v15, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 60
    .line 61
    .line 62
    :try_start_1
    new-instance v11, Ljava/io/BufferedWriter;

    .line 63
    .line 64
    new-instance v12, Ljava/io/FileWriter;

    .line 65
    .line 66
    invoke-direct {v12, v2, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    .line 72
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, " ORDER BY _id ASC"

    .line 81
    .line 82
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    new-array v7, v10, [Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    check-cast v7, [Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 98
    .line 99
    .line 100
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    :try_start_3
    const-string v0, "==== Stryker log export ====\n"

    .line 102
    .line 103
    invoke-virtual {v11, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-wide/16 v12, 0x0

    .line 107
    .line 108
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    const/4 v0, 0x2

    .line 115
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_0

    .line 120
    .line 121
    const-string v7, ""

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    move-object v4, v0

    .line 126
    goto/16 :goto_3

    .line 127
    .line 128
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    :goto_1
    new-instance v15, Ljava/util/Date;

    .line 133
    .line 134
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v8

    .line 138
    invoke-direct {v15, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {v11, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const/4 v8, 0x1

    .line 152
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    const/4 v15, 0x3

    .line 157
    if-eq v9, v8, :cond_5

    .line 158
    .line 159
    if-eq v9, v0, :cond_4

    .line 160
    .line 161
    if-eq v9, v15, :cond_3

    .line 162
    .line 163
    const/4 v0, 0x4

    .line 164
    if-eq v9, v0, :cond_2

    .line 165
    .line 166
    const/4 v0, 0x5

    .line 167
    if-eq v9, v0, :cond_1

    .line 168
    .line 169
    const-string v0, "INFO"

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_1
    const-string v0, "OK"

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_2
    const-string v0, "WARN"

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_3
    const-string v0, "ERR"

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    const-string v0, "OUT"

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    const-string v0, "CMD"

    .line 185
    .line 186
    :goto_2
    invoke-virtual {v11, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v11, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_6

    .line 197
    .line 198
    invoke-virtual {v11, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v11, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v11, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_6
    const-string v0, " "

    .line 208
    .line 209
    invoke-virtual {v11, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v11, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string v0, "\n"

    .line 220
    .line 221
    invoke-virtual {v11, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    .line 223
    .line 224
    const-wide/16 v7, 0x1

    .line 225
    .line 226
    add-long/2addr v12, v7

    .line 227
    goto :goto_0

    .line 228
    :cond_7
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 229
    .line 230
    .line 231
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 232
    .line 233
    .line 234
    move-wide v11, v12

    .line 235
    const-wide/16 v4, 0x0

    .line 236
    .line 237
    goto :goto_8

    .line 238
    :catch_0
    move-exception v0

    .line 239
    goto :goto_7

    .line 240
    :catch_1
    move-exception v0

    .line 241
    goto :goto_7

    .line 242
    :catchall_1
    move-exception v0

    .line 243
    move-object v4, v0

    .line 244
    goto :goto_5

    .line 245
    :goto_3
    if-eqz v6, :cond_8

    .line 246
    .line 247
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :catchall_2
    move-exception v0

    .line 252
    move-object v5, v0

    .line 253
    :try_start_7
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    :cond_8
    :goto_4
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 257
    :goto_5
    :try_start_8
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 258
    .line 259
    .line 260
    goto :goto_6

    .line 261
    :catchall_3
    move-exception v0

    .line 262
    move-object v5, v0

    .line 263
    :try_start_9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    :goto_6
    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 267
    :goto_7
    const-string v4, "LogStore"

    .line 268
    .line 269
    const-string v5, "export failed"

    .line 270
    .line 271
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .line 273
    .line 274
    :catchall_4
    const-wide/16 v4, 0x0

    .line 275
    .line 276
    const-wide/16 v11, -0x1

    .line 277
    .line 278
    :goto_8
    cmp-long v0, v11, v4

    .line 279
    .line 280
    if-gez v0, :cond_9

    .line 281
    .line 282
    const/4 v0, 0x0

    .line 283
    return-object v0

    .line 284
    :cond_9
    new-instance v0, Ljava/io/File;

    .line 285
    .line 286
    iget-object v4, v1, Lcom/zalexdev/stryker/logger/LoggerFragment;->b:Ll4/l;

    .line 287
    .line 288
    invoke-virtual {v4}, Ll4/l;->H()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-nez v4, :cond_a

    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-nez v4, :cond_a

    .line 306
    .line 307
    return-object v2

    .line 308
    :cond_a
    new-instance v4, Ljava/io/File;

    .line 309
    .line 310
    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    .line 314
    .line 315
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 316
    .line 317
    .line 318
    :try_start_b
    new-instance v5, Ljava/io/FileOutputStream;

    .line 319
    .line 320
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 321
    .line 322
    .line 323
    const/16 v0, 0x2000

    .line 324
    .line 325
    :try_start_c
    new-array v0, v0, [B

    .line 326
    .line 327
    :goto_9
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    const/4 v7, -0x1

    .line 332
    if-eq v6, v7, :cond_b

    .line 333
    .line 334
    invoke-virtual {v5, v0, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 335
    .line 336
    .line 337
    goto :goto_9

    .line 338
    :catchall_5
    move-exception v0

    .line 339
    move-object v4, v0

    .line 340
    goto :goto_a

    .line 341
    :cond_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 342
    .line 343
    .line 344
    :try_start_d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 345
    .line 346
    .line 347
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 348
    .line 349
    .line 350
    return-object v4

    .line 351
    :catchall_6
    move-exception v0

    .line 352
    move-object v4, v0

    .line 353
    goto :goto_c

    .line 354
    :goto_a
    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 355
    .line 356
    .line 357
    goto :goto_b

    .line 358
    :catchall_7
    move-exception v0

    .line 359
    move-object v5, v0

    .line 360
    :try_start_10
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 361
    .line 362
    .line 363
    :goto_b
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 364
    :goto_c
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 365
    .line 366
    .line 367
    goto :goto_d

    .line 368
    :catchall_8
    move-exception v0

    .line 369
    move-object v3, v0

    .line 370
    :try_start_12
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    :goto_d
    throw v4
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    .line 374
    :catch_2
    return-object v2
.end method

.method public final e()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->r:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->r:I

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->s:Z

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->t:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->u:Z

    .line 13
    .line 14
    const-wide v2, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    iput-wide v2, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->v:J

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    iput-wide v2, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->w:J

    .line 24
    .line 25
    iget-object v2, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->h:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->e:Lu3/i;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    .line 33
    .line 34
    iget-object v3, v2, Lv1/t;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 60
    :goto_1
    iput-object v3, v1, Lu3/i;->d:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2}, Lv1/t;->i()Lv1/t;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Lcom/stryker/terminal/component/session/b;

    .line 67
    .line 68
    const/4 v3, 0x5

    .line 69
    invoke-direct {v2, p0, v1, v0, v3}, Lcom/stryker/terminal/component/session/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/logger/LoggerFragment;->f(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->p:Ljava/util/concurrent/ExecutorService;

    iget-boolean v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->D:Lf/d0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->D:Lf/d0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->D:Lf/d0;

    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->C:Lu3/k;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->x:J

    .line 6
    .line 7
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "%,d"

    .line 20
    .line 21
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    .line 26
    .line 27
    iget-object v2, v1, Lv1/t;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ljava/util/Set;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object v2, v1, Lv1/t;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    :cond_0
    iget-object v1, v1, Lv1/t;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    :cond_1
    move v1, v3

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v1, 0x0

    .line 69
    :goto_0
    xor-int/2addr v1, v3

    .line 70
    iget-object v2, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->j:Lcom/google/android/material/textview/MaterialTextView;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    const v1, 0x7f130364

    .line 75
    .line 76
    .line 77
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const v1, 0x7f130363

    .line 87
    .line 88
    .line 89
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->a:Landroid/content/Context;

    new-instance v0, Ll4/l;

    invoke-direct {v0, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->b:Ll4/l;

    iget-object p3, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->a:Landroid/content/Context;

    invoke-static {p3}, Lu3/e;->c(Landroid/content/Context;)Lu3/e;

    move-result-object p3

    iput-object p3, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->c:Lu3/e;

    const p3, 0x7f0d008a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    invoke-virtual {p0}, Lcom/zalexdev/stryker/logger/LoggerFragment;->g()V

    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->p:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->p:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/logger/LoggerFragment;->g()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->D:Lf/d0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lf/d0;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-direct {v0, p0, v1}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->D:Lf/d0;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->D:Lf/d0;

    .line 24
    .line 25
    new-instance v2, Landroid/content/IntentFilter;

    .line 26
    .line 27
    const-string v3, "com.zalexdev.stryker.LOG_UPDATED"

    .line 28
    .line 29
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lx/g;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    .line 3
    .line 4
    new-instance v0, Lu2/e;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1}, Lu2/e;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->p:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    const v0, 0x7f0a04ea

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->h:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 26
    .line 27
    const v0, 0x7f0a0382

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    const v0, 0x7f0a01c8

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->i:Landroid/view/View;

    .line 46
    .line 47
    const v0, 0x7f0a0387

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->j:Lcom/google/android/material/textview/MaterialTextView;

    .line 57
    .line 58
    const v0, 0x7f0a037d

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/EditText;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->k:Landroid/widget/EditText;

    .line 68
    .line 69
    const v0, 0x7f0a037e

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->l:Landroid/view/View;

    .line 77
    .line 78
    const v0, 0x7f0a0359

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->m:Lcom/google/android/material/chip/ChipGroup;

    .line 88
    .line 89
    const v0, 0x7f0a065e

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->n:Lcom/google/android/material/chip/ChipGroup;

    .line 99
    .line 100
    const v0, 0x7f0a00aa

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v1, Lu3/j;

    .line 108
    .line 109
    invoke-direct {v1, p0, p2}, Lu3/j;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    const v0, 0x7f0a0123

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v1, Lu3/j;

    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    invoke-direct {v1, p0, v2}, Lu3/j;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    const v0, 0x7f0a054e

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Lu3/j;

    .line 139
    .line 140
    const/4 v3, 0x2

    .line 141
    invoke-direct {v1, p0, v3}, Lu3/j;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    const v0, 0x7f0a05a6

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance v0, Lu3/j;

    .line 155
    .line 156
    const/4 v1, 0x3

    .line 157
    invoke-direct {v0, p0, v1}, Lu3/j;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 164
    .line 165
    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object p1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->f:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 176
    .line 177
    const/16 v0, 0x28

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 180
    .line 181
    .line 182
    new-instance p1, Lu3/i;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->a:Landroid/content/Context;

    .line 185
    .line 186
    invoke-direct {p1, v0}, Lu3/i;-><init>(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    iput-object p1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->e:Lu3/i;

    .line 190
    .line 191
    iget-object v0, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    .line 198
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 199
    .line 200
    invoke-direct {v0, p0, v3}, Landroidx/recyclerview/widget/o;-><init>(Ljava/lang/Object;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/b1;)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->k:Landroid/widget/EditText;

    .line 207
    .line 208
    new-instance v0, Ls2/k;

    .line 209
    .line 210
    invoke-direct {v0, p0, v1}, Ls2/k;-><init>(Ljava/lang/Object;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->l:Landroid/view/View;

    .line 217
    .line 218
    new-instance v0, Lu3/j;

    .line 219
    .line 220
    const/4 v1, 0x4

    .line 221
    invoke-direct {v0, p0, v1}, Lu3/j;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    new-instance p1, Lu3/n;

    .line 228
    .line 229
    invoke-direct {p1, p0, p2}, Lu3/n;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    .line 230
    .line 231
    .line 232
    iget-object p2, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->m:Lcom/google/android/material/chip/ChipGroup;

    .line 233
    .line 234
    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/zalexdev/stryker/logger/LoggerFragment;->n:Lcom/google/android/material/chip/ChipGroup;

    .line 238
    .line 239
    new-instance p2, Lu3/n;

    .line 240
    .line 241
    invoke-direct {p2, p0, v2}, Lu3/n;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 245
    .line 246
    .line 247
    new-instance p1, Lu3/k;

    .line 248
    .line 249
    invoke-direct {p1, p0, v3}, Lu3/k;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/logger/LoggerFragment;->f(Ljava/lang/Runnable;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/zalexdev/stryker/logger/LoggerFragment;->e()V

    .line 256
    .line 257
    .line 258
    return-void
.end method
