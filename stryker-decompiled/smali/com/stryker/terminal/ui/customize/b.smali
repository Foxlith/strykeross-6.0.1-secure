.class public final synthetic Lcom/stryker/terminal/ui/customize/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/stryker/terminal/ui/customize/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/stryker/terminal/ui/customize/b;->d:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lcom/stryker/terminal/ui/customize/b;->a:I

    .line 8
    .line 9
    const-string v4, ".ducky"

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    iget-object v8, v0, Lcom/stryker/terminal/ui/customize/b;->d:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, v0, Lcom/stryker/terminal/ui/customize/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v10, v0, Lcom/stryker/terminal/ui/customize/b;->b:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v3, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object v12, v10

    .line 24
    check-cast v12, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;

    .line 25
    .line 26
    check-cast v9, [Ljava/lang/String;

    .line 27
    .line 28
    move-object v14, v8

    .line 29
    check-cast v14, Ljava/lang/String;

    .line 30
    .line 31
    sget v1, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->g:I

    .line 32
    .line 33
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    array-length v1, v9

    .line 37
    sub-int/2addr v1, v7

    .line 38
    if-eq v2, v1, :cond_0

    .line 39
    .line 40
    iget-object v1, v12, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->b:Ll4/l;

    .line 41
    .line 42
    aget-object v2, v9, v2

    .line 43
    .line 44
    invoke-virtual {v1, v14, v2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v12}, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->e()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    .line 52
    .line 53
    iget-object v2, v12, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    const v2, 0x7f0d0072

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 72
    .line 73
    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v3, -0x2

    .line 84
    invoke-virtual {v2, v5, v3}, Landroid/view/Window;->setLayout(II)V

    .line 85
    .line 86
    .line 87
    const v2, 0x7f0a0657

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/widget/TextView;

    .line 95
    .line 96
    const v3, 0x7f0a069b

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    move-object v13, v3

    .line 104
    check-cast v13, Lcom/google/android/material/textfield/TextInputEditText;

    .line 105
    .line 106
    const v3, 0x7f0a0492

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 114
    .line 115
    const v4, 0x7f0a00f1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 123
    .line 124
    iget-object v5, v12, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->a:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    const v6, 0x7f130163

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lj2/i;

    .line 141
    .line 142
    const/16 v5, 0xa

    .line 143
    .line 144
    invoke-direct {v2, v1, v5}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    new-instance v2, Lcom/stryker/terminal/ui/other/a;

    .line 151
    .line 152
    const/16 v16, 0x5

    .line 153
    .line 154
    move-object v11, v2

    .line 155
    move-object v15, v1

    .line 156
    invoke-direct/range {v11 .. v16}, Lcom/stryker/terminal/ui/other/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 163
    .line 164
    .line 165
    :goto_0
    return-void

    .line 166
    :pswitch_0
    check-cast v10, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 167
    .line 168
    check-cast v9, Landroid/widget/EditText;

    .line 169
    .line 170
    check-cast v8, Ljava/lang/String;

    .line 171
    .line 172
    sget v1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 173
    .line 174
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_1

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_1
    iget-object v2, v10, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->c:Lv1/e;

    .line 197
    .line 198
    invoke-virtual {v2, v1, v8}, Lv1/e;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_2

    .line 203
    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    iput-object v1, v10, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->z:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v2, v10, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 211
    .line 212
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    iput-object v8, v10, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->A:Ljava/lang/String;

    .line 216
    .line 217
    iput-boolean v6, v10, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->G:Z

    .line 218
    .line 219
    iput-boolean v7, v10, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->H:Z

    .line 220
    .line 221
    iget-object v1, v10, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 222
    .line 223
    const v2, 0x7f13024d

    .line 224
    .line 225
    .line 226
    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v1, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v10, v5}, Landroid/app/Activity;->setResult(I)V

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_2
    iget-object v1, v10, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 238
    .line 239
    const v2, 0x7f13024c

    .line 240
    .line 241
    .line 242
    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :goto_1
    return-void

    .line 250
    :pswitch_1
    check-cast v10, Lcom/zalexdev/stryker/hid/ui/HidFragment;

    .line 251
    .line 252
    check-cast v9, Landroid/widget/EditText;

    .line 253
    .line 254
    check-cast v8, Lj3/a;

    .line 255
    .line 256
    sget v1, Lcom/zalexdev/stryker/hid/ui/HidFragment;->l:I

    .line 257
    .line 258
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_e

    .line 278
    .line 279
    iget-object v2, v8, Lj3/a;->a:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_3

    .line 286
    .line 287
    goto/16 :goto_5

    .line 288
    .line 289
    :cond_3
    iget-object v2, v10, Lcom/zalexdev/stryker/hid/ui/HidFragment;->a:Lv1/e;

    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 295
    .line 296
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    const-string v5, "[^a-z0-9_-]"

    .line 301
    .line 302
    const-string v9, "_"

    .line 303
    .line 304
    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-nez v5, :cond_d

    .line 313
    .line 314
    iget-object v5, v8, Lj3/a;->a:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    if-eqz v9, :cond_4

    .line 321
    .line 322
    goto/16 :goto_4

    .line 323
    .line 324
    :cond_4
    iget v9, v8, Lj3/a;->d:I

    .line 325
    .line 326
    if-ne v9, v7, :cond_6

    .line 327
    .line 328
    iget-object v4, v8, Lj3/a;->c:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v2, v3, v4}, Lv1/e;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-nez v4, :cond_5

    .line 335
    .line 336
    goto/16 :goto_4

    .line 337
    .line 338
    :cond_5
    invoke-virtual {v2, v5}, Lv1/e;->c(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_6
    new-instance v8, Ljava/io/File;

    .line 343
    .line 344
    invoke-virtual {v2, v6}, Lv1/e;->o(Z)Ljava/io/File;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-static {v5, v4}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    new-instance v6, Ljava/io/File;

    .line 356
    .line 357
    invoke-virtual {v2, v7}, Lv1/e;->o(Z)Ljava/io/File;

    .line 358
    .line 359
    .line 360
    move-result-object v7

    .line 361
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-nez v4, :cond_7

    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_8

    .line 380
    .line 381
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 382
    .line 383
    .line 384
    :cond_8
    invoke-virtual {v8, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-nez v4, :cond_b

    .line 389
    .line 390
    invoke-static {v8}, Lv1/e;->m(Ljava/io/File;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    if-nez v4, :cond_9

    .line 395
    .line 396
    goto :goto_4

    .line 397
    :cond_9
    invoke-virtual {v2, v3, v4}, Lv1/e;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-nez v4, :cond_a

    .line 402
    .line 403
    goto :goto_4

    .line 404
    :cond_a
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 405
    .line 406
    .line 407
    :cond_b
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    .line 408
    .line 409
    iget-object v6, v2, Lv1/e;->b:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v6, Ll4/l;

    .line 412
    .line 413
    const-string v7, "hid_payload_order"

    .line 414
    .line 415
    invoke-virtual {v6, v7}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-static {v6}, Lv1/e;->h(Ljava/lang/String;)Ljava/util/Set;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    if-ltz v5, :cond_c

    .line 431
    .line 432
    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    goto :goto_3

    .line 436
    :cond_c
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    :goto_3
    iget-object v2, v2, Lv1/e;->b:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v2, Ll4/l;

    .line 442
    .line 443
    invoke-static {v4}, Lv1/e;->e(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    invoke-virtual {v2, v7, v3}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    new-instance v2, Ll4/l;

    .line 451
    .line 452
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-direct {v2, v3}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 457
    .line 458
    .line 459
    const v3, 0x7f130242

    .line 460
    .line 461
    .line 462
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v10, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-virtual {v2, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v10}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->g()V

    .line 474
    .line 475
    .line 476
    goto :goto_5

    .line 477
    :cond_d
    :goto_4
    new-instance v1, Ll4/l;

    .line 478
    .line 479
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-direct {v1, v2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 484
    .line 485
    .line 486
    const v2, 0x7f130240

    .line 487
    .line 488
    .line 489
    invoke-virtual {v10, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v1, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    :cond_e
    :goto_5
    return-void

    .line 497
    :pswitch_2
    check-cast v10, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;

    .line 498
    .line 499
    check-cast v9, Ljava/lang/String;

    .line 500
    .line 501
    check-cast v8, Ljava/lang/String;

    .line 502
    .line 503
    iget-object v1, v10, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 504
    .line 505
    invoke-static {v1}, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->g(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v10, v9, v1, v8}, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :pswitch_3
    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    .line 514
    .line 515
    check-cast v9, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;

    .line 516
    .line 517
    check-cast v8, Lcom/google/android/material/textview/MaterialTextView;

    .line 518
    .line 519
    invoke-static {v10, v9, v8, v1, v2}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->f(Lcom/google/android/material/textfield/TextInputEditText;Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/DialogInterface;I)V

    .line 520
    .line 521
    .line 522
    return-void

    .line 523
    :pswitch_4
    check-cast v10, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;

    .line 524
    .line 525
    check-cast v9, Lcom/stryker/terminal/component/pm/SourceManager;

    .line 526
    .line 527
    check-cast v8, Ljava/util/List;

    .line 528
    .line 529
    invoke-static {v10, v9, v8, v1, v2}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->h(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Ljava/util/List;Landroid/content/DialogInterface;I)V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :pswitch_5
    check-cast v10, Lcom/stryker/terminal/ui/customize/ColorItem;

    .line 534
    .line 535
    check-cast v9, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    .line 536
    .line 537
    check-cast v8, Lj5/l;

    .line 538
    .line 539
    invoke-static {v10, v9, v8, v1, v2}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->k(Lcom/stryker/terminal/ui/customize/ColorItem;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Lj5/l;Landroid/content/DialogInterface;I)V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
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
