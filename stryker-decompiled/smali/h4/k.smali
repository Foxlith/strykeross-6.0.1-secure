.class public final synthetic Lh4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/settings/VmSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lh4/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lh4/k;->b:Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lh4/k;->a:I

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    const-string v1, "  \u2605"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const v3, 0x104000a

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    iget-object v6, p0, Lh4/k;->b:Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->p:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    xor-int/2addr v0, v5

    .line 25
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->n:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    xor-int/2addr v0, v5

    .line 36
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 41
    .line 42
    const-string p1, "off"

    .line 43
    .line 44
    const-string v0, "impdef"

    .line 45
    .line 46
    const-string v1, "qarma"

    .line 47
    .line 48
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const v0, 0x7f1306e1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const v1, 0x7f1306e0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const v2, 0x7f1306e2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 78
    .line 79
    invoke-static {v1}, Li5/a;->u0(Ll4/l;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->f(Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    new-instance v2, Lh4/m;

    .line 88
    .line 89
    const/4 v3, 0x2

    .line 90
    invoke-direct {v2, v6, p1, v3}, Lh4/m;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;[Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    const p1, 0x7f1306df

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, p1, v0, v1, v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->i(I[Ljava/lang/String;ILh4/n;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_2
    const-string p1, "threads"

    .line 101
    .line 102
    const-string v0, "io_uring"

    .line 103
    .line 104
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string v0, "threads \u2014 compatible (default)"

    .line 109
    .line 110
    const-string v1, "io_uring \u2014 faster if supported"

    .line 111
    .line 112
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 117
    .line 118
    invoke-static {v1}, Li5/a;->I0(Ll4/l;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->f(Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    new-instance v2, Lh4/m;

    .line 127
    .line 128
    invoke-direct {v2, v6, p1, v4}, Lh4/m;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;[Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    const p1, 0x7f13069d

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, p1, v0, v1, v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->i(I[Ljava/lang/String;ILh4/n;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_3
    const-string p1, "writeback"

    .line 139
    .line 140
    const-string v0, "unsafe"

    .line 141
    .line 142
    const-string v1, "writethrough"

    .line 143
    .line 144
    const-string v2, "none"

    .line 145
    .line 146
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v0, "writeback \u2014 balanced (default)"

    .line 151
    .line 152
    const-string v1, "unsafe \u2014 fastest, risky"

    .line 153
    .line 154
    const-string v2, "writethrough \u2014 safe, slower"

    .line 155
    .line 156
    const-string v3, "none \u2014 direct, bypass host cache"

    .line 157
    .line 158
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 163
    .line 164
    invoke-static {v1}, Li5/a;->h(Ll4/l;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1, p1}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->f(Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    new-instance v2, Lh4/m;

    .line 173
    .line 174
    invoke-direct {v2, v6, p1, v5}, Lh4/m;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;[Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    const p1, 0x7f1306c2

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, p1, v0, v1, v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->i(I[Ljava/lang/String;ILh4/n;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :pswitch_4
    sget p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 190
    .line 191
    iget-object v0, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 192
    .line 193
    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    const v0, 0x7f1306ad

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const v0, 0x7f1306aa

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    new-instance v0, Lcom/stryker/terminal/a;

    .line 211
    .line 212
    const/4 v1, 0x4

    .line 213
    invoke-direct {v0, v6, v1}, Lcom/stryker/terminal/a;-><init>(Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const/high16 v0, 0x1040000

    .line 221
    .line 222
    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :pswitch_5
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 231
    .line 232
    const-string v0, "rootless_cpus"

    .line 233
    .line 234
    invoke-static {}, Li5/a;->F0()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {p1, v1, v0}, Ll4/l;->c0(ILjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 242
    .line 243
    iget-object v0, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 244
    .line 245
    invoke-static {v0}, Li5/a;->G0(Landroid/content/Context;)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    const-string v1, "rootless_ram"

    .line 250
    .line 251
    invoke-virtual {p1, v0, v1}, Ll4/l;->c0(ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h()V

    .line 255
    .line 256
    .line 257
    const p1, 0x7f1306e8

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iget-object v0, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 265
    .line 266
    if-eqz v0, :cond_0

    .line 267
    .line 268
    iget-object v1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->a:Landroidx/fragment/app/a0;

    .line 269
    .line 270
    if-eqz v1, :cond_0

    .line 271
    .line 272
    invoke-virtual {v0, v1, p1}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_0
    return-void

    .line 276
    :pswitch_6
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 277
    .line 278
    invoke-static {p1}, Li5/a;->q0(Landroid/content/Context;)I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    new-instance v2, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .line 286
    .line 287
    const/16 v3, 0x8

    .line 288
    .line 289
    new-array v5, v3, [I

    .line 290
    .line 291
    fill-array-data v5, :array_0

    .line 292
    .line 293
    .line 294
    move v7, v4

    .line 295
    :goto_0
    if-ge v7, v3, :cond_2

    .line 296
    .line 297
    aget v8, v5, v7

    .line 298
    .line 299
    if-gt v8, p1, :cond_1

    .line 300
    .line 301
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 309
    .line 310
    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-eqz p1, :cond_3

    .line 316
    .line 317
    const/16 p1, 0x200

    .line 318
    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    :cond_3
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 327
    .line 328
    iget-object v3, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 329
    .line 330
    invoke-static {p1, v3}, Li5/a;->E(Landroid/content/Context;Ll4/l;)I

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    iget-object v3, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 335
    .line 336
    invoke-static {v3}, Li5/a;->G0(Landroid/content/Context;)I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    new-array v5, v5, [Ljava/lang/String;

    .line 345
    .line 346
    move v7, v4

    .line 347
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    if-ge v4, v8, :cond_6

    .line 352
    .line 353
    new-instance v8, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v9, " MB"

    .line 366
    .line 367
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    check-cast v9, Ljava/lang/Integer;

    .line 375
    .line 376
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 377
    .line 378
    .line 379
    move-result v9

    .line 380
    if-ne v9, v3, :cond_4

    .line 381
    .line 382
    move-object v9, v1

    .line 383
    goto :goto_2

    .line 384
    :cond_4
    move-object v9, v0

    .line 385
    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    aput-object v8, v5, v4

    .line 393
    .line 394
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v8

    .line 398
    check-cast v8, Ljava/lang/Integer;

    .line 399
    .line 400
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    if-ne v8, p1, :cond_5

    .line 405
    .line 406
    move v7, v4

    .line 407
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 408
    .line 409
    goto :goto_1

    .line 410
    :cond_6
    new-instance p1, Lp2/i;

    .line 411
    .line 412
    const/4 v0, 0x5

    .line 413
    invoke-direct {p1, v6, v2, v0}, Lp2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 414
    .line 415
    .line 416
    const v0, 0x7f1306e5

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6, v0, v5, v7, p1}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->i(I[Ljava/lang/String;ILh4/n;)V

    .line 420
    .line 421
    .line 422
    return-void

    .line 423
    :pswitch_7
    sget p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 424
    .line 425
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    invoke-static {}, Li5/a;->A()I

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    new-array v2, p1, [Ljava/lang/String;

    .line 433
    .line 434
    :goto_3
    if-ge v4, p1, :cond_8

    .line 435
    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .line 440
    .line 441
    add-int/lit8 v7, v4, 0x1

    .line 442
    .line 443
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-static {}, Li5/a;->F0()I

    .line 447
    .line 448
    .line 449
    move-result v8

    .line 450
    if-ne v7, v8, :cond_7

    .line 451
    .line 452
    move-object v8, v1

    .line 453
    goto :goto_4

    .line 454
    :cond_7
    move-object v8, v0

    .line 455
    :goto_4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    aput-object v3, v2, v4

    .line 463
    .line 464
    move v4, v7

    .line 465
    goto :goto_3

    .line 466
    :cond_8
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 467
    .line 468
    invoke-static {p1}, Li5/a;->D(Ll4/l;)I

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    sub-int/2addr p1, v5

    .line 473
    new-instance v0, Lv/f;

    .line 474
    .line 475
    const/16 v1, 0x12

    .line 476
    .line 477
    invoke-direct {v0, v6, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    .line 478
    .line 479
    .line 480
    const v1, 0x7f1306c5

    .line 481
    .line 482
    .line 483
    invoke-virtual {v6, v1, v2, p1, v0}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->i(I[Ljava/lang/String;ILh4/n;)V

    .line 484
    .line 485
    .line 486
    return-void

    .line 487
    :pswitch_8
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 488
    .line 489
    if-eqz p1, :cond_9

    .line 490
    .line 491
    const-string v0, "rootless_safe_boot"

    .line 492
    .line 493
    invoke-virtual {p1, v0, v4}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 494
    .line 495
    .line 496
    :cond_9
    const p1, 0x7f1306eb

    .line 497
    .line 498
    .line 499
    invoke-virtual {v6, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    iget-object v0, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 504
    .line 505
    if-eqz v0, :cond_a

    .line 506
    .line 507
    iget-object v1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->a:Landroidx/fragment/app/a0;

    .line 508
    .line 509
    if-eqz v1, :cond_a

    .line 510
    .line 511
    invoke-virtual {v0, v1, p1}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    :cond_a
    new-instance p1, Ljava/lang/Thread;

    .line 515
    .line 516
    new-instance v0, Landroidx/activity/b;

    .line 517
    .line 518
    const/16 v1, 0x1b

    .line 519
    .line 520
    invoke-direct {v0, v6, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 521
    .line 522
    .line 523
    const-string v1, "vm-restart"

    .line 524
    .line 525
    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 529
    .line 530
    .line 531
    return-void

    .line 532
    :pswitch_9
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->s:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 533
    .line 534
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    xor-int/2addr v0, v5

    .line 539
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :pswitch_a
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->r:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 544
    .line 545
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    xor-int/2addr v0, v5

    .line 550
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 551
    .line 552
    .line 553
    return-void

    .line 554
    :pswitch_b
    iget-object p1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->q:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 555
    .line 556
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    xor-int/2addr v0, v5

    .line 561
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 562
    .line 563
    .line 564
    return-void

    .line 565
    :pswitch_c
    sget p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 566
    .line 567
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 571
    .line 572
    iget-object v0, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 573
    .line 574
    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 575
    .line 576
    .line 577
    const v0, 0x7f1306d2

    .line 578
    .line 579
    .line 580
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    iget-object v0, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 585
    .line 586
    invoke-static {v0}, Li5/a;->C(Landroid/content/Context;)J

    .line 587
    .line 588
    .line 589
    move-result-wide v0

    .line 590
    invoke-static {v0, v1}, Li5/a;->e0(J)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    iget-object v1, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 595
    .line 596
    invoke-static {v1}, Li5/a;->x(Landroid/content/Context;)J

    .line 597
    .line 598
    .line 599
    move-result-wide v4

    .line 600
    invoke-static {v4, v5}, Li5/a;->e0(J)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    iget-object v4, v6, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 605
    .line 606
    invoke-static {v4}, Li5/a;->i0(Landroid/content/Context;)J

    .line 607
    .line 608
    .line 609
    move-result-wide v4

    .line 610
    invoke-static {v4, v5}, Li5/a;->e0(J)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    filled-new-array {v0, v1, v4}, [Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    const v1, 0x7f1306ca

    .line 619
    .line 620
    .line 621
    invoke-virtual {v6, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    invoke-virtual {p1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 630
    .line 631
    .line 632
    move-result-object p1

    .line 633
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 634
    .line 635
    .line 636
    return-void

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    :array_0
    .array-data 4
        0x200
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
    .end array-data
.end method
