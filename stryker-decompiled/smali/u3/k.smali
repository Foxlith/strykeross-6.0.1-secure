.class public final synthetic Lu3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/logger/LoggerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lu3/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lu3/k;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lu3/k;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lu3/k;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 10
    .line 11
    iget-boolean v4, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-object v4, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->b:Ll4/l;

    .line 17
    .line 18
    const v5, 0x7f130362

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->z:Z

    .line 29
    .line 30
    new-instance v4, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    move v5, v2

    .line 36
    :goto_0
    iget-object v6, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->n:Lcom/google/android/material/chip/ChipGroup;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const v7, 0x7f0a011e

    .line 43
    .line 44
    .line 45
    if-ge v5, v6, :cond_2

    .line 46
    .line 47
    iget-object v6, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->n:Lcom/google/android/material/chip/ChipGroup;

    .line 48
    .line 49
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eq v8, v7, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Landroid/view/View;

    .line 80
    .line 81
    iget-object v6, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->n:Lcom/google/android/material/chip/ChipGroup;

    .line 82
    .line 83
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget-object v4, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->n:Lcom/google/android/material/chip/ChipGroup;

    .line 88
    .line 89
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/google/android/material/chip/Chip;

    .line 94
    .line 95
    invoke-virtual {v4, v3}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    .line 99
    .line 100
    iput-object v1, v3, Lv1/t;->c:Ljava/lang/Object;

    .line 101
    .line 102
    iput-boolean v2, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->z:Z

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/zalexdev/stryker/logger/LoggerFragment;->e()V

    .line 105
    .line 106
    .line 107
    :goto_2
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lu3/k;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 109
    .line 110
    iget-object v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->c:Lu3/e;

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    new-instance v4, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    :try_start_0
    iget-object v3, v3, Lu3/e;->b:Lu3/c;

    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 123
    .line 124
    .line 125
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 126
    :try_start_1
    const-string v5, "SELECT DISTINCT tool FROM log WHERE tool IS NOT NULL AND tool <> \'\' ORDER BY tool COLLATE NOCASE"

    .line 127
    .line 128
    invoke-virtual {v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 129
    .line 130
    .line 131
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    :goto_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_4

    .line 137
    .line 138
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :catchall_0
    move-exception v2

    .line 147
    goto :goto_4

    .line 148
    :cond_4
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    .line 150
    .line 151
    goto :goto_7

    .line 152
    :catchall_1
    move-exception v1

    .line 153
    goto :goto_6

    .line 154
    :goto_4
    if-eqz v1, :cond_5

    .line 155
    .line 156
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :catchall_2
    move-exception v1

    .line 161
    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    :goto_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 165
    :goto_6
    const-string v2, "LogStore"

    .line 166
    .line 167
    const-string v3, "distinctTools failed"

    .line 168
    .line 169
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    :catchall_3
    :goto_7
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 173
    .line 174
    new-instance v2, Lw2/h;

    .line 175
    .line 176
    const/16 v3, 0x16

    .line 177
    .line 178
    invoke-direct {v2, v0, v4, v3}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_1
    iget-object v0, p0, Lu3/k;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 186
    .line 187
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->c:Lu3/e;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 193
    .line 194
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 195
    .line 196
    .line 197
    :try_start_6
    iget-object v3, v1, Lu3/e;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 198
    .line 199
    new-instance v4, Lu3/d;

    .line 200
    .line 201
    invoke-direct {v4, v2}, Lu3/d;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 205
    .line 206
    .line 207
    :try_start_7
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 208
    .line 209
    const-wide/16 v4, 0x3

    .line 210
    .line 211
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 212
    .line 213
    .line 214
    goto :goto_8

    .line 215
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 220
    .line 221
    .line 222
    :goto_8
    invoke-virtual {v1}, Lu3/e;->f()V

    .line 223
    .line 224
    .line 225
    goto :goto_9

    .line 226
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 231
    .line 232
    .line 233
    :goto_9
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 234
    .line 235
    new-instance v2, Lu3/k;

    .line 236
    .line 237
    const/4 v3, 0x3

    .line 238
    invoke-direct {v2, v0, v3}, Lu3/k;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_2
    iget-object v0, p0, Lu3/k;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 246
    .line 247
    iget-boolean v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    .line 248
    .line 249
    if-nez v1, :cond_b

    .line 250
    .line 251
    iget-boolean v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->u:Z

    .line 252
    .line 253
    if-eqz v1, :cond_6

    .line 254
    .line 255
    goto :goto_c

    .line 256
    :cond_6
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->e:Lu3/i;

    .line 257
    .line 258
    iget-object v1, v1, Lu3/i;->b:Ljava/util/List;

    .line 259
    .line 260
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-nez v1, :cond_7

    .line 265
    .line 266
    iget-boolean v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->s:Z

    .line 267
    .line 268
    if-nez v1, :cond_b

    .line 269
    .line 270
    invoke-virtual {v0}, Lcom/zalexdev/stryker/logger/LoggerFragment;->e()V

    .line 271
    .line 272
    .line 273
    goto :goto_c

    .line 274
    :cond_7
    iput-boolean v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->u:Z

    .line 275
    .line 276
    iget v10, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->r:I

    .line 277
    .line 278
    iget-wide v7, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->w:J

    .line 279
    .line 280
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->f:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 281
    .line 282
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-gtz v1, :cond_8

    .line 287
    .line 288
    move v11, v3

    .line 289
    goto :goto_a

    .line 290
    :cond_8
    move v11, v2

    .line 291
    :goto_a
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    .line 292
    .line 293
    invoke-virtual {v1}, Lv1/t;->i()Lv1/t;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 298
    .line 299
    .line 300
    move-result-wide v4

    .line 301
    iget-wide v12, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->y:J

    .line 302
    .line 303
    sub-long/2addr v4, v12

    .line 304
    const-wide/16 v12, 0x5dc

    .line 305
    .line 306
    cmp-long v1, v4, v12

    .line 307
    .line 308
    if-lez v1, :cond_9

    .line 309
    .line 310
    move v9, v3

    .line 311
    goto :goto_b

    .line 312
    :cond_9
    move v9, v2

    .line 313
    :goto_b
    if-eqz v9, :cond_a

    .line 314
    .line 315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 316
    .line 317
    .line 318
    move-result-wide v1

    .line 319
    iput-wide v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->y:J

    .line 320
    .line 321
    :cond_a
    new-instance v1, Lu3/l;

    .line 322
    .line 323
    move-object v4, v1

    .line 324
    move-object v5, v0

    .line 325
    invoke-direct/range {v4 .. v11}, Lu3/l;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;Lv1/t;JZIZ)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/logger/LoggerFragment;->f(Ljava/lang/Runnable;)V

    .line 329
    .line 330
    .line 331
    :cond_b
    :goto_c
    return-void

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
