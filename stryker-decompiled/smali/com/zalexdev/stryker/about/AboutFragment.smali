.class public Lcom/zalexdev/stryker/about/AboutFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:F

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/about/AboutFragment;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static d(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v1, 0x898

    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f87ae14    # 1.06f
    .end array-data
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0057

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/zalexdev/stryker/about/AboutFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    const/high16 v3, 0x42100000    # 36.0f

    .line 19
    .line 20
    mul-float/2addr v2, v3

    .line 21
    iput v2, v0, Lcom/zalexdev/stryker/about/AboutFragment;->a:F

    .line 22
    .line 23
    const v2, 0x7f0a0017

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/zalexdev/stryker/about/FeatureCardStack;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const v6, 0x7f0d011b

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v13, Lk2/b;

    .line 58
    .line 59
    const v8, 0x7f1301dc

    .line 60
    .line 61
    .line 62
    const v9, 0x7f1301db

    .line 63
    .line 64
    .line 65
    const v10, 0x7f0801e0

    .line 66
    .line 67
    .line 68
    const-string v7, "#1E88E5"

    .line 69
    .line 70
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    const-string v7, "#0D47A1"

    .line 75
    .line 76
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    move-object v7, v13

    .line 81
    invoke-direct/range {v7 .. v12}, Lk2/b;-><init>(IIIII)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    new-instance v7, Lk2/b;

    .line 88
    .line 89
    const v15, 0x7f1301d4

    .line 90
    .line 91
    .line 92
    const v16, 0x7f1301d3

    .line 93
    .line 94
    .line 95
    const v17, 0x7f080120

    .line 96
    .line 97
    .line 98
    const-string v8, "#00ACC1"

    .line 99
    .line 100
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v18

    .line 104
    const-string v8, "#00695C"

    .line 105
    .line 106
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v19

    .line 110
    move-object v14, v7

    .line 111
    invoke-direct/range {v14 .. v19}, Lk2/b;-><init>(IIIII)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    new-instance v7, Lk2/b;

    .line 118
    .line 119
    const v9, 0x7f1301d6

    .line 120
    .line 121
    .line 122
    const v10, 0x7f1301d5

    .line 123
    .line 124
    .line 125
    const v11, 0x7f0801b4

    .line 126
    .line 127
    .line 128
    const-string v8, "#E53935"

    .line 129
    .line 130
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    const-string v8, "#B71C1C"

    .line 135
    .line 136
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    move-object v8, v7

    .line 141
    invoke-direct/range {v8 .. v13}, Lk2/b;-><init>(IIIII)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    new-instance v7, Lk2/b;

    .line 148
    .line 149
    const v15, 0x7f1301d8

    .line 150
    .line 151
    .line 152
    const v16, 0x7f1301d7

    .line 153
    .line 154
    .line 155
    const v17, 0x7f0801de

    .line 156
    .line 157
    .line 158
    const-string v8, "#8E24AA"

    .line 159
    .line 160
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v18

    .line 164
    const-string v8, "#4A148C"

    .line 165
    .line 166
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v19

    .line 170
    move-object v14, v7

    .line 171
    invoke-direct/range {v14 .. v19}, Lk2/b;-><init>(IIIII)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    new-instance v7, Lk2/b;

    .line 178
    .line 179
    const v9, 0x7f1301da

    .line 180
    .line 181
    .line 182
    const v10, 0x7f1301d9

    .line 183
    .line 184
    .line 185
    const v11, 0x7f0801a9

    .line 186
    .line 187
    .line 188
    const-string v8, "#FB8C00"

    .line 189
    .line 190
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    const-string v8, "#E65100"

    .line 195
    .line 196
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    move-object v8, v7

    .line 201
    invoke-direct/range {v8 .. v13}, Lk2/b;-><init>(IIIII)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    new-instance v7, Lk2/b;

    .line 208
    .line 209
    const v15, 0x7f1301d2

    .line 210
    .line 211
    .line 212
    const v16, 0x7f1301d1

    .line 213
    .line 214
    .line 215
    const v17, 0x7f08011f

    .line 216
    .line 217
    .line 218
    const-string v8, "#5E35B1"

    .line 219
    .line 220
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v18

    .line 224
    const-string v8, "#311B92"

    .line 225
    .line 226
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v19

    .line 230
    move-object v14, v7

    .line 231
    invoke-direct/range {v14 .. v19}, Lk2/b;-><init>(IIIII)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 238
    .line 239
    .line 240
    iget-object v7, v2, Lcom/zalexdev/stryker/about/FeatureCardStack;->a:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 243
    .line 244
    .line 245
    if-eqz v5, :cond_1

    .line 246
    .line 247
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    move v8, v4

    .line 262
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    if-ge v8, v9, :cond_2

    .line 267
    .line 268
    const v9, 0x7f0d011c

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v9, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    check-cast v10, Lk2/b;

    .line 280
    .line 281
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 282
    .line 283
    .line 284
    move-result v11

    .line 285
    const v12, 0x7f0a01e9

    .line 286
    .line 287
    .line 288
    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v12

    .line 292
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    .line 293
    .line 294
    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 295
    .line 296
    iget v15, v10, Lk2/b;->d:I

    .line 297
    .line 298
    iget v3, v10, Lk2/b;->e:I

    .line 299
    .line 300
    filled-new-array {v15, v3}, [I

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-direct {v13, v14, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 305
    .line 306
    .line 307
    iget v3, v2, Lcom/zalexdev/stryker/about/FeatureCardStack;->d:F

    .line 308
    .line 309
    invoke-virtual {v13, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v12, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    .line 314
    .line 315
    const v3, 0x7f0a01ec

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    check-cast v3, Landroid/widget/ImageView;

    .line 323
    .line 324
    iget v12, v10, Lk2/b;->c:I

    .line 325
    .line 326
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    .line 328
    .line 329
    const v3, 0x7f0a01ee

    .line 330
    .line 331
    .line 332
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 337
    .line 338
    iget v12, v10, Lk2/b;->a:I

    .line 339
    .line 340
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    .line 341
    .line 342
    .line 343
    const v3, 0x7f0a01ea

    .line 344
    .line 345
    .line 346
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 351
    .line 352
    iget v10, v10, Lk2/b;->b:I

    .line 353
    .line 354
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 355
    .line 356
    .line 357
    const v3, 0x7f0a01ed

    .line 358
    .line 359
    .line 360
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 365
    .line 366
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 367
    .line 368
    add-int/lit8 v8, v8, 0x1

    .line 369
    .line 370
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v12

    .line 374
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    .line 376
    .line 377
    move-result-object v11

    .line 378
    filled-new-array {v12, v11}, [Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v11

    .line 382
    const-string v12, "%02d / %02d"

    .line 383
    .line 384
    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    goto/16 :goto_0

    .line 398
    .line 399
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2, v4}, Lcom/zalexdev/stryker/about/FeatureCardStack;->a(Z)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Lcom/zalexdev/stryker/about/FeatureCardStack;->b()Landroid/view/View;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    if-eqz v3, :cond_4

    .line 410
    .line 411
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    const/4 v6, 0x2

    .line 416
    if-ge v5, v6, :cond_3

    .line 417
    .line 418
    goto :goto_1

    .line 419
    :cond_3
    new-instance v5, Lf/n0;

    .line 420
    .line 421
    const/16 v6, 0xf

    .line 422
    .line 423
    invoke-direct {v5, v2, v3, v6}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 424
    .line 425
    .line 426
    const-wide/16 v6, 0x2bc

    .line 427
    .line 428
    invoke-virtual {v3, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 429
    .line 430
    .line 431
    :cond_4
    :goto_1
    const v2, 0x7f0a0022

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    check-cast v2, Landroid/widget/TextView;

    .line 439
    .line 440
    if-eqz v2, :cond_5

    .line 441
    .line 442
    const-string v3, "v6.0.1"

    .line 443
    .line 444
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    .line 446
    .line 447
    :cond_5
    const v2, 0x7f0a001d

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    new-instance v3, Lk2/a;

    .line 455
    .line 456
    invoke-direct {v3, v0, v4}, Lk2/a;-><init>(Lcom/zalexdev/stryker/about/AboutFragment;I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    .line 461
    .line 462
    const v2, 0x7f0a001c

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    new-instance v3, Lk2/a;

    .line 470
    .line 471
    const/4 v5, 0x1

    .line 472
    invoke-direct {v3, v0, v5}, Lk2/a;-><init>(Lcom/zalexdev/stryker/about/AboutFragment;I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    .line 477
    .line 478
    const v2, 0x7f0a0021

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    new-instance v3, Lk2/a;

    .line 486
    .line 487
    const/4 v6, 0x2

    .line 488
    invoke-direct {v3, v0, v6}, Lk2/a;-><init>(Lcom/zalexdev/stryker/about/AboutFragment;I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    .line 493
    .line 494
    const/4 v2, 0x7

    .line 495
    new-array v3, v2, [I

    .line 496
    .line 497
    fill-array-data v3, :array_0

    .line 498
    .line 499
    .line 500
    const-wide/16 v6, 0x3c

    .line 501
    .line 502
    move v8, v4

    .line 503
    :goto_2
    if-ge v8, v2, :cond_7

    .line 504
    .line 505
    aget v9, v3, v8

    .line 506
    .line 507
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 508
    .line 509
    .line 510
    move-result-object v9

    .line 511
    if-nez v9, :cond_6

    .line 512
    .line 513
    goto :goto_3

    .line 514
    :cond_6
    const/4 v10, 0x0

    .line 515
    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 516
    .line 517
    .line 518
    iget v11, v0, Lcom/zalexdev/stryker/about/AboutFragment;->a:F

    .line 519
    .line 520
    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 524
    .line 525
    .line 526
    move-result-object v9

    .line 527
    const/high16 v11, 0x3f800000    # 1.0f

    .line 528
    .line 529
    invoke-virtual {v9, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 530
    .line 531
    .line 532
    move-result-object v9

    .line 533
    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 534
    .line 535
    .line 536
    move-result-object v9

    .line 537
    invoke-virtual {v9, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 538
    .line 539
    .line 540
    move-result-object v9

    .line 541
    const-wide/16 v10, 0x1e0

    .line 542
    .line 543
    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 544
    .line 545
    .line 546
    move-result-object v9

    .line 547
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    .line 548
    .line 549
    const v11, 0x3fcccccd    # 1.6f

    .line 550
    .line 551
    .line 552
    invoke-direct {v10, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 556
    .line 557
    .line 558
    move-result-object v9

    .line 559
    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 560
    .line 561
    .line 562
    const-wide/16 v9, 0x50

    .line 563
    .line 564
    add-long/2addr v6, v9

    .line 565
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 566
    .line 567
    goto :goto_2

    .line 568
    :cond_7
    const v2, 0x7f0a0020

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    const v3, 0x7f0a001e

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    const v6, 0x7f0a001f

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    iget-object v6, v0, Lcom/zalexdev/stryker/about/AboutFragment;->b:Ljava/util/ArrayList;

    .line 590
    .line 591
    if-eqz v3, :cond_9

    .line 592
    .line 593
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 594
    .line 595
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 596
    .line 597
    .line 598
    const/4 v8, 0x2

    .line 599
    new-array v9, v8, [Landroid/animation/Animator;

    .line 600
    .line 601
    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 602
    .line 603
    invoke-static {v3, v10}, Lcom/zalexdev/stryker/about/AboutFragment;->d(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    .line 604
    .line 605
    .line 606
    move-result-object v11

    .line 607
    aput-object v11, v9, v4

    .line 608
    .line 609
    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 610
    .line 611
    invoke-static {v3, v11}, Lcom/zalexdev/stryker/about/AboutFragment;->d(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    aput-object v3, v9, v5

    .line 616
    .line 617
    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 618
    .line 619
    .line 620
    if-eqz v2, :cond_8

    .line 621
    .line 622
    new-array v3, v8, [Landroid/animation/Animator;

    .line 623
    .line 624
    invoke-static {v2, v10}, Lcom/zalexdev/stryker/about/AboutFragment;->d(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    .line 625
    .line 626
    .line 627
    move-result-object v8

    .line 628
    aput-object v8, v3, v4

    .line 629
    .line 630
    invoke-static {v2, v11}, Lcom/zalexdev/stryker/about/AboutFragment;->d(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    aput-object v2, v3, v5

    .line 635
    .line 636
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 637
    .line 638
    .line 639
    :cond_8
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    :cond_9
    if-eqz v1, :cond_a

    .line 646
    .line 647
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 648
    .line 649
    const/4 v3, 0x2

    .line 650
    new-array v4, v3, [F

    .line 651
    .line 652
    fill-array-data v4, :array_1

    .line 653
    .line 654
    .line 655
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    const-wide/16 v4, 0x898

    .line 660
    .line 661
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 662
    .line 663
    .line 664
    const/4 v2, -0x1

    .line 665
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 669
    .line 670
    .line 671
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 672
    .line 673
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    :cond_a
    return-void

    .line 686
    nop

    .line 687
    :array_0
    .array-data 4
        0x7f0a0017
        0x7f0a001b
        0x7f0a001d
        0x7f0a001c
        0x7f0a001a
        0x7f0a0021
        0x7f0a0018
    .end array-data

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    :array_1
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data
.end method
