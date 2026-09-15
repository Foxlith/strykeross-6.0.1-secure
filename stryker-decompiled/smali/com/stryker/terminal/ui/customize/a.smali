.class public final synthetic Lcom/stryker/terminal/ui/customize/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lcom/stryker/terminal/ui/other/SetupActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/stryker/terminal/ui/customize/a;->a:I

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/stryker/terminal/ui/customize/a;->a:I

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 16

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
    iget v3, v0, Lcom/stryker/terminal/ui/customize/a;->a:I

    .line 8
    .line 9
    const-string v4, "clipboard"

    .line 10
    .line 11
    const v6, 0x7f0a00f1

    .line 12
    .line 13
    .line 14
    const v7, 0x7f0a0492

    .line 15
    .line 16
    .line 17
    const v8, 0x7f0a069b

    .line 18
    .line 19
    .line 20
    const v9, 0x7f0a0657

    .line 21
    .line 22
    .line 23
    const/4 v10, -0x2

    .line 24
    const/4 v11, -0x1

    .line 25
    const v12, 0x7f0d0072

    .line 26
    .line 27
    .line 28
    const/4 v13, 0x1

    .line 29
    const/4 v14, 0x0

    .line 30
    iget-object v15, v0, Lcom/stryker/terminal/ui/customize/a;->b:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v5, v0, Lcom/stryker/terminal/ui/customize/a;->c:Ljava/lang/Object;

    .line 33
    .line 34
    packed-switch v3, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    check-cast v5, Lcom/zalexdev/stryker/wifi/Wifi;

    .line 38
    .line 39
    check-cast v15, [Ljava/lang/String;

    .line 40
    .line 41
    sget v1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    array-length v1, v15

    .line 47
    sub-int/2addr v1, v13

    .line 48
    if-ne v2, v1, :cond_1

    .line 49
    .line 50
    new-instance v1, Landroid/app/Dialog;

    .line 51
    .line 52
    iget-object v2, v5, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v12}, Landroid/app/Dialog;->setContentView(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 67
    .line 68
    invoke-direct {v3, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v11, v10}, Landroid/view/Window;->setLayout(II)V

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 88
    .line 89
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 94
    .line 95
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 100
    .line 101
    const v7, 0x7f130163

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lj2/i;

    .line 108
    .line 109
    const/16 v7, 0xf

    .line 110
    .line 111
    invoke-direct {v2, v1, v7}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    new-instance v2, Lj2/j;

    .line 118
    .line 119
    const/16 v6, 0xa

    .line 120
    .line 121
    invoke-direct {v2, v5, v3, v1, v6}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    aget-object v1, v15, v2

    .line 132
    .line 133
    iget-object v2, v5, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Ll4/l;->n0(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iput-object v1, v5, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v2, v5, Lcom/zalexdev/stryker/wifi/Wifi;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v5, Lcom/zalexdev/stryker/wifi/Wifi;->h:Lcom/google/android/material/textview/MaterialTextView;

    .line 146
    .line 147
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/zalexdev/stryker/wifi/Wifi;->g()V

    .line 151
    .line 152
    .line 153
    :goto_0
    return-void

    .line 154
    :pswitch_0
    check-cast v5, Lo4/u;

    .line 155
    .line 156
    check-cast v15, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    iget-object v2, v5, Lo4/u;->b:Landroid/content/Context;

    .line 159
    .line 160
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Landroid/content/ClipboardManager;

    .line 165
    .line 166
    const-string v4, "info"

    .line 167
    .line 168
    invoke-static {v4, v15}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v3, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 173
    .line 174
    .line 175
    const-string v3, "Info copied to clipboard"

    .line 176
    .line 177
    invoke-static {v2, v3, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 182
    .line 183
    .line 184
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_1
    check-cast v5, Lo4/u;

    .line 189
    .line 190
    check-cast v15, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 191
    .line 192
    iget-object v2, v5, Lo4/u;->b:Landroid/content/Context;

    .line 193
    .line 194
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Landroid/content/ClipboardManager;

    .line 199
    .line 200
    const-string v4, "password"

    .line 201
    .line 202
    invoke-virtual {v15}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v3, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 211
    .line 212
    .line 213
    const-string v3, "Password copied to clipboard"

    .line 214
    .line 215
    invoke-static {v2, v3, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 220
    .line 221
    .line 222
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_2
    check-cast v5, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 227
    .line 228
    check-cast v15, Lf3/b;

    .line 229
    .line 230
    iget-object v1, v5, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->b:Lg3/b;

    .line 231
    .line 232
    iget-wide v2, v15, Lf3/b;->a:J

    .line 233
    .line 234
    iget-object v1, v1, Lg3/b;->b:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v1, Lj4/a;

    .line 237
    .line 238
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    filled-new-array {v2}, [Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const-string v3, "gadget_profile"

    .line 251
    .line 252
    const-string v4, "id=?"

    .line 253
    .line 254
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    iget-object v1, v5, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->d:Ln2/c;

    .line 258
    .line 259
    iget-object v2, v5, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->b:Lg3/b;

    .line 260
    .line 261
    invoke-virtual {v2}, Lg3/b;->f()Ljava/util/ArrayList;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Ln2/c;->c(Ljava/util/ArrayList;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_3
    check-cast v5, Lh4/n;

    .line 270
    .line 271
    check-cast v15, [I

    .line 272
    .line 273
    sget v1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 274
    .line 275
    aget v1, v15, v14

    .line 276
    .line 277
    invoke-interface {v5, v1}, Lh4/n;->c(I)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_4
    check-cast v5, Landroid/content/SharedPreferences;

    .line 282
    .line 283
    check-cast v15, Lf4/d;

    .line 284
    .line 285
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v2, "ota_skip_version"

    .line 290
    .line 291
    iget v3, v15, Lf4/d;->a:I

    .line 292
    .line 293
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :pswitch_5
    check-cast v5, Landroid/app/Activity;

    .line 302
    .line 303
    check-cast v15, Lf4/d;

    .line 304
    .line 305
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 310
    .line 311
    const/16 v3, 0x1a

    .line 312
    .line 313
    if-lt v2, v3, :cond_2

    .line 314
    .line 315
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-static {v2}, Lf4/b;->u(Landroid/content/pm/PackageManager;)Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-nez v2, :cond_2

    .line 324
    .line 325
    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 326
    .line 327
    const-string v2, "package:"

    .line 328
    .line 329
    const v3, 0x7f13050a

    .line 330
    .line 331
    .line 332
    invoke-static {v5, v3, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 337
    .line 338
    .line 339
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 340
    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .line 366
    .line 367
    goto :goto_1

    .line 368
    :catch_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    .line 369
    .line 370
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    .line 375
    .line 376
    goto :goto_1

    .line 377
    :cond_2
    invoke-static {v1}, Li5/a;->G(Landroid/content/Context;)V

    .line 378
    .line 379
    .line 380
    const v2, 0x7f130509

    .line 381
    .line 382
    .line 383
    invoke-static {v1, v2, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 388
    .line 389
    .line 390
    new-instance v2, Ljava/lang/Thread;

    .line 391
    .line 392
    new-instance v3, Ld4/d;

    .line 393
    .line 394
    const/4 v4, 0x2

    .line 395
    invoke-direct {v3, v1, v15, v4}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 396
    .line 397
    .line 398
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 402
    .line 403
    .line 404
    :catch_1
    :goto_1
    return-void

    .line 405
    :pswitch_6
    check-cast v5, Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 406
    .line 407
    check-cast v15, Lcom/google/android/material/textfield/TextInputEditText;

    .line 408
    .line 409
    sget v1, Lcom/zalexdev/stryker/nmap/NmapScanner;->W:I

    .line 410
    .line 411
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v15}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    if-nez v1, :cond_3

    .line 419
    .line 420
    const-string v1, ""

    .line 421
    .line 422
    goto :goto_2

    .line 423
    :cond_3
    invoke-virtual {v15}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    :goto_2
    iget-object v2, v5, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    .line 436
    .line 437
    const-string v3, "nmap_custom_flags"

    .line 438
    .line 439
    invoke-virtual {v2, v3, v1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    return-void

    .line 443
    :pswitch_7
    check-cast v5, Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 444
    .line 445
    check-cast v15, Ljava/util/ArrayList;

    .line 446
    .line 447
    iget-object v1, v5, Lcom/zalexdev/stryker/nmap/NmapScanner;->b:Lcom/google/android/material/textfield/TextInputEditText;

    .line 448
    .line 449
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    check-cast v2, Ljava/lang/CharSequence;

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :pswitch_8
    check-cast v5, Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 460
    .line 461
    check-cast v15, [Ljava/lang/String;

    .line 462
    .line 463
    sget v1, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 464
    .line 465
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    array-length v1, v15

    .line 469
    sub-int/2addr v1, v13

    .line 470
    if-ne v2, v1, :cond_5

    .line 471
    .line 472
    new-instance v1, Landroid/app/Dialog;

    .line 473
    .line 474
    iget-object v2, v5, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    .line 475
    .line 476
    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v12}, Landroid/app/Dialog;->setContentView(I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    if-eqz v2, :cond_4

    .line 487
    .line 488
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 489
    .line 490
    invoke-direct {v3, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2, v11, v10}, Landroid/view/Window;->setLayout(II)V

    .line 497
    .line 498
    .line 499
    :cond_4
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    check-cast v2, Landroid/widget/TextView;

    .line 504
    .line 505
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 510
    .line 511
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 516
    .line 517
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 518
    .line 519
    .line 520
    move-result-object v6

    .line 521
    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 522
    .line 523
    const v7, 0x7f130163

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 527
    .line 528
    .line 529
    new-instance v2, Lj2/i;

    .line 530
    .line 531
    const/16 v7, 0x8

    .line 532
    .line 533
    invoke-direct {v2, v1, v7}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    .line 538
    .line 539
    new-instance v2, Lj2/j;

    .line 540
    .line 541
    const/4 v6, 0x7

    .line 542
    invoke-direct {v2, v5, v3, v1, v6}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 549
    .line 550
    .line 551
    goto :goto_3

    .line 552
    :cond_5
    aget-object v1, v15, v2

    .line 553
    .line 554
    iget-object v2, v5, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    .line 555
    .line 556
    const-string v3, "wlan_scan"

    .line 557
    .line 558
    invoke-virtual {v2, v3, v1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget-object v2, v5, Lcom/zalexdev/stryker/localnetwork/LocalMain;->n:Lcom/google/android/material/textview/MaterialTextView;

    .line 562
    .line 563
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v5}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->j()V

    .line 567
    .line 568
    .line 569
    :goto_3
    return-void

    .line 570
    :pswitch_9
    check-cast v5, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 571
    .line 572
    check-cast v15, Ljava/util/List;

    .line 573
    .line 574
    sget v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 575
    .line 576
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    .line 578
    .line 579
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    check-cast v2, Ljava/lang/String;

    .line 584
    .line 585
    iput-object v2, v5, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->y:Ljava/lang/String;

    .line 586
    .line 587
    iget-object v3, v5, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 588
    .line 589
    const-string v4, "hid_layout"

    .line 590
    .line 591
    invoke-virtual {v3, v4, v2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    iget-object v2, v5, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->h:Lcom/google/android/material/textview/MaterialTextView;

    .line 595
    .line 596
    iget-object v3, v5, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->y:Ljava/lang/String;

    .line 597
    .line 598
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 599
    .line 600
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    .line 606
    .line 607
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 608
    .line 609
    .line 610
    return-void

    .line 611
    :pswitch_a
    check-cast v5, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 612
    .line 613
    check-cast v15, Landroid/widget/EditText;

    .line 614
    .line 615
    sget v1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 616
    .line 617
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 633
    .line 634
    .line 635
    move-result v2

    .line 636
    if-eqz v2, :cond_6

    .line 637
    .line 638
    goto :goto_4

    .line 639
    :cond_6
    iput-object v1, v5, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->z:Ljava/lang/String;

    .line 640
    .line 641
    iget-object v2, v5, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 642
    .line 643
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    .line 645
    .line 646
    :goto_4
    return-void

    .line 647
    :pswitch_b
    check-cast v5, Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 648
    .line 649
    check-cast v15, Ljava/util/List;

    .line 650
    .line 651
    sget v1, Lcom/zalexdev/stryker/geomac/GeoMac;->r:I

    .line 652
    .line 653
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    check-cast v1, Ljava/io/File;

    .line 661
    .line 662
    iget-object v2, v5, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 663
    .line 664
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 665
    .line 666
    .line 667
    new-instance v2, Ljava/lang/Thread;

    .line 668
    .line 669
    new-instance v3, Lw2/i;

    .line 670
    .line 671
    invoke-direct {v3, v5, v1, v14}, Lw2/i;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;Ljava/io/File;I)V

    .line 672
    .line 673
    .line 674
    const-string v1, "geomac-import"

    .line 675
    .line 676
    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 680
    .line 681
    .line 682
    return-void

    .line 683
    :pswitch_c
    check-cast v5, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;

    .line 684
    .line 685
    check-cast v15, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    sget v1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->e:I

    .line 688
    .line 689
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    const-string v2, "\n"

    .line 697
    .line 698
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    array-length v2, v1

    .line 703
    :goto_5
    if-ge v14, v2, :cond_7

    .line 704
    .line 705
    aget-object v3, v1, v14

    .line 706
    .line 707
    iget-object v4, v5, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    .line 708
    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    const-string v7, "echo \'"

    .line 712
    .line 713
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    const-string v7, "\'"

    .line 717
    .line 718
    const-string v8, "\\\'"

    .line 719
    .line 720
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    const-string v3, "\' > /sdcard/Stryker/saved_networks.csv"

    .line 728
    .line 729
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    invoke-virtual {v4, v3}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 737
    .line 738
    .line 739
    add-int/lit8 v14, v14, 0x1

    .line 740
    .line 741
    goto :goto_5

    .line 742
    :cond_7
    iget-object v1, v5, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    .line 743
    .line 744
    const-string v2, "Saved networks exported to /sdcard/Stryker/saved_networks.csv"

    .line 745
    .line 746
    invoke-virtual {v1, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    return-void

    .line 750
    :pswitch_d
    check-cast v5, Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 751
    .line 752
    check-cast v15, Lr0/b;

    .line 753
    .line 754
    sget v1, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    .line 755
    .line 756
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 757
    .line 758
    .line 759
    iget v1, v15, Lr0/b;->a:I

    .line 760
    .line 761
    invoke-virtual {v5, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    iget-object v2, v5, Lcom/zalexdev/stryker/coremanger/CoreManager;->z:Ljava/util/LinkedHashMap;

    .line 766
    .line 767
    iget-object v3, v15, Lr0/b;->c:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v3, Ljava/lang/String;

    .line 770
    .line 771
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    check-cast v2, Ls2/l;

    .line 776
    .line 777
    const v3, 0x7f130674

    .line 778
    .line 779
    .line 780
    if-eqz v2, :cond_8

    .line 781
    .line 782
    iget-object v4, v2, Ls2/l;->b:Landroid/widget/ProgressBar;

    .line 783
    .line 784
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 785
    .line 786
    .line 787
    iget-object v4, v2, Ls2/l;->c:Lcom/google/android/material/button/MaterialButton;

    .line 788
    .line 789
    invoke-virtual {v4, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 790
    .line 791
    .line 792
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    invoke-virtual {v5, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    iget-object v2, v2, Ls2/l;->a:Landroid/widget/TextView;

    .line 801
    .line 802
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    .line 804
    .line 805
    :cond_8
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-virtual {v5, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    invoke-virtual {v5, v2}, Lcom/zalexdev/stryker/coremanger/CoreManager;->i(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    new-instance v2, Ljava/lang/Thread;

    .line 817
    .line 818
    new-instance v3, Landroidx/emoji2/text/m;

    .line 819
    .line 820
    const/16 v4, 0xb

    .line 821
    .line 822
    invoke-direct {v3, v5, v15, v1, v4}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 823
    .line 824
    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    const-string v4, "tool-uninstall-"

    .line 828
    .line 829
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    iget-object v4, v15, Lr0/b;->c:Ljava/lang/Object;

    .line 833
    .line 834
    check-cast v4, Ljava/lang/String;

    .line 835
    .line 836
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 847
    .line 848
    .line 849
    return-void

    .line 850
    :pswitch_e
    check-cast v5, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;

    .line 851
    .line 852
    check-cast v15, [Ljava/lang/String;

    .line 853
    .line 854
    sget v1, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->j:I

    .line 855
    .line 856
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    aget-object v1, v15, v2

    .line 860
    .line 861
    iput-object v1, v5, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->d:Ljava/lang/String;

    .line 862
    .line 863
    iget-object v2, v5, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 864
    .line 865
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    .line 867
    .line 868
    return-void

    .line 869
    :pswitch_f
    check-cast v5, Ljava/util/List;

    .line 870
    .line 871
    check-cast v15, Lcom/stryker/terminal/ui/term/NeoTermActivity;

    .line 872
    .line 873
    invoke-static {v5, v15, v1, v2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->i(Ljava/util/List;Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/content/DialogInterface;I)V

    .line 874
    .line 875
    .line 876
    return-void

    .line 877
    :pswitch_10
    check-cast v5, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;

    .line 878
    .line 879
    check-cast v15, Lcom/stryker/terminal/ui/pm/PackageModel;

    .line 880
    .line 881
    invoke-static {v5, v15, v1, v2}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$onCreate$1;->a(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/ui/pm/PackageModel;Landroid/content/DialogInterface;I)V

    .line 882
    .line 883
    .line 884
    return-void

    .line 885
    :pswitch_11
    check-cast v5, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;

    .line 886
    .line 887
    check-cast v15, Lcom/stryker/terminal/component/pm/SourceManager;

    .line 888
    .line 889
    invoke-static {v5, v15, v1, v2}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->g(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Landroid/content/DialogInterface;I)V

    .line 890
    .line 891
    .line 892
    return-void

    .line 893
    :pswitch_12
    check-cast v5, Lcom/stryker/terminal/ui/other/SetupActivity;

    .line 894
    .line 895
    check-cast v15, Lcom/stryker/terminal/setup/SourceConnection;

    .line 896
    .line 897
    invoke-static {v5, v15, v1, v2}, Lcom/stryker/terminal/ui/other/SetupActivity;->l(Lcom/stryker/terminal/ui/other/SetupActivity;Lcom/stryker/terminal/setup/SourceConnection;Landroid/content/DialogInterface;I)V

    .line 898
    .line 899
    .line 900
    return-void

    .line 901
    :pswitch_13
    check-cast v15, Landroid/widget/EditText;

    .line 902
    .line 903
    check-cast v5, Lcom/stryker/terminal/ui/other/SetupActivity;

    .line 904
    .line 905
    invoke-static {v15, v5, v1, v2}, Lcom/stryker/terminal/ui/other/SetupActivity;->k(Landroid/widget/EditText;Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/content/DialogInterface;I)V

    .line 906
    .line 907
    .line 908
    return-void

    .line 909
    :pswitch_14
    check-cast v5, Lj5/l;

    .line 910
    .line 911
    check-cast v15, Landroid/widget/EditText;

    .line 912
    .line 913
    invoke-static {v5, v15, v1, v2}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->l(Lj5/l;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    .line 914
    .line 915
    .line 916
    return-void

    .line 917
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
