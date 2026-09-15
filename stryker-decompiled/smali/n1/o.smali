.class public final synthetic Ln1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Ln1/o;->a:I

    iput-object p1, p0, Ln1/o;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Ln1/o;->b:Z

    iput-object p3, p0, Ln1/o;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ln1/p;Lv1/i;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ln1/o;->a:I

    iput-object p1, p0, Ln1/o;->c:Ljava/lang/Object;

    iput-object p2, p0, Ln1/o;->d:Ljava/lang/Object;

    iput-boolean v0, p0, Ln1/o;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 56

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ln1/o;->a:I

    .line 4
    .line 5
    const v3, 0x7f0a0205

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, ""

    .line 10
    .line 11
    const/4 v6, -0x2

    .line 12
    const/4 v7, -0x1

    .line 13
    const/4 v8, 0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    iget-boolean v10, v0, Ln1/o;->b:Z

    .line 16
    .line 17
    iget-object v11, v0, Ln1/o;->d:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v12, v0, Ln1/o;->c:Ljava/lang/Object;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    check-cast v12, Landroid/content/Context;

    .line 25
    .line 26
    check-cast v11, Landroid/app/Activity;

    .line 27
    .line 28
    invoke-static {v12}, Li5/a;->N(Landroid/content/Context;)Lf4/g;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_5

    .line 33
    .line 34
    iget-object v1, v1, Lf4/g;->c:Lf4/d;

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v2, 0x259

    .line 40
    .line 41
    iget v3, v1, Lf4/d;->a:I

    .line 42
    .line 43
    if-gt v3, v2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v2, v1, Lf4/d;->c:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    const-string v4, "https://"

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_5

    .line 57
    .line 58
    iget-object v2, v1, Lf4/d;->d:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v4, "stryker_ota"

    .line 74
    .line 75
    invoke-virtual {v2, v4, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v10, :cond_3

    .line 80
    .line 81
    iget-boolean v4, v1, Lf4/d;->f:Z

    .line 82
    .line 83
    if-nez v4, :cond_3

    .line 84
    .line 85
    const-string v4, "ota_skip_version"

    .line 86
    .line 87
    invoke-interface {v2, v4, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-ne v4, v3, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {v11}, Landroid/app/Activity;->isFinishing()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    invoke-virtual {v11}, Landroid/app/Activity;->isDestroyed()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    new-instance v3, Lv3/g;

    .line 108
    .line 109
    const/16 v4, 0xa

    .line 110
    .line 111
    invoke-direct {v3, v11, v1, v2, v4}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_0
    return-void

    .line 118
    :pswitch_0
    move-object v13, v12

    .line 119
    check-cast v13, Lr3/t;

    .line 120
    .line 121
    check-cast v11, Ljava/lang/String;

    .line 122
    .line 123
    iget-object v1, v13, Lr3/t;->a:Landroid/content/Context;

    .line 124
    .line 125
    if-eqz v10, :cond_7

    .line 126
    .line 127
    iget-object v2, v13, Lr3/t;->d:Ll4/l;

    .line 128
    .line 129
    const-string v3, "cameradar"

    .line 130
    .line 131
    invoke-virtual {v2, v3, v8}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    new-instance v2, Landroid/app/Dialog;

    .line 135
    .line 136
    invoke-direct {v2, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    const v1, 0x7f0d0055

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_6

    .line 150
    .line 151
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 152
    .line 153
    invoke-direct {v3, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v7, v6}, Landroid/view/Window;->setLayout(II)V

    .line 160
    .line 161
    .line 162
    :cond_6
    const v1, 0x7f0a01d9

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 170
    .line 171
    const v3, 0x7f0a01d8

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    .line 179
    .line 180
    const v4, 0x7f0a01df

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Landroid/widget/TextView;

    .line 188
    .line 189
    const v6, 0x7f0a01da

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Landroid/widget/TextView;

    .line 197
    .line 198
    const v7, 0x7f0a01d4

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    check-cast v7, Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 208
    .line 209
    .line 210
    const v10, 0x7f120002

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v10}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 214
    .line 215
    .line 216
    const-string v10, "Launching Cameradar"

    .line 217
    .line 218
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    const-string v4, "Launching..."

    .line 222
    .line 223
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    const/4 v4, 0x4

    .line 227
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v9}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    new-instance v4, Lr3/m;

    .line 237
    .line 238
    const/16 v9, 0x14

    .line 239
    .line 240
    invoke-direct {v4, v1, v9, v8}, Lr3/m;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicator;II)V

    .line 241
    .line 242
    .line 243
    iget-object v8, v13, Lr3/t;->b:Landroid/app/Activity;

    .line 244
    .line 245
    invoke-virtual {v8, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 249
    .line 250
    .line 251
    filled-new-array {v5}, [Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v20

    .line 255
    filled-new-array {v5}, [Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v21

    .line 259
    const-string v4, "cameradar --custom-credentials /CORE/Cameradar/credentials.json --custom-routes /CORE/Cameradar/routes --ui plain --targets "

    .line 260
    .line 261
    invoke-static {v4, v11}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v16

    .line 265
    new-instance v4, Lr3/q;

    .line 266
    .line 267
    iget-object v14, v13, Lr3/t;->b:Landroid/app/Activity;

    .line 268
    .line 269
    iget-object v15, v13, Lr3/t;->a:Landroid/content/Context;

    .line 270
    .line 271
    move-object v12, v4

    .line 272
    move-object/from16 v17, v6

    .line 273
    .line 274
    move-object/from16 v18, v1

    .line 275
    .line 276
    move-object/from16 v19, v3

    .line 277
    .line 278
    move-object/from16 v22, v7

    .line 279
    .line 280
    invoke-direct/range {v12 .. v22}, Lr3/q;-><init>(Lr3/t;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/airbnb/lottie/LottieAnimationView;[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/TextView;)V

    .line 281
    .line 282
    .line 283
    new-instance v1, Lcom/google/android/material/snackbar/a;

    .line 284
    .line 285
    invoke-direct {v1, v2, v4, v9}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    .line 291
    goto :goto_1

    .line 292
    :cond_7
    check-cast v1, Lf/q;

    .line 293
    .line 294
    invoke-virtual {v1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-static {v1, v1}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    new-instance v2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;

    .line 303
    .line 304
    invoke-direct {v2}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v2, v4, v3}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v9}, Landroidx/fragment/app/a;->h(Z)I

    .line 311
    .line 312
    .line 313
    :goto_1
    return-void

    .line 314
    :pswitch_1
    check-cast v12, Lr3/t;

    .line 315
    .line 316
    check-cast v11, Lcom/zalexdev/stryker/custom/Device;

    .line 317
    .line 318
    if-eqz v10, :cond_a

    .line 319
    .line 320
    iget-object v1, v12, Lr3/t;->d:Ll4/l;

    .line 321
    .line 322
    const-string v3, "hydra"

    .line 323
    .line 324
    invoke-virtual {v1, v3, v8}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 325
    .line 326
    .line 327
    iget-object v1, v12, Lr3/t;->a:Landroid/content/Context;

    .line 328
    .line 329
    iget-object v3, v12, Lr3/t;->b:Landroid/app/Activity;

    .line 330
    .line 331
    iget-object v10, v12, Lr3/t;->d:Ll4/l;

    .line 332
    .line 333
    sget-object v12, Ln3/h;->a:[Ljava/lang/String;

    .line 334
    .line 335
    new-instance v12, Landroid/app/Dialog;

    .line 336
    .line 337
    invoke-direct {v12, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 338
    .line 339
    .line 340
    const v13, 0x7f0d0047

    .line 341
    .line 342
    .line 343
    invoke-virtual {v12, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    if-eqz v13, :cond_8

    .line 351
    .line 352
    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    .line 353
    .line 354
    invoke-direct {v14, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v13, v14}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v13, v7, v6}, Landroid/view/Window;->setLayout(II)V

    .line 361
    .line 362
    .line 363
    :cond_8
    const v6, 0x7f0a0288

    .line 364
    .line 365
    .line 366
    invoke-virtual {v12, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    check-cast v6, Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 371
    .line 372
    const v7, 0x7f0a0289

    .line 373
    .line 374
    .line 375
    invoke-virtual {v12, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    move-object/from16 v19, v7

    .line 380
    .line 381
    check-cast v19, Landroid/widget/TextView;

    .line 382
    .line 383
    const v7, 0x7f0a0286

    .line 384
    .line 385
    .line 386
    invoke-virtual {v12, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    check-cast v7, Landroid/widget/ImageView;

    .line 391
    .line 392
    const v13, 0x7f0a029e

    .line 393
    .line 394
    .line 395
    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v13

    .line 399
    move-object v15, v13

    .line 400
    check-cast v15, Lcom/google/android/material/chip/ChipGroup;

    .line 401
    .line 402
    const v13, 0x7f0a029d

    .line 403
    .line 404
    .line 405
    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 406
    .line 407
    .line 408
    move-result-object v13

    .line 409
    move-object v14, v13

    .line 410
    check-cast v14, Lcom/google/android/material/textfield/TextInputLayout;

    .line 411
    .line 412
    const v13, 0x7f0a029c

    .line 413
    .line 414
    .line 415
    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object v13

    .line 419
    check-cast v13, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 420
    .line 421
    const v9, 0x7f0a0291

    .line 422
    .line 423
    .line 424
    invoke-virtual {v12, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    .line 429
    .line 430
    const v8, 0x7f0a029b

    .line 431
    .line 432
    .line 433
    invoke-virtual {v12, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    .line 438
    .line 439
    const v4, 0x7f0a0297

    .line 440
    .line 441
    .line 442
    invoke-virtual {v12, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    check-cast v4, Lcom/google/android/material/chip/ChipGroup;

    .line 447
    .line 448
    const v2, 0x7f0a0299

    .line 449
    .line 450
    .line 451
    invoke-virtual {v12, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    check-cast v2, Lcom/google/android/material/chip/Chip;

    .line 456
    .line 457
    const v2, 0x7f0a0298

    .line 458
    .line 459
    .line 460
    invoke-virtual {v12, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    move-object/from16 v34, v2

    .line 465
    .line 466
    check-cast v34, Lcom/google/android/material/chip/Chip;

    .line 467
    .line 468
    const v2, 0x7f0a0277

    .line 469
    .line 470
    .line 471
    invoke-virtual {v12, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    check-cast v2, Landroid/widget/LinearLayout;

    .line 476
    .line 477
    const v0, 0x7f0a0276

    .line 478
    .line 479
    .line 480
    invoke-virtual {v12, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Landroid/widget/LinearLayout;

    .line 485
    .line 486
    move-object/from16 v16, v5

    .line 487
    .line 488
    const v5, 0x7f0a0295

    .line 489
    .line 490
    .line 491
    invoke-virtual {v12, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    move-object/from16 v32, v5

    .line 496
    .line 497
    check-cast v32, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 498
    .line 499
    const v5, 0x7f0a0296

    .line 500
    .line 501
    .line 502
    invoke-virtual {v12, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    .line 507
    .line 508
    move-object/from16 v17, v14

    .line 509
    .line 510
    const v14, 0x7f0a029a

    .line 511
    .line 512
    .line 513
    invoke-virtual {v12, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 514
    .line 515
    .line 516
    move-result-object v14

    .line 517
    move-object/from16 v33, v14

    .line 518
    .line 519
    check-cast v33, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 520
    .line 521
    const v14, 0x7f0a029f

    .line 522
    .line 523
    .line 524
    invoke-virtual {v12, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 525
    .line 526
    .line 527
    move-result-object v14

    .line 528
    move-object/from16 v30, v14

    .line 529
    .line 530
    check-cast v30, Lcom/google/android/material/textfield/TextInputEditText;

    .line 531
    .line 532
    const v14, 0x7f0a02a0

    .line 533
    .line 534
    .line 535
    invoke-virtual {v12, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 536
    .line 537
    .line 538
    move-result-object v14

    .line 539
    move-object/from16 v31, v14

    .line 540
    .line 541
    check-cast v31, Lcom/google/android/material/textfield/TextInputEditText;

    .line 542
    .line 543
    const v14, 0x7f0a02ac

    .line 544
    .line 545
    .line 546
    invoke-virtual {v12, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 547
    .line 548
    .line 549
    move-result-object v14

    .line 550
    check-cast v14, Lcom/google/android/material/slider/Slider;

    .line 551
    .line 552
    move-object/from16 v18, v15

    .line 553
    .line 554
    const v15, 0x7f0a02ad

    .line 555
    .line 556
    .line 557
    invoke-virtual {v12, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 558
    .line 559
    .line 560
    move-result-object v15

    .line 561
    check-cast v15, Landroid/widget/TextView;

    .line 562
    .line 563
    move-object/from16 v47, v7

    .line 564
    .line 565
    const v7, 0x7f0a0284

    .line 566
    .line 567
    .line 568
    invoke-virtual {v12, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 569
    .line 570
    .line 571
    move-result-object v7

    .line 572
    move-object/from16 v41, v7

    .line 573
    .line 574
    check-cast v41, Lcom/google/android/material/chip/Chip;

    .line 575
    .line 576
    const v7, 0x7f0a027c

    .line 577
    .line 578
    .line 579
    invoke-virtual {v12, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 580
    .line 581
    .line 582
    move-result-object v7

    .line 583
    move-object/from16 v42, v7

    .line 584
    .line 585
    check-cast v42, Lcom/google/android/material/chip/Chip;

    .line 586
    .line 587
    const v7, 0x7f0a0287

    .line 588
    .line 589
    .line 590
    invoke-virtual {v12, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 591
    .line 592
    .line 593
    move-result-object v7

    .line 594
    check-cast v7, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 595
    .line 596
    move-object/from16 v48, v1

    .line 597
    .line 598
    const v1, 0x7f0a028a

    .line 599
    .line 600
    .line 601
    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    move-object/from16 v39, v1

    .line 606
    .line 607
    check-cast v39, Lcom/google/android/material/card/MaterialCardView;

    .line 608
    .line 609
    const v1, 0x7f0a028c

    .line 610
    .line 611
    .line 612
    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    check-cast v1, Landroid/widget/TextView;

    .line 617
    .line 618
    move-object/from16 v49, v1

    .line 619
    .line 620
    const v1, 0x7f0a028b

    .line 621
    .line 622
    .line 623
    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    check-cast v1, Landroid/widget/ImageView;

    .line 628
    .line 629
    move-object/from16 v50, v1

    .line 630
    .line 631
    const v1, 0x7f0a02a9

    .line 632
    .line 633
    .line 634
    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    move-object/from16 v37, v1

    .line 639
    .line 640
    check-cast v37, Landroid/widget/LinearLayout;

    .line 641
    .line 642
    const v1, 0x7f0a02aa

    .line 643
    .line 644
    .line 645
    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    check-cast v1, Lcom/zalexdev/stryker/utils/NoNestedScrollView;

    .line 650
    .line 651
    move-object/from16 v24, v1

    .line 652
    .line 653
    const v1, 0x7f0a02ab

    .line 654
    .line 655
    .line 656
    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    check-cast v1, Landroid/widget/TextView;

    .line 661
    .line 662
    move-object/from16 v51, v1

    .line 663
    .line 664
    const v1, 0x7f0a0279

    .line 665
    .line 666
    .line 667
    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 672
    .line 673
    move-object/from16 v52, v1

    .line 674
    .line 675
    const v1, 0x7f0a027a

    .line 676
    .line 677
    .line 678
    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 683
    .line 684
    move-object/from16 v53, v1

    .line 685
    .line 686
    const v1, 0x7f0a0278

    .line 687
    .line 688
    .line 689
    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 694
    .line 695
    move-object/from16 v54, v1

    .line 696
    .line 697
    sget-object v1, Ln3/h;->a:[Ljava/lang/String;

    .line 698
    .line 699
    invoke-virtual {v13, v1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setSimpleItems([Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    if-eqz v11, :cond_9

    .line 703
    .line 704
    invoke-virtual {v11}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    goto :goto_2

    .line 709
    :cond_9
    move-object/from16 v1, v16

    .line 710
    .line 711
    :goto_2
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    .line 713
    .line 714
    sget-object v1, Ln3/h;->b:Ljava/util/LinkedHashMap;

    .line 715
    .line 716
    const-string v11, "ssh"

    .line 717
    .line 718
    invoke-virtual {v1, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    check-cast v1, Ljava/lang/CharSequence;

    .line 723
    .line 724
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    .line 726
    .line 727
    const-string v1, "16"

    .line 728
    .line 729
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    .line 731
    .line 732
    new-instance v1, Ln3/a;

    .line 733
    .line 734
    invoke-direct {v1, v15}, Ln3/a;-><init>(Landroid/widget/TextView;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v14, v1}, Lcom/google/android/material/slider/Slider;->addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    .line 738
    .line 739
    .line 740
    new-instance v1, Ljava/lang/Thread;

    .line 741
    .line 742
    new-instance v15, Lj2/b;

    .line 743
    .line 744
    const/16 v25, 0x8

    .line 745
    .line 746
    move-object/from16 v27, v13

    .line 747
    .line 748
    move-object v13, v15

    .line 749
    move-object/from16 v55, v12

    .line 750
    .line 751
    move-object/from16 v40, v14

    .line 752
    .line 753
    move-object/from16 v12, v17

    .line 754
    .line 755
    move-object v14, v10

    .line 756
    move-object/from16 v28, v9

    .line 757
    .line 758
    move-object/from16 v45, v10

    .line 759
    .line 760
    move-object v9, v15

    .line 761
    move-object/from16 v10, v18

    .line 762
    .line 763
    move-object v15, v3

    .line 764
    move-object/from16 v16, v32

    .line 765
    .line 766
    move-object/from16 v17, v33

    .line 767
    .line 768
    move/from16 v18, v25

    .line 769
    .line 770
    invoke-direct/range {v13 .. v18}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 771
    .line 772
    .line 773
    const-string v13, "hydra-wordlist-load"

    .line 774
    .line 775
    invoke-direct {v1, v9, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 779
    .line 780
    .line 781
    filled-new-array {v11}, [Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    move-object/from16 v26, v1

    .line 786
    .line 787
    new-instance v9, Ln3/b;

    .line 788
    .line 789
    invoke-direct {v9, v1, v12, v8, v5}, Ln3/b;-><init>([Ljava/lang/String;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v10, v9}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 793
    .line 794
    .line 795
    new-instance v1, Lp2/i;

    .line 796
    .line 797
    const/4 v5, 0x2

    .line 798
    invoke-direct {v1, v2, v0, v5}, Lp2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v4, v1}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 802
    .line 803
    .line 804
    const/4 v0, 0x0

    .line 805
    filled-new-array {v0}, [Ln3/l;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    move-object/from16 v43, v0

    .line 810
    .line 811
    const/4 v1, 0x1

    .line 812
    new-array v1, v1, [Z

    .line 813
    .line 814
    const/4 v2, 0x0

    .line 815
    aput-boolean v2, v1, v2

    .line 816
    .line 817
    new-instance v13, Ln3/f;

    .line 818
    .line 819
    move-object/from16 v46, v13

    .line 820
    .line 821
    move-object v14, v1

    .line 822
    move-object v15, v6

    .line 823
    move-object/from16 v16, v7

    .line 824
    .line 825
    move-object/from16 v17, v53

    .line 826
    .line 827
    move-object/from16 v18, v52

    .line 828
    .line 829
    move-object/from16 v20, v51

    .line 830
    .line 831
    move-object/from16 v21, v24

    .line 832
    .line 833
    move-object/from16 v22, v49

    .line 834
    .line 835
    move-object/from16 v23, v39

    .line 836
    .line 837
    move-object/from16 v24, v48

    .line 838
    .line 839
    invoke-direct/range {v13 .. v24}, Ln3/f;-><init>([ZLcom/facebook/shimmer/ShimmerFrameLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/zalexdev/stryker/utils/NoNestedScrollView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroid/content/Context;)V

    .line 840
    .line 841
    .line 842
    new-instance v2, Ln3/c;

    .line 843
    .line 844
    move-object/from16 v25, v2

    .line 845
    .line 846
    move-object/from16 v29, v8

    .line 847
    .line 848
    move-object/from16 v35, v48

    .line 849
    .line 850
    move-object/from16 v36, v51

    .line 851
    .line 852
    move-object/from16 v38, v47

    .line 853
    .line 854
    move-object/from16 v44, v3

    .line 855
    .line 856
    invoke-direct/range {v25 .. v46}, Ln3/c;-><init>([Ljava/lang/String;Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Lcom/google/android/material/chip/Chip;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/slider/Slider;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;[Ln3/l;Landroid/app/Activity;Ll4/l;Ln3/f;)V

    .line 857
    .line 858
    .line 859
    move-object/from16 v4, v52

    .line 860
    .line 861
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    .line 863
    .line 864
    new-instance v2, Lcom/nambimobile/widgets/efab/a;

    .line 865
    .line 866
    const/16 v4, 0xd

    .line 867
    .line 868
    invoke-direct {v2, v0, v4}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    .line 869
    .line 870
    .line 871
    move-object/from16 v4, v53

    .line 872
    .line 873
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    .line 875
    .line 876
    new-instance v2, Lcom/google/android/material/snackbar/a;

    .line 877
    .line 878
    const/16 v4, 0x12

    .line 879
    .line 880
    move-object/from16 v5, v48

    .line 881
    .line 882
    move-object/from16 v7, v49

    .line 883
    .line 884
    invoke-direct {v2, v7, v5, v4}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 885
    .line 886
    .line 887
    move-object/from16 v4, v50

    .line 888
    .line 889
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    .line 891
    .line 892
    new-instance v2, Lj2/j;

    .line 893
    .line 894
    const/4 v4, 0x5

    .line 895
    move-object/from16 v7, v51

    .line 896
    .line 897
    invoke-direct {v2, v5, v3, v7, v4}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 898
    .line 899
    .line 900
    move-object/from16 v7, v47

    .line 901
    .line 902
    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    .line 904
    .line 905
    new-instance v2, Lj2/j;

    .line 906
    .line 907
    const/4 v3, 0x6

    .line 908
    move-object/from16 v4, v55

    .line 909
    .line 910
    invoke-direct {v2, v0, v1, v4, v3}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 911
    .line 912
    .line 913
    move-object/from16 v1, v54

    .line 914
    .line 915
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v6}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 922
    .line 923
    .line 924
    goto :goto_3

    .line 925
    :cond_a
    iget-object v0, v12, Lr3/t;->a:Landroid/content/Context;

    .line 926
    .line 927
    check-cast v0, Lf/q;

    .line 928
    .line 929
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-static {v0, v0}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    new-instance v1, Lcom/zalexdev/stryker/hydra/HydraInstall;

    .line 938
    .line 939
    invoke-direct {v1}, Lcom/zalexdev/stryker/hydra/HydraInstall;-><init>()V

    .line 940
    .line 941
    .line 942
    const/4 v2, 0x0

    .line 943
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 944
    .line 945
    .line 946
    const/4 v1, 0x0

    .line 947
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->h(Z)I

    .line 948
    .line 949
    .line 950
    :goto_3
    return-void

    .line 951
    :pswitch_2
    move v1, v9

    .line 952
    const/4 v5, 0x2

    .line 953
    check-cast v12, Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 954
    .line 955
    check-cast v11, Lu2/a;

    .line 956
    .line 957
    iget-object v0, v12, Lcom/zalexdev/stryker/dashboard/Dashboard;->f:Landroid/widget/TextView;

    .line 958
    .line 959
    if-nez v0, :cond_b

    .line 960
    .line 961
    goto :goto_6

    .line 962
    :cond_b
    iget-object v0, v12, Lcom/zalexdev/stryker/dashboard/Dashboard;->s:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 963
    .line 964
    if-eqz v0, :cond_d

    .line 965
    .line 966
    if-eqz v10, :cond_c

    .line 967
    .line 968
    move v2, v5

    .line 969
    goto :goto_4

    .line 970
    :cond_c
    move v2, v1

    .line 971
    :goto_4
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/utils/VmRingView;->setState(I)V

    .line 972
    .line 973
    .line 974
    :cond_d
    iget-object v0, v12, Lcom/zalexdev/stryker/dashboard/Dashboard;->f:Landroid/widget/TextView;

    .line 975
    .line 976
    iget-object v1, v11, Lu2/a;->a:Ljava/lang/String;

    .line 977
    .line 978
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    .line 980
    .line 981
    :try_start_0
    iget-object v0, v12, Lcom/zalexdev/stryker/dashboard/Dashboard;->f:Landroid/widget/TextView;

    .line 982
    .line 983
    iget-object v1, v12, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 984
    .line 985
    iget v2, v11, Lu2/a;->b:I

    .line 986
    .line 987
    sget-object v3, Lx/g;->a:Ljava/lang/Object;

    .line 988
    .line 989
    invoke-static {v1, v2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 990
    .line 991
    .line 992
    move-result v1

    .line 993
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    .line 995
    .line 996
    :catch_0
    iget-object v0, v12, Lcom/zalexdev/stryker/dashboard/Dashboard;->g:Landroid/widget/TextView;

    .line 997
    .line 998
    if-eqz v0, :cond_f

    .line 999
    .line 1000
    if-eqz v10, :cond_e

    .line 1001
    .line 1002
    const-string v1, "Debian toolset at /data/local/stryker/release"

    .line 1003
    .line 1004
    goto :goto_5

    .line 1005
    :cond_e
    const-string v1, "Not mounted \u2014 reopen the app to remount"

    .line 1006
    .line 1007
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    .line 1009
    .line 1010
    :cond_f
    :goto_6
    return-void

    .line 1011
    :pswitch_3
    check-cast v12, Ln1/p;

    .line 1012
    .line 1013
    check-cast v11, Lv1/i;

    .line 1014
    .line 1015
    invoke-virtual {v12, v11, v10}, Ln1/p;->b(Lv1/i;Z)V

    .line 1016
    .line 1017
    .line 1018
    return-void

    .line 1019
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
