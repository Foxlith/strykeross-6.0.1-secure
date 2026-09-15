.class public final Lv1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly0/w;

.field public final b:Lv1/b;

.field public final c:Lv1/q;

.field public final d:Lv1/q;

.field public final e:Lv1/q;

.field public final f:Lv1/q;

.field public final g:Lv1/q;

.field public final h:Lv1/q;

.field public final i:Lv1/q;

.field public final j:Lv1/q;

.field public final k:Lv1/q;

.field public final l:Lv1/q;


# direct methods
.method public constructor <init>(Ly0/w;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/r;->a:Ly0/w;

    new-instance v0, Lv1/b;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lv1/b;-><init>(Ljava/lang/Object;Ly0/w;I)V

    iput-object v0, p0, Lv1/r;->b:Lv1/b;

    new-instance v0, Lv1/q;

    invoke-direct {v0, p1}, Lv1/q;-><init>(Ly0/w;)V

    iput-object v0, p0, Lv1/r;->c:Lv1/q;

    new-instance v0, Lv1/q;

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    iput-object v0, p0, Lv1/r;->d:Lv1/q;

    new-instance v0, Lv1/q;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    iput-object v0, p0, Lv1/r;->e:Lv1/q;

    new-instance v0, Lv1/q;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    iput-object v0, p0, Lv1/r;->f:Lv1/q;

    new-instance v0, Lv1/q;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    iput-object v0, p0, Lv1/r;->g:Lv1/q;

    new-instance v0, Lv1/q;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    iput-object v0, p0, Lv1/r;->h:Lv1/q;

    new-instance v0, Lv1/q;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    iput-object v0, p0, Lv1/r;->i:Lv1/q;

    new-instance v0, Lv1/q;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    iput-object v0, p0, Lv1/r;->j:Lv1/q;

    new-instance v0, Lv1/q;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    iput-object v0, p0, Lv1/r;->k:Lv1/q;

    new-instance v0, Lv1/q;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    iput-object v0, p0, Lv1/r;->l:Lv1/q;

    new-instance v0, Lv1/q;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    new-instance v0, Lv1/q;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lv1/q;-><init>(Ly0/w;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/r;->a:Ly0/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv1/r;->d:Lv1/q;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v2, v3}, Lc1/f;->h(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v2, v3, p1}, Lc1/f;->d(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Ly0/w;->c()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-interface {v2}, Lc1/h;->e()I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 70

    .line 1
    const-string v0, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/16 v0, 0xc8

    .line 9
    .line 10
    int-to-long v3, v0

    .line 11
    invoke-virtual {v2, v1, v3, v4}, Ly0/y;->m(IJ)V

    .line 12
    .line 13
    .line 14
    move-object/from16 v3, p0

    .line 15
    .line 16
    iget-object v0, v3, Lv1/r;->a:Ly0/w;

    .line 17
    .line 18
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v0, v2, v4}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    :try_start_0
    const-string v0, "id"

    .line 27
    .line 28
    invoke-static {v5, v0}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v6, "state"

    .line 33
    .line 34
    invoke-static {v5, v6}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const-string v7, "worker_class_name"

    .line 39
    .line 40
    invoke-static {v5, v7}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const-string v8, "input_merger_class_name"

    .line 45
    .line 46
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    const-string v9, "input"

    .line 51
    .line 52
    invoke-static {v5, v9}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    const-string v10, "output"

    .line 57
    .line 58
    invoke-static {v5, v10}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    const-string v11, "initial_delay"

    .line 63
    .line 64
    invoke-static {v5, v11}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    const-string v12, "interval_duration"

    .line 69
    .line 70
    invoke-static {v5, v12}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    const-string v13, "flex_duration"

    .line 75
    .line 76
    invoke-static {v5, v13}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    const-string v14, "run_attempt_count"

    .line 81
    .line 82
    invoke-static {v5, v14}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    const-string v15, "backoff_policy"

    .line 87
    .line 88
    invoke-static {v5, v15}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    const-string v1, "backoff_delay_duration"

    .line 93
    .line 94
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const-string v4, "last_enqueue_time"

    .line 99
    .line 100
    invoke-static {v5, v4}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const-string v3, "minimum_retention_duration"

    .line 105
    .line 106
    invoke-static {v5, v3}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    move-object/from16 v16, v2

    .line 111
    .line 112
    :try_start_1
    const-string v2, "schedule_requested_at"

    .line 113
    .line 114
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    move/from16 v17, v2

    .line 119
    .line 120
    const-string v2, "run_in_foreground"

    .line 121
    .line 122
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    move/from16 v18, v2

    .line 127
    .line 128
    const-string v2, "out_of_quota_policy"

    .line 129
    .line 130
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    move/from16 v19, v2

    .line 135
    .line 136
    const-string v2, "period_count"

    .line 137
    .line 138
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    move/from16 v20, v2

    .line 143
    .line 144
    const-string v2, "generation"

    .line 145
    .line 146
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    move/from16 v21, v2

    .line 151
    .line 152
    const-string v2, "required_network_type"

    .line 153
    .line 154
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    move/from16 v22, v2

    .line 159
    .line 160
    const-string v2, "requires_charging"

    .line 161
    .line 162
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    move/from16 v23, v2

    .line 167
    .line 168
    const-string v2, "requires_device_idle"

    .line 169
    .line 170
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    move/from16 v24, v2

    .line 175
    .line 176
    const-string v2, "requires_battery_not_low"

    .line 177
    .line 178
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    move/from16 v25, v2

    .line 183
    .line 184
    const-string v2, "requires_storage_not_low"

    .line 185
    .line 186
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    move/from16 v26, v2

    .line 191
    .line 192
    const-string v2, "trigger_content_update_delay"

    .line 193
    .line 194
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    move/from16 v27, v2

    .line 199
    .line 200
    const-string v2, "trigger_max_content_delay"

    .line 201
    .line 202
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    move/from16 v28, v2

    .line 207
    .line 208
    const-string v2, "content_uri_triggers"

    .line 209
    .line 210
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    move/from16 v29, v2

    .line 215
    .line 216
    new-instance v2, Ljava/util/ArrayList;

    .line 217
    .line 218
    move/from16 v30, v3

    .line 219
    .line 220
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .line 226
    .line 227
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_b

    .line 232
    .line 233
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_0

    .line 238
    .line 239
    const/16 v32, 0x0

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    move-object/from16 v32, v3

    .line 247
    .line 248
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v3}, Lg/a;->m(I)I

    .line 253
    .line 254
    .line 255
    move-result v33

    .line 256
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_1

    .line 261
    .line 262
    const/16 v34, 0x0

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    move-object/from16 v34, v3

    .line 270
    .line 271
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_2

    .line 276
    .line 277
    const/16 v35, 0x0

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    move-object/from16 v35, v3

    .line 285
    .line 286
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-eqz v3, :cond_3

    .line 291
    .line 292
    const/4 v3, 0x0

    .line 293
    goto :goto_4

    .line 294
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    :goto_4
    invoke-static {v3}, Lm1/e;->a([B)Lm1/e;

    .line 299
    .line 300
    .line 301
    move-result-object v36

    .line 302
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_4

    .line 307
    .line 308
    const/4 v3, 0x0

    .line 309
    goto :goto_5

    .line 310
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    :goto_5
    invoke-static {v3}, Lm1/e;->a([B)Lm1/e;

    .line 315
    .line 316
    .line 317
    move-result-object v37

    .line 318
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 319
    .line 320
    .line 321
    move-result-wide v38

    .line 322
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 323
    .line 324
    .line 325
    move-result-wide v40

    .line 326
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 327
    .line 328
    .line 329
    move-result-wide v42

    .line 330
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 331
    .line 332
    .line 333
    move-result v45

    .line 334
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-static {v3}, Lg/a;->j(I)I

    .line 339
    .line 340
    .line 341
    move-result v46

    .line 342
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 343
    .line 344
    .line 345
    move-result-wide v47

    .line 346
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v49

    .line 350
    move/from16 v3, v30

    .line 351
    .line 352
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v51

    .line 356
    move/from16 v30, v0

    .line 357
    .line 358
    move/from16 v0, v17

    .line 359
    .line 360
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 361
    .line 362
    .line 363
    move-result-wide v53

    .line 364
    move/from16 v17, v0

    .line 365
    .line 366
    move/from16 v0, v18

    .line 367
    .line 368
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 369
    .line 370
    .line 371
    move-result v18

    .line 372
    const/16 v31, 0x0

    .line 373
    .line 374
    if-eqz v18, :cond_5

    .line 375
    .line 376
    move/from16 v18, v0

    .line 377
    .line 378
    move/from16 v0, v19

    .line 379
    .line 380
    const/16 v55, 0x1

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_5
    move/from16 v18, v0

    .line 384
    .line 385
    move/from16 v0, v19

    .line 386
    .line 387
    move/from16 v55, v31

    .line 388
    .line 389
    :goto_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 390
    .line 391
    .line 392
    move-result v19

    .line 393
    invoke-static/range {v19 .. v19}, Lg/a;->l(I)I

    .line 394
    .line 395
    .line 396
    move-result v56

    .line 397
    move/from16 v19, v0

    .line 398
    .line 399
    move/from16 v0, v20

    .line 400
    .line 401
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 402
    .line 403
    .line 404
    move-result v57

    .line 405
    move/from16 v20, v0

    .line 406
    .line 407
    move/from16 v0, v21

    .line 408
    .line 409
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 410
    .line 411
    .line 412
    move-result v58

    .line 413
    move/from16 v21, v0

    .line 414
    .line 415
    move/from16 v0, v22

    .line 416
    .line 417
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 418
    .line 419
    .line 420
    move-result v22

    .line 421
    invoke-static/range {v22 .. v22}, Lg/a;->k(I)I

    .line 422
    .line 423
    .line 424
    move-result v60

    .line 425
    move/from16 v22, v0

    .line 426
    .line 427
    move/from16 v0, v23

    .line 428
    .line 429
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 430
    .line 431
    .line 432
    move-result v23

    .line 433
    if-eqz v23, :cond_6

    .line 434
    .line 435
    move/from16 v23, v0

    .line 436
    .line 437
    move/from16 v0, v24

    .line 438
    .line 439
    const/16 v61, 0x1

    .line 440
    .line 441
    goto :goto_7

    .line 442
    :cond_6
    move/from16 v23, v0

    .line 443
    .line 444
    move/from16 v0, v24

    .line 445
    .line 446
    move/from16 v61, v31

    .line 447
    .line 448
    :goto_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 449
    .line 450
    .line 451
    move-result v24

    .line 452
    if-eqz v24, :cond_7

    .line 453
    .line 454
    move/from16 v24, v0

    .line 455
    .line 456
    move/from16 v0, v25

    .line 457
    .line 458
    const/16 v62, 0x1

    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_7
    move/from16 v24, v0

    .line 462
    .line 463
    move/from16 v0, v25

    .line 464
    .line 465
    move/from16 v62, v31

    .line 466
    .line 467
    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 468
    .line 469
    .line 470
    move-result v25

    .line 471
    if-eqz v25, :cond_8

    .line 472
    .line 473
    move/from16 v25, v0

    .line 474
    .line 475
    move/from16 v0, v26

    .line 476
    .line 477
    const/16 v63, 0x1

    .line 478
    .line 479
    goto :goto_9

    .line 480
    :cond_8
    move/from16 v25, v0

    .line 481
    .line 482
    move/from16 v0, v26

    .line 483
    .line 484
    move/from16 v63, v31

    .line 485
    .line 486
    :goto_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 487
    .line 488
    .line 489
    move-result v26

    .line 490
    if-eqz v26, :cond_9

    .line 491
    .line 492
    move/from16 v26, v0

    .line 493
    .line 494
    move/from16 v0, v27

    .line 495
    .line 496
    const/16 v64, 0x1

    .line 497
    .line 498
    goto :goto_a

    .line 499
    :cond_9
    move/from16 v26, v0

    .line 500
    .line 501
    move/from16 v0, v27

    .line 502
    .line 503
    move/from16 v64, v31

    .line 504
    .line 505
    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 506
    .line 507
    .line 508
    move-result-wide v65

    .line 509
    move/from16 v27, v0

    .line 510
    .line 511
    move/from16 v0, v28

    .line 512
    .line 513
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 514
    .line 515
    .line 516
    move-result-wide v67

    .line 517
    move/from16 v28, v0

    .line 518
    .line 519
    move/from16 v0, v29

    .line 520
    .line 521
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 522
    .line 523
    .line 524
    move-result v29

    .line 525
    if-eqz v29, :cond_a

    .line 526
    .line 527
    const/16 v29, 0x0

    .line 528
    .line 529
    goto :goto_b

    .line 530
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 531
    .line 532
    .line 533
    move-result-object v29

    .line 534
    :goto_b
    invoke-static/range {v29 .. v29}, Lg/a;->c([B)Ljava/util/LinkedHashSet;

    .line 535
    .line 536
    .line 537
    move-result-object v69

    .line 538
    new-instance v44, Lm1/d;

    .line 539
    .line 540
    move-object/from16 v59, v44

    .line 541
    .line 542
    invoke-direct/range {v59 .. v69}, Lm1/d;-><init>(IZZZZJJLjava/util/Set;)V

    .line 543
    .line 544
    .line 545
    move/from16 v29, v0

    .line 546
    .line 547
    new-instance v0, Lv1/p;

    .line 548
    .line 549
    move-object/from16 v31, v0

    .line 550
    .line 551
    invoke-direct/range {v31 .. v58}, Lv1/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIII)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    .line 556
    .line 557
    move/from16 v0, v30

    .line 558
    .line 559
    move/from16 v30, v3

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :catchall_0
    move-exception v0

    .line 564
    goto :goto_c

    .line 565
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 566
    .line 567
    .line 568
    invoke-virtual/range {v16 .. v16}, Ly0/y;->u()V

    .line 569
    .line 570
    .line 571
    return-object v2

    .line 572
    :catchall_1
    move-exception v0

    .line 573
    move-object/from16 v16, v2

    .line 574
    .line 575
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 576
    .line 577
    .line 578
    invoke-virtual/range {v16 .. v16}, Ly0/y;->u()V

    .line 579
    .line 580
    .line 581
    throw v0
.end method

.method public final c(I)Ljava/util/ArrayList;
    .locals 70

    .line 1
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    move/from16 v0, p1

    .line 9
    .line 10
    int-to-long v3, v0

    .line 11
    invoke-virtual {v2, v1, v3, v4}, Ly0/y;->m(IJ)V

    .line 12
    .line 13
    .line 14
    move-object/from16 v3, p0

    .line 15
    .line 16
    iget-object v0, v3, Lv1/r;->a:Ly0/w;

    .line 17
    .line 18
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v0, v2, v4}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    :try_start_0
    const-string v0, "id"

    .line 27
    .line 28
    invoke-static {v5, v0}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v6, "state"

    .line 33
    .line 34
    invoke-static {v5, v6}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const-string v7, "worker_class_name"

    .line 39
    .line 40
    invoke-static {v5, v7}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const-string v8, "input_merger_class_name"

    .line 45
    .line 46
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    const-string v9, "input"

    .line 51
    .line 52
    invoke-static {v5, v9}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    const-string v10, "output"

    .line 57
    .line 58
    invoke-static {v5, v10}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    const-string v11, "initial_delay"

    .line 63
    .line 64
    invoke-static {v5, v11}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    const-string v12, "interval_duration"

    .line 69
    .line 70
    invoke-static {v5, v12}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    const-string v13, "flex_duration"

    .line 75
    .line 76
    invoke-static {v5, v13}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    const-string v14, "run_attempt_count"

    .line 81
    .line 82
    invoke-static {v5, v14}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    const-string v15, "backoff_policy"

    .line 87
    .line 88
    invoke-static {v5, v15}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    const-string v1, "backoff_delay_duration"

    .line 93
    .line 94
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const-string v4, "last_enqueue_time"

    .line 99
    .line 100
    invoke-static {v5, v4}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const-string v3, "minimum_retention_duration"

    .line 105
    .line 106
    invoke-static {v5, v3}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    move-object/from16 v16, v2

    .line 111
    .line 112
    :try_start_1
    const-string v2, "schedule_requested_at"

    .line 113
    .line 114
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    move/from16 v17, v2

    .line 119
    .line 120
    const-string v2, "run_in_foreground"

    .line 121
    .line 122
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    move/from16 v18, v2

    .line 127
    .line 128
    const-string v2, "out_of_quota_policy"

    .line 129
    .line 130
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    move/from16 v19, v2

    .line 135
    .line 136
    const-string v2, "period_count"

    .line 137
    .line 138
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    move/from16 v20, v2

    .line 143
    .line 144
    const-string v2, "generation"

    .line 145
    .line 146
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    move/from16 v21, v2

    .line 151
    .line 152
    const-string v2, "required_network_type"

    .line 153
    .line 154
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    move/from16 v22, v2

    .line 159
    .line 160
    const-string v2, "requires_charging"

    .line 161
    .line 162
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    move/from16 v23, v2

    .line 167
    .line 168
    const-string v2, "requires_device_idle"

    .line 169
    .line 170
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    move/from16 v24, v2

    .line 175
    .line 176
    const-string v2, "requires_battery_not_low"

    .line 177
    .line 178
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    move/from16 v25, v2

    .line 183
    .line 184
    const-string v2, "requires_storage_not_low"

    .line 185
    .line 186
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    move/from16 v26, v2

    .line 191
    .line 192
    const-string v2, "trigger_content_update_delay"

    .line 193
    .line 194
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    move/from16 v27, v2

    .line 199
    .line 200
    const-string v2, "trigger_max_content_delay"

    .line 201
    .line 202
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    move/from16 v28, v2

    .line 207
    .line 208
    const-string v2, "content_uri_triggers"

    .line 209
    .line 210
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    move/from16 v29, v2

    .line 215
    .line 216
    new-instance v2, Ljava/util/ArrayList;

    .line 217
    .line 218
    move/from16 v30, v3

    .line 219
    .line 220
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .line 226
    .line 227
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_b

    .line 232
    .line 233
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_0

    .line 238
    .line 239
    const/16 v32, 0x0

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    move-object/from16 v32, v3

    .line 247
    .line 248
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v3}, Lg/a;->m(I)I

    .line 253
    .line 254
    .line 255
    move-result v33

    .line 256
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_1

    .line 261
    .line 262
    const/16 v34, 0x0

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    move-object/from16 v34, v3

    .line 270
    .line 271
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_2

    .line 276
    .line 277
    const/16 v35, 0x0

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    move-object/from16 v35, v3

    .line 285
    .line 286
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-eqz v3, :cond_3

    .line 291
    .line 292
    const/4 v3, 0x0

    .line 293
    goto :goto_4

    .line 294
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    :goto_4
    invoke-static {v3}, Lm1/e;->a([B)Lm1/e;

    .line 299
    .line 300
    .line 301
    move-result-object v36

    .line 302
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_4

    .line 307
    .line 308
    const/4 v3, 0x0

    .line 309
    goto :goto_5

    .line 310
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    :goto_5
    invoke-static {v3}, Lm1/e;->a([B)Lm1/e;

    .line 315
    .line 316
    .line 317
    move-result-object v37

    .line 318
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 319
    .line 320
    .line 321
    move-result-wide v38

    .line 322
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 323
    .line 324
    .line 325
    move-result-wide v40

    .line 326
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 327
    .line 328
    .line 329
    move-result-wide v42

    .line 330
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 331
    .line 332
    .line 333
    move-result v45

    .line 334
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-static {v3}, Lg/a;->j(I)I

    .line 339
    .line 340
    .line 341
    move-result v46

    .line 342
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 343
    .line 344
    .line 345
    move-result-wide v47

    .line 346
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v49

    .line 350
    move/from16 v3, v30

    .line 351
    .line 352
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v51

    .line 356
    move/from16 v30, v0

    .line 357
    .line 358
    move/from16 v0, v17

    .line 359
    .line 360
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 361
    .line 362
    .line 363
    move-result-wide v53

    .line 364
    move/from16 v17, v0

    .line 365
    .line 366
    move/from16 v0, v18

    .line 367
    .line 368
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 369
    .line 370
    .line 371
    move-result v18

    .line 372
    const/16 v31, 0x0

    .line 373
    .line 374
    if-eqz v18, :cond_5

    .line 375
    .line 376
    move/from16 v18, v0

    .line 377
    .line 378
    move/from16 v0, v19

    .line 379
    .line 380
    const/16 v55, 0x1

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_5
    move/from16 v18, v0

    .line 384
    .line 385
    move/from16 v0, v19

    .line 386
    .line 387
    move/from16 v55, v31

    .line 388
    .line 389
    :goto_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 390
    .line 391
    .line 392
    move-result v19

    .line 393
    invoke-static/range {v19 .. v19}, Lg/a;->l(I)I

    .line 394
    .line 395
    .line 396
    move-result v56

    .line 397
    move/from16 v19, v0

    .line 398
    .line 399
    move/from16 v0, v20

    .line 400
    .line 401
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 402
    .line 403
    .line 404
    move-result v57

    .line 405
    move/from16 v20, v0

    .line 406
    .line 407
    move/from16 v0, v21

    .line 408
    .line 409
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 410
    .line 411
    .line 412
    move-result v58

    .line 413
    move/from16 v21, v0

    .line 414
    .line 415
    move/from16 v0, v22

    .line 416
    .line 417
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 418
    .line 419
    .line 420
    move-result v22

    .line 421
    invoke-static/range {v22 .. v22}, Lg/a;->k(I)I

    .line 422
    .line 423
    .line 424
    move-result v60

    .line 425
    move/from16 v22, v0

    .line 426
    .line 427
    move/from16 v0, v23

    .line 428
    .line 429
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 430
    .line 431
    .line 432
    move-result v23

    .line 433
    if-eqz v23, :cond_6

    .line 434
    .line 435
    move/from16 v23, v0

    .line 436
    .line 437
    move/from16 v0, v24

    .line 438
    .line 439
    const/16 v61, 0x1

    .line 440
    .line 441
    goto :goto_7

    .line 442
    :cond_6
    move/from16 v23, v0

    .line 443
    .line 444
    move/from16 v0, v24

    .line 445
    .line 446
    move/from16 v61, v31

    .line 447
    .line 448
    :goto_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 449
    .line 450
    .line 451
    move-result v24

    .line 452
    if-eqz v24, :cond_7

    .line 453
    .line 454
    move/from16 v24, v0

    .line 455
    .line 456
    move/from16 v0, v25

    .line 457
    .line 458
    const/16 v62, 0x1

    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_7
    move/from16 v24, v0

    .line 462
    .line 463
    move/from16 v0, v25

    .line 464
    .line 465
    move/from16 v62, v31

    .line 466
    .line 467
    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 468
    .line 469
    .line 470
    move-result v25

    .line 471
    if-eqz v25, :cond_8

    .line 472
    .line 473
    move/from16 v25, v0

    .line 474
    .line 475
    move/from16 v0, v26

    .line 476
    .line 477
    const/16 v63, 0x1

    .line 478
    .line 479
    goto :goto_9

    .line 480
    :cond_8
    move/from16 v25, v0

    .line 481
    .line 482
    move/from16 v0, v26

    .line 483
    .line 484
    move/from16 v63, v31

    .line 485
    .line 486
    :goto_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 487
    .line 488
    .line 489
    move-result v26

    .line 490
    if-eqz v26, :cond_9

    .line 491
    .line 492
    move/from16 v26, v0

    .line 493
    .line 494
    move/from16 v0, v27

    .line 495
    .line 496
    const/16 v64, 0x1

    .line 497
    .line 498
    goto :goto_a

    .line 499
    :cond_9
    move/from16 v26, v0

    .line 500
    .line 501
    move/from16 v0, v27

    .line 502
    .line 503
    move/from16 v64, v31

    .line 504
    .line 505
    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 506
    .line 507
    .line 508
    move-result-wide v65

    .line 509
    move/from16 v27, v0

    .line 510
    .line 511
    move/from16 v0, v28

    .line 512
    .line 513
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 514
    .line 515
    .line 516
    move-result-wide v67

    .line 517
    move/from16 v28, v0

    .line 518
    .line 519
    move/from16 v0, v29

    .line 520
    .line 521
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 522
    .line 523
    .line 524
    move-result v29

    .line 525
    if-eqz v29, :cond_a

    .line 526
    .line 527
    const/16 v29, 0x0

    .line 528
    .line 529
    goto :goto_b

    .line 530
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 531
    .line 532
    .line 533
    move-result-object v29

    .line 534
    :goto_b
    invoke-static/range {v29 .. v29}, Lg/a;->c([B)Ljava/util/LinkedHashSet;

    .line 535
    .line 536
    .line 537
    move-result-object v69

    .line 538
    new-instance v44, Lm1/d;

    .line 539
    .line 540
    move-object/from16 v59, v44

    .line 541
    .line 542
    invoke-direct/range {v59 .. v69}, Lm1/d;-><init>(IZZZZJJLjava/util/Set;)V

    .line 543
    .line 544
    .line 545
    move/from16 v29, v0

    .line 546
    .line 547
    new-instance v0, Lv1/p;

    .line 548
    .line 549
    move-object/from16 v31, v0

    .line 550
    .line 551
    invoke-direct/range {v31 .. v58}, Lv1/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIII)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    .line 556
    .line 557
    move/from16 v0, v30

    .line 558
    .line 559
    move/from16 v30, v3

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :catchall_0
    move-exception v0

    .line 564
    goto :goto_c

    .line 565
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 566
    .line 567
    .line 568
    invoke-virtual/range {v16 .. v16}, Ly0/y;->u()V

    .line 569
    .line 570
    .line 571
    return-object v2

    .line 572
    :catchall_1
    move-exception v0

    .line 573
    move-object/from16 v16, v2

    .line 574
    .line 575
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 576
    .line 577
    .line 578
    invoke-virtual/range {v16 .. v16}, Ly0/y;->u()V

    .line 579
    .line 580
    .line 581
    throw v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 70

    .line 1
    const-string v0, "SELECT * FROM workspec WHERE state=1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    move-object/from16 v3, p0

    .line 9
    .line 10
    iget-object v0, v3, Lv1/r;->a:Ly0/w;

    .line 11
    .line 12
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v0, v2, v4}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    :try_start_0
    const-string v0, "id"

    .line 21
    .line 22
    invoke-static {v5, v0}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v6, "state"

    .line 27
    .line 28
    invoke-static {v5, v6}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const-string v7, "worker_class_name"

    .line 33
    .line 34
    invoke-static {v5, v7}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const-string v8, "input_merger_class_name"

    .line 39
    .line 40
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const-string v9, "input"

    .line 45
    .line 46
    invoke-static {v5, v9}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    const-string v10, "output"

    .line 51
    .line 52
    invoke-static {v5, v10}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    const-string v11, "initial_delay"

    .line 57
    .line 58
    invoke-static {v5, v11}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const-string v12, "interval_duration"

    .line 63
    .line 64
    invoke-static {v5, v12}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    const-string v13, "flex_duration"

    .line 69
    .line 70
    invoke-static {v5, v13}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    const-string v14, "run_attempt_count"

    .line 75
    .line 76
    invoke-static {v5, v14}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    const-string v15, "backoff_policy"

    .line 81
    .line 82
    invoke-static {v5, v15}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    const-string v1, "backoff_delay_duration"

    .line 87
    .line 88
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const-string v4, "last_enqueue_time"

    .line 93
    .line 94
    invoke-static {v5, v4}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    const-string v3, "minimum_retention_duration"

    .line 99
    .line 100
    invoke-static {v5, v3}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    move-object/from16 v16, v2

    .line 105
    .line 106
    :try_start_1
    const-string v2, "schedule_requested_at"

    .line 107
    .line 108
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    move/from16 v17, v2

    .line 113
    .line 114
    const-string v2, "run_in_foreground"

    .line 115
    .line 116
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    move/from16 v18, v2

    .line 121
    .line 122
    const-string v2, "out_of_quota_policy"

    .line 123
    .line 124
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    move/from16 v19, v2

    .line 129
    .line 130
    const-string v2, "period_count"

    .line 131
    .line 132
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    move/from16 v20, v2

    .line 137
    .line 138
    const-string v2, "generation"

    .line 139
    .line 140
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    move/from16 v21, v2

    .line 145
    .line 146
    const-string v2, "required_network_type"

    .line 147
    .line 148
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    move/from16 v22, v2

    .line 153
    .line 154
    const-string v2, "requires_charging"

    .line 155
    .line 156
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    move/from16 v23, v2

    .line 161
    .line 162
    const-string v2, "requires_device_idle"

    .line 163
    .line 164
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    move/from16 v24, v2

    .line 169
    .line 170
    const-string v2, "requires_battery_not_low"

    .line 171
    .line 172
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    move/from16 v25, v2

    .line 177
    .line 178
    const-string v2, "requires_storage_not_low"

    .line 179
    .line 180
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    move/from16 v26, v2

    .line 185
    .line 186
    const-string v2, "trigger_content_update_delay"

    .line 187
    .line 188
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    move/from16 v27, v2

    .line 193
    .line 194
    const-string v2, "trigger_max_content_delay"

    .line 195
    .line 196
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    move/from16 v28, v2

    .line 201
    .line 202
    const-string v2, "content_uri_triggers"

    .line 203
    .line 204
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    move/from16 v29, v2

    .line 209
    .line 210
    new-instance v2, Ljava/util/ArrayList;

    .line 211
    .line 212
    move/from16 v30, v3

    .line 213
    .line 214
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .line 220
    .line 221
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_b

    .line 226
    .line 227
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_0

    .line 232
    .line 233
    const/16 v32, 0x0

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    move-object/from16 v32, v3

    .line 241
    .line 242
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-static {v3}, Lg/a;->m(I)I

    .line 247
    .line 248
    .line 249
    move-result v33

    .line 250
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_1

    .line 255
    .line 256
    const/16 v34, 0x0

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    move-object/from16 v34, v3

    .line 264
    .line 265
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_2

    .line 270
    .line 271
    const/16 v35, 0x0

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    move-object/from16 v35, v3

    .line 279
    .line 280
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_3

    .line 285
    .line 286
    const/4 v3, 0x0

    .line 287
    goto :goto_4

    .line 288
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    :goto_4
    invoke-static {v3}, Lm1/e;->a([B)Lm1/e;

    .line 293
    .line 294
    .line 295
    move-result-object v36

    .line 296
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_4

    .line 301
    .line 302
    const/4 v3, 0x0

    .line 303
    goto :goto_5

    .line 304
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    :goto_5
    invoke-static {v3}, Lm1/e;->a([B)Lm1/e;

    .line 309
    .line 310
    .line 311
    move-result-object v37

    .line 312
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 313
    .line 314
    .line 315
    move-result-wide v38

    .line 316
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v40

    .line 320
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v42

    .line 324
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 325
    .line 326
    .line 327
    move-result v45

    .line 328
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    invoke-static {v3}, Lg/a;->j(I)I

    .line 333
    .line 334
    .line 335
    move-result v46

    .line 336
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v47

    .line 340
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v49

    .line 344
    move/from16 v3, v30

    .line 345
    .line 346
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v51

    .line 350
    move/from16 v30, v0

    .line 351
    .line 352
    move/from16 v0, v17

    .line 353
    .line 354
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 355
    .line 356
    .line 357
    move-result-wide v53

    .line 358
    move/from16 v17, v0

    .line 359
    .line 360
    move/from16 v0, v18

    .line 361
    .line 362
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 363
    .line 364
    .line 365
    move-result v18

    .line 366
    const/16 v31, 0x1

    .line 367
    .line 368
    if-eqz v18, :cond_5

    .line 369
    .line 370
    move/from16 v18, v0

    .line 371
    .line 372
    move/from16 v0, v19

    .line 373
    .line 374
    move/from16 v55, v31

    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_5
    move/from16 v18, v0

    .line 378
    .line 379
    move/from16 v0, v19

    .line 380
    .line 381
    const/16 v55, 0x0

    .line 382
    .line 383
    :goto_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 384
    .line 385
    .line 386
    move-result v19

    .line 387
    invoke-static/range {v19 .. v19}, Lg/a;->l(I)I

    .line 388
    .line 389
    .line 390
    move-result v56

    .line 391
    move/from16 v19, v0

    .line 392
    .line 393
    move/from16 v0, v20

    .line 394
    .line 395
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 396
    .line 397
    .line 398
    move-result v57

    .line 399
    move/from16 v20, v0

    .line 400
    .line 401
    move/from16 v0, v21

    .line 402
    .line 403
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 404
    .line 405
    .line 406
    move-result v58

    .line 407
    move/from16 v21, v0

    .line 408
    .line 409
    move/from16 v0, v22

    .line 410
    .line 411
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 412
    .line 413
    .line 414
    move-result v22

    .line 415
    invoke-static/range {v22 .. v22}, Lg/a;->k(I)I

    .line 416
    .line 417
    .line 418
    move-result v60

    .line 419
    move/from16 v22, v0

    .line 420
    .line 421
    move/from16 v0, v23

    .line 422
    .line 423
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 424
    .line 425
    .line 426
    move-result v23

    .line 427
    if-eqz v23, :cond_6

    .line 428
    .line 429
    move/from16 v23, v0

    .line 430
    .line 431
    move/from16 v0, v24

    .line 432
    .line 433
    move/from16 v61, v31

    .line 434
    .line 435
    goto :goto_7

    .line 436
    :cond_6
    move/from16 v23, v0

    .line 437
    .line 438
    move/from16 v0, v24

    .line 439
    .line 440
    const/16 v61, 0x0

    .line 441
    .line 442
    :goto_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 443
    .line 444
    .line 445
    move-result v24

    .line 446
    if-eqz v24, :cond_7

    .line 447
    .line 448
    move/from16 v24, v0

    .line 449
    .line 450
    move/from16 v0, v25

    .line 451
    .line 452
    move/from16 v62, v31

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_7
    move/from16 v24, v0

    .line 456
    .line 457
    move/from16 v0, v25

    .line 458
    .line 459
    const/16 v62, 0x0

    .line 460
    .line 461
    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 462
    .line 463
    .line 464
    move-result v25

    .line 465
    if-eqz v25, :cond_8

    .line 466
    .line 467
    move/from16 v25, v0

    .line 468
    .line 469
    move/from16 v0, v26

    .line 470
    .line 471
    move/from16 v63, v31

    .line 472
    .line 473
    goto :goto_9

    .line 474
    :cond_8
    move/from16 v25, v0

    .line 475
    .line 476
    move/from16 v0, v26

    .line 477
    .line 478
    const/16 v63, 0x0

    .line 479
    .line 480
    :goto_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 481
    .line 482
    .line 483
    move-result v26

    .line 484
    if-eqz v26, :cond_9

    .line 485
    .line 486
    move/from16 v26, v0

    .line 487
    .line 488
    move/from16 v0, v27

    .line 489
    .line 490
    move/from16 v64, v31

    .line 491
    .line 492
    goto :goto_a

    .line 493
    :cond_9
    move/from16 v26, v0

    .line 494
    .line 495
    move/from16 v0, v27

    .line 496
    .line 497
    const/16 v64, 0x0

    .line 498
    .line 499
    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 500
    .line 501
    .line 502
    move-result-wide v65

    .line 503
    move/from16 v27, v0

    .line 504
    .line 505
    move/from16 v0, v28

    .line 506
    .line 507
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 508
    .line 509
    .line 510
    move-result-wide v67

    .line 511
    move/from16 v28, v0

    .line 512
    .line 513
    move/from16 v0, v29

    .line 514
    .line 515
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 516
    .line 517
    .line 518
    move-result v29

    .line 519
    if-eqz v29, :cond_a

    .line 520
    .line 521
    const/16 v29, 0x0

    .line 522
    .line 523
    goto :goto_b

    .line 524
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 525
    .line 526
    .line 527
    move-result-object v29

    .line 528
    :goto_b
    invoke-static/range {v29 .. v29}, Lg/a;->c([B)Ljava/util/LinkedHashSet;

    .line 529
    .line 530
    .line 531
    move-result-object v69

    .line 532
    new-instance v44, Lm1/d;

    .line 533
    .line 534
    move-object/from16 v59, v44

    .line 535
    .line 536
    invoke-direct/range {v59 .. v69}, Lm1/d;-><init>(IZZZZJJLjava/util/Set;)V

    .line 537
    .line 538
    .line 539
    move/from16 v29, v0

    .line 540
    .line 541
    new-instance v0, Lv1/p;

    .line 542
    .line 543
    move-object/from16 v31, v0

    .line 544
    .line 545
    invoke-direct/range {v31 .. v58}, Lv1/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIII)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    .line 550
    .line 551
    move/from16 v0, v30

    .line 552
    .line 553
    move/from16 v30, v3

    .line 554
    .line 555
    goto/16 :goto_0

    .line 556
    .line 557
    :catchall_0
    move-exception v0

    .line 558
    goto :goto_c

    .line 559
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 560
    .line 561
    .line 562
    invoke-virtual/range {v16 .. v16}, Ly0/y;->u()V

    .line 563
    .line 564
    .line 565
    return-object v2

    .line 566
    :catchall_1
    move-exception v0

    .line 567
    move-object/from16 v16, v2

    .line 568
    .line 569
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 570
    .line 571
    .line 572
    invoke-virtual/range {v16 .. v16}, Ly0/y;->u()V

    .line 573
    .line 574
    .line 575
    throw v0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 70

    .line 1
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    move-object/from16 v3, p0

    .line 9
    .line 10
    iget-object v0, v3, Lv1/r;->a:Ly0/w;

    .line 11
    .line 12
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v0, v2, v4}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    :try_start_0
    const-string v0, "id"

    .line 21
    .line 22
    invoke-static {v5, v0}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v6, "state"

    .line 27
    .line 28
    invoke-static {v5, v6}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const-string v7, "worker_class_name"

    .line 33
    .line 34
    invoke-static {v5, v7}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const-string v8, "input_merger_class_name"

    .line 39
    .line 40
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const-string v9, "input"

    .line 45
    .line 46
    invoke-static {v5, v9}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    const-string v10, "output"

    .line 51
    .line 52
    invoke-static {v5, v10}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    const-string v11, "initial_delay"

    .line 57
    .line 58
    invoke-static {v5, v11}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const-string v12, "interval_duration"

    .line 63
    .line 64
    invoke-static {v5, v12}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    const-string v13, "flex_duration"

    .line 69
    .line 70
    invoke-static {v5, v13}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    const-string v14, "run_attempt_count"

    .line 75
    .line 76
    invoke-static {v5, v14}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    const-string v15, "backoff_policy"

    .line 81
    .line 82
    invoke-static {v5, v15}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    const-string v1, "backoff_delay_duration"

    .line 87
    .line 88
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const-string v4, "last_enqueue_time"

    .line 93
    .line 94
    invoke-static {v5, v4}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    const-string v3, "minimum_retention_duration"

    .line 99
    .line 100
    invoke-static {v5, v3}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    move-object/from16 v16, v2

    .line 105
    .line 106
    :try_start_1
    const-string v2, "schedule_requested_at"

    .line 107
    .line 108
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    move/from16 v17, v2

    .line 113
    .line 114
    const-string v2, "run_in_foreground"

    .line 115
    .line 116
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    move/from16 v18, v2

    .line 121
    .line 122
    const-string v2, "out_of_quota_policy"

    .line 123
    .line 124
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    move/from16 v19, v2

    .line 129
    .line 130
    const-string v2, "period_count"

    .line 131
    .line 132
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    move/from16 v20, v2

    .line 137
    .line 138
    const-string v2, "generation"

    .line 139
    .line 140
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    move/from16 v21, v2

    .line 145
    .line 146
    const-string v2, "required_network_type"

    .line 147
    .line 148
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    move/from16 v22, v2

    .line 153
    .line 154
    const-string v2, "requires_charging"

    .line 155
    .line 156
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    move/from16 v23, v2

    .line 161
    .line 162
    const-string v2, "requires_device_idle"

    .line 163
    .line 164
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    move/from16 v24, v2

    .line 169
    .line 170
    const-string v2, "requires_battery_not_low"

    .line 171
    .line 172
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    move/from16 v25, v2

    .line 177
    .line 178
    const-string v2, "requires_storage_not_low"

    .line 179
    .line 180
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    move/from16 v26, v2

    .line 185
    .line 186
    const-string v2, "trigger_content_update_delay"

    .line 187
    .line 188
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    move/from16 v27, v2

    .line 193
    .line 194
    const-string v2, "trigger_max_content_delay"

    .line 195
    .line 196
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    move/from16 v28, v2

    .line 201
    .line 202
    const-string v2, "content_uri_triggers"

    .line 203
    .line 204
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    move/from16 v29, v2

    .line 209
    .line 210
    new-instance v2, Ljava/util/ArrayList;

    .line 211
    .line 212
    move/from16 v30, v3

    .line 213
    .line 214
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .line 220
    .line 221
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_b

    .line 226
    .line 227
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_0

    .line 232
    .line 233
    const/16 v32, 0x0

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    move-object/from16 v32, v3

    .line 241
    .line 242
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-static {v3}, Lg/a;->m(I)I

    .line 247
    .line 248
    .line 249
    move-result v33

    .line 250
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_1

    .line 255
    .line 256
    const/16 v34, 0x0

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    move-object/from16 v34, v3

    .line 264
    .line 265
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_2

    .line 270
    .line 271
    const/16 v35, 0x0

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    move-object/from16 v35, v3

    .line 279
    .line 280
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_3

    .line 285
    .line 286
    const/4 v3, 0x0

    .line 287
    goto :goto_4

    .line 288
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    :goto_4
    invoke-static {v3}, Lm1/e;->a([B)Lm1/e;

    .line 293
    .line 294
    .line 295
    move-result-object v36

    .line 296
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_4

    .line 301
    .line 302
    const/4 v3, 0x0

    .line 303
    goto :goto_5

    .line 304
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    :goto_5
    invoke-static {v3}, Lm1/e;->a([B)Lm1/e;

    .line 309
    .line 310
    .line 311
    move-result-object v37

    .line 312
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 313
    .line 314
    .line 315
    move-result-wide v38

    .line 316
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v40

    .line 320
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v42

    .line 324
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 325
    .line 326
    .line 327
    move-result v45

    .line 328
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    invoke-static {v3}, Lg/a;->j(I)I

    .line 333
    .line 334
    .line 335
    move-result v46

    .line 336
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v47

    .line 340
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v49

    .line 344
    move/from16 v3, v30

    .line 345
    .line 346
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v51

    .line 350
    move/from16 v30, v0

    .line 351
    .line 352
    move/from16 v0, v17

    .line 353
    .line 354
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 355
    .line 356
    .line 357
    move-result-wide v53

    .line 358
    move/from16 v17, v0

    .line 359
    .line 360
    move/from16 v0, v18

    .line 361
    .line 362
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 363
    .line 364
    .line 365
    move-result v18

    .line 366
    const/16 v31, 0x1

    .line 367
    .line 368
    if-eqz v18, :cond_5

    .line 369
    .line 370
    move/from16 v18, v0

    .line 371
    .line 372
    move/from16 v0, v19

    .line 373
    .line 374
    move/from16 v55, v31

    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_5
    move/from16 v18, v0

    .line 378
    .line 379
    move/from16 v0, v19

    .line 380
    .line 381
    const/16 v55, 0x0

    .line 382
    .line 383
    :goto_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 384
    .line 385
    .line 386
    move-result v19

    .line 387
    invoke-static/range {v19 .. v19}, Lg/a;->l(I)I

    .line 388
    .line 389
    .line 390
    move-result v56

    .line 391
    move/from16 v19, v0

    .line 392
    .line 393
    move/from16 v0, v20

    .line 394
    .line 395
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 396
    .line 397
    .line 398
    move-result v57

    .line 399
    move/from16 v20, v0

    .line 400
    .line 401
    move/from16 v0, v21

    .line 402
    .line 403
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 404
    .line 405
    .line 406
    move-result v58

    .line 407
    move/from16 v21, v0

    .line 408
    .line 409
    move/from16 v0, v22

    .line 410
    .line 411
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 412
    .line 413
    .line 414
    move-result v22

    .line 415
    invoke-static/range {v22 .. v22}, Lg/a;->k(I)I

    .line 416
    .line 417
    .line 418
    move-result v60

    .line 419
    move/from16 v22, v0

    .line 420
    .line 421
    move/from16 v0, v23

    .line 422
    .line 423
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 424
    .line 425
    .line 426
    move-result v23

    .line 427
    if-eqz v23, :cond_6

    .line 428
    .line 429
    move/from16 v23, v0

    .line 430
    .line 431
    move/from16 v0, v24

    .line 432
    .line 433
    move/from16 v61, v31

    .line 434
    .line 435
    goto :goto_7

    .line 436
    :cond_6
    move/from16 v23, v0

    .line 437
    .line 438
    move/from16 v0, v24

    .line 439
    .line 440
    const/16 v61, 0x0

    .line 441
    .line 442
    :goto_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 443
    .line 444
    .line 445
    move-result v24

    .line 446
    if-eqz v24, :cond_7

    .line 447
    .line 448
    move/from16 v24, v0

    .line 449
    .line 450
    move/from16 v0, v25

    .line 451
    .line 452
    move/from16 v62, v31

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_7
    move/from16 v24, v0

    .line 456
    .line 457
    move/from16 v0, v25

    .line 458
    .line 459
    const/16 v62, 0x0

    .line 460
    .line 461
    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 462
    .line 463
    .line 464
    move-result v25

    .line 465
    if-eqz v25, :cond_8

    .line 466
    .line 467
    move/from16 v25, v0

    .line 468
    .line 469
    move/from16 v0, v26

    .line 470
    .line 471
    move/from16 v63, v31

    .line 472
    .line 473
    goto :goto_9

    .line 474
    :cond_8
    move/from16 v25, v0

    .line 475
    .line 476
    move/from16 v0, v26

    .line 477
    .line 478
    const/16 v63, 0x0

    .line 479
    .line 480
    :goto_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 481
    .line 482
    .line 483
    move-result v26

    .line 484
    if-eqz v26, :cond_9

    .line 485
    .line 486
    move/from16 v26, v0

    .line 487
    .line 488
    move/from16 v0, v27

    .line 489
    .line 490
    move/from16 v64, v31

    .line 491
    .line 492
    goto :goto_a

    .line 493
    :cond_9
    move/from16 v26, v0

    .line 494
    .line 495
    move/from16 v0, v27

    .line 496
    .line 497
    const/16 v64, 0x0

    .line 498
    .line 499
    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 500
    .line 501
    .line 502
    move-result-wide v65

    .line 503
    move/from16 v27, v0

    .line 504
    .line 505
    move/from16 v0, v28

    .line 506
    .line 507
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 508
    .line 509
    .line 510
    move-result-wide v67

    .line 511
    move/from16 v28, v0

    .line 512
    .line 513
    move/from16 v0, v29

    .line 514
    .line 515
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 516
    .line 517
    .line 518
    move-result v29

    .line 519
    if-eqz v29, :cond_a

    .line 520
    .line 521
    const/16 v29, 0x0

    .line 522
    .line 523
    goto :goto_b

    .line 524
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 525
    .line 526
    .line 527
    move-result-object v29

    .line 528
    :goto_b
    invoke-static/range {v29 .. v29}, Lg/a;->c([B)Ljava/util/LinkedHashSet;

    .line 529
    .line 530
    .line 531
    move-result-object v69

    .line 532
    new-instance v44, Lm1/d;

    .line 533
    .line 534
    move-object/from16 v59, v44

    .line 535
    .line 536
    invoke-direct/range {v59 .. v69}, Lm1/d;-><init>(IZZZZJJLjava/util/Set;)V

    .line 537
    .line 538
    .line 539
    move/from16 v29, v0

    .line 540
    .line 541
    new-instance v0, Lv1/p;

    .line 542
    .line 543
    move-object/from16 v31, v0

    .line 544
    .line 545
    invoke-direct/range {v31 .. v58}, Lv1/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIII)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    .line 550
    .line 551
    move/from16 v0, v30

    .line 552
    .line 553
    move/from16 v30, v3

    .line 554
    .line 555
    goto/16 :goto_0

    .line 556
    .line 557
    :catchall_0
    move-exception v0

    .line 558
    goto :goto_c

    .line 559
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 560
    .line 561
    .line 562
    invoke-virtual/range {v16 .. v16}, Ly0/y;->u()V

    .line 563
    .line 564
    .line 565
    return-object v2

    .line 566
    :catchall_1
    move-exception v0

    .line 567
    move-object/from16 v16, v2

    .line 568
    .line 569
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 570
    .line 571
    .line 572
    invoke-virtual/range {v16 .. v16}, Ly0/y;->u()V

    .line 573
    .line 574
    .line 575
    throw v0
.end method

.method public final f(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "SELECT state FROM workspec WHERE id=?"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ly0/y;->h(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Ly0/y;->d(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Lv1/r;->a:Ly0/w;

    .line 18
    .line 19
    invoke-virtual {p1}, Ly0/w;->b()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_1
    if-nez v1, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Lg/a;->m(I)I

    .line 57
    .line 58
    .line 59
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ly0/y;->u()V

    .line 67
    .line 68
    .line 69
    return v3

    .line 70
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ly0/y;->u()V

    .line 74
    .line 75
    .line 76
    throw v1
.end method

.method public final g(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ly0/y;->h(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Ly0/y;->d(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Lv1/r;->a:Ly0/w;

    .line 18
    .line 19
    invoke-virtual {p1}, Ly0/w;->b()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    move-object v3, v1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ly0/y;->u()V

    .line 65
    .line 66
    .line 67
    return-object v2

    .line 68
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ly0/y;->u()V

    .line 72
    .line 73
    .line 74
    throw v1
.end method

.method public final h(Ljava/lang/String;)Lv1/p;
    .locals 68

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "SELECT * FROM workspec WHERE id=?"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v2, v1}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ly0/y;->h(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    move-object/from16 v3, p0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v1, v2, v0}, Ly0/y;->d(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    iget-object v0, v3, Lv1/r;->a:Ly0/w;

    .line 23
    .line 24
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v0, v1, v4}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    :try_start_0
    const-string v0, "id"

    .line 33
    .line 34
    invoke-static {v5, v0}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v6, "state"

    .line 39
    .line 40
    invoke-static {v5, v6}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const-string v7, "worker_class_name"

    .line 45
    .line 46
    invoke-static {v5, v7}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const-string v8, "input_merger_class_name"

    .line 51
    .line 52
    invoke-static {v5, v8}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const-string v9, "input"

    .line 57
    .line 58
    invoke-static {v5, v9}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    const-string v10, "output"

    .line 63
    .line 64
    invoke-static {v5, v10}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    const-string v11, "initial_delay"

    .line 69
    .line 70
    invoke-static {v5, v11}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    const-string v12, "interval_duration"

    .line 75
    .line 76
    invoke-static {v5, v12}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    const-string v13, "flex_duration"

    .line 81
    .line 82
    invoke-static {v5, v13}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    const-string v14, "run_attempt_count"

    .line 87
    .line 88
    invoke-static {v5, v14}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v14

    .line 92
    const-string v15, "backoff_policy"

    .line 93
    .line 94
    invoke-static {v5, v15}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    const-string v2, "backoff_delay_duration"

    .line 99
    .line 100
    invoke-static {v5, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const-string v4, "last_enqueue_time"

    .line 105
    .line 106
    invoke-static {v5, v4}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    const-string v3, "minimum_retention_duration"

    .line 111
    .line 112
    invoke-static {v5, v3}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    move-object/from16 v16, v1

    .line 117
    .line 118
    :try_start_1
    const-string v1, "schedule_requested_at"

    .line 119
    .line 120
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    move/from16 v17, v1

    .line 125
    .line 126
    const-string v1, "run_in_foreground"

    .line 127
    .line 128
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    move/from16 v18, v1

    .line 133
    .line 134
    const-string v1, "out_of_quota_policy"

    .line 135
    .line 136
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    move/from16 v19, v1

    .line 141
    .line 142
    const-string v1, "period_count"

    .line 143
    .line 144
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    move/from16 v20, v1

    .line 149
    .line 150
    const-string v1, "generation"

    .line 151
    .line 152
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    move/from16 v21, v1

    .line 157
    .line 158
    const-string v1, "required_network_type"

    .line 159
    .line 160
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    move/from16 v22, v1

    .line 165
    .line 166
    const-string v1, "requires_charging"

    .line 167
    .line 168
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    move/from16 v23, v1

    .line 173
    .line 174
    const-string v1, "requires_device_idle"

    .line 175
    .line 176
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    move/from16 v24, v1

    .line 181
    .line 182
    const-string v1, "requires_battery_not_low"

    .line 183
    .line 184
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    move/from16 v25, v1

    .line 189
    .line 190
    const-string v1, "requires_storage_not_low"

    .line 191
    .line 192
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    move/from16 v26, v1

    .line 197
    .line 198
    const-string v1, "trigger_content_update_delay"

    .line 199
    .line 200
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    move/from16 v27, v1

    .line 205
    .line 206
    const-string v1, "trigger_max_content_delay"

    .line 207
    .line 208
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    move/from16 v28, v1

    .line 213
    .line 214
    const-string v1, "content_uri_triggers"

    .line 215
    .line 216
    invoke-static {v5, v1}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    .line 222
    .line 223
    move-result v29

    .line 224
    if-eqz v29, :cond_c

    .line 225
    .line 226
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 227
    .line 228
    .line 229
    move-result v29

    .line 230
    if-eqz v29, :cond_1

    .line 231
    .line 232
    const/16 v30, 0x0

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_1
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    move-object/from16 v30, v0

    .line 240
    .line 241
    :goto_2
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    invoke-static {v0}, Lg/a;->m(I)I

    .line 246
    .line 247
    .line 248
    move-result v31

    .line 249
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    .line 255
    const/16 v32, 0x0

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    move-object/from16 v32, v0

    .line 263
    .line 264
    :goto_3
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_3

    .line 269
    .line 270
    const/16 v33, 0x0

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_3
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    move-object/from16 v33, v0

    .line 278
    .line 279
    :goto_4
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_4

    .line 284
    .line 285
    const/4 v0, 0x0

    .line 286
    goto :goto_5

    .line 287
    :cond_4
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    :goto_5
    invoke-static {v0}, Lm1/e;->a([B)Lm1/e;

    .line 292
    .line 293
    .line 294
    move-result-object v34

    .line 295
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_5

    .line 300
    .line 301
    const/4 v0, 0x0

    .line 302
    goto :goto_6

    .line 303
    :cond_5
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    :goto_6
    invoke-static {v0}, Lm1/e;->a([B)Lm1/e;

    .line 308
    .line 309
    .line 310
    move-result-object v35

    .line 311
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 312
    .line 313
    .line 314
    move-result-wide v36

    .line 315
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 316
    .line 317
    .line 318
    move-result-wide v38

    .line 319
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 320
    .line 321
    .line 322
    move-result-wide v40

    .line 323
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 324
    .line 325
    .line 326
    move-result v43

    .line 327
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    invoke-static {v0}, Lg/a;->j(I)I

    .line 332
    .line 333
    .line 334
    move-result v44

    .line 335
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 336
    .line 337
    .line 338
    move-result-wide v45

    .line 339
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 340
    .line 341
    .line 342
    move-result-wide v47

    .line 343
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 344
    .line 345
    .line 346
    move-result-wide v49

    .line 347
    move/from16 v0, v17

    .line 348
    .line 349
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 350
    .line 351
    .line 352
    move-result-wide v51

    .line 353
    move/from16 v0, v18

    .line 354
    .line 355
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    const/4 v2, 0x0

    .line 360
    if-eqz v0, :cond_6

    .line 361
    .line 362
    move/from16 v0, v19

    .line 363
    .line 364
    const/16 v53, 0x1

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_6
    move/from16 v53, v2

    .line 368
    .line 369
    move/from16 v0, v19

    .line 370
    .line 371
    :goto_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    invoke-static {v0}, Lg/a;->l(I)I

    .line 376
    .line 377
    .line 378
    move-result v54

    .line 379
    move/from16 v0, v20

    .line 380
    .line 381
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 382
    .line 383
    .line 384
    move-result v55

    .line 385
    move/from16 v0, v21

    .line 386
    .line 387
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 388
    .line 389
    .line 390
    move-result v56

    .line 391
    move/from16 v0, v22

    .line 392
    .line 393
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    invoke-static {v0}, Lg/a;->k(I)I

    .line 398
    .line 399
    .line 400
    move-result v58

    .line 401
    move/from16 v0, v23

    .line 402
    .line 403
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_7

    .line 408
    .line 409
    move/from16 v0, v24

    .line 410
    .line 411
    const/16 v59, 0x1

    .line 412
    .line 413
    goto :goto_8

    .line 414
    :cond_7
    move/from16 v59, v2

    .line 415
    .line 416
    move/from16 v0, v24

    .line 417
    .line 418
    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-eqz v0, :cond_8

    .line 423
    .line 424
    move/from16 v0, v25

    .line 425
    .line 426
    const/16 v60, 0x1

    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_8
    move/from16 v60, v2

    .line 430
    .line 431
    move/from16 v0, v25

    .line 432
    .line 433
    :goto_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_9

    .line 438
    .line 439
    move/from16 v0, v26

    .line 440
    .line 441
    const/16 v61, 0x1

    .line 442
    .line 443
    goto :goto_a

    .line 444
    :cond_9
    move/from16 v61, v2

    .line 445
    .line 446
    move/from16 v0, v26

    .line 447
    .line 448
    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-eqz v0, :cond_a

    .line 453
    .line 454
    move/from16 v0, v27

    .line 455
    .line 456
    const/16 v62, 0x1

    .line 457
    .line 458
    goto :goto_b

    .line 459
    :cond_a
    move/from16 v62, v2

    .line 460
    .line 461
    move/from16 v0, v27

    .line 462
    .line 463
    :goto_b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 464
    .line 465
    .line 466
    move-result-wide v63

    .line 467
    move/from16 v0, v28

    .line 468
    .line 469
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 470
    .line 471
    .line 472
    move-result-wide v65

    .line 473
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-eqz v0, :cond_b

    .line 478
    .line 479
    const/4 v4, 0x0

    .line 480
    goto :goto_c

    .line 481
    :cond_b
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    :goto_c
    invoke-static {v4}, Lg/a;->c([B)Ljava/util/LinkedHashSet;

    .line 486
    .line 487
    .line 488
    move-result-object v67

    .line 489
    new-instance v42, Lm1/d;

    .line 490
    .line 491
    move-object/from16 v57, v42

    .line 492
    .line 493
    invoke-direct/range {v57 .. v67}, Lm1/d;-><init>(IZZZZJJLjava/util/Set;)V

    .line 494
    .line 495
    .line 496
    new-instance v4, Lv1/p;

    .line 497
    .line 498
    move-object/from16 v29, v4

    .line 499
    .line 500
    invoke-direct/range {v29 .. v56}, Lv1/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    .line 502
    .line 503
    goto :goto_d

    .line 504
    :catchall_0
    move-exception v0

    .line 505
    goto :goto_e

    .line 506
    :cond_c
    const/4 v4, 0x0

    .line 507
    :goto_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 508
    .line 509
    .line 510
    invoke-virtual/range {v16 .. v16}, Ly0/y;->u()V

    .line 511
    .line 512
    .line 513
    return-object v4

    .line 514
    :catchall_1
    move-exception v0

    .line 515
    move-object/from16 v16, v1

    .line 516
    .line 517
    :goto_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 518
    .line 519
    .line 520
    invoke-virtual/range {v16 .. v16}, Ly0/y;->u()V

    .line 521
    .line 522
    .line 523
    throw v0
.end method

.method public final i(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ly0/y;->h(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Ly0/y;->d(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Lv1/r;->a:Ly0/w;

    .line 18
    .line 19
    invoke-virtual {p1}, Ly0/w;->b()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v0, v2}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    move-object v4, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :goto_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {v5}, Lg/a;->m(I)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    new-instance v6, Lv1/o;

    .line 64
    .line 65
    const-string v7, "id"

    .line 66
    .line 67
    invoke-static {v4, v7}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v4, v6, Lv1/o;->a:Ljava/lang/String;

    .line 74
    .line 75
    iput v5, v6, Lv1/o;->b:I

    .line 76
    .line 77
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v1

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ly0/y;->u()V

    .line 87
    .line 88
    .line 89
    return-object v3

    .line 90
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ly0/y;->u()V

    .line 94
    .line 95
    .line 96
    throw v1
.end method

.method public final j(Ljava/lang/String;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/r;->a:Ly0/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv1/r;->k:Lv1/q;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-interface {v2, v3, p2, p3}, Lc1/f;->m(IJ)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v2, p2}, Lc1/f;->h(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v2, p2, p1}, Lc1/f;->d(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0}, Ly0/w;->c()V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-interface {v2}, Lc1/h;->e()I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final k(Ljava/lang/String;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/r;->a:Ly0/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv1/r;->h:Lv1/q;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-interface {v2, v3, p2, p3}, Lc1/f;->m(IJ)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v2, p2}, Lc1/f;->h(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v2, p2, p1}, Lc1/f;->d(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0}, Ly0/w;->c()V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-interface {v2}, Lc1/h;->e()I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final l(Ljava/lang/String;Lm1/e;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/r;->a:Ly0/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv1/r;->g:Lv1/q;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {p2}, Lm1/e;->b(Lm1/e;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-interface {v2, v3}, Lc1/f;->h(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v2, v3, p2}, Lc1/f;->p(I[B)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 p2, 0x2

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-interface {v2, p2}, Lc1/f;->h(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v2, p2, p1}, Lc1/f;->d(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0}, Ly0/w;->c()V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-interface {v2}, Lc1/h;->e()I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final m(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lv1/r;->a:Ly0/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv1/r;->e:Lv1/q;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {p1}, Lg/a;->E(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    int-to-long v3, p1

    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-interface {v2, p1, v3, v4}, Lc1/f;->m(IJ)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    invoke-interface {v2, p1}, Lc1/f;->h(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v2, p1, p2}, Lc1/f;->d(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0}, Ly0/w;->c()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-interface {v2}, Lc1/h;->e()I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
