.class public final synthetic Lt2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/k0;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/k0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lt2/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lt2/i;->b:Landroidx/recyclerview/widget/k0;

    .line 7
    .line 8
    iput p2, p0, Lt2/i;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lt2/i;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, v0, Lt2/i;->c:I

    .line 7
    .line 8
    iget-object v4, v0, Lt2/i;->b:Landroidx/recyclerview/widget/k0;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v4, Lo4/u;

    .line 14
    .line 15
    iget-object v1, v4, Lo4/u;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 22
    .line 23
    new-instance v3, Landroid/app/Dialog;

    .line 24
    .line 25
    iget-object v5, v4, Lo4/u;->b:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v3, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    const v5, 0x7f0d00ca

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 43
    .line 44
    invoke-direct {v6, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    const/4 v6, -0x1

    .line 51
    const/4 v7, -0x2

    .line 52
    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 53
    .line 54
    .line 55
    :cond_0
    const/4 v5, 0x1

    .line 56
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 57
    .line 58
    .line 59
    const v6, 0x7f0a05d7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Landroid/widget/TextView;

    .line 67
    .line 68
    const v7, 0x7f0a038b

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Landroid/widget/TextView;

    .line 76
    .line 77
    const v8, 0x7f0a03cd

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Landroid/widget/TextView;

    .line 85
    .line 86
    const v9, 0x7f0a0080

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    check-cast v9, Landroid/widget/TextView;

    .line 94
    .line 95
    const v9, 0x7f0a007e

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    check-cast v9, Landroid/widget/ImageView;

    .line 103
    .line 104
    const v9, 0x7f0a075f

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    const v10, 0x7f0a04be

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Lcom/google/android/material/card/MaterialCardView;

    .line 121
    .line 122
    const v11, 0x7f0a0180

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    .line 130
    .line 131
    const v12, 0x7f0a0242

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    check-cast v12, Lcom/google/android/material/card/MaterialCardView;

    .line 139
    .line 140
    const v13, 0x7f0a0163

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    check-cast v13, Lcom/google/android/material/card/MaterialCardView;

    .line 148
    .line 149
    const v14, 0x7f0a0490

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    check-cast v14, Lcom/google/android/material/card/MaterialCardView;

    .line 157
    .line 158
    const v15, 0x7f0a04a3

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v15

    .line 165
    check-cast v15, Lcom/google/android/material/card/MaterialCardView;

    .line 166
    .line 167
    const v5, 0x7f0a04bc

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 175
    .line 176
    const v2, 0x7f0a013e

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 184
    .line 185
    const v0, 0x7f0a04cc

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 193
    .line 194
    move-object/from16 v16, v11

    .line 195
    .line 196
    const v11, 0x7f0a007f

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    .line 204
    .line 205
    move-object/from16 v17, v2

    .line 206
    .line 207
    const v2, 0x7f0a0762

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 215
    .line 216
    move-object/from16 v18, v3

    .line 217
    .line 218
    new-instance v3, Lo4/c;

    .line 219
    .line 220
    move-object/from16 v19, v14

    .line 221
    .line 222
    const/4 v14, 0x0

    .line 223
    invoke-direct {v3, v4, v14}, Lo4/c;-><init>(Lo4/u;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getBlocked()Ljava/lang/Boolean;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    const/16 v3, 0x8

    .line 238
    .line 239
    if-nez v0, :cond_1

    .line 240
    .line 241
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    :goto_0
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getWps()Ljava/lang/Boolean;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_2

    .line 257
    .line 258
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :cond_2
    new-instance v0, Lo4/c;

    .line 265
    .line 266
    const/4 v9, 0x1

    .line 267
    invoke-direct {v0, v4, v9}, Lo4/c;-><init>(Lo4/u;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, v4, Lo4/u;->d:Ll4/l;

    .line 281
    .line 282
    const-string v2, "hide"

    .line 283
    .line 284
    invoke-virtual {v0, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_3

    .line 289
    .line 290
    const-string v0, "XX:XX:XX:XX:XX:XX"

    .line 291
    .line 292
    :goto_1
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_3
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    goto :goto_1

    .line 307
    :goto_2
    new-instance v0, Lo4/d;

    .line 308
    .line 309
    const/4 v2, 0x1

    .line 310
    invoke-direct {v0, v4, v1, v2}, Lo4/d;-><init>(Lo4/u;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    const-string v2, "Hidden network"

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_4

    .line 327
    .line 328
    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    :cond_4
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getModel()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    if-eqz v0, :cond_5

    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getModel()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_5
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 346
    .line 347
    .line 348
    :goto_3
    new-instance v0, Lo4/d;

    .line 349
    .line 350
    const/4 v2, 0x2

    .line 351
    invoke-direct {v0, v4, v1, v2}, Lo4/d;-><init>(Lo4/u;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    .line 356
    .line 357
    new-instance v0, Lo4/d;

    .line 358
    .line 359
    const/4 v2, 0x3

    .line 360
    invoke-direct {v0, v4, v1, v2}, Lo4/d;-><init>(Lo4/u;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    .line 365
    .line 366
    new-instance v0, Lo4/d;

    .line 367
    .line 368
    const/4 v2, 0x4

    .line 369
    invoke-direct {v0, v4, v1, v2}, Lo4/d;-><init>(Lo4/u;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    .line 374
    .line 375
    new-instance v0, Lo4/d;

    .line 376
    .line 377
    const/4 v2, 0x5

    .line 378
    invoke-direct {v0, v4, v1, v2}, Lo4/d;-><init>(Lo4/u;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    .line 383
    .line 384
    new-instance v0, Lo4/d;

    .line 385
    .line 386
    const/4 v2, 0x6

    .line 387
    invoke-direct {v0, v4, v1, v2}, Lo4/d;-><init>(Lo4/u;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    .line 392
    .line 393
    new-instance v0, Lo4/d;

    .line 394
    .line 395
    const/4 v2, 0x7

    .line 396
    invoke-direct {v0, v4, v1, v2}, Lo4/d;-><init>(Lo4/u;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 397
    .line 398
    .line 399
    move-object/from16 v14, v19

    .line 400
    .line 401
    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    .line 403
    .line 404
    new-instance v0, Lo4/d;

    .line 405
    .line 406
    invoke-direct {v0, v4, v1, v3}, Lo4/d;-><init>(Lo4/u;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 407
    .line 408
    .line 409
    move-object/from16 v2, v17

    .line 410
    .line 411
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    .line 413
    .line 414
    new-instance v0, Lo4/d;

    .line 415
    .line 416
    const/4 v2, 0x0

    .line 417
    invoke-direct {v0, v4, v1, v2}, Lo4/d;-><init>(Lo4/u;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 418
    .line 419
    .line 420
    move-object/from16 v11, v16

    .line 421
    .line 422
    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :pswitch_0
    check-cast v4, Lt2/m;

    .line 430
    .line 431
    invoke-virtual {v4, v3}, Lt2/m;->c(I)V

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :pswitch_1
    check-cast v4, Lt2/m;

    .line 436
    .line 437
    iget-object v0, v4, Lt2/m;->e:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v0, Ll4/l;

    .line 440
    .line 441
    iget-object v1, v4, Lt2/m;->b:Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    check-cast v1, Ljava/util/ArrayList;

    .line 448
    .line 449
    const/4 v2, 0x0

    .line 450
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    check-cast v1, Ljava/lang/String;

    .line 455
    .line 456
    iget-object v0, v0, Ll4/l;->c:Landroid/content/Context;

    .line 457
    .line 458
    const-string v2, "clipboard"

    .line 459
    .line 460
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Landroid/content/ClipboardManager;

    .line 465
    .line 466
    const-string v2, "Stryker"

    .line 467
    .line 468
    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, v4, Lt2/m;->e:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v0, Ll4/l;

    .line 478
    .line 479
    const-string v1, "Password copied to clipboard!"

    .line 480
    .line 481
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    return-void

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
