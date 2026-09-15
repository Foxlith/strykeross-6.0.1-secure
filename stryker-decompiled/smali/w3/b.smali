.class public final synthetic Lw3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lw3/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw3/b;->b:Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lw3/b;->a:I

    .line 2
    .line 3
    const v0, 0x7f0a0205

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const v2, 0x7f01002e

    .line 8
    .line 9
    .line 10
    const v3, 0x7f01002d

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    iget-object v6, p0, Lw3/b;->b:Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    .line 16
    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->u:Landroid/app/Dialog;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->A:I

    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p1, Landroid/app/Dialog;

    .line 32
    .line 33
    iget-object v0, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->c:Landroid/content/Context;

    .line 34
    .line 35
    const v1, 0x103000a

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    iput-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->u:Landroid/app/Dialog;

    .line 42
    .line 43
    const v0, 0x7f0d00ce

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->u:Landroid/app/Dialog;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 58
    .line 59
    const-string v1, "#0F0F0F"

    .line 60
    .line 61
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, -0x1

    .line 72
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 73
    .line 74
    .line 75
    :cond_0
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->u:Landroid/app/Dialog;

    .line 76
    .line 77
    const v0, 0x7f0a0446

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->v:Landroid/widget/TextView;

    .line 87
    .line 88
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->u:Landroid/app/Dialog;

    .line 89
    .line 90
    const v0, 0x7f0a0447

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/ScrollView;

    .line 98
    .line 99
    iput-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->w:Landroid/widget/ScrollView;

    .line 100
    .line 101
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->u:Landroid/app/Dialog;

    .line 102
    .line 103
    const v0, 0x7f0a0445

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->x:Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->u:Landroid/app/Dialog;

    .line 115
    .line 116
    const v0, 0x7f0a0444

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 124
    .line 125
    iget-object v0, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->v:Landroid/widget/TextView;

    .line 126
    .line 127
    iget-object v1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->e:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->x:Landroid/widget/TextView;

    .line 137
    .line 138
    iget v1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->t:I

    .line 139
    .line 140
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->w:Landroid/widget/ScrollView;

    .line 148
    .line 149
    new-instance v1, Lw3/a;

    .line 150
    .line 151
    const/4 v2, 0x4

    .line 152
    invoke-direct {v1, v6, v2}, Lw3/a;-><init>(Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 156
    .line 157
    .line 158
    new-instance v0, Lw3/b;

    .line 159
    .line 160
    const/4 v1, 0x7

    .line 161
    invoke-direct {v0, v6, v1}, Lw3/b;-><init>(Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->u:Landroid/app/Dialog;

    .line 168
    .line 169
    new-instance v0, Lcom/stryker/terminal/b;

    .line 170
    .line 171
    invoke-direct {v0, v6, v4}, Lcom/stryker/terminal/b;-><init>(Ljava/lang/Object;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->u:Landroid/app/Dialog;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_1
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->e:Landroid/widget/TextView;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_1

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_1
    const-string p1, "msf-"

    .line 206
    .line 207
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 208
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-object v2, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->a:Ll4/l;

    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v2, "Stryker/msf"

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-nez v1, :cond_2

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_2

    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 257
    .line 258
    const-string v2, "yyyyMMdd-HHmmss"

    .line 259
    .line 260
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 261
    .line 262
    invoke-direct {p1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 263
    .line 264
    .line 265
    new-instance v2, Ljava/util/Date;

    .line 266
    .line 267
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string p1, ".txt"

    .line 278
    .line 279
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    new-instance v1, Ljava/io/File;

    .line 287
    .line 288
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    new-instance p1, Ljava/io/FileWriter;

    .line 292
    .line 293
    invoke-direct {p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->e:Landroid/widget/TextView;

    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .line 311
    .line 312
    move-object v5, v1

    .line 313
    :catch_0
    :goto_0
    if-nez v5, :cond_3

    .line 314
    .line 315
    goto :goto_1

    .line 316
    :cond_3
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->c:Landroid/content/Context;

    .line 317
    .line 318
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    const v1, 0x7f13040c

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 338
    .line 339
    .line 340
    :try_start_1
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->c:Landroid/content/Context;

    .line 341
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    iget-object v1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->c:Landroid/content/Context;

    .line 348
    .line 349
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v1, ".provider"

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-static {p1, v0, v5}, Landroidx/core/content/FileProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    new-instance v0, Landroid/content/Intent;

    .line 370
    .line 371
    const-string v1, "android.intent.action.SEND"

    .line 372
    .line 373
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string v1, "text/plain"

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    .line 380
    .line 381
    const-string v1, "android.intent.extra.STREAM"

    .line 382
    .line 383
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 387
    .line 388
    .line 389
    const p1, 0x7f130409

    .line 390
    .line 391
    .line 392
    invoke-virtual {v6, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-virtual {v6, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    .line 402
    .line 403
    :catch_1
    :goto_1
    return-void

    .line 404
    :pswitch_2
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 405
    .line 406
    invoke-virtual {p1}, Lz3/d;->b()V

    .line 407
    .line 408
    .line 409
    iget-object p1, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->c:Landroid/content/Context;

    .line 410
    .line 411
    const v0, 0x7f13040b

    .line 412
    .line 413
    .line 414
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 419
    .line 420
    .line 421
    return-void

    .line 422
    :pswitch_3
    sget p1, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->A:I

    .line 423
    .line 424
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    new-instance p1, Ljava/lang/Thread;

    .line 428
    .line 429
    new-instance v0, Lw3/a;

    .line 430
    .line 431
    const/4 v1, 0x3

    .line 432
    invoke-direct {v0, v6, v1}, Lw3/a;-><init>(Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;I)V

    .line 433
    .line 434
    .line 435
    const-string v1, "msf-check"

    .line 436
    .line 437
    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    :pswitch_4
    sget p1, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->A:I

    .line 445
    .line 446
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    new-instance p1, Ljava/lang/Thread;

    .line 450
    .line 451
    new-instance v0, Lw3/a;

    .line 452
    .line 453
    const/4 v1, 0x5

    .line 454
    invoke-direct {v0, v6, v1}, Lw3/a;-><init>(Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;I)V

    .line 455
    .line 456
    .line 457
    const-string v1, "msf-run"

    .line 458
    .line 459
    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :pswitch_5
    sget p1, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->A:I

    .line 467
    .line 468
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    iget-object v4, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 473
    .line 474
    invoke-virtual {v4}, Lz3/d;->b()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    new-instance v4, Landroidx/fragment/app/a;

    .line 481
    .line 482
    invoke-direct {v4, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v4, v3, v2, v1, v1}, Landroidx/fragment/app/e1;->f(IIII)V

    .line 486
    .line 487
    .line 488
    new-instance p1, Lcom/zalexdev/stryker/metasploit/SetValues;

    .line 489
    .line 490
    iget-object v2, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->d:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 491
    .line 492
    invoke-direct {p1, v2}, Lcom/zalexdev/stryker/metasploit/SetValues;-><init>(Lcom/zalexdev/stryker/custom/MsfExploit;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v4, p1, v5, v0}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v4, v1}, Landroidx/fragment/app/a;->h(Z)I

    .line 499
    .line 500
    .line 501
    return-void

    .line 502
    :pswitch_6
    sget p1, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->A:I

    .line 503
    .line 504
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    iget-object v4, v6, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->f:Lz3/d;

    .line 509
    .line 510
    invoke-virtual {v4}, Lz3/d;->b()V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    new-instance v4, Landroidx/fragment/app/a;

    .line 517
    .line 518
    invoke-direct {v4, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v4, v3, v2, v1, v1}, Landroidx/fragment/app/e1;->f(IIII)V

    .line 522
    .line 523
    .line 524
    new-instance p1, Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 525
    .line 526
    invoke-direct {p1}, Lcom/zalexdev/stryker/metasploit/Metasploit;-><init>()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4, p1, v5, v0}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v4, v1}, Landroidx/fragment/app/a;->h(Z)I

    .line 533
    .line 534
    .line 535
    return-void

    .line 536
    nop

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
