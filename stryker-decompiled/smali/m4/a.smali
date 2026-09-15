.class public final synthetic Lm4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/vnc/VNCFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lm4/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lm4/a;->b:Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "x11vnc"

    .line 3
    .line 4
    const-string v2, "which x11vnc"

    .line 5
    .line 6
    iget v3, p0, Lm4/a;->a:I

    .line 7
    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, p0, Lm4/a;->b:Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 17
    .line 18
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->P:Ljava/util/EnumMap;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lm4/h;

    .line 46
    .line 47
    sget-object v2, Lm4/f;->a:Lm4/f;

    .line 48
    .line 49
    invoke-virtual {v6, v1, v2}, Lcom/zalexdev/stryker/vnc/VNCFragment;->d(Lm4/h;Lm4/f;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->O:Ln2/c;

    .line 54
    .line 55
    invoke-virtual {v0}, Ln2/c;->clear()V

    .line 56
    .line 57
    .line 58
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->J:Lcom/google/android/material/textview/MaterialTextView;

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->L:Lcom/google/android/material/card/MaterialCardView;

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->K:Lcom/google/android/material/textview/MaterialTextView;

    .line 69
    .line 70
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->B:Lcom/google/android/material/button/MaterialButton;

    .line 79
    .line 80
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 84
    .line 85
    const-string v1, "Starting installation\u2026"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 104
    .line 105
    .line 106
    const-string v0, "INSTALL"

    .line 107
    .line 108
    const v2, -0xa1ca4f

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v2, v0, v1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->j(ILjava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void

    .line 115
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 116
    .line 117
    const-string v0, "Install failed"

    .line 118
    .line 119
    const-string v1, "Could not stage the VNC helper scripts into the tool environment."

    .line 120
    .line 121
    invoke-virtual {v6, v0, v1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_1
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const-string v1, "/CORE/VNC/install.sh"

    .line 135
    .line 136
    const-string v2, "uninstall_xfce.sh"

    .line 137
    .line 138
    const-string v3, "uninstall.sh"

    .line 139
    .line 140
    const-string v4, "install_xfce.sh"

    .line 141
    .line 142
    const-string v5, "install.sh"

    .line 143
    .line 144
    const-string v7, ".stryker-vnc"

    .line 145
    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    new-instance v0, Ljava/io/File;

    .line 149
    .line 150
    iget-object v8, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 151
    .line 152
    invoke-virtual {v8}, Ll4/l;->H()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-direct {v0, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 160
    .line 161
    .line 162
    new-instance v7, Ljava/io/File;

    .line 163
    .line 164
    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v7, v4}, Lcom/zalexdev/stryker/vnc/VNCFragment;->l(Ljava/io/File;Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_2

    .line 172
    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :cond_2
    new-instance v4, Ljava/io/File;

    .line 176
    .line 177
    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v4, v2}, Lcom/zalexdev/stryker/vnc/VNCFragment;->l(Ljava/io/File;Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_3

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_3
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 188
    .line 189
    const-string v2, "mkdir -p /CORE/VNC; cp -f /sdcard/Stryker/.stryker-vnc/install.sh /CORE/VNC/install.sh; cp -f /sdcard/Stryker/.stryker-vnc/uninstall.sh /CORE/VNC/uninstall.sh; sed -i \'s/\r$//\' /CORE/VNC/install.sh /CORE/VNC/uninstall.sh; chmod 0755 /CORE/VNC/install.sh /CORE/VNC/uninstall.sh"

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 192
    .line 193
    .line 194
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 195
    .line 196
    filled-new-array {v1}, [Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Ll4/l;->M([Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    goto :goto_2

    .line 205
    :cond_4
    new-instance v0, Ljava/io/File;

    .line 206
    .line 207
    iget-object v8, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 208
    .line 209
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-direct {v0, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 217
    .line 218
    .line 219
    new-instance v7, Ljava/io/File;

    .line 220
    .line 221
    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v7, v4}, Lcom/zalexdev/stryker/vnc/VNCFragment;->l(Ljava/io/File;Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-nez v4, :cond_5

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_5
    new-instance v4, Ljava/io/File;

    .line 232
    .line 233
    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v4, v2}, Lcom/zalexdev/stryker/vnc/VNCFragment;->l(Ljava/io/File;Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_6

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v2, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 248
    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v4, "mkdir -p /data/local/stryker/release/CORE/VNC; cp -f "

    .line 252
    .line 253
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v4, "/install.sh /data/local/stryker/release/CORE/VNC/install.sh; cp -f "

    .line 260
    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v0, "/uninstall.sh /data/local/stryker/release/CORE/VNC/uninstall.sh; sed -i \'s/\r$//\' /data/local/stryker/release/CORE/VNC/install.sh /data/local/stryker/release/CORE/VNC/uninstall.sh; chmod 0755 /data/local/stryker/release/CORE/VNC/install.sh /data/local/stryker/release/CORE/VNC/uninstall.sh"

    .line 268
    .line 269
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v2, v0}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 277
    .line 278
    .line 279
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 280
    .line 281
    filled-new-array {v1}, [Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Ll4/l;->M([Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    :goto_2
    if-nez v0, :cond_7

    .line 290
    .line 291
    :goto_3
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_8

    .line 296
    .line 297
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 298
    .line 299
    new-instance v1, Lm4/a;

    .line 300
    .line 301
    const/16 v2, 0xa

    .line 302
    .line 303
    invoke-direct {v1, v6, v2}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_7
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 311
    .line 312
    new-instance v1, Lm4/a;

    .line 313
    .line 314
    const/16 v2, 0xb

    .line 315
    .line 316
    invoke-direct {v1, v6, v2}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 320
    .line 321
    .line 322
    new-instance v0, Lm4/e;

    .line 323
    .line 324
    iget-object v1, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 325
    .line 326
    iget-object v2, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 327
    .line 328
    invoke-direct {v0, v6, v1, v2}, Lm4/e;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;Landroidx/fragment/app/a0;Landroid/content/Context;)V

    .line 329
    .line 330
    .line 331
    iput-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->F:Lm4/e;

    .line 332
    .line 333
    :cond_8
    :goto_4
    return-void

    .line 334
    :pswitch_2
    sget v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 335
    .line 336
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_9

    .line 341
    .line 342
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->n()V

    .line 343
    .line 344
    .line 345
    :cond_9
    return-void

    .line 346
    :pswitch_3
    sget v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 347
    .line 348
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_a

    .line 353
    .line 354
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->o()V

    .line 355
    .line 356
    .line 357
    :cond_a
    return-void

    .line 358
    :pswitch_4
    sget v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 359
    .line 360
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_b

    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_b
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->m()V

    .line 368
    .line 369
    .line 370
    :goto_5
    return-void

    .line 371
    :pswitch_5
    sget v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 372
    .line 373
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-nez v0, :cond_c

    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_c
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->J:Lcom/google/android/material/textview/MaterialTextView;

    .line 381
    .line 382
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 383
    .line 384
    .line 385
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->L:Lcom/google/android/material/card/MaterialCardView;

    .line 386
    .line 387
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->K:Lcom/google/android/material/textview/MaterialTextView;

    .line 391
    .line 392
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 393
    .line 394
    .line 395
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 396
    .line 397
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->B:Lcom/google/android/material/button/MaterialButton;

    .line 401
    .line 402
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->w:Lcom/google/android/material/textfield/TextInputLayout;

    .line 406
    .line 407
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 408
    .line 409
    .line 410
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->y:Lcom/google/android/material/textfield/TextInputLayout;

    .line 411
    .line 412
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 413
    .line 414
    .line 415
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->C:Lcom/google/android/material/button/MaterialButton;

    .line 416
    .line 417
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .line 419
    .line 420
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->D:Lcom/google/android/material/button/MaterialButton;

    .line 421
    .line 422
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->E:Lcom/google/android/material/button/MaterialButton;

    .line 426
    .line 427
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 428
    .line 429
    .line 430
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->A:Lcom/google/android/material/textfield/TextInputLayout;

    .line 431
    .line 432
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 433
    .line 434
    .line 435
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->k:Landroid/widget/TextView;

    .line 436
    .line 437
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->l:Lcom/google/android/material/card/MaterialCardView;

    .line 441
    .line 442
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 443
    .line 444
    .line 445
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->v:Landroid/widget/TextView;

    .line 446
    .line 447
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->i()V

    .line 451
    .line 452
    .line 453
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->e:Landroid/widget/TextView;

    .line 454
    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string v2, "Installed: "

    .line 458
    .line 459
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    iget-object v2, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 463
    .line 464
    const-string v3, "vnc_installed_de"

    .line 465
    .line 466
    invoke-virtual {v2, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v2, " \u00b7 chroot ready"

    .line 478
    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    :goto_6
    return-void

    .line 490
    :pswitch_6
    sget v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 491
    .line 492
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->g()Z

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    if-eqz v0, :cond_d

    .line 497
    .line 498
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_e

    .line 503
    .line 504
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 505
    .line 506
    new-instance v1, Lm4/a;

    .line 507
    .line 508
    const/4 v2, 0x7

    .line 509
    invoke-direct {v1, v6, v2}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 510
    .line 511
    .line 512
    :goto_7
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 513
    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_d
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-eqz v0, :cond_e

    .line 521
    .line 522
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 523
    .line 524
    new-instance v1, Lm4/a;

    .line 525
    .line 526
    invoke-direct {v1, v6, v4}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 527
    .line 528
    .line 529
    goto :goto_7

    .line 530
    :cond_e
    :goto_8
    return-void

    .line 531
    :pswitch_7
    sget v3, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 532
    .line 533
    iget-object v3, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 534
    .line 535
    invoke-virtual {v3, v2}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-static {v2, v1}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    if-eqz v1, :cond_10

    .line 544
    .line 545
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-eqz v1, :cond_f

    .line 550
    .line 551
    iget-object v1, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 552
    .line 553
    new-instance v2, Lm4/a;

    .line 554
    .line 555
    const/4 v3, 0x5

    .line 556
    invoke-direct {v2, v6, v3}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 560
    .line 561
    .line 562
    :cond_f
    new-instance v1, Ljava/lang/Thread;

    .line 563
    .line 564
    new-instance v2, Lm4/a;

    .line 565
    .line 566
    invoke-direct {v2, v6, v0}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 567
    .line 568
    .line 569
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 573
    .line 574
    .line 575
    goto :goto_9

    .line 576
    :cond_10
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-eqz v0, :cond_11

    .line 581
    .line 582
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 583
    .line 584
    new-instance v1, Lm4/a;

    .line 585
    .line 586
    const/4 v2, 0x6

    .line 587
    invoke-direct {v1, v6, v2}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 591
    .line 592
    .line 593
    :cond_11
    :goto_9
    return-void

    .line 594
    :pswitch_8
    sget v1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 595
    .line 596
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    new-instance v1, Ljava/lang/Thread;

    .line 600
    .line 601
    new-instance v2, Lm4/a;

    .line 602
    .line 603
    invoke-direct {v2, v6, v0}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 604
    .line 605
    .line 606
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 610
    .line 611
    .line 612
    return-void

    .line 613
    :pswitch_9
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 614
    .line 615
    const-string v1, "mkdir -p /CORE/VNC"

    .line 616
    .line 617
    invoke-virtual {v0, v1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 618
    .line 619
    .line 620
    return-void

    .line 621
    :pswitch_a
    sget v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 622
    .line 623
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 624
    .line 625
    invoke-virtual {v0, v2}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-static {v0, v1}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-eqz v0, :cond_12

    .line 634
    .line 635
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 636
    .line 637
    if-eqz v0, :cond_12

    .line 638
    .line 639
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    if-eqz v0, :cond_12

    .line 644
    .line 645
    iget-object v0, v6, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 646
    .line 647
    new-instance v1, Lm4/a;

    .line 648
    .line 649
    const/4 v2, 0x2

    .line 650
    invoke-direct {v1, v6, v2}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 654
    .line 655
    .line 656
    :cond_12
    return-void

    .line 657
    :pswitch_data_0
    .packed-switch 0x0
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
