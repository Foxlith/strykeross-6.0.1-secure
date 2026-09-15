.class public final Lw2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/geomac/GeoMac;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/geomac/GeoMac;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/k;->a:Lcom/zalexdev/stryker/geomac/GeoMac;

    return-void
.end method


# virtual methods
.method public final onItemLongPress(ILjava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p2, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lw2/k;->a:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 6
    .line 7
    iget-object v0, p2, Lcom/zalexdev/stryker/geomac/GeoMac;->j:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p2, Lcom/zalexdev/stryker/geomac/GeoMac;->j:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ly2/b;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-wide v1, p1, Ly2/b;->c:D

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ","

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p1, Ly2/b;->d:D

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2, p1}, Lcom/zalexdev/stryker/geomac/GeoMac;->f(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 p1, 0x1

    .line 51
    return p1
.end method

.method public final onItemSingleTapUp(ILjava/lang/Object;)Z
    .locals 21

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    check-cast v1, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 6
    .line 7
    if-ltz v0, :cond_d

    .line 8
    .line 9
    move-object/from16 v2, p0

    .line 10
    .line 11
    iget-object v3, v2, Lw2/k;->a:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 12
    .line 13
    iget-object v4, v3, Lcom/zalexdev/stryker/geomac/GeoMac;->j:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ge v0, v4, :cond_d

    .line 20
    .line 21
    iget-object v4, v3, Lcom/zalexdev/stryker/geomac/GeoMac;->j:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ly2/b;

    .line 28
    .line 29
    new-instance v4, Landroid/app/Dialog;

    .line 30
    .line 31
    iget-object v5, v3, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const v5, 0x7f0d0046

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x0

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 50
    .line 51
    invoke-direct {v7, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    const/4 v7, -0x1

    .line 58
    const/4 v8, -0x2

    .line 59
    invoke-virtual {v5, v7, v8}, Landroid/view/Window;->setLayout(II)V

    .line 60
    .line 61
    .line 62
    :cond_0
    const v5, 0x7f0a022e

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroid/widget/TextView;

    .line 70
    .line 71
    const v7, 0x7f0a0226

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Landroid/widget/TextView;

    .line 79
    .line 80
    const v8, 0x7f0a022a

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Landroid/widget/TextView;

    .line 88
    .line 89
    const v9, 0x7f0a022b

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Landroid/widget/TextView;

    .line 97
    .line 98
    const v10, 0x7f0a0225

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    check-cast v10, Landroid/widget/TextView;

    .line 106
    .line 107
    const v11, 0x7f0a0229

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    check-cast v11, Landroid/widget/TextView;

    .line 115
    .line 116
    const v12, 0x7f0a022c

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    const v13, 0x7f0a022d

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    check-cast v13, Landroid/widget/FrameLayout;

    .line 131
    .line 132
    const v14, 0x7f0a0227

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v14

    .line 139
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 140
    .line 141
    const v15, 0x7f0a0228

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v15

    .line 148
    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 149
    .line 150
    iget-object v6, v0, Ly2/b;->b:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v1, v0, Ly2/b;->a:Ljava/lang/String;

    .line 153
    .line 154
    if-eqz v6, :cond_2

    .line 155
    .line 156
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_1
    iget-object v6, v0, Ly2/b;->b:Ljava/lang/String;

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    :goto_0
    move-object v6, v1

    .line 167
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 174
    .line 175
    iget-wide v5, v0, Ly2/b;->c:D

    .line 176
    .line 177
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    const-string v2, "%.6f"

    .line 186
    .line 187
    invoke-static {v1, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-wide v7, v0, Ly2/b;->d:D

    .line 195
    .line 196
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 197
    .line 198
    .line 199
    move-result-object v16

    .line 200
    move-wide/from16 v17, v5

    .line 201
    .line 202
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    sget v1, La3/a;->a:I

    .line 214
    .line 215
    iget-object v1, v0, Ly2/b;->e:Ly2/a;

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    const/4 v5, 0x1

    .line 222
    if-eq v2, v5, :cond_6

    .line 223
    .line 224
    const/4 v5, 0x2

    .line 225
    if-eq v2, v5, :cond_5

    .line 226
    .line 227
    const/4 v5, 0x3

    .line 228
    if-eq v2, v5, :cond_4

    .line 229
    .line 230
    const/4 v5, 0x4

    .line 231
    if-eq v2, v5, :cond_3

    .line 232
    .line 233
    const-string v2, "Looked up"

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_3
    const-string v2, "Manual"

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_4
    const-string v2, "Pixie WPS"

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_5
    const-string v2, "Handshake"

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_6
    const-string v2, "Scanned"

    .line 246
    .line 247
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v1}, La3/a;->a(Ly2/a;)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v11}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const/high16 v5, 0x33000000

    .line 266
    .line 267
    const v6, 0x33ffffff

    .line 268
    .line 269
    .line 270
    if-eqz v2, :cond_7

    .line 271
    .line 272
    invoke-virtual {v11}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    .line 281
    .line 282
    invoke-static {v1}, La3/a;->a(Ly2/a;)I

    .line 283
    .line 284
    .line 285
    move-result v11

    .line 286
    and-int/2addr v11, v6

    .line 287
    or-int/2addr v11, v5

    .line 288
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 289
    .line 290
    invoke-direct {v9, v11, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 294
    .line 295
    .line 296
    :cond_7
    invoke-virtual {v13}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    if-eqz v2, :cond_8

    .line 301
    .line 302
    invoke-virtual {v13}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 311
    .line 312
    invoke-static {v1}, La3/a;->a(Ly2/a;)I

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    and-int/2addr v6, v9

    .line 317
    const/high16 v9, 0x33000000

    .line 318
    .line 319
    or-int/2addr v6, v9

    .line 320
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 321
    .line 322
    invoke-direct {v5, v6, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 326
    .line 327
    .line 328
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    if-eqz v2, :cond_9

    .line 333
    .line 334
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 343
    .line 344
    invoke-static {v1}, La3/a;->a(Ly2/a;)I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 349
    .line 350
    invoke-direct {v5, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 354
    .line 355
    .line 356
    :cond_9
    const/4 v1, 0x1

    .line 357
    new-array v2, v1, [Ljava/lang/Object;

    .line 358
    .line 359
    iget-wide v5, v0, Ly2/b;->f:J

    .line 360
    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 362
    .line 363
    .line 364
    move-result-wide v11

    .line 365
    sub-long/2addr v11, v5

    .line 366
    const-wide/16 v5, 0x3e8

    .line 367
    .line 368
    div-long/2addr v11, v5

    .line 369
    const-wide/16 v5, 0x3c

    .line 370
    .line 371
    cmp-long v1, v11, v5

    .line 372
    .line 373
    if-gez v1, :cond_a

    .line 374
    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v5, "s"

    .line 384
    .line 385
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    :goto_3
    const/4 v5, 0x0

    .line 393
    goto :goto_5

    .line 394
    :cond_a
    const-wide/16 v19, 0xe10

    .line 395
    .line 396
    cmp-long v1, v11, v19

    .line 397
    .line 398
    if-gez v1, :cond_b

    .line 399
    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    div-long/2addr v11, v5

    .line 406
    const-string v5, "m"

    .line 407
    .line 408
    :goto_4
    invoke-static {v1, v11, v12, v5}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    goto :goto_3

    .line 413
    :cond_b
    const-wide/32 v5, 0x15180

    .line 414
    .line 415
    .line 416
    cmp-long v1, v11, v5

    .line 417
    .line 418
    if-gez v1, :cond_c

    .line 419
    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    div-long v11, v11, v19

    .line 426
    .line 427
    const-string v5, "h"

    .line 428
    .line 429
    goto :goto_4

    .line 430
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    div-long/2addr v11, v5

    .line 436
    const-string v5, "d"

    .line 437
    .line 438
    goto :goto_4

    .line 439
    :goto_5
    aput-object v1, v2, v5

    .line 440
    .line 441
    const v1, 0x7f13020b

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    .line 450
    .line 451
    new-instance v1, Lw2/e;

    .line 452
    .line 453
    invoke-direct {v1, v3, v0, v4, v5}, Lw2/e;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;Ly2/b;Landroid/app/Dialog;I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    .line 458
    .line 459
    new-instance v1, Lw2/e;

    .line 460
    .line 461
    const/4 v2, 0x1

    .line 462
    invoke-direct {v1, v3, v0, v4, v2}, Lw2/e;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;Ly2/b;Landroid/app/Dialog;I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v15, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 469
    .line 470
    .line 471
    iget-object v0, v3, Lcom/zalexdev/stryker/geomac/GeoMac;->g:Lorg/osmdroid/api/IMapController;

    .line 472
    .line 473
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    .line 474
    .line 475
    move-wide/from16 v3, v17

    .line 476
    .line 477
    invoke-direct {v1, v3, v4, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 478
    .line 479
    .line 480
    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 481
    .line 482
    .line 483
    goto :goto_6

    .line 484
    :cond_d
    const/4 v2, 0x1

    .line 485
    :goto_6
    return v2
.end method
