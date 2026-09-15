.class public final Lw1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final e:Ljava/lang/String;

.field public static final f:J


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln1/a0;

.field public final c:Lw1/i;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "ForceStopRunnable"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw1/f;->e:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lw1/f;->f:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln1/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lw1/f;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lw1/f;->b:Ln1/a0;

    .line 11
    .line 12
    iget-object p1, p2, Ln1/a0;->i:Lw1/i;

    .line 13
    .line 14
    iput-object p1, p0, Lw1/f;->c:Lw1/i;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lw1/f;->d:I

    .line 18
    .line 19
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "alarm"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AlarmManager;

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0xa000000

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v1, 0x8000000

    .line 19
    .line 20
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/content/ComponentName;

    .line 26
    .line 27
    const-class v4, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 28
    .line 29
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string v3, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-static {p0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    sget-wide v3, Lw1/f;->f:J

    .line 50
    .line 51
    add-long/2addr v1, v3

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "last_force_stop_ms"

    .line 4
    .line 5
    iget-object v3, v1, Lw1/f;->c:Lw1/i;

    .line 6
    .line 7
    sget-object v0, Lq1/c;->e:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "jobscheduler"

    .line 10
    .line 11
    iget-object v4, v1, Lw1/f;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 18
    .line 19
    invoke-static {v4, v0}, Lq1/c;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v6, v1, Lw1/f;->b:Ln1/a0;

    .line 24
    .line 25
    iget-object v7, v6, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 26
    .line 27
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->s()Lv1/h;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string v8, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    invoke-static {v9, v8}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    iget-object v7, v7, Lv1/h;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v7, Ly0/w;

    .line 44
    .line 45
    invoke-virtual {v7}, Ly0/w;->b()V

    .line 46
    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    invoke-virtual {v7, v8, v10}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-eqz v12, :cond_1

    .line 67
    .line 68
    invoke-interface {v7, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    if-eqz v12, :cond_0

    .line 73
    .line 74
    move-object v12, v10

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    :goto_1
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto/16 :goto_11

    .line 86
    .line 87
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8}, Ly0/y;->u()V

    .line 91
    .line 92
    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    move v7, v9

    .line 101
    :goto_2
    new-instance v8, Ljava/util/HashSet;

    .line 102
    .line 103
    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 104
    .line 105
    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_4

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_4

    .line 123
    .line 124
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Landroid/app/job/JobInfo;

    .line 129
    .line 130
    invoke-static {v7}, Lq1/c;->d(Landroid/app/job/JobInfo;)Lv1/i;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    if-eqz v10, :cond_3

    .line 135
    .line 136
    iget-object v7, v10, Lv1/i;->a:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_3
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getId()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    invoke-static {v0, v7}, Lq1/c;->b(Landroid/app/job/JobScheduler;I)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    const/4 v7, 0x1

    .line 159
    if-eqz v5, :cond_6

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-nez v5, :cond_5

    .line 172
    .line 173
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    move v0, v7

    .line 181
    goto :goto_4

    .line 182
    :cond_6
    move v0, v9

    .line 183
    :goto_4
    const-wide/16 v12, -0x1

    .line 184
    .line 185
    if-eqz v0, :cond_8

    .line 186
    .line 187
    iget-object v5, v6, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 188
    .line 189
    invoke-virtual {v5}, Ly0/w;->c()V

    .line 190
    .line 191
    .line 192
    :try_start_1
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v11

    .line 204
    if-eqz v11, :cond_7

    .line 205
    .line 206
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    check-cast v11, Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v8, v11, v12, v13}, Lv1/r;->j(Ljava/lang/String;J)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catchall_1
    move-exception v0

    .line 217
    goto :goto_6

    .line 218
    :cond_7
    invoke-virtual {v5}, Ly0/w;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5}, Ly0/w;->k()V

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :goto_6
    invoke-virtual {v5}, Ly0/w;->k()V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_8
    :goto_7
    iget-object v5, v6, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 230
    .line 231
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->u()Lv1/m;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v5}, Ly0/w;->c()V

    .line 240
    .line 241
    .line 242
    :try_start_2
    invoke-virtual {v8}, Lv1/r;->d()Ljava/util/ArrayList;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v14

    .line 250
    xor-int/2addr v14, v7

    .line 251
    if-eqz v14, :cond_9

    .line 252
    .line 253
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v15

    .line 261
    if-eqz v15, :cond_9

    .line 262
    .line 263
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v15

    .line 267
    check-cast v15, Lv1/p;

    .line 268
    .line 269
    iget-object v9, v15, Lv1/p;->a:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v8, v7, v9}, Lv1/r;->m(ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v9, v15, Lv1/p;->a:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v8, v9, v12, v13}, Lv1/r;->j(Ljava/lang/String;J)V

    .line 277
    .line 278
    .line 279
    const/4 v9, 0x0

    .line 280
    goto :goto_8

    .line 281
    :catchall_2
    move-exception v0

    .line 282
    goto/16 :goto_10

    .line 283
    .line 284
    :cond_9
    invoke-virtual {v10}, Lv1/m;->c()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5}, Ly0/w;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5}, Ly0/w;->k()V

    .line 291
    .line 292
    .line 293
    if-nez v14, :cond_b

    .line 294
    .line 295
    if-eqz v0, :cond_a

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_a
    const/4 v7, 0x0

    .line 299
    :cond_b
    :goto_9
    iget-object v0, v6, Ln1/a0;->i:Lw1/i;

    .line 300
    .line 301
    iget-object v0, v0, Lw1/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 302
    .line 303
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Lv1/e;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    const-string v5, "reschedule_needed"

    .line 308
    .line 309
    invoke-virtual {v0, v5}, Lv1/e;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    const-wide/16 v8, 0x0

    .line 314
    .line 315
    if-eqz v0, :cond_c

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 318
    .line 319
    .line 320
    move-result-wide v10

    .line 321
    const-wide/16 v12, 0x1

    .line 322
    .line 323
    cmp-long v0, v10, v12

    .line 324
    .line 325
    if-nez v0, :cond_c

    .line 326
    .line 327
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6}, Ln1/a0;->O()V

    .line 335
    .line 336
    .line 337
    iget-object v0, v6, Ln1/a0;->i:Lw1/i;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    new-instance v2, Lv1/d;

    .line 343
    .line 344
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-direct {v2, v5, v3}, Lv1/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    .line 350
    .line 351
    iget-object v0, v0, Lw1/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 352
    .line 353
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Lv1/e;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v0, v2}, Lv1/e;->d(Lv1/d;)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_f

    .line 361
    .line 362
    :cond_c
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 363
    .line 364
    const/16 v5, 0x1f

    .line 365
    .line 366
    if-lt v0, v5, :cond_d

    .line 367
    .line 368
    const/high16 v5, 0x22000000

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_d
    const/high16 v5, 0x20000000

    .line 372
    .line 373
    :goto_a
    new-instance v10, Landroid/content/Intent;

    .line 374
    .line 375
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 376
    .line 377
    .line 378
    new-instance v11, Landroid/content/ComponentName;

    .line 379
    .line 380
    const-class v12, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 381
    .line 382
    invoke-direct {v11, v4, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 386
    .line 387
    .line 388
    const-string v11, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 389
    .line 390
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    .line 392
    .line 393
    const/4 v11, -0x1

    .line 394
    invoke-static {v4, v11, v10, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    const/16 v10, 0x1e

    .line 399
    .line 400
    if-lt v0, v10, :cond_11

    .line 401
    .line 402
    if-eqz v5, :cond_e

    .line 403
    .line 404
    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 405
    .line 406
    .line 407
    goto :goto_b

    .line 408
    :catch_0
    move-exception v0

    .line 409
    goto :goto_d

    .line 410
    :catch_1
    move-exception v0

    .line 411
    goto :goto_d

    .line 412
    :cond_e
    :goto_b
    const-string v0, "activity"

    .line 413
    .line 414
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Landroid/app/ActivityManager;

    .line 419
    .line 420
    invoke-static {v0}, Landroidx/core/view/v2;->j(Landroid/app/ActivityManager;)Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    if-eqz v0, :cond_12

    .line 425
    .line 426
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    if-nez v4, :cond_12

    .line 431
    .line 432
    iget-object v4, v3, Lw1/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 433
    .line 434
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->r()Lv1/e;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    invoke-virtual {v4, v2}, Lv1/e;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    if-eqz v4, :cond_f

    .line 443
    .line 444
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 445
    .line 446
    .line 447
    move-result-wide v8

    .line 448
    :cond_f
    const/4 v4, 0x0

    .line 449
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    if-ge v4, v5, :cond_12

    .line 454
    .line 455
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    invoke-static {v5}, Landroidx/core/view/v2;->c(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-static {v5}, Landroidx/core/view/v2;->a(Landroid/app/ApplicationExitInfo;)I

    .line 464
    .line 465
    .line 466
    move-result v10

    .line 467
    const/16 v11, 0xa

    .line 468
    .line 469
    if-ne v10, v11, :cond_10

    .line 470
    .line 471
    invoke-static {v5}, Landroidx/core/view/v2;->b(Landroid/app/ApplicationExitInfo;)J

    .line 472
    .line 473
    .line 474
    move-result-wide v10

    .line 475
    cmp-long v5, v10, v8

    .line 476
    .line 477
    if-ltz v5, :cond_10

    .line 478
    .line 479
    goto :goto_e

    .line 480
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 481
    .line 482
    goto :goto_c

    .line 483
    :cond_11
    if-nez v5, :cond_12

    .line 484
    .line 485
    invoke-static {v4}, Lw1/f;->b(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 486
    .line 487
    .line 488
    goto :goto_e

    .line 489
    :cond_12
    if-eqz v7, :cond_14

    .line 490
    .line 491
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    iget-object v0, v6, Ln1/a0;->d:Lm1/b;

    .line 499
    .line 500
    iget-object v2, v6, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 501
    .line 502
    iget-object v3, v6, Ln1/a0;->g:Ljava/util/List;

    .line 503
    .line 504
    invoke-static {v0, v2, v3}, Ln1/s;->a(Lm1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 505
    .line 506
    .line 507
    goto :goto_f

    .line 508
    :goto_d
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    sget-object v5, Lw1/f;->e:Ljava/lang/String;

    .line 513
    .line 514
    const-string v7, "Ignoring exception"

    .line 515
    .line 516
    iget v4, v4, Lm1/n;->a:I

    .line 517
    .line 518
    const/4 v8, 0x5

    .line 519
    if-gt v4, v8, :cond_13

    .line 520
    .line 521
    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .line 523
    .line 524
    :cond_13
    :goto_e
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v6}, Ln1/a0;->O()V

    .line 532
    .line 533
    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 535
    .line 536
    .line 537
    move-result-wide v4

    .line 538
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    new-instance v0, Lv1/d;

    .line 542
    .line 543
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 544
    .line 545
    .line 546
    move-result-object v4

    .line 547
    invoke-direct {v0, v2, v4}, Lv1/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    .line 549
    .line 550
    iget-object v2, v3, Lw1/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 551
    .line 552
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->r()Lv1/e;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    invoke-virtual {v2, v0}, Lv1/e;->d(Lv1/d;)V

    .line 557
    .line 558
    .line 559
    :cond_14
    :goto_f
    return-void

    .line 560
    :goto_10
    invoke-virtual {v5}, Ly0/w;->k()V

    .line 561
    .line 562
    .line 563
    throw v0

    .line 564
    :goto_11
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v8}, Ly0/y;->u()V

    .line 568
    .line 569
    .line 570
    throw v0
.end method

.method public final run()V
    .locals 7

    .line 1
    sget-object v0, Lw1/f;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lw1/f;->b:Ln1/a0;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, v1, Ln1/a0;->d:Lm1/b;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v4, p0, Lw1/f;->a:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    :try_start_1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v4, v2}, Lw1/n;->a(Landroid/content/Context;Lm1/b;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Ln1/a0;->N()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v4}, La/c;->i(Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_3
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    .line 53
    .line 54
    :try_start_4
    invoke-virtual {p0}, Lw1/f;->a()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ln1/a0;->N()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :catch_1
    move-exception v2

    .line 64
    goto :goto_1

    .line 65
    :catch_2
    move-exception v2

    .line 66
    goto :goto_1

    .line 67
    :catch_3
    move-exception v2

    .line 68
    goto :goto_1

    .line 69
    :catch_4
    move-exception v2

    .line 70
    goto :goto_1

    .line 71
    :catch_5
    move-exception v2

    .line 72
    goto :goto_1

    .line 73
    :catch_6
    move-exception v2

    .line 74
    goto :goto_1

    .line 75
    :catch_7
    move-exception v2

    .line 76
    :goto_1
    :try_start_5
    iget v3, p0, Lw1/f;->d:I

    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    iput v3, p0, Lw1/f;->d:I

    .line 81
    .line 82
    const/4 v5, 0x3

    .line 83
    if-ge v3, v5, :cond_2

    .line 84
    .line 85
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget v2, p0, Lw1/f;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    .line 94
    int-to-long v2, v2

    .line 95
    const-wide/16 v5, 0x12c

    .line 96
    .line 97
    mul-long/2addr v2, v5

    .line 98
    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    :try_start_7
    const-string v3, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 103
    .line 104
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4, v0, v3, v2}, Lm1/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    invoke-direct {v0, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, v1, Ln1/a0;->d:Lm1/b;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :catch_8
    move-exception v2

    .line 123
    const-string v3, "Unexpected SQLite exception during migrations"

    .line 124
    .line 125
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4, v0, v3}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    invoke-direct {v0, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    iget-object v2, v1, Ln1/a0;->d:Lm1/b;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 143
    :goto_2
    invoke-virtual {v1}, Ln1/a0;->N()V

    .line 144
    .line 145
    .line 146
    throw v0
.end method
