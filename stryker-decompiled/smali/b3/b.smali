.class public final synthetic Lb3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lb3/g;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILb3/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb3/b;->a:Lb3/g;

    iput-object p3, p0, Lb3/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lb3/b;->c:Ljava/lang/String;

    iput p1, p0, Lb3/b;->d:I

    iput-object p5, p0, Lb3/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v7, v1, Lb3/b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v12, v1, Lb3/b;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget v8, v1, Lb3/b;->d:I

    .line 8
    .line 9
    iget-object v9, v1, Lb3/b;->a:Lb3/g;

    .line 10
    .line 11
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const v4, 0x7f0a069b

    .line 19
    .line 20
    .line 21
    const v5, 0x7f0a0657

    .line 22
    .line 23
    .line 24
    const/4 v6, -0x2

    .line 25
    const/4 v10, -0x1

    .line 26
    const v11, 0x7f0d0072

    .line 27
    .line 28
    .line 29
    const/4 v13, 0x3

    .line 30
    const/4 v14, 0x0

    .line 31
    iget-object v15, v9, Lb3/g;->b:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eq v0, v2, :cond_6

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    if-eq v0, v3, :cond_4

    .line 38
    .line 39
    if-eq v0, v13, :cond_2

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    if-eq v0, v3, :cond_1

    .line 43
    .line 44
    const/4 v3, 0x5

    .line 45
    if-eq v0, v3, :cond_0

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_0
    iget-object v0, v1, Lb3/b;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v9, v0}, Lb3/g;->b(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    move v14, v2

    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 58
    .line 59
    invoke-direct {v0, v15}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    const v3, 0x7f130266

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const v3, 0x7f130265

    .line 70
    .line 71
    .line 72
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v15, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v3, Lcom/stryker/terminal/ui/term/f;

    .line 85
    .line 86
    invoke-direct {v3, v9, v7, v8, v2}, Lcom/stryker/terminal/ui/term/f;-><init>(Landroidx/recyclerview/widget/k0;Ljava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    const v4, 0x7f13025f

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const v3, 0x7f1300f4

    .line 97
    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-virtual {v0, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Landroid/app/Dialog;

    .line 109
    .line 110
    invoke-direct {v0, v15}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setContentView(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    if-eqz v11, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    .line 127
    .line 128
    invoke-direct {v13, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-virtual {v11, v10, v6}, Landroid/view/Window;->setLayout(II)V

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    check-cast v5, Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    .line 152
    .line 153
    const v6, 0x7f0a0492

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    move-object v10, v6

    .line 161
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 162
    .line 163
    const v6, 0x7f0a00f1

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 171
    .line 172
    const v11, 0x7f130275

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    .line 176
    .line 177
    .line 178
    const v5, 0x7f130274

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    new-instance v5, Lj2/i;

    .line 188
    .line 189
    invoke-direct {v5, v0, v3}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    new-instance v11, Lb3/d;

    .line 196
    .line 197
    move v13, v2

    .line 198
    move-object v2, v11

    .line 199
    move-object v3, v9

    .line 200
    move-object v5, v12

    .line 201
    move-object v6, v0

    .line 202
    invoke-direct/range {v2 .. v8}, Lb3/d;-><init>(Lb3/g;Lcom/google/android/material/textfield/TextInputEditText;Ljava/lang/String;Landroid/app/Dialog;Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 209
    .line 210
    .line 211
    :goto_1
    move v14, v13

    .line 212
    goto/16 :goto_3

    .line 213
    .line 214
    :cond_4
    move v13, v2

    .line 215
    invoke-virtual {v9, v7}, Lb3/g;->a(Ljava/lang/String;)Ljava/io/File;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    const v3, 0x7f130278

    .line 224
    .line 225
    .line 226
    if-nez v2, :cond_5

    .line 227
    .line 228
    :goto_2
    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v9, v0}, Lb3/g;->c(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v4, ".provider"

    .line 249
    .line 250
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-static {v15, v2, v0}, Landroidx/core/content/FileProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    new-instance v4, Landroid/content/Intent;

    .line 262
    .line 263
    const-string v5, "android.intent.action.SEND"

    .line 264
    .line 265
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string v5, "application/octet-stream"

    .line 269
    .line 270
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    const-string v5, "android.intent.extra.STREAM"

    .line 274
    .line 275
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    .line 277
    .line 278
    const-string v2, "android.intent.extra.SUBJECT"

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    .line 289
    .line 290
    const v0, 0x7f130262

    .line 291
    .line 292
    .line 293
    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v4, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v0, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v15, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .line 306
    .line 307
    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    const-string v2, "HandshakesAdapter"

    .line 310
    .line 311
    const-string v4, "share failed"

    .line 312
    .line 313
    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_6
    new-instance v0, Landroid/app/Dialog;

    .line 318
    .line 319
    invoke-direct {v0, v15}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setContentView(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    if-eqz v3, :cond_7

    .line 330
    .line 331
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 336
    .line 337
    invoke-direct {v7, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v3, v10, v6}, Landroid/view/Window;->setLayout(II)V

    .line 348
    .line 349
    .line 350
    :cond_7
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    check-cast v3, Landroid/widget/TextView;

    .line 355
    .line 356
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    move-object v10, v4

    .line 361
    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    .line 362
    .line 363
    const v4, 0x7f0a0492

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 371
    .line 372
    const v5, 0x7f0a00f1

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 380
    .line 381
    const v6, 0x7f130284

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 385
    .line 386
    .line 387
    const v3, 0x7f130283

    .line 388
    .line 389
    .line 390
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 391
    .line 392
    .line 393
    new-instance v3, Lj2/i;

    .line 394
    .line 395
    invoke-direct {v3, v0, v13}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    .line 400
    .line 401
    new-instance v3, Lcom/stryker/terminal/ui/other/a;

    .line 402
    .line 403
    const/4 v13, 0x3

    .line 404
    move-object v8, v3

    .line 405
    move-object v11, v0

    .line 406
    invoke-direct/range {v8 .. v13}, Lcom/stryker/terminal/ui/other/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :goto_3
    return v14
.end method
