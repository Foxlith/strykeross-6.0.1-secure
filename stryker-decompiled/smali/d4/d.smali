.class public final synthetic Ld4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ld4/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ld4/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Ld4/d;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Ld4/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Ld4/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Ld4/d;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v4, Landroid/widget/TextView;

    .line 13
    .line 14
    check-cast v3, [I

    .line 15
    .line 16
    sget v0, Lo4/d0;->g:I

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Timeout: "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    aget v1, v3, v2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    check-cast v4, Lcom/zalexdev/stryker/wifi/Wifi;

    .line 39
    .line 40
    check-cast v3, Ljava/lang/Runnable;

    .line 41
    .line 42
    sget v0, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 43
    .line 44
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget-object v0, v4, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    :pswitch_1
    check-cast v4, Lcom/zalexdev/stryker/wifi/Wifi;

    .line 63
    .line 64
    check-cast v3, Ljava/util/ArrayList;

    .line 65
    .line 66
    iget-object v0, v4, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, v4, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/lit8 v1, v0, 0x1

    .line 80
    .line 81
    new-array v1, v1, [Ljava/lang/String;

    .line 82
    .line 83
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-ge v2, v5, :cond_2

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Ljava/lang/String;

    .line 94
    .line 95
    aput-object v5, v1, v2

    .line 96
    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object v2, v4, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    .line 101
    .line 102
    const v3, 0x7f130163

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    aput-object v2, v1, v0

    .line 110
    .line 111
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 112
    .line 113
    iget-object v2, v4, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    .line 114
    .line 115
    invoke-direct {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    const v2, 0x7f130538

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v2, Lcom/stryker/terminal/ui/customize/a;

    .line 126
    .line 127
    const/16 v3, 0x15

    .line 128
    .line 129
    invoke-direct {v2, v4, v1, v3}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_1
    return-void

    .line 140
    :pswitch_2
    check-cast v4, Lcom/zalexdev/stryker/wifi/Wifi;

    .line 141
    .line 142
    check-cast v3, Ljava/lang/String;

    .line 143
    .line 144
    iget-object v0, v4, Lcom/zalexdev/stryker/wifi/Wifi;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v4, Lcom/zalexdev/stryker/wifi/Wifi;->h:Lcom/google/android/material/textview/MaterialTextView;

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_3
    check-cast v4, Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 156
    .line 157
    check-cast v3, Ljava/lang/String;

    .line 158
    .line 159
    iget-object v0, v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_4
    check-cast v4, Ll4/h;

    .line 166
    .line 167
    check-cast v3, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v4, v3}, Ll4/h;->b(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_5
    move-object v6, v4

    .line 174
    check-cast v6, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 175
    .line 176
    check-cast v3, Lf3/b;

    .line 177
    .line 178
    iget-object v0, v6, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->c:Lv1/c;

    .line 179
    .line 180
    invoke-virtual {v0}, Lv1/c;->k()V

    .line 181
    .line 182
    .line 183
    iget-object v0, v6, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->c:Lv1/c;

    .line 184
    .line 185
    invoke-virtual {v0, v3}, Lv1/c;->a(Lf3/b;)Z

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    iget-object v0, v6, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->c:Lv1/c;

    .line 190
    .line 191
    invoke-virtual {v0}, Lv1/c;->g()Lf3/c;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    new-instance v0, Lf/q0;

    .line 196
    .line 197
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-direct {v0, v1}, Lf/q0;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Lf/q0;->H()Le3/b;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    new-instance v1, Lj2/d;

    .line 213
    .line 214
    const/4 v10, 0x3

    .line 215
    move-object v5, v1

    .line 216
    invoke-direct/range {v5 .. v10}, Lj2/d;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :pswitch_6
    check-cast v4, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;

    .line 224
    .line 225
    check-cast v3, Landroid/widget/AutoCompleteTextView;

    .line 226
    .line 227
    iget-object v0, v4, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->a:Ll4/l;

    .line 228
    .line 229
    invoke-virtual {v0}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v1, v4, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_5

    .line 240
    .line 241
    iget-object v1, v4, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->c:Landroidx/fragment/app/a0;

    .line 242
    .line 243
    if-eqz v1, :cond_5

    .line 244
    .line 245
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_4

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_4
    iget-object v1, v4, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->c:Landroidx/fragment/app/a0;

    .line 253
    .line 254
    new-instance v2, Lv3/g;

    .line 255
    .line 256
    const/16 v5, 0x11

    .line 257
    .line 258
    invoke-direct {v2, v4, v3, v0, v5}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    .line 263
    .line 264
    :cond_5
    :goto_2
    return-void

    .line 265
    :pswitch_7
    check-cast v4, Lt2/m;

    .line 266
    .line 267
    check-cast v3, Landroid/widget/AutoCompleteTextView;

    .line 268
    .line 269
    iget-object v0, v4, Lt2/m;->e:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v0, Ll4/l;

    .line 272
    .line 273
    invoke-virtual {v0}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iget-object v1, v4, Lt2/m;->d:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v1, Landroid/app/Activity;

    .line 280
    .line 281
    new-instance v2, Lv3/g;

    .line 282
    .line 283
    const/16 v5, 0x10

    .line 284
    .line 285
    invoke-direct {v2, v4, v3, v0, v5}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :pswitch_8
    check-cast v4, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 293
    .line 294
    check-cast v3, Lf/n;

    .line 295
    .line 296
    const-string v0, ",if=none,id=aioprobe,format=raw,cache=writeback,aio=io_uring"

    .line 297
    .line 298
    iget-object v5, v4, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 299
    .line 300
    const-string v6, "none"

    .line 301
    .line 302
    const-string v7, "file="

    .line 303
    .line 304
    const-string v8, "io_uring"

    .line 305
    .line 306
    if-nez v5, :cond_6

    .line 307
    .line 308
    new-instance v0, Lf4/i;

    .line 309
    .line 310
    const-string v5, "no context"

    .line 311
    .line 312
    invoke-direct {v0, v1, v5, v2}, Lf4/i;-><init>(ILjava/lang/String;Z)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_8

    .line 316
    .line 317
    :cond_6
    invoke-static {v5}, Li5/a;->y0(Landroid/content/Context;)Ljava/io/File;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    if-nez v10, :cond_7

    .line 326
    .line 327
    new-instance v0, Lf4/i;

    .line 328
    .line 329
    const-string v5, "engine not installed"

    .line 330
    .line 331
    invoke-direct {v0, v1, v5, v2}, Lf4/i;-><init>(ILjava/lang/String;Z)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_8

    .line 335
    .line 336
    :cond_7
    const/4 v10, 0x0

    .line 337
    :try_start_0
    invoke-static {v5}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    .line 342
    .line 343
    .line 344
    move-result v12

    .line 345
    if-nez v12, :cond_8

    .line 346
    .line 347
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    if-nez v12, :cond_8

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_8
    new-instance v12, Ljava/io/File;

    .line 355
    .line 356
    const-string v13, ".aio-probe.img"

    .line 357
    .line 358
    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    new-instance v11, Ljava/io/RandomAccessFile;

    .line 362
    .line 363
    const-string v13, "rw"

    .line 364
    .line 365
    invoke-direct {v11, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 366
    .line 367
    .line 368
    const-wide/32 v13, 0x100000

    .line 369
    .line 370
    .line 371
    :try_start_1
    invoke-virtual {v11, v13, v14}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    .line 373
    .line 374
    :try_start_2
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 375
    .line 376
    .line 377
    move-object v10, v12

    .line 378
    goto :goto_4

    .line 379
    :catchall_0
    move-exception v12

    .line 380
    :try_start_3
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :catchall_1
    move-exception v11

    .line 385
    :try_start_4
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 386
    .line 387
    .line 388
    :goto_3
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 389
    :catchall_2
    :goto_4
    if-nez v10, :cond_a

    .line 390
    .line 391
    :try_start_5
    new-instance v0, Lf4/i;

    .line 392
    .line 393
    const-string v5, "no writable probe file"

    .line 394
    .line 395
    invoke-direct {v0, v1, v5, v2}, Lf4/i;-><init>(ILjava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 396
    .line 397
    .line 398
    if-eqz v10, :cond_f

    .line 399
    .line 400
    :cond_9
    :goto_5
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 401
    .line 402
    .line 403
    goto/16 :goto_8

    .line 404
    .line 405
    :catchall_3
    move-exception v0

    .line 406
    goto/16 :goto_6

    .line 407
    .line 408
    :cond_a
    :try_start_6
    new-instance v11, Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v12

    .line 417
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    const-string v12, "-M"

    .line 421
    .line 422
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    const-string v12, "-display"

    .line 429
    .line 430
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    const-string v6, "-nodefaults"

    .line 437
    .line 438
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    const-string v6, "-no-user-config"

    .line 442
    .line 443
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    const-string v6, "-drive"

    .line 447
    .line 448
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v7

    .line 460
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    const-string v0, "QEMU accepted aio=io_uring"

    .line 474
    .line 475
    const-string v6, "QEMU refused aio=io_uring"

    .line 476
    .line 477
    invoke-static {v5, v9, v11, v0, v6}, Li5/a;->Q0(Landroid/content/Context;Ljava/io/File;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lf4/i;

    .line 478
    .line 479
    .line 480
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 481
    iget-object v5, v0, Lf4/i;->b:Ljava/lang/String;

    .line 482
    .line 483
    :try_start_7
    iget-boolean v6, v0, Lf4/i;->a:Z

    .line 484
    .line 485
    if-nez v6, :cond_b

    .line 486
    .line 487
    goto :goto_5

    .line 488
    :cond_b
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 489
    .line 490
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    const-string v7, "not supported"

    .line 495
    .line 496
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    if-nez v7, :cond_c

    .line 501
    .line 502
    const-string v7, "invalid parameter"

    .line 503
    .line 504
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 505
    .line 506
    .line 507
    move-result v7

    .line 508
    if-nez v7, :cond_c

    .line 509
    .line 510
    const-string v7, "failed to"

    .line 511
    .line 512
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 513
    .line 514
    .line 515
    move-result v7

    .line 516
    if-nez v7, :cond_c

    .line 517
    .line 518
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    if-eqz v6, :cond_9

    .line 523
    .line 524
    :cond_c
    new-instance v0, Lf4/i;

    .line 525
    .line 526
    invoke-direct {v0, v1, v5, v2}, Lf4/i;-><init>(ILjava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 527
    .line 528
    .line 529
    goto/16 :goto_5

    .line 530
    .line 531
    :goto_6
    :try_start_8
    const-string v5, "VmProbe"

    .line 532
    .line 533
    const-string v6, "probe failed"

    .line 534
    .line 535
    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    .line 537
    .line 538
    new-instance v5, Lf4/i;

    .line 539
    .line 540
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v6

    .line 544
    if-nez v6, :cond_d

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    goto :goto_7

    .line 551
    :catchall_4
    move-exception v0

    .line 552
    goto :goto_b

    .line 553
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    :goto_7
    invoke-direct {v5, v1, v0, v2}, Lf4/i;-><init>(ILjava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 558
    .line 559
    .line 560
    if-eqz v10, :cond_e

    .line 561
    .line 562
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 563
    .line 564
    .line 565
    :cond_e
    move-object v0, v5

    .line 566
    :cond_f
    :goto_8
    iget-object v2, v4, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 567
    .line 568
    iget-boolean v5, v0, Lf4/i;->a:Z

    .line 569
    .line 570
    if-eqz v2, :cond_11

    .line 571
    .line 572
    if-eqz v5, :cond_10

    .line 573
    .line 574
    goto :goto_9

    .line 575
    :cond_10
    const/4 v1, -0x1

    .line 576
    :goto_9
    const-string v6, "rootless_io_uring_ok"

    .line 577
    .line 578
    invoke-virtual {v2, v1, v6}, Ll4/l;->c0(ILjava/lang/String;)V

    .line 579
    .line 580
    .line 581
    :cond_11
    const-string v1, "rootless_aio"

    .line 582
    .line 583
    iget-object v2, v4, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 584
    .line 585
    if-eqz v5, :cond_12

    .line 586
    .line 587
    invoke-virtual {v2, v1, v8}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    goto :goto_a

    .line 591
    :cond_12
    const-string v5, "threads"

    .line 592
    .line 593
    invoke-virtual {v2, v1, v5}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    :goto_a
    new-instance v1, Lv3/g;

    .line 597
    .line 598
    const/16 v2, 0xd

    .line 599
    .line 600
    invoke-direct {v1, v4, v3, v0, v2}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v4, v1}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->j(Ljava/lang/Runnable;)V

    .line 604
    .line 605
    .line 606
    return-void

    .line 607
    :goto_b
    if-eqz v10, :cond_13

    .line 608
    .line 609
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 610
    .line 611
    .line 612
    :cond_13
    throw v0

    .line 613
    :pswitch_9
    check-cast v4, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;

    .line 614
    .line 615
    check-cast v3, Ljava/lang/String;

    .line 616
    .line 617
    iget-object v0, v4, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->b:Ll4/l;

    .line 618
    .line 619
    invoke-virtual {v0}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    if-nez v1, :cond_14

    .line 628
    .line 629
    goto :goto_c

    .line 630
    :cond_14
    new-instance v2, Lv3/g;

    .line 631
    .line 632
    const/16 v5, 0xb

    .line 633
    .line 634
    invoke-direct {v2, v4, v3, v0, v5}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 638
    .line 639
    .line 640
    :goto_c
    return-void

    .line 641
    :pswitch_a
    check-cast v4, Landroid/content/Context;

    .line 642
    .line 643
    check-cast v3, Lf4/d;

    .line 644
    .line 645
    new-instance v0, Ljava/io/File;

    .line 646
    .line 647
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    const-string v6, "stryker-update.apk"

    .line 652
    .line 653
    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    const-string v5, "notification"

    .line 657
    .line 658
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v5

    .line 662
    move-object v11, v5

    .line 663
    check-cast v11, Landroid/app/NotificationManager;

    .line 664
    .line 665
    new-instance v5, Lv/z;

    .line 666
    .line 667
    const-string v6, "stryker_news_channel"

    .line 668
    .line 669
    invoke-direct {v5, v4, v6}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    iget-object v6, v5, Lv/z;->s:Landroid/app/Notification;

    .line 673
    .line 674
    const v7, 0x7f08009b

    .line 675
    .line 676
    .line 677
    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 678
    .line 679
    const v6, 0x7f130506

    .line 680
    .line 681
    .line 682
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v6

    .line 686
    invoke-static {v6}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    iput-object v6, v5, Lv/z;->e:Ljava/lang/CharSequence;

    .line 691
    .line 692
    const/4 v6, 0x2

    .line 693
    invoke-virtual {v5, v6}, Lv/z;->e(I)V

    .line 694
    .line 695
    .line 696
    const/16 v12, 0x8

    .line 697
    .line 698
    invoke-virtual {v5, v12}, Lv/z;->e(I)V

    .line 699
    .line 700
    .line 701
    const/16 v6, 0x64

    .line 702
    .line 703
    invoke-virtual {v5, v6, v2, v1}, Lv/z;->f(IIZ)V

    .line 704
    .line 705
    .line 706
    const/16 v2, 0x1f3e

    .line 707
    .line 708
    if-eqz v11, :cond_15

    .line 709
    .line 710
    :try_start_9
    invoke-virtual {v5}, Lv/z;->a()Landroid/app/Notification;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    invoke-virtual {v11, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0

    .line 715
    .line 716
    .line 717
    :catch_0
    :cond_15
    iget-object v6, v3, Lf4/d;->c:Ljava/lang/String;

    .line 718
    .line 719
    iget-object v7, v3, Lf4/d;->d:Ljava/lang/String;

    .line 720
    .line 721
    iget-wide v8, v3, Lf4/d;->e:J

    .line 722
    .line 723
    new-instance v10, Lp2/i;

    .line 724
    .line 725
    const/4 v3, 0x4

    .line 726
    invoke-direct {v10, v5, v11, v3}, Lp2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 727
    .line 728
    .line 729
    move-object v5, v6

    .line 730
    move-object v6, v0

    .line 731
    invoke-static/range {v5 .. v10}, Lf4/j;->d(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLf4/h;)Lf4/i;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    if-eqz v11, :cond_16

    .line 736
    .line 737
    invoke-virtual {v11, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 738
    .line 739
    .line 740
    :cond_16
    iget-boolean v2, v3, Lf4/i;->a:Z

    .line 741
    .line 742
    if-nez v2, :cond_17

    .line 743
    .line 744
    new-instance v0, Landroid/os/Handler;

    .line 745
    .line 746
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 751
    .line 752
    .line 753
    new-instance v1, Ly/n;

    .line 754
    .line 755
    const v2, 0x7f130508

    .line 756
    .line 757
    .line 758
    invoke-direct {v1, v2, v12, v4}, Ly/n;-><init>(IILjava/lang/Object;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 762
    .line 763
    .line 764
    goto :goto_d

    .line 765
    :cond_17
    new-instance v2, Ll4/l;

    .line 766
    .line 767
    invoke-direct {v2, v4}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    iget-object v2, v2, Ll4/l;->f:Lu3/g;

    .line 775
    .line 776
    const-string v3, "Installing update"

    .line 777
    .line 778
    invoke-virtual {v2, v1, v3}, Lu3/g;->e(ILjava/lang/String;)V

    .line 779
    .line 780
    .line 781
    new-instance v2, Landroid/content/Intent;

    .line 782
    .line 783
    const-string v3, "android.intent.action.VIEW"

    .line 784
    .line 785
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    new-instance v3, Ljava/io/File;

    .line 789
    .line 790
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    const-string v0, "com.zalexdev.stryker.provider"

    .line 794
    .line 795
    invoke-static {v4, v0, v3}, Landroidx/core/content/FileProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    const-string v3, "application/vnd.android.package-archive"

    .line 800
    .line 801
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    .line 803
    .line 804
    const/high16 v0, 0x10000000

    .line 805
    .line 806
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 810
    .line 811
    .line 812
    :try_start_a
    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_1

    .line 813
    .line 814
    .line 815
    goto :goto_d

    .line 816
    :catch_1
    move-exception v0

    .line 817
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 818
    .line 819
    .line 820
    :goto_d
    return-void

    .line 821
    :pswitch_b
    check-cast v4, Lv/f;

    .line 822
    .line 823
    check-cast v3, Ljava/util/List;

    .line 824
    .line 825
    iget-object v0, v4, Lv/f;->b:Ljava/lang/Object;

    .line 826
    .line 827
    check-cast v0, Lcom/zalexdev/stryker/dashboard/NewsFragment;

    .line 828
    .line 829
    sget v1, Lcom/zalexdev/stryker/dashboard/NewsFragment;->c:I

    .line 830
    .line 831
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 832
    .line 833
    .line 834
    move-result v1

    .line 835
    if-eqz v1, :cond_18

    .line 836
    .line 837
    iget-object v0, v0, Lcom/zalexdev/stryker/dashboard/NewsFragment;->b:Ls2/e;

    .line 838
    .line 839
    if-eqz v0, :cond_18

    .line 840
    .line 841
    iget-object v1, v0, Ls2/e;->d:Ljava/lang/Object;

    .line 842
    .line 843
    check-cast v1, Ljava/util/List;

    .line 844
    .line 845
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 846
    .line 847
    .line 848
    iget-object v1, v0, Ls2/e;->d:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v1, Ljava/util/List;

    .line 851
    .line 852
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 856
    .line 857
    .line 858
    :cond_18
    return-void

    .line 859
    :pswitch_c
    check-cast v4, Lcom/zalexdev/stryker/nuclei/InstallNuclei;

    .line 860
    .line 861
    check-cast v3, Ljava/lang/String;

    .line 862
    .line 863
    iget-object v0, v4, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->i:Landroid/widget/TextView;

    .line 864
    .line 865
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    .line 867
    .line 868
    return-void

    .line 869
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
.end method
