.class public final synthetic Lj2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lj2/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lj2/g;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput-boolean p2, p0, Lj2/g;->b:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lj2/g;->a:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lj2/g;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lj2/g;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v2, Lcom/zalexdev/stryker/nuclei/InstallNuclei;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v0, v2, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->c:Ll4/l;

    .line 20
    .line 21
    const-string v1, "nuclei"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v6}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->i()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, v2, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 31
    .line 32
    const v1, 0x7f1304cc

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v2, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 39
    .line 40
    new-instance v1, Ld4/c;

    .line 41
    .line 42
    invoke-direct {v1, v2, v3}, Ld4/c;-><init>(Lcom/zalexdev/stryker/nuclei/InstallNuclei;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v2, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e:Lcom/google/android/material/button/MaterialButton;

    .line 49
    .line 50
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v2, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->g:Landroid/widget/ProgressBar;

    .line 54
    .line 55
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v2, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->h:Landroid/widget/ImageView;

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v2, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v2, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->i:Landroid/widget/TextView;

    .line 69
    .line 70
    const v1, 0x7f1304fa

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void

    .line 77
    :pswitch_0
    check-cast v2, Lg3/b;

    .line 78
    .line 79
    iget-object v0, v2, Lg3/b;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 82
    .line 83
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->K:Landroidx/fragment/app/a0;

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_1
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->k:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 103
    .line 104
    const/4 v3, 0x4

    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->c:Lcom/google/android/material/button/MaterialButton;

    .line 109
    .line 110
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->d:Lcom/google/android/material/button/MaterialButton;

    .line 114
    .line 115
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->N:Landroid/os/Handler;

    .line 119
    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    iget-object v3, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->O:Landroidx/activity/d;

    .line 123
    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    if-eqz v1, :cond_3

    .line 130
    .line 131
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->m:Landroid/widget/TextView;

    .line 132
    .line 133
    const v2, 0x7f1304ab

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->p:Landroid/widget/TextView;

    .line 140
    .line 141
    const v2, 0x7f1304a6

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->p:Landroid/widget/TextView;

    .line 148
    .line 149
    const-string v2, "#388E3C"

    .line 150
    .line 151
    :goto_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->m:Landroid/widget/TextView;

    .line 160
    .line 161
    const v2, 0x7f1304aa

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->p:Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->p:Landroid/widget/TextView;

    .line 173
    .line 174
    const-string v2, "#D32F2F"

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :goto_2
    invoke-virtual {v0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->f()V

    .line 178
    .line 179
    .line 180
    :cond_4
    :goto_3
    return-void

    .line 181
    :pswitch_1
    check-cast v2, Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 182
    .line 183
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 184
    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_6

    .line 192
    .line 193
    if-eqz v1, :cond_5

    .line 194
    .line 195
    const v0, 0x7f1303dd

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_5
    const v0, 0x7f1303dc

    .line 200
    .line 201
    .line 202
    :goto_4
    iget-object v1, v2, Lcom/zalexdev/stryker/metasploit/Metasploit;->b:Landroid/content/Context;

    .line 203
    .line 204
    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    .line 210
    .line 211
    :cond_6
    return-void

    .line 212
    :pswitch_2
    check-cast v2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 213
    .line 214
    if-eqz v1, :cond_7

    .line 215
    .line 216
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->c:Ll4/l;

    .line 217
    .line 218
    const-string v1, "msf"

    .line 219
    .line 220
    invoke-virtual {v0, v1, v6}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->i()V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_7
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 228
    .line 229
    const v1, 0x7f1303e7

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 236
    .line 237
    new-instance v1, Lw3/e;

    .line 238
    .line 239
    invoke-direct {v1, v2, v3}, Lw3/e;-><init>(Lcom/zalexdev/stryker/metasploit/InstallMetasploit;I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 246
    .line 247
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->g:Landroid/widget/ProgressBar;

    .line 251
    .line 252
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h:Landroid/widget/ImageView;

    .line 256
    .line 257
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 261
    .line 262
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    iget-object v0, v2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->i:Landroid/widget/TextView;

    .line 266
    .line 267
    const v1, 0x7f1303ea

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    .line 272
    .line 273
    :goto_5
    return-void

    .line 274
    :pswitch_3
    check-cast v2, Lv3/f;

    .line 275
    .line 276
    iget-object v0, v2, Lv3/f;->p:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 279
    .line 280
    sget-object v2, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 281
    .line 282
    invoke-virtual {v0}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_8

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->g(Z)V

    .line 289
    .line 290
    .line 291
    :cond_8
    return-void

    .line 292
    :pswitch_4
    check-cast v2, Lv3/e;

    .line 293
    .line 294
    iget-object v0, v2, Lv3/e;->u:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 297
    .line 298
    sget-object v2, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 299
    .line 300
    invoke-virtual {v0}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-eqz v2, :cond_9

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->g(Z)V

    .line 307
    .line 308
    .line 309
    :cond_9
    return-void

    .line 310
    :pswitch_5
    check-cast v2, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 311
    .line 312
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 313
    .line 314
    invoke-virtual {v2}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-nez v0, :cond_a

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_a
    if-eqz v1, :cond_b

    .line 322
    .line 323
    invoke-virtual {v2, v6}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->g(Z)V

    .line 324
    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_b
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const v1, 0x7f0d0060

    .line 332
    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    const v1, 0x7f0a03c9

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    check-cast v1, Landroid/widget/TextView;

    .line 347
    .line 348
    const-string v3, "Android 12+ rebinds MAC on associate. To make the spoofed MAC stick, install <a href=\"https://github.com/LSPosed/LSPosed\">LSPosed</a> + the <a href=\"https://github.com/DavidBerdik/MACsposed\">MACsposed</a> module."

    .line 349
    .line 350
    invoke-static {v3, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    new-instance v3, Landroid/text/method/LinkMovementMethod;

    .line 358
    .line 359
    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 363
    .line 364
    .line 365
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 366
    .line 367
    iget-object v3, v2, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->b:Landroid/content/Context;

    .line 368
    .line 369
    invoke-direct {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 370
    .line 371
    .line 372
    const v3, 0x7f13038c

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    new-instance v1, Lcom/stryker/terminal/setup/a;

    .line 384
    .line 385
    const/4 v3, 0x7

    .line 386
    invoke-direct {v1, v3}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    .line 387
    .line 388
    .line 389
    const v3, 0x104000a

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v5}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->g(Z)V

    .line 404
    .line 405
    .line 406
    :goto_6
    return-void

    .line 407
    :pswitch_6
    check-cast v2, Lcom/zalexdev/stryker/hydra/HydraInstall;

    .line 408
    .line 409
    if-eqz v1, :cond_c

    .line 410
    .line 411
    iget-object v0, v2, Lcom/zalexdev/stryker/hydra/HydraInstall;->c:Ll4/l;

    .line 412
    .line 413
    const-string v1, "hydra"

    .line 414
    .line 415
    invoke-virtual {v0, v1, v6}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2}, Lcom/zalexdev/stryker/hydra/HydraInstall;->i()V

    .line 419
    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_c
    iget-object v0, v2, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 423
    .line 424
    const v1, 0x7f13028a

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 428
    .line 429
    .line 430
    iget-object v0, v2, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 431
    .line 432
    new-instance v1, Ln3/m;

    .line 433
    .line 434
    invoke-direct {v1, v2, v3}, Ln3/m;-><init>(Lcom/zalexdev/stryker/hydra/HydraInstall;I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    .line 439
    .line 440
    iget-object v0, v2, Lcom/zalexdev/stryker/hydra/HydraInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 441
    .line 442
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 443
    .line 444
    .line 445
    iget-object v0, v2, Lcom/zalexdev/stryker/hydra/HydraInstall;->g:Landroid/widget/ProgressBar;

    .line 446
    .line 447
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 448
    .line 449
    .line 450
    iget-object v0, v2, Lcom/zalexdev/stryker/hydra/HydraInstall;->h:Landroid/widget/ImageView;

    .line 451
    .line 452
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    iget-object v0, v2, Lcom/zalexdev/stryker/hydra/HydraInstall;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 456
    .line 457
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    iget-object v0, v2, Lcom/zalexdev/stryker/hydra/HydraInstall;->i:Landroid/widget/TextView;

    .line 461
    .line 462
    const v1, 0x7f1302ae

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 466
    .line 467
    .line 468
    :goto_7
    return-void

    .line 469
    :pswitch_7
    check-cast v2, Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 470
    .line 471
    iget-object v0, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 472
    .line 473
    :try_start_0
    iget-object v3, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->e:Lz2/a;

    .line 474
    .line 475
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :try_start_1
    invoke-virtual {v3}, Lz2/a;->b()V

    .line 477
    .line 478
    .line 479
    new-instance v4, Ljava/util/ArrayList;

    .line 480
    .line 481
    iget-object v5, v3, Lz2/a;->c:Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    .line 485
    .line 486
    :try_start_2
    monitor-exit v3

    .line 487
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    if-eqz v3, :cond_e

    .line 492
    .line 493
    iget-object v1, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 494
    .line 495
    if-eqz v1, :cond_12

    .line 496
    .line 497
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-eqz v1, :cond_12

    .line 502
    .line 503
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-nez v1, :cond_d

    .line 508
    .line 509
    goto :goto_b

    .line 510
    :cond_d
    iget-object v1, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 511
    .line 512
    new-instance v3, Landroidx/activity/b;

    .line 513
    .line 514
    const/16 v4, 0x11

    .line 515
    .line 516
    invoke-direct {v3, v2, v4}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 520
    .line 521
    .line 522
    goto :goto_b

    .line 523
    :catch_0
    move-exception v1

    .line 524
    goto :goto_a

    .line 525
    :cond_e
    if-eqz v1, :cond_f

    .line 526
    .line 527
    invoke-static {v4}, Li5/a;->L(Ljava/util/ArrayList;)Ljava/io/File;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    goto :goto_8

    .line 532
    :cond_f
    invoke-static {v4}, Li5/a;->M(Ljava/util/ArrayList;)Ljava/io/File;

    .line 533
    .line 534
    .line 535
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 536
    :goto_8
    iget-object v3, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 537
    .line 538
    if-eqz v3, :cond_12

    .line 539
    .line 540
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    if-eqz v3, :cond_12

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-nez v0, :cond_10

    .line 551
    .line 552
    goto :goto_b

    .line 553
    :cond_10
    iget-object v0, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 554
    .line 555
    new-instance v3, Lw2/i;

    .line 556
    .line 557
    invoke-direct {v3, v2, v1, v6}, Lw2/i;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;Ljava/io/File;I)V

    .line 558
    .line 559
    .line 560
    :goto_9
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 561
    .line 562
    .line 563
    goto :goto_b

    .line 564
    :catchall_0
    move-exception v1

    .line 565
    :try_start_3
    monitor-exit v3

    .line 566
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 567
    :goto_a
    iget-object v3, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 568
    .line 569
    if-eqz v3, :cond_12

    .line 570
    .line 571
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    if-eqz v3, :cond_12

    .line 576
    .line 577
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-nez v0, :cond_11

    .line 582
    .line 583
    goto :goto_b

    .line 584
    :cond_11
    iget-object v0, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 585
    .line 586
    new-instance v3, Lw2/j;

    .line 587
    .line 588
    invoke-direct {v3, v2, v1, v6}, Lw2/j;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;Ljava/lang/Exception;I)V

    .line 589
    .line 590
    .line 591
    goto :goto_9

    .line 592
    :cond_12
    :goto_b
    return-void

    .line 593
    :pswitch_8
    check-cast v2, Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 594
    .line 595
    sget v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 596
    .line 597
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-nez v0, :cond_13

    .line 602
    .line 603
    goto :goto_c

    .line 604
    :cond_13
    if-eqz v1, :cond_14

    .line 605
    .line 606
    invoke-virtual {v2}, Lcom/zalexdev/stryker/dashboard/Dashboard;->e()V

    .line 607
    .line 608
    .line 609
    goto :goto_c

    .line 610
    :cond_14
    iget-object v0, v2, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 611
    .line 612
    const v1, 0x7f1306ea

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    :goto_c
    return-void

    .line 623
    :pswitch_9
    check-cast v2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;

    .line 624
    .line 625
    if-eqz v1, :cond_15

    .line 626
    .line 627
    iget-object v0, v2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->c:Ll4/l;

    .line 628
    .line 629
    const-string v1, "cameradar"

    .line 630
    .line 631
    invoke-virtual {v0, v1, v6}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v2}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->i()V

    .line 635
    .line 636
    .line 637
    goto :goto_d

    .line 638
    :cond_15
    iget-object v0, v2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 639
    .line 640
    const v1, 0x7f1300e2

    .line 641
    .line 642
    .line 643
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 644
    .line 645
    .line 646
    iget-object v0, v2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 647
    .line 648
    new-instance v1, Lq2/a;

    .line 649
    .line 650
    invoke-direct {v1, v2, v3}, Lq2/a;-><init>(Lcom/zalexdev/stryker/cameradar/CameradarInstall;I)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    .line 655
    .line 656
    iget-object v0, v2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e:Lcom/google/android/material/button/MaterialButton;

    .line 657
    .line 658
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 659
    .line 660
    .line 661
    iget-object v0, v2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->g:Landroid/widget/ProgressBar;

    .line 662
    .line 663
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 664
    .line 665
    .line 666
    iget-object v0, v2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->h:Landroid/widget/ImageView;

    .line 667
    .line 668
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 669
    .line 670
    .line 671
    iget-object v0, v2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 672
    .line 673
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 674
    .line 675
    .line 676
    iget-object v0, v2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->i:Landroid/widget/TextView;

    .line 677
    .line 678
    const v1, 0x7f1300f2

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 682
    .line 683
    .line 684
    :goto_d
    return-void

    .line 685
    :pswitch_a
    check-cast v2, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;

    .line 686
    .line 687
    sget v0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->d:I

    .line 688
    .line 689
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-nez v0, :cond_16

    .line 694
    .line 695
    goto :goto_f

    .line 696
    :cond_16
    iget-object v0, v2, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->b:Ll4/l;

    .line 697
    .line 698
    if-eqz v1, :cond_17

    .line 699
    .line 700
    const v1, 0x7f130075

    .line 701
    .line 702
    .line 703
    goto :goto_e

    .line 704
    :cond_17
    const v1, 0x7f1301b1

    .line 705
    .line 706
    .line 707
    :goto_e
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    :goto_f
    return-void

    .line 715
    :pswitch_b
    check-cast v2, Lp2/r;

    .line 716
    .line 717
    iget-object v0, v2, Lp2/r;->k:Lp2/j;

    .line 718
    .line 719
    if-eqz v0, :cond_18

    .line 720
    .line 721
    invoke-virtual {v0, v1}, Lp2/j;->a(Z)V

    .line 722
    .line 723
    .line 724
    :cond_18
    return-void

    .line 725
    :pswitch_c
    check-cast v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;

    .line 726
    .line 727
    sget v0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->s:I

    .line 728
    .line 729
    invoke-virtual {v2}, Lcom/zalexdev/stryker/appintro/slides/Slide2;->e()V

    .line 730
    .line 731
    .line 732
    if-eqz v1, :cond_19

    .line 733
    .line 734
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 735
    .line 736
    const-string v1, "/data/local/stryker/release/sdcard/Stryker"

    .line 737
    .line 738
    invoke-virtual {v0, v1}, Ll4/l;->d(Ljava/lang/String;)Z

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    if-eqz v0, :cond_19

    .line 743
    .line 744
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 745
    .line 746
    const-string v1, "/data/local/stryker/release/6.0"

    .line 747
    .line 748
    invoke-virtual {v0, v1}, Ll4/l;->c(Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    move-result v0

    .line 752
    if-eqz v0, :cond_19

    .line 753
    .line 754
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    .line 755
    .line 756
    check-cast v0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;

    .line 757
    .line 758
    iget-object v1, v0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 759
    .line 760
    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->a:Ljava/util/ArrayList;

    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    sub-int/2addr v0, v6

    .line 767
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 768
    .line 769
    .line 770
    goto :goto_10

    .line 771
    :cond_19
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 772
    .line 773
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 774
    .line 775
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    invoke-static {v1}, Ll4/l;->Y(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 779
    .line 780
    .line 781
    :goto_10
    return-void

    .line 782
    :pswitch_d
    check-cast v2, Lcom/zalexdev/stryker/MainActivity;

    .line 783
    .line 784
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 785
    .line 786
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    const-string v0, ""

    .line 790
    .line 791
    filled-new-array {v0}, [Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v3

    .line 795
    new-instance v4, Lf/n0;

    .line 796
    .line 797
    const/16 v6, 0xd

    .line 798
    .line 799
    invoke-direct {v4, v2, v3, v6}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 803
    .line 804
    .line 805
    :goto_11
    aget-object v4, v3, v5

    .line 806
    .line 807
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    move-result v4

    .line 811
    if-eqz v4, :cond_1a

    .line 812
    .line 813
    const-wide/16 v6, 0x32

    .line 814
    .line 815
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 816
    .line 817
    .line 818
    goto :goto_11

    .line 819
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 824
    .line 825
    .line 826
    goto :goto_13

    .line 827
    :cond_1a
    iget-object v0, v2, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 828
    .line 829
    if-eqz v1, :cond_1b

    .line 830
    .line 831
    const-string v1, "wlan_scan"

    .line 832
    .line 833
    aget-object v2, v3, v5

    .line 834
    .line 835
    :goto_12
    invoke-virtual {v0, v1, v2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    goto :goto_13

    .line 839
    :cond_1b
    const-string v1, "wlan_deauth"

    .line 840
    .line 841
    aget-object v2, v3, v5

    .line 842
    .line 843
    goto :goto_12

    .line 844
    :goto_13
    return-void

    .line 845
    :pswitch_data_0
    .packed-switch 0x0
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
