.class public final synthetic Li4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lt2/m;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lt2/m;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Li4/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Li4/a;->b:Lt2/m;

    .line 7
    .line 8
    iput p2, p0, Li4/a;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget p1, p0, Li4/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Li4/a;->b:Lt2/m;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v6, p0, Li4/a;->c:I

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p1, Landroid/app/Dialog;

    .line 14
    .line 15
    iget-object v0, v1, Lt2/m;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0d0026

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v2, -0x1

    .line 47
    const/4 v4, -0x2

    .line 48
    invoke-virtual {v0, v2, v4}, Landroid/view/Window;->setLayout(II)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0591

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v2, v0

    .line 59
    check-cast v2, Landroid/widget/AutoCompleteTextView;

    .line 60
    .line 61
    const v0, 0x7f0a01c9

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v4, v0

    .line 69
    check-cast v4, Landroid/widget/AutoCompleteTextView;

    .line 70
    .line 71
    const v0, 0x7f0a01ac

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v5, v0

    .line 79
    check-cast v5, Landroid/widget/AutoCompleteTextView;

    .line 80
    .line 81
    const v0, 0x7f0a0196

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object v7, v0

    .line 89
    check-cast v7, Landroid/widget/AutoCompleteTextView;

    .line 90
    .line 91
    const v0, 0x7f0a0657

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/TextView;

    .line 99
    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    iget-object v9, v1, Lt2/m;->c:Landroid/content/Context;

    .line 106
    .line 107
    const v10, 0x7f13010d

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v9, " \u2014 "

    .line 118
    .line 119
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v9, v1, Lt2/m;->b:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    check-cast v9, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 129
    .line 130
    invoke-virtual {v9}, Lcom/zalexdev/stryker/custom/UsbDev;->getPid()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, v1, Lt2/m;->b:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/UsbDev;->getIfc()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v1, Lt2/m;->b:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/UsbDev;->getIfc()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v8, "wlan0"

    .line 172
    .line 173
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    .line 179
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 184
    .line 185
    new-instance v3, Ld4/d;

    .line 186
    .line 187
    const/4 v8, 0x5

    .line 188
    invoke-direct {v3, v1, v2, v8}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    .line 196
    .line 197
    :goto_0
    iget-object v0, v1, Lt2/m;->b:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/zalexdev/stryker/custom/UsbDev;->commandMon:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, v1, Lt2/m;->b:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 217
    .line 218
    iget-object v0, v0, Lcom/zalexdev/stryker/custom/UsbDev;->commandDis:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, v1, Lt2/m;->b:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/UsbDev;->getPid()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 239
    .line 240
    iget-object v3, v1, Lt2/m;->c:Landroid/content/Context;

    .line 241
    .line 242
    sget v8, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->f:I

    .line 243
    .line 244
    new-instance v8, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string v9, "ip link set $ifc down;echo \'4\' > /sys/module/wlan/parameters/con_mode;ip link set $ifc up"

    .line 250
    .line 251
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    const-string v9, "ip link set $ifc down;iw dev $ifc set type monitor;ip link set $ifc up"

    .line 255
    .line 256
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    const-string v9, "airmon-ng start $ifc $ch"

    .line 260
    .line 261
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    const v9, 0x1090003

    .line 265
    .line 266
    .line 267
    invoke-direct {v0, v3, v9, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 274
    .line 275
    iget-object v3, v1, Lt2/m;->c:Landroid/content/Context;

    .line 276
    .line 277
    new-instance v8, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v10, "ip link set $ifc down;echo \'0\' > /sys/module/wlan/parameters/con_mode;ip link set $ifc up;svc wifi enable"

    .line 283
    .line 284
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    const-string v10, "ip link set $ifc down;iw dev $ifc set type managed;ip link set $ifc up"

    .line 288
    .line 289
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    const-string v10, "airmon-ng stop $ifc"

    .line 293
    .line 294
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v3, v9, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    .line 302
    .line 303
    const v0, 0x7f0a0070

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    move-object v8, v0

    .line 311
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 312
    .line 313
    const v0, 0x7f0a00f3

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 321
    .line 322
    iget-object v3, v1, Lt2/m;->c:Landroid/content/Context;

    .line 323
    .line 324
    const v9, 0x7f130113

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .line 333
    .line 334
    iget-object v3, v1, Lt2/m;->c:Landroid/content/Context;

    .line 335
    .line 336
    const v9, 0x7f0801a5

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v8, v3}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 344
    .line 345
    .line 346
    new-instance v3, Lj2/i;

    .line 347
    .line 348
    const/16 v9, 0xc

    .line 349
    .line 350
    invoke-direct {v3, p1, v9}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    .line 355
    .line 356
    new-instance v9, Li4/b;

    .line 357
    .line 358
    move-object v0, v9

    .line 359
    move-object v3, v4

    .line 360
    move-object v4, v5

    .line 361
    move-object v5, v7

    .line 362
    move-object v7, p1

    .line 363
    invoke-direct/range {v0 .. v7}, Li4/b;-><init>(Lt2/m;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;ILandroid/app/Dialog;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :pswitch_0
    iget-object p1, v1, Lt2/m;->e:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast p1, Ll4/l;

    .line 376
    .line 377
    iget-object p1, p1, Ll4/l;->e:Ll4/m;

    .line 378
    .line 379
    iget-object v0, v1, Lt2/m;->b:Ljava/util/ArrayList;

    .line 380
    .line 381
    iget v2, p0, Li4/a;->c:I

    .line 382
    .line 383
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 388
    .line 389
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/UsbDev;->getIfc()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v4, "---"

    .line 405
    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/UsbDev;->getPid()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/UsbDev;->getCommandMon()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/UsbDev;->getCommandDis()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    iget-object p1, p1, Ll4/m;->b:Ll4/l;

    .line 441
    .line 442
    const-string v3, "devices"

    .line 443
    .line 444
    invoke-virtual {p1, v3}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    if-eqz v5, :cond_1

    .line 453
    .line 454
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    invoke-virtual {p1, v4, v3}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    :cond_1
    iget-object p1, v1, Lt2/m;->b:Ljava/util/ArrayList;

    .line 461
    .line 462
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/k0;->notifyItemRemoved(I)V

    .line 466
    .line 467
    .line 468
    return-void

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
