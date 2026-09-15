.class public abstract Lr/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr/h;->a:Lr/b;

    return-void
.end method

.method public static a(Lq/d;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lq/d;->p0:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    aget v0, v0, v3

    .line 8
    .line 9
    iget-object v4, p0, Lq/d;->T:Lq/d;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    check-cast v4, Lq/e;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v4, 0x0

    .line 17
    :goto_0
    if-eqz v4, :cond_1

    .line 18
    .line 19
    iget-object v5, v4, Lq/d;->p0:[I

    .line 20
    .line 21
    aget v5, v5, v1

    .line 22
    .line 23
    :cond_1
    if-eqz v4, :cond_2

    .line 24
    .line 25
    iget-object v4, v4, Lq/d;->p0:[I

    .line 26
    .line 27
    aget v4, v4, v3

    .line 28
    .line 29
    :cond_2
    const/4 v4, 0x3

    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x0

    .line 32
    if-eq v2, v3, :cond_5

    .line 33
    .line 34
    invoke-virtual {p0}, Lq/d;->B()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-nez v7, :cond_5

    .line 39
    .line 40
    if-eq v2, v5, :cond_5

    .line 41
    .line 42
    if-ne v2, v4, :cond_3

    .line 43
    .line 44
    iget v7, p0, Lq/d;->r:I

    .line 45
    .line 46
    if-nez v7, :cond_3

    .line 47
    .line 48
    iget v7, p0, Lq/d;->W:F

    .line 49
    .line 50
    cmpl-float v7, v7, v6

    .line 51
    .line 52
    if-nez v7, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lq/d;->u(I)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-nez v7, :cond_5

    .line 59
    .line 60
    :cond_3
    if-ne v2, v4, :cond_4

    .line 61
    .line 62
    iget v2, p0, Lq/d;->r:I

    .line 63
    .line 64
    if-ne v2, v3, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lq/d;->r()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {p0, v1, v2}, Lq/d;->v(II)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move v2, v1

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    :goto_1
    move v2, v3

    .line 80
    :goto_2
    if-eq v0, v3, :cond_8

    .line 81
    .line 82
    invoke-virtual {p0}, Lq/d;->C()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-nez v7, :cond_8

    .line 87
    .line 88
    if-eq v0, v5, :cond_8

    .line 89
    .line 90
    if-ne v0, v4, :cond_6

    .line 91
    .line 92
    iget v5, p0, Lq/d;->s:I

    .line 93
    .line 94
    if-nez v5, :cond_6

    .line 95
    .line 96
    iget v5, p0, Lq/d;->W:F

    .line 97
    .line 98
    cmpl-float v5, v5, v6

    .line 99
    .line 100
    if-nez v5, :cond_6

    .line 101
    .line 102
    invoke-virtual {p0, v3}, Lq/d;->u(I)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_8

    .line 107
    .line 108
    :cond_6
    if-ne v0, v4, :cond_7

    .line 109
    .line 110
    iget v0, p0, Lq/d;->s:I

    .line 111
    .line 112
    if-ne v0, v3, :cond_7

    .line 113
    .line 114
    invoke-virtual {p0}, Lq/d;->l()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {p0, v3, v0}, Lq/d;->v(II)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    move v0, v1

    .line 126
    goto :goto_4

    .line 127
    :cond_8
    :goto_3
    move v0, v3

    .line 128
    :goto_4
    iget p0, p0, Lq/d;->W:F

    .line 129
    .line 130
    cmpl-float p0, p0, v6

    .line 131
    .line 132
    if-lez p0, :cond_a

    .line 133
    .line 134
    if-nez v2, :cond_9

    .line 135
    .line 136
    if-eqz v0, :cond_a

    .line 137
    .line 138
    :cond_9
    return v3

    .line 139
    :cond_a
    if-eqz v2, :cond_b

    .line 140
    .line 141
    if-eqz v0, :cond_b

    .line 142
    .line 143
    move v1, v3

    .line 144
    :cond_b
    return v1
.end method

.method public static b(ILq/d;Landroidx/constraintlayout/widget/e;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-boolean v3, v0, Lq/d;->m:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of v3, v0, Lq/e;

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Lq/d;->A()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lr/h;->a(Lq/d;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    new-instance v3, Lr/b;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v3}, Lq/e;->W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    invoke-virtual {v0, v3}, Lq/d;->j(I)Lq/c;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v4, 0x4

    .line 42
    invoke-virtual {v0, v4}, Lq/d;->j(I)Lq/c;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3}, Lq/c;->d()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v4}, Lq/c;->d()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    iget-object v7, v3, Lq/c;->a:Ljava/util/HashSet;

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    if-eqz v7, :cond_d

    .line 58
    .line 59
    iget-boolean v3, v3, Lq/c;->c:Z

    .line 60
    .line 61
    if-eqz v3, :cond_d

    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_d

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Lq/c;

    .line 78
    .line 79
    iget-object v13, v7, Lq/c;->d:Lq/d;

    .line 80
    .line 81
    add-int/lit8 v14, p0, 0x1

    .line 82
    .line 83
    invoke-static {v13}, Lr/h;->a(Lq/d;)Z

    .line 84
    .line 85
    .line 86
    move-result v15

    .line 87
    invoke-virtual {v13}, Lq/d;->A()Z

    .line 88
    .line 89
    .line 90
    move-result v16

    .line 91
    if-eqz v16, :cond_2

    .line 92
    .line 93
    if-eqz v15, :cond_2

    .line 94
    .line 95
    new-instance v8, Lr/b;

    .line 96
    .line 97
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-static {v13, v1, v8}, Lq/e;->W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    iget-object v8, v13, Lq/d;->I:Lq/c;

    .line 104
    .line 105
    iget-object v10, v13, Lq/d;->K:Lq/c;

    .line 106
    .line 107
    if-ne v7, v8, :cond_3

    .line 108
    .line 109
    iget-object v11, v10, Lq/c;->f:Lq/c;

    .line 110
    .line 111
    if-eqz v11, :cond_3

    .line 112
    .line 113
    iget-boolean v11, v11, Lq/c;->c:Z

    .line 114
    .line 115
    if-nez v11, :cond_4

    .line 116
    .line 117
    :cond_3
    if-ne v7, v10, :cond_5

    .line 118
    .line 119
    iget-object v11, v8, Lq/c;->f:Lq/c;

    .line 120
    .line 121
    if-eqz v11, :cond_5

    .line 122
    .line 123
    iget-boolean v11, v11, Lq/c;->c:Z

    .line 124
    .line 125
    if-eqz v11, :cond_5

    .line 126
    .line 127
    :cond_4
    const/4 v11, 0x1

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    move v11, v9

    .line 130
    :goto_1
    iget-object v12, v13, Lq/d;->p0:[I

    .line 131
    .line 132
    aget v12, v12, v9

    .line 133
    .line 134
    const/4 v9, 0x3

    .line 135
    if-ne v12, v9, :cond_8

    .line 136
    .line 137
    if-eqz v15, :cond_6

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    if-ne v12, v9, :cond_9

    .line 141
    .line 142
    iget v7, v13, Lq/d;->v:I

    .line 143
    .line 144
    if-ltz v7, :cond_9

    .line 145
    .line 146
    iget v7, v13, Lq/d;->u:I

    .line 147
    .line 148
    if-ltz v7, :cond_9

    .line 149
    .line 150
    iget v7, v13, Lq/d;->g0:I

    .line 151
    .line 152
    const/16 v8, 0x8

    .line 153
    .line 154
    if-eq v7, v8, :cond_7

    .line 155
    .line 156
    iget v7, v13, Lq/d;->r:I

    .line 157
    .line 158
    if-nez v7, :cond_9

    .line 159
    .line 160
    iget v7, v13, Lq/d;->W:F

    .line 161
    .line 162
    const/4 v8, 0x0

    .line 163
    cmpl-float v7, v7, v8

    .line 164
    .line 165
    if-nez v7, :cond_9

    .line 166
    .line 167
    :cond_7
    invoke-virtual {v13}, Lq/d;->y()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-nez v7, :cond_9

    .line 172
    .line 173
    iget-boolean v7, v13, Lq/d;->F:Z

    .line 174
    .line 175
    if-nez v7, :cond_9

    .line 176
    .line 177
    if-eqz v11, :cond_9

    .line 178
    .line 179
    invoke-virtual {v13}, Lq/d;->y()Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-nez v7, :cond_9

    .line 184
    .line 185
    invoke-static {v14, v0, v1, v13, v2}, Lr/h;->d(ILq/d;Landroidx/constraintlayout/widget/e;Lq/d;Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    :goto_2
    invoke-virtual {v13}, Lq/d;->A()Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-eqz v9, :cond_a

    .line 194
    .line 195
    :cond_9
    :goto_3
    const/4 v9, 0x0

    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_a
    if-ne v7, v8, :cond_b

    .line 199
    .line 200
    iget-object v9, v10, Lq/c;->f:Lq/c;

    .line 201
    .line 202
    if-nez v9, :cond_b

    .line 203
    .line 204
    invoke-virtual {v8}, Lq/c;->e()I

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    add-int/2addr v7, v5

    .line 209
    invoke-virtual {v13}, Lq/d;->r()I

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    add-int/2addr v8, v7

    .line 214
    invoke-virtual {v13, v7, v8}, Lq/d;->K(II)V

    .line 215
    .line 216
    .line 217
    :goto_4
    invoke-static {v14, v13, v1, v2}, Lr/h;->b(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_b
    if-ne v7, v10, :cond_c

    .line 222
    .line 223
    iget-object v7, v8, Lq/c;->f:Lq/c;

    .line 224
    .line 225
    if-nez v7, :cond_c

    .line 226
    .line 227
    invoke-virtual {v10}, Lq/c;->e()I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    sub-int v7, v5, v7

    .line 232
    .line 233
    invoke-virtual {v13}, Lq/d;->r()I

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    sub-int v8, v7, v8

    .line 238
    .line 239
    invoke-virtual {v13, v8, v7}, Lq/d;->K(II)V

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_c
    if-eqz v11, :cond_9

    .line 244
    .line 245
    invoke-virtual {v13}, Lq/d;->y()Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-nez v7, :cond_9

    .line 250
    .line 251
    invoke-static {v14, v13, v1, v2}, Lr/h;->c(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_d
    instance-of v3, v0, Lq/h;

    .line 256
    .line 257
    if-eqz v3, :cond_e

    .line 258
    .line 259
    return-void

    .line 260
    :cond_e
    iget-object v3, v4, Lq/c;->a:Ljava/util/HashSet;

    .line 261
    .line 262
    if-eqz v3, :cond_1c

    .line 263
    .line 264
    iget-boolean v4, v4, Lq/c;->c:Z

    .line 265
    .line 266
    if-eqz v4, :cond_1c

    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-eqz v4, :cond_1c

    .line 277
    .line 278
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    check-cast v4, Lq/c;

    .line 283
    .line 284
    iget-object v5, v4, Lq/c;->d:Lq/d;

    .line 285
    .line 286
    const/4 v7, 0x1

    .line 287
    add-int/lit8 v8, p0, 0x1

    .line 288
    .line 289
    invoke-static {v5}, Lr/h;->a(Lq/d;)Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    invoke-virtual {v5}, Lq/d;->A()Z

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    if-eqz v9, :cond_10

    .line 298
    .line 299
    if-eqz v7, :cond_10

    .line 300
    .line 301
    new-instance v9, Lr/b;

    .line 302
    .line 303
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-static {v5, v1, v9}, Lq/e;->W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V

    .line 307
    .line 308
    .line 309
    :cond_10
    iget-object v9, v5, Lq/d;->I:Lq/c;

    .line 310
    .line 311
    iget-object v10, v5, Lq/d;->K:Lq/c;

    .line 312
    .line 313
    if-ne v4, v9, :cond_11

    .line 314
    .line 315
    iget-object v11, v10, Lq/c;->f:Lq/c;

    .line 316
    .line 317
    if-eqz v11, :cond_11

    .line 318
    .line 319
    iget-boolean v11, v11, Lq/c;->c:Z

    .line 320
    .line 321
    if-nez v11, :cond_12

    .line 322
    .line 323
    :cond_11
    if-ne v4, v10, :cond_13

    .line 324
    .line 325
    iget-object v11, v9, Lq/c;->f:Lq/c;

    .line 326
    .line 327
    if-eqz v11, :cond_13

    .line 328
    .line 329
    iget-boolean v11, v11, Lq/c;->c:Z

    .line 330
    .line 331
    if-eqz v11, :cond_13

    .line 332
    .line 333
    :cond_12
    const/4 v11, 0x1

    .line 334
    goto :goto_6

    .line 335
    :cond_13
    const/4 v11, 0x0

    .line 336
    :goto_6
    iget-object v12, v5, Lq/d;->p0:[I

    .line 337
    .line 338
    const/4 v13, 0x0

    .line 339
    aget v12, v12, v13

    .line 340
    .line 341
    const/4 v14, 0x3

    .line 342
    if-ne v12, v14, :cond_14

    .line 343
    .line 344
    if-eqz v7, :cond_15

    .line 345
    .line 346
    :cond_14
    const/16 v7, 0x8

    .line 347
    .line 348
    const/4 v12, 0x0

    .line 349
    goto :goto_9

    .line 350
    :cond_15
    if-ne v12, v14, :cond_18

    .line 351
    .line 352
    iget v4, v5, Lq/d;->v:I

    .line 353
    .line 354
    if-ltz v4, :cond_18

    .line 355
    .line 356
    iget v4, v5, Lq/d;->u:I

    .line 357
    .line 358
    if-ltz v4, :cond_18

    .line 359
    .line 360
    iget v4, v5, Lq/d;->g0:I

    .line 361
    .line 362
    const/16 v7, 0x8

    .line 363
    .line 364
    if-eq v4, v7, :cond_17

    .line 365
    .line 366
    iget v4, v5, Lq/d;->r:I

    .line 367
    .line 368
    if-nez v4, :cond_16

    .line 369
    .line 370
    iget v4, v5, Lq/d;->W:F

    .line 371
    .line 372
    const/4 v12, 0x0

    .line 373
    cmpl-float v4, v4, v12

    .line 374
    .line 375
    if-nez v4, :cond_f

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_16
    :goto_7
    const/4 v12, 0x0

    .line 379
    goto :goto_5

    .line 380
    :cond_17
    const/4 v12, 0x0

    .line 381
    :goto_8
    invoke-virtual {v5}, Lq/d;->y()Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-nez v4, :cond_f

    .line 386
    .line 387
    iget-boolean v4, v5, Lq/d;->F:Z

    .line 388
    .line 389
    if-nez v4, :cond_f

    .line 390
    .line 391
    if-eqz v11, :cond_f

    .line 392
    .line 393
    invoke-virtual {v5}, Lq/d;->y()Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-nez v4, :cond_f

    .line 398
    .line 399
    invoke-static {v8, v0, v1, v5, v2}, Lr/h;->d(ILq/d;Landroidx/constraintlayout/widget/e;Lq/d;Z)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_5

    .line 403
    .line 404
    :cond_18
    const/16 v7, 0x8

    .line 405
    .line 406
    goto :goto_7

    .line 407
    :goto_9
    invoke-virtual {v5}, Lq/d;->A()Z

    .line 408
    .line 409
    .line 410
    move-result v15

    .line 411
    if-eqz v15, :cond_19

    .line 412
    .line 413
    goto/16 :goto_5

    .line 414
    .line 415
    :cond_19
    if-ne v4, v9, :cond_1a

    .line 416
    .line 417
    iget-object v15, v10, Lq/c;->f:Lq/c;

    .line 418
    .line 419
    if-nez v15, :cond_1a

    .line 420
    .line 421
    invoke-virtual {v9}, Lq/c;->e()I

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    add-int/2addr v4, v6

    .line 426
    invoke-virtual {v5}, Lq/d;->r()I

    .line 427
    .line 428
    .line 429
    move-result v9

    .line 430
    add-int/2addr v9, v4

    .line 431
    invoke-virtual {v5, v4, v9}, Lq/d;->K(II)V

    .line 432
    .line 433
    .line 434
    :goto_a
    invoke-static {v8, v5, v1, v2}, Lr/h;->b(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_5

    .line 438
    .line 439
    :cond_1a
    if-ne v4, v10, :cond_1b

    .line 440
    .line 441
    iget-object v4, v9, Lq/c;->f:Lq/c;

    .line 442
    .line 443
    if-nez v4, :cond_1b

    .line 444
    .line 445
    invoke-virtual {v10}, Lq/c;->e()I

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    sub-int v4, v6, v4

    .line 450
    .line 451
    invoke-virtual {v5}, Lq/d;->r()I

    .line 452
    .line 453
    .line 454
    move-result v9

    .line 455
    sub-int v9, v4, v9

    .line 456
    .line 457
    invoke-virtual {v5, v9, v4}, Lq/d;->K(II)V

    .line 458
    .line 459
    .line 460
    goto :goto_a

    .line 461
    :cond_1b
    if-eqz v11, :cond_f

    .line 462
    .line 463
    invoke-virtual {v5}, Lq/d;->y()Z

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    if-nez v4, :cond_f

    .line 468
    .line 469
    invoke-static {v8, v5, v1, v2}, Lr/h;->c(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_5

    .line 473
    .line 474
    :cond_1c
    const/4 v1, 0x1

    .line 475
    iput-boolean v1, v0, Lq/d;->m:Z

    .line 476
    .line 477
    return-void
.end method

.method public static c(ILq/d;Landroidx/constraintlayout/widget/e;Z)V
    .locals 6

    .line 1
    iget v0, p1, Lq/d;->d0:F

    .line 2
    .line 3
    iget-object v1, p1, Lq/d;->I:Lq/c;

    .line 4
    .line 5
    iget-object v2, v1, Lq/c;->f:Lq/c;

    .line 6
    .line 7
    invoke-virtual {v2}, Lq/c;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p1, Lq/d;->K:Lq/c;

    .line 12
    .line 13
    iget-object v4, v3, Lq/c;->f:Lq/c;

    .line 14
    .line 15
    invoke-virtual {v4}, Lq/c;->d()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v1}, Lq/c;->e()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v2

    .line 24
    invoke-virtual {v3}, Lq/c;->e()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int v3, v4, v3

    .line 29
    .line 30
    const/high16 v5, 0x3f000000    # 0.5f

    .line 31
    .line 32
    if-ne v2, v4, :cond_0

    .line 33
    .line 34
    move v0, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v2, v1

    .line 37
    move v4, v3

    .line 38
    :goto_0
    invoke-virtual {p1}, Lq/d;->r()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sub-int v3, v4, v2

    .line 43
    .line 44
    sub-int/2addr v3, v1

    .line 45
    if-le v2, v4, :cond_1

    .line 46
    .line 47
    sub-int v3, v2, v4

    .line 48
    .line 49
    sub-int/2addr v3, v1

    .line 50
    :cond_1
    if-lez v3, :cond_2

    .line 51
    .line 52
    int-to-float v3, v3

    .line 53
    mul-float/2addr v0, v3

    .line 54
    add-float/2addr v0, v5

    .line 55
    :goto_1
    float-to-int v0, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    int-to-float v3, v3

    .line 58
    mul-float/2addr v0, v3

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    add-int/2addr v0, v2

    .line 61
    add-int v3, v0, v1

    .line 62
    .line 63
    if-le v2, v4, :cond_3

    .line 64
    .line 65
    sub-int v3, v0, v1

    .line 66
    .line 67
    :cond_3
    invoke-virtual {p1, v0, v3}, Lq/d;->K(II)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 p0, p0, 0x1

    .line 71
    .line 72
    invoke-static {p0, p1, p2, p3}, Lr/h;->b(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static d(ILq/d;Landroidx/constraintlayout/widget/e;Lq/d;Z)V
    .locals 7

    .line 1
    iget v0, p3, Lq/d;->d0:F

    .line 2
    .line 3
    iget-object v1, p3, Lq/d;->I:Lq/c;

    .line 4
    .line 5
    iget-object v2, v1, Lq/c;->f:Lq/c;

    .line 6
    .line 7
    invoke-virtual {v2}, Lq/c;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v1}, Lq/c;->e()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v2

    .line 16
    iget-object v2, p3, Lq/d;->K:Lq/c;

    .line 17
    .line 18
    iget-object v3, v2, Lq/c;->f:Lq/c;

    .line 19
    .line 20
    invoke-virtual {v3}, Lq/c;->d()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2}, Lq/c;->e()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v3, v2

    .line 29
    if-lt v3, v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p3}, Lq/d;->r()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v4, p3, Lq/d;->g0:I

    .line 36
    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    const/high16 v6, 0x3f000000    # 0.5f

    .line 40
    .line 41
    if-eq v4, v5, :cond_3

    .line 42
    .line 43
    iget v4, p3, Lq/d;->r:I

    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    if-ne v4, v5, :cond_1

    .line 47
    .line 48
    instance-of v2, p1, Lq/e;

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    :goto_0
    invoke-virtual {p1}, Lq/d;->r()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object p1, p1, Lq/d;->T:Lq/d;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    iget v2, p3, Lq/d;->d0:F

    .line 61
    .line 62
    mul-float/2addr v2, v6

    .line 63
    int-to-float p1, p1

    .line 64
    mul-float/2addr v2, p1

    .line 65
    float-to-int v2, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    if-nez v4, :cond_2

    .line 68
    .line 69
    sub-int v2, v3, v1

    .line 70
    .line 71
    :cond_2
    :goto_2
    iget p1, p3, Lq/d;->u:I

    .line 72
    .line 73
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iget p1, p3, Lq/d;->v:I

    .line 78
    .line 79
    if-lez p1, :cond_3

    .line 80
    .line 81
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :cond_3
    sub-int/2addr v3, v1

    .line 86
    sub-int/2addr v3, v2

    .line 87
    int-to-float p1, v3

    .line 88
    mul-float/2addr v0, p1

    .line 89
    add-float/2addr v0, v6

    .line 90
    float-to-int p1, v0

    .line 91
    add-int/2addr v1, p1

    .line 92
    add-int/2addr v2, v1

    .line 93
    invoke-virtual {p3, v1, v2}, Lq/d;->K(II)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 p0, p0, 0x1

    .line 97
    .line 98
    invoke-static {p0, p3, p2, p4}, Lr/h;->b(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    .line 99
    .line 100
    .line 101
    :cond_4
    return-void
.end method

.method public static e(ILq/d;Landroidx/constraintlayout/widget/e;)V
    .locals 6

    .line 1
    iget v0, p1, Lq/d;->e0:F

    .line 2
    .line 3
    iget-object v1, p1, Lq/d;->J:Lq/c;

    .line 4
    .line 5
    iget-object v2, v1, Lq/c;->f:Lq/c;

    .line 6
    .line 7
    invoke-virtual {v2}, Lq/c;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p1, Lq/d;->L:Lq/c;

    .line 12
    .line 13
    iget-object v4, v3, Lq/c;->f:Lq/c;

    .line 14
    .line 15
    invoke-virtual {v4}, Lq/c;->d()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v1}, Lq/c;->e()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v2

    .line 24
    invoke-virtual {v3}, Lq/c;->e()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int v3, v4, v3

    .line 29
    .line 30
    const/high16 v5, 0x3f000000    # 0.5f

    .line 31
    .line 32
    if-ne v2, v4, :cond_0

    .line 33
    .line 34
    move v0, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v2, v1

    .line 37
    move v4, v3

    .line 38
    :goto_0
    invoke-virtual {p1}, Lq/d;->l()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sub-int v3, v4, v2

    .line 43
    .line 44
    sub-int/2addr v3, v1

    .line 45
    if-le v2, v4, :cond_1

    .line 46
    .line 47
    sub-int v3, v2, v4

    .line 48
    .line 49
    sub-int/2addr v3, v1

    .line 50
    :cond_1
    if-lez v3, :cond_2

    .line 51
    .line 52
    int-to-float v3, v3

    .line 53
    mul-float/2addr v0, v3

    .line 54
    add-float/2addr v0, v5

    .line 55
    :goto_1
    float-to-int v0, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    int-to-float v3, v3

    .line 58
    mul-float/2addr v0, v3

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    add-int v3, v2, v0

    .line 61
    .line 62
    add-int v5, v3, v1

    .line 63
    .line 64
    if-le v2, v4, :cond_3

    .line 65
    .line 66
    sub-int v3, v2, v0

    .line 67
    .line 68
    sub-int v5, v3, v1

    .line 69
    .line 70
    :cond_3
    invoke-virtual {p1, v3, v5}, Lq/d;->L(II)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 p0, p0, 0x1

    .line 74
    .line 75
    invoke-static {p0, p1, p2}, Lr/h;->g(ILq/d;Landroidx/constraintlayout/widget/e;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static f(ILq/d;Landroidx/constraintlayout/widget/e;Lq/d;)V
    .locals 7

    .line 1
    iget v0, p3, Lq/d;->e0:F

    .line 2
    .line 3
    iget-object v1, p3, Lq/d;->J:Lq/c;

    .line 4
    .line 5
    iget-object v2, v1, Lq/c;->f:Lq/c;

    .line 6
    .line 7
    invoke-virtual {v2}, Lq/c;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v1}, Lq/c;->e()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v2

    .line 16
    iget-object v2, p3, Lq/d;->L:Lq/c;

    .line 17
    .line 18
    iget-object v3, v2, Lq/c;->f:Lq/c;

    .line 19
    .line 20
    invoke-virtual {v3}, Lq/c;->d()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2}, Lq/c;->e()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v3, v2

    .line 29
    if-lt v3, v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p3}, Lq/d;->l()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v4, p3, Lq/d;->g0:I

    .line 36
    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    const/high16 v6, 0x3f000000    # 0.5f

    .line 40
    .line 41
    if-eq v4, v5, :cond_3

    .line 42
    .line 43
    iget v4, p3, Lq/d;->s:I

    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    if-ne v4, v5, :cond_1

    .line 47
    .line 48
    instance-of v2, p1, Lq/e;

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    :goto_0
    invoke-virtual {p1}, Lq/d;->l()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object p1, p1, Lq/d;->T:Lq/d;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    mul-float v2, v0, v6

    .line 61
    .line 62
    int-to-float p1, p1

    .line 63
    mul-float/2addr v2, p1

    .line 64
    float-to-int v2, v2

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    if-nez v4, :cond_2

    .line 67
    .line 68
    sub-int v2, v3, v1

    .line 69
    .line 70
    :cond_2
    :goto_2
    iget p1, p3, Lq/d;->x:I

    .line 71
    .line 72
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iget p1, p3, Lq/d;->y:I

    .line 77
    .line 78
    if-lez p1, :cond_3

    .line 79
    .line 80
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :cond_3
    sub-int/2addr v3, v1

    .line 85
    sub-int/2addr v3, v2

    .line 86
    int-to-float p1, v3

    .line 87
    mul-float/2addr v0, p1

    .line 88
    add-float/2addr v0, v6

    .line 89
    float-to-int p1, v0

    .line 90
    add-int/2addr v1, p1

    .line 91
    add-int/2addr v2, v1

    .line 92
    invoke-virtual {p3, v1, v2}, Lq/d;->L(II)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 p0, p0, 0x1

    .line 96
    .line 97
    invoke-static {p0, p3, p2}, Lr/h;->g(ILq/d;Landroidx/constraintlayout/widget/e;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    return-void
.end method

.method public static g(ILq/d;Landroidx/constraintlayout/widget/e;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Lq/d;->n:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v2, v0, Lq/e;

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lq/d;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lr/h;->a(Lq/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lr/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1, v2}, Lq/e;->W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lq/d;->j(I)Lq/c;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lq/d;->j(I)Lq/c;

    move-result-object v4

    invoke-virtual {v3}, Lq/c;->d()I

    move-result v5

    invoke-virtual {v4}, Lq/c;->d()I

    move-result v6

    .line 3
    iget-object v7, v3, Lq/c;->a:Ljava/util/HashSet;

    const/4 v8, 0x1

    if-eqz v7, :cond_d

    .line 4
    iget-boolean v3, v3, Lq/c;->c:Z

    if-eqz v3, :cond_d

    .line 5
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/c;

    iget-object v12, v7, Lq/c;->d:Lq/d;

    add-int/lit8 v13, p0, 0x1

    invoke-static {v12}, Lr/h;->a(Lq/d;)Z

    move-result v14

    invoke-virtual {v12}, Lq/d;->A()Z

    move-result v15

    if-eqz v15, :cond_3

    if-eqz v14, :cond_3

    new-instance v15, Lr/b;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-static {v12, v1, v15}, Lq/e;->W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V

    :cond_3
    iget-object v15, v12, Lq/d;->J:Lq/c;

    iget-object v9, v12, Lq/d;->L:Lq/c;

    if-ne v7, v15, :cond_4

    iget-object v10, v9, Lq/c;->f:Lq/c;

    if-eqz v10, :cond_4

    .line 6
    iget-boolean v10, v10, Lq/c;->c:Z

    if-nez v10, :cond_5

    :cond_4
    if-ne v7, v9, :cond_6

    .line 7
    iget-object v10, v15, Lq/c;->f:Lq/c;

    if-eqz v10, :cond_6

    .line 8
    iget-boolean v10, v10, Lq/c;->c:Z

    if-eqz v10, :cond_6

    :cond_5
    move v10, v8

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    .line 9
    :goto_1
    iget-object v11, v12, Lq/d;->p0:[I

    aget v11, v11, v8

    if-ne v11, v2, :cond_9

    if-eqz v14, :cond_7

    goto :goto_2

    :cond_7
    if-ne v11, v2, :cond_2

    .line 10
    iget v7, v12, Lq/d;->y:I

    if-ltz v7, :cond_2

    iget v7, v12, Lq/d;->x:I

    if-ltz v7, :cond_2

    .line 11
    iget v7, v12, Lq/d;->g0:I

    const/16 v9, 0x8

    if-eq v7, v9, :cond_8

    .line 12
    iget v7, v12, Lq/d;->s:I

    if-nez v7, :cond_2

    .line 13
    iget v7, v12, Lq/d;->W:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-nez v7, :cond_2

    .line 14
    :cond_8
    invoke-virtual {v12}, Lq/d;->z()Z

    move-result v7

    if-nez v7, :cond_2

    .line 15
    iget-boolean v7, v12, Lq/d;->F:Z

    if-nez v7, :cond_2

    if-eqz v10, :cond_2

    .line 16
    invoke-virtual {v12}, Lq/d;->z()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v13, v0, v1, v12}, Lr/h;->f(ILq/d;Landroidx/constraintlayout/widget/e;Lq/d;)V

    goto :goto_0

    :cond_9
    :goto_2
    invoke-virtual {v12}, Lq/d;->A()Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_0

    :cond_a
    if-ne v7, v15, :cond_b

    iget-object v11, v9, Lq/c;->f:Lq/c;

    if-nez v11, :cond_b

    invoke-virtual {v15}, Lq/c;->e()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v12}, Lq/d;->l()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v12, v7, v9}, Lq/d;->L(II)V

    :goto_3
    invoke-static {v13, v12, v1}, Lr/h;->g(ILq/d;Landroidx/constraintlayout/widget/e;)V

    goto/16 :goto_0

    :cond_b
    if-ne v7, v9, :cond_c

    iget-object v7, v15, Lq/c;->f:Lq/c;

    if-nez v7, :cond_c

    invoke-virtual {v9}, Lq/c;->e()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v12}, Lq/d;->l()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {v12, v9, v7}, Lq/d;->L(II)V

    goto :goto_3

    :cond_c
    if-eqz v10, :cond_2

    invoke-virtual {v12}, Lq/d;->z()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v13, v12, v1}, Lr/h;->e(ILq/d;Landroidx/constraintlayout/widget/e;)V

    goto/16 :goto_0

    :cond_d
    instance-of v3, v0, Lq/h;

    if-eqz v3, :cond_e

    return-void

    .line 17
    :cond_e
    iget-object v3, v4, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1c

    .line 18
    iget-boolean v4, v4, Lq/c;->c:Z

    if-eqz v4, :cond_1c

    .line 19
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/c;

    iget-object v5, v4, Lq/c;->d:Lq/d;

    add-int/lit8 v7, p0, 0x1

    invoke-static {v5}, Lr/h;->a(Lq/d;)Z

    move-result v9

    invoke-virtual {v5}, Lq/d;->A()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v9, :cond_10

    new-instance v10, Lr/b;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v1, v10}, Lq/e;->W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V

    :cond_10
    iget-object v10, v5, Lq/d;->J:Lq/c;

    iget-object v11, v5, Lq/d;->L:Lq/c;

    if-ne v4, v10, :cond_11

    iget-object v12, v11, Lq/c;->f:Lq/c;

    if-eqz v12, :cond_11

    .line 20
    iget-boolean v12, v12, Lq/c;->c:Z

    if-nez v12, :cond_12

    :cond_11
    if-ne v4, v11, :cond_13

    .line 21
    iget-object v12, v10, Lq/c;->f:Lq/c;

    if-eqz v12, :cond_13

    .line 22
    iget-boolean v12, v12, Lq/c;->c:Z

    if-eqz v12, :cond_13

    :cond_12
    move v12, v8

    goto :goto_5

    :cond_13
    const/4 v12, 0x0

    .line 23
    :goto_5
    iget-object v13, v5, Lq/d;->p0:[I

    aget v13, v13, v8

    if-ne v13, v2, :cond_14

    if-eqz v9, :cond_15

    :cond_14
    const/16 v9, 0x8

    const/4 v13, 0x0

    goto :goto_8

    :cond_15
    if-ne v13, v2, :cond_18

    .line 24
    iget v4, v5, Lq/d;->y:I

    if-ltz v4, :cond_18

    iget v4, v5, Lq/d;->x:I

    if-ltz v4, :cond_18

    .line 25
    iget v4, v5, Lq/d;->g0:I

    const/16 v9, 0x8

    if-eq v4, v9, :cond_17

    .line 26
    iget v4, v5, Lq/d;->s:I

    if-nez v4, :cond_16

    .line 27
    iget v4, v5, Lq/d;->W:F

    const/4 v13, 0x0

    cmpl-float v4, v4, v13

    if-nez v4, :cond_f

    goto :goto_7

    :cond_16
    :goto_6
    const/4 v13, 0x0

    goto :goto_4

    :cond_17
    const/4 v13, 0x0

    .line 28
    :goto_7
    invoke-virtual {v5}, Lq/d;->z()Z

    move-result v4

    if-nez v4, :cond_f

    .line 29
    iget-boolean v4, v5, Lq/d;->F:Z

    if-nez v4, :cond_f

    if-eqz v12, :cond_f

    .line 30
    invoke-virtual {v5}, Lq/d;->z()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v7, v0, v1, v5}, Lr/h;->f(ILq/d;Landroidx/constraintlayout/widget/e;Lq/d;)V

    goto :goto_4

    :cond_18
    const/16 v9, 0x8

    goto :goto_6

    :goto_8
    invoke-virtual {v5}, Lq/d;->A()Z

    move-result v14

    if-eqz v14, :cond_19

    goto/16 :goto_4

    :cond_19
    if-ne v4, v10, :cond_1a

    iget-object v14, v11, Lq/c;->f:Lq/c;

    if-nez v14, :cond_1a

    invoke-virtual {v10}, Lq/c;->e()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lq/d;->l()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v5, v4, v10}, Lq/d;->L(II)V

    :goto_9
    invoke-static {v7, v5, v1}, Lr/h;->g(ILq/d;Landroidx/constraintlayout/widget/e;)V

    goto/16 :goto_4

    :cond_1a
    if-ne v4, v11, :cond_1b

    iget-object v4, v10, Lq/c;->f:Lq/c;

    if-nez v4, :cond_1b

    invoke-virtual {v11}, Lq/c;->e()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, Lq/d;->l()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {v5, v10, v4}, Lq/d;->L(II)V

    goto :goto_9

    :cond_1b
    if-eqz v12, :cond_f

    invoke-virtual {v5}, Lq/d;->z()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v7, v5, v1}, Lr/h;->e(ILq/d;Landroidx/constraintlayout/widget/e;)V

    goto/16 :goto_4

    :cond_1c
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lq/d;->j(I)Lq/c;

    move-result-object v3

    .line 31
    iget-object v4, v3, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_22

    .line 32
    iget-boolean v4, v3, Lq/c;->c:Z

    if-eqz v4, :cond_22

    .line 33
    invoke-virtual {v3}, Lq/c;->d()I

    move-result v4

    .line 34
    iget-object v3, v3, Lq/c;->a:Ljava/util/HashSet;

    .line 35
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/c;

    iget-object v6, v5, Lq/c;->d:Lq/d;

    add-int/lit8 v7, p0, 0x1

    invoke-static {v6}, Lr/h;->a(Lq/d;)Z

    move-result v9

    invoke-virtual {v6}, Lq/d;->A()Z

    move-result v10

    if-eqz v10, :cond_1e

    if-eqz v9, :cond_1e

    new-instance v10, Lr/b;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v6, v1, v10}, Lq/e;->W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V

    .line 36
    :cond_1e
    iget-object v10, v6, Lq/d;->p0:[I

    aget v10, v10, v8

    if-ne v10, v2, :cond_1f

    if-eqz v9, :cond_1d

    .line 37
    :cond_1f
    invoke-virtual {v6}, Lq/d;->A()Z

    move-result v9

    if-eqz v9, :cond_20

    goto :goto_a

    :cond_20
    iget-object v9, v6, Lq/d;->M:Lq/c;

    if-ne v5, v9, :cond_1d

    invoke-virtual {v5}, Lq/c;->e()I

    move-result v5

    add-int/2addr v5, v4

    .line 38
    iget-boolean v10, v6, Lq/d;->E:Z

    if-nez v10, :cond_21

    goto :goto_b

    :cond_21
    iget v10, v6, Lq/d;->a0:I

    sub-int v10, v5, v10

    iget v11, v6, Lq/d;->V:I

    add-int/2addr v11, v10

    iput v10, v6, Lq/d;->Z:I

    iget-object v12, v6, Lq/d;->J:Lq/c;

    invoke-virtual {v12, v10}, Lq/c;->l(I)V

    iget-object v10, v6, Lq/d;->L:Lq/c;

    invoke-virtual {v10, v11}, Lq/c;->l(I)V

    invoke-virtual {v9, v5}, Lq/c;->l(I)V

    iput-boolean v8, v6, Lq/d;->l:Z

    .line 39
    :goto_b
    invoke-static {v7, v6, v1}, Lr/h;->g(ILq/d;Landroidx/constraintlayout/widget/e;)V

    goto :goto_a

    .line 40
    :cond_22
    iput-boolean v8, v0, Lq/d;->n:Z

    return-void
.end method
