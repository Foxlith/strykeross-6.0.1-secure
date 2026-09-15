.class public final Lv1/b;
.super Ly0/d;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ly0/w;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv1/b;->d:I

    .line 2
    .line 3
    iput-object p1, p0, Lv1/b;->e:Ljava/lang/Object;

    .line 4
    .line 5
    const-string p1, "database"

    .line 6
    .line 7
    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/d;-><init>(Ly0/w;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lv1/b;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object v0

    :pswitch_0
    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0

    :pswitch_1
    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0

    :pswitch_2
    const-string v0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object v0

    :pswitch_3
    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object v0

    :pswitch_4
    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0

    :pswitch_5
    const-string v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Lc1/h;Ljava/lang/Object;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lv1/b;->d:I

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p2, Lv1/s;

    .line 11
    .line 12
    iget-object v0, p2, Lv1/s;->a:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, v4}, Lc1/f;->h(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p1, v4, v0}, Lc1/f;->d(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p2, p2, Lv1/s;->b:Ljava/lang/String;

    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    invoke-interface {p1, v3}, Lc1/f;->h(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-interface {p1, v3, p2}, Lc1/f;->d(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_1
    return-void

    .line 35
    :pswitch_0
    check-cast p2, Lv1/p;

    .line 36
    .line 37
    iget-object v1, p2, Lv1/p;->a:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    invoke-interface {p1, v4}, Lc1/f;->h(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-interface {p1, v4, v1}, Lc1/f;->d(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    iget v1, p2, Lv1/p;->b:I

    .line 49
    .line 50
    invoke-static {v1}, Lg/a;->E(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-long v5, v1

    .line 55
    invoke-interface {p1, v3, v5, v6}, Lc1/f;->m(IJ)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p2, Lv1/p;->c:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    invoke-interface {p1, v2}, Lc1/f;->h(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-interface {p1, v2, v1}, Lc1/f;->d(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_3
    iget-object v1, p2, Lv1/p;->d:Ljava/lang/String;

    .line 70
    .line 71
    const/4 v2, 0x4

    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    invoke-interface {p1, v2}, Lc1/f;->h(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    invoke-interface {p1, v2, v1}, Lc1/f;->d(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_4
    iget-object v1, p2, Lv1/p;->e:Lm1/e;

    .line 82
    .line 83
    invoke-static {v1}, Lm1/e;->b(Lm1/e;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/4 v2, 0x5

    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    invoke-interface {p1, v2}, Lc1/f;->h(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_5
    invoke-interface {p1, v2, v1}, Lc1/f;->p(I[B)V

    .line 95
    .line 96
    .line 97
    :goto_5
    iget-object v1, p2, Lv1/p;->f:Lm1/e;

    .line 98
    .line 99
    invoke-static {v1}, Lm1/e;->b(Lm1/e;)[B

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const/4 v2, 0x6

    .line 104
    if-nez v1, :cond_6

    .line 105
    .line 106
    invoke-interface {p1, v2}, Lc1/f;->h(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_6
    invoke-interface {p1, v2, v1}, Lc1/f;->p(I[B)V

    .line 111
    .line 112
    .line 113
    :goto_6
    const/4 v1, 0x7

    .line 114
    iget-wide v2, p2, Lv1/p;->g:J

    .line 115
    .line 116
    invoke-interface {p1, v1, v2, v3}, Lc1/f;->m(IJ)V

    .line 117
    .line 118
    .line 119
    const/16 v1, 0x8

    .line 120
    .line 121
    iget-wide v2, p2, Lv1/p;->h:J

    .line 122
    .line 123
    invoke-interface {p1, v1, v2, v3}, Lc1/f;->m(IJ)V

    .line 124
    .line 125
    .line 126
    const/16 v1, 0x9

    .line 127
    .line 128
    iget-wide v2, p2, Lv1/p;->i:J

    .line 129
    .line 130
    invoke-interface {p1, v1, v2, v3}, Lc1/f;->m(IJ)V

    .line 131
    .line 132
    .line 133
    iget v1, p2, Lv1/p;->k:I

    .line 134
    .line 135
    int-to-long v1, v1

    .line 136
    const/16 v3, 0xa

    .line 137
    .line 138
    invoke-interface {p1, v3, v1, v2}, Lc1/f;->m(IJ)V

    .line 139
    .line 140
    .line 141
    iget v1, p2, Lv1/p;->l:I

    .line 142
    .line 143
    const-string v2, "backoffPolicy"

    .line 144
    .line 145
    invoke-static {v1, v2}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    if-eqz v1, :cond_d

    .line 149
    .line 150
    sub-int/2addr v1, v4

    .line 151
    const/4 v2, 0x0

    .line 152
    if-eqz v1, :cond_8

    .line 153
    .line 154
    if-ne v1, v4, :cond_7

    .line 155
    .line 156
    move v1, v4

    .line 157
    goto :goto_7

    .line 158
    :cond_7
    new-instance p1, Landroidx/fragment/app/u;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_8
    move v1, v2

    .line 165
    :goto_7
    const/16 v3, 0xb

    .line 166
    .line 167
    int-to-long v5, v1

    .line 168
    invoke-interface {p1, v3, v5, v6}, Lc1/f;->m(IJ)V

    .line 169
    .line 170
    .line 171
    const/16 v1, 0xc

    .line 172
    .line 173
    iget-wide v5, p2, Lv1/p;->m:J

    .line 174
    .line 175
    invoke-interface {p1, v1, v5, v6}, Lc1/f;->m(IJ)V

    .line 176
    .line 177
    .line 178
    const/16 v1, 0xd

    .line 179
    .line 180
    iget-wide v5, p2, Lv1/p;->n:J

    .line 181
    .line 182
    invoke-interface {p1, v1, v5, v6}, Lc1/f;->m(IJ)V

    .line 183
    .line 184
    .line 185
    const/16 v1, 0xe

    .line 186
    .line 187
    iget-wide v5, p2, Lv1/p;->o:J

    .line 188
    .line 189
    invoke-interface {p1, v1, v5, v6}, Lc1/f;->m(IJ)V

    .line 190
    .line 191
    .line 192
    const/16 v1, 0xf

    .line 193
    .line 194
    iget-wide v5, p2, Lv1/p;->p:J

    .line 195
    .line 196
    invoke-interface {p1, v1, v5, v6}, Lc1/f;->m(IJ)V

    .line 197
    .line 198
    .line 199
    iget-boolean v1, p2, Lv1/p;->q:Z

    .line 200
    .line 201
    const/16 v3, 0x10

    .line 202
    .line 203
    int-to-long v5, v1

    .line 204
    invoke-interface {p1, v3, v5, v6}, Lc1/f;->m(IJ)V

    .line 205
    .line 206
    .line 207
    iget v1, p2, Lv1/p;->r:I

    .line 208
    .line 209
    const-string v3, "policy"

    .line 210
    .line 211
    invoke-static {v1, v3}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    if-eqz v1, :cond_c

    .line 215
    .line 216
    sub-int/2addr v1, v4

    .line 217
    if-eqz v1, :cond_a

    .line 218
    .line 219
    if-ne v1, v4, :cond_9

    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_9
    new-instance p1, Landroidx/fragment/app/u;

    .line 223
    .line 224
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :cond_a
    move v4, v2

    .line 229
    :goto_8
    const/16 v0, 0x11

    .line 230
    .line 231
    int-to-long v1, v4

    .line 232
    invoke-interface {p1, v0, v1, v2}, Lc1/f;->m(IJ)V

    .line 233
    .line 234
    .line 235
    iget v0, p2, Lv1/p;->s:I

    .line 236
    .line 237
    int-to-long v0, v0

    .line 238
    const/16 v2, 0x12

    .line 239
    .line 240
    invoke-interface {p1, v2, v0, v1}, Lc1/f;->m(IJ)V

    .line 241
    .line 242
    .line 243
    iget v0, p2, Lv1/p;->t:I

    .line 244
    .line 245
    int-to-long v0, v0

    .line 246
    const/16 v2, 0x13

    .line 247
    .line 248
    invoke-interface {p1, v2, v0, v1}, Lc1/f;->m(IJ)V

    .line 249
    .line 250
    .line 251
    iget-object p2, p2, Lv1/p;->j:Lm1/d;

    .line 252
    .line 253
    const/16 v0, 0x1b

    .line 254
    .line 255
    const/16 v1, 0x1a

    .line 256
    .line 257
    const/16 v2, 0x19

    .line 258
    .line 259
    const/16 v3, 0x18

    .line 260
    .line 261
    const/16 v4, 0x17

    .line 262
    .line 263
    const/16 v5, 0x16

    .line 264
    .line 265
    const/16 v6, 0x15

    .line 266
    .line 267
    const/16 v7, 0x14

    .line 268
    .line 269
    if-eqz p2, :cond_b

    .line 270
    .line 271
    iget v8, p2, Lm1/d;->a:I

    .line 272
    .line 273
    invoke-static {v8}, Lg/a;->r(I)I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    int-to-long v8, v8

    .line 278
    invoke-interface {p1, v7, v8, v9}, Lc1/f;->m(IJ)V

    .line 279
    .line 280
    .line 281
    iget-boolean v7, p2, Lm1/d;->b:Z

    .line 282
    .line 283
    int-to-long v7, v7

    .line 284
    invoke-interface {p1, v6, v7, v8}, Lc1/f;->m(IJ)V

    .line 285
    .line 286
    .line 287
    iget-boolean v6, p2, Lm1/d;->c:Z

    .line 288
    .line 289
    int-to-long v6, v6

    .line 290
    invoke-interface {p1, v5, v6, v7}, Lc1/f;->m(IJ)V

    .line 291
    .line 292
    .line 293
    iget-boolean v5, p2, Lm1/d;->d:Z

    .line 294
    .line 295
    int-to-long v5, v5

    .line 296
    invoke-interface {p1, v4, v5, v6}, Lc1/f;->m(IJ)V

    .line 297
    .line 298
    .line 299
    iget-boolean v4, p2, Lm1/d;->e:Z

    .line 300
    .line 301
    int-to-long v4, v4

    .line 302
    invoke-interface {p1, v3, v4, v5}, Lc1/f;->m(IJ)V

    .line 303
    .line 304
    .line 305
    iget-wide v3, p2, Lm1/d;->f:J

    .line 306
    .line 307
    invoke-interface {p1, v2, v3, v4}, Lc1/f;->m(IJ)V

    .line 308
    .line 309
    .line 310
    iget-wide v2, p2, Lm1/d;->g:J

    .line 311
    .line 312
    invoke-interface {p1, v1, v2, v3}, Lc1/f;->m(IJ)V

    .line 313
    .line 314
    .line 315
    iget-object p2, p2, Lm1/d;->h:Ljava/util/Set;

    .line 316
    .line 317
    invoke-static {p2}, Lg/a;->C(Ljava/util/Set;)[B

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    invoke-interface {p1, v0, p2}, Lc1/f;->p(I[B)V

    .line 322
    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_b
    invoke-interface {p1, v7}, Lc1/f;->h(I)V

    .line 326
    .line 327
    .line 328
    invoke-interface {p1, v6}, Lc1/f;->h(I)V

    .line 329
    .line 330
    .line 331
    invoke-interface {p1, v5}, Lc1/f;->h(I)V

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v4}, Lc1/f;->h(I)V

    .line 335
    .line 336
    .line 337
    invoke-interface {p1, v3}, Lc1/f;->h(I)V

    .line 338
    .line 339
    .line 340
    invoke-interface {p1, v2}, Lc1/f;->h(I)V

    .line 341
    .line 342
    .line 343
    invoke-interface {p1, v1}, Lc1/f;->h(I)V

    .line 344
    .line 345
    .line 346
    invoke-interface {p1, v0}, Lc1/f;->h(I)V

    .line 347
    .line 348
    .line 349
    :goto_9
    return-void

    .line 350
    :cond_c
    throw v0

    .line 351
    :cond_d
    throw v0

    .line 352
    :pswitch_1
    invoke-static {p2}, Lorg/bouncycastle/math/ec/a;->m(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    throw v0

    .line 356
    :pswitch_2
    check-cast p2, Lv1/j;

    .line 357
    .line 358
    iget-object v0, p2, Lv1/j;->a:Ljava/lang/String;

    .line 359
    .line 360
    if-nez v0, :cond_e

    .line 361
    .line 362
    invoke-interface {p1, v4}, Lc1/f;->h(I)V

    .line 363
    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_e
    invoke-interface {p1, v4, v0}, Lc1/f;->d(ILjava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :goto_a
    iget-object p2, p2, Lv1/j;->b:Ljava/lang/String;

    .line 370
    .line 371
    if-nez p2, :cond_f

    .line 372
    .line 373
    invoke-interface {p1, v3}, Lc1/f;->h(I)V

    .line 374
    .line 375
    .line 376
    goto :goto_b

    .line 377
    :cond_f
    invoke-interface {p1, v3, p2}, Lc1/f;->d(ILjava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :goto_b
    return-void

    .line 381
    :pswitch_3
    check-cast p2, Lv1/g;

    .line 382
    .line 383
    iget-object v0, p2, Lv1/g;->a:Ljava/lang/String;

    .line 384
    .line 385
    if-nez v0, :cond_10

    .line 386
    .line 387
    invoke-interface {p1, v4}, Lc1/f;->h(I)V

    .line 388
    .line 389
    .line 390
    goto :goto_c

    .line 391
    :cond_10
    invoke-interface {p1, v4, v0}, Lc1/f;->d(ILjava/lang/String;)V

    .line 392
    .line 393
    .line 394
    :goto_c
    iget v0, p2, Lv1/g;->b:I

    .line 395
    .line 396
    int-to-long v0, v0

    .line 397
    invoke-interface {p1, v3, v0, v1}, Lc1/f;->m(IJ)V

    .line 398
    .line 399
    .line 400
    iget p2, p2, Lv1/g;->c:I

    .line 401
    .line 402
    int-to-long v0, p2

    .line 403
    invoke-interface {p1, v2, v0, v1}, Lc1/f;->m(IJ)V

    .line 404
    .line 405
    .line 406
    return-void

    .line 407
    :pswitch_4
    check-cast p2, Lv1/d;

    .line 408
    .line 409
    iget-object v0, p2, Lv1/d;->a:Ljava/lang/String;

    .line 410
    .line 411
    if-nez v0, :cond_11

    .line 412
    .line 413
    invoke-interface {p1, v4}, Lc1/f;->h(I)V

    .line 414
    .line 415
    .line 416
    goto :goto_d

    .line 417
    :cond_11
    invoke-interface {p1, v4, v0}, Lc1/f;->d(ILjava/lang/String;)V

    .line 418
    .line 419
    .line 420
    :goto_d
    iget-object p2, p2, Lv1/d;->b:Ljava/lang/Long;

    .line 421
    .line 422
    if-nez p2, :cond_12

    .line 423
    .line 424
    invoke-interface {p1, v3}, Lc1/f;->h(I)V

    .line 425
    .line 426
    .line 427
    goto :goto_e

    .line 428
    :cond_12
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 429
    .line 430
    .line 431
    move-result-wide v0

    .line 432
    invoke-interface {p1, v3, v0, v1}, Lc1/f;->m(IJ)V

    .line 433
    .line 434
    .line 435
    :goto_e
    return-void

    .line 436
    :pswitch_5
    check-cast p2, Lv1/a;

    .line 437
    .line 438
    iget-object v0, p2, Lv1/a;->a:Ljava/lang/String;

    .line 439
    .line 440
    if-nez v0, :cond_13

    .line 441
    .line 442
    invoke-interface {p1, v4}, Lc1/f;->h(I)V

    .line 443
    .line 444
    .line 445
    goto :goto_f

    .line 446
    :cond_13
    invoke-interface {p1, v4, v0}, Lc1/f;->d(ILjava/lang/String;)V

    .line 447
    .line 448
    .line 449
    :goto_f
    iget-object p2, p2, Lv1/a;->b:Ljava/lang/String;

    .line 450
    .line 451
    if-nez p2, :cond_14

    .line 452
    .line 453
    invoke-interface {p1, v3}, Lc1/f;->h(I)V

    .line 454
    .line 455
    .line 456
    goto :goto_10

    .line 457
    :cond_14
    invoke-interface {p1, v3, p2}, Lc1/f;->d(ILjava/lang/String;)V

    .line 458
    .line 459
    .line 460
    :goto_10
    return-void

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
