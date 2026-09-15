.class public final synthetic Lo2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/appintro/slides/Slide2;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/appintro/slides/Slide2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo2/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo2/b;->b:Lcom/zalexdev/stryker/appintro/slides/Slide2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lo2/b;->a:I

    .line 4
    .line 5
    iget-object v2, v1, Lo2/b;->b:Lcom/zalexdev/stryker/appintro/slides/Slide2;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/zalexdev/stryker/appintro/slides/Slide2;->s:I

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/zalexdev/stryker/appintro/slides/Slide2;->e()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->e:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v3, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const v4, 0x7f130537

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->p:Lcom/google/android/material/button/MaterialButton;

    .line 34
    .line 35
    iget-object v3, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->b:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const v4, 0x7f130536

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->p:Lcom/google/android/material/button/MaterialButton;

    .line 52
    .line 53
    const v2, 0x7f0800c9

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_0
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 61
    .line 62
    iget-object v3, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ll4/l;->g(Landroidx/fragment/app/a0;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/4 v3, 0x1

    .line 77
    const/4 v4, 0x0

    .line 78
    if-nez v0, :cond_0

    .line 79
    .line 80
    iget-object v5, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 81
    .line 82
    invoke-virtual {v5}, Ll4/l;->h()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_0

    .line 87
    .line 88
    move v5, v3

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move v5, v4

    .line 91
    :goto_0
    iput-boolean v3, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->q:Z

    .line 92
    .line 93
    iput-boolean v5, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->r:Z

    .line 94
    .line 95
    const/16 v6, 0x10

    .line 96
    .line 97
    if-nez v5, :cond_3

    .line 98
    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_1
    new-instance v0, Lo2/b;

    .line 103
    .line 104
    invoke-direct {v0, v2, v3}, Lo2/b;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide2;I)V

    .line 105
    .line 106
    .line 107
    iget-object v3, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    .line 108
    .line 109
    if-eqz v3, :cond_12

    .line 110
    .line 111
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_2

    .line 116
    .line 117
    goto/16 :goto_d

    .line 118
    .line 119
    :cond_2
    iget-object v3, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    .line 120
    .line 121
    new-instance v4, Lf/n0;

    .line 122
    .line 123
    invoke-direct {v4, v2, v0, v6}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_d

    .line 130
    .line 131
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 132
    .line 133
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 134
    .line 135
    const-string v7, "pm grant com.zalexdev.stryker android.permission.WRITE_EXTERNAL_STORAGE"

    .line 136
    .line 137
    invoke-virtual {v0, v7}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 138
    .line 139
    .line 140
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 141
    .line 142
    const-string v7, "pm grant com.zalexdev.stryker android.permission.READ_EXTERNAL_STORAGE"

    .line 143
    .line 144
    invoke-virtual {v0, v7}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 145
    .line 146
    .line 147
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 148
    .line 149
    const-string v7, "dumpsys deviceidle whitelist +com.zalexdev.stryker"

    .line 150
    .line 151
    invoke-virtual {v0, v7}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    :cond_4
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 155
    .line 156
    const-string v7, "vnc_passwd"

    .line 157
    .line 158
    const-string v8, "stryker"

    .line 159
    .line 160
    invoke-virtual {v0, v7, v8}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v0, "wlan_wps"

    .line 164
    .line 165
    const-string v7, "wlan_deauth"

    .line 166
    .line 167
    const-string v8, "wlan_wifi"

    .line 168
    .line 169
    const-string v9, "wlan_scan"

    .line 170
    .line 171
    const-string v10, "wlan0"

    .line 172
    .line 173
    if-eqz v5, :cond_5

    .line 174
    .line 175
    iget-object v11, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 176
    .line 177
    invoke-virtual {v11}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    const-string v12, "swlan0"

    .line 182
    .line 183
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    if-eqz v11, :cond_5

    .line 188
    .line 189
    iget-object v10, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 190
    .line 191
    invoke-virtual {v10, v9, v12}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v9, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 195
    .line 196
    invoke-virtual {v9, v8, v12}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object v8, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 200
    .line 201
    invoke-virtual {v8, v7, v12}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v7, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 205
    .line 206
    invoke-virtual {v7, v0, v12}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_5
    iget-object v11, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 211
    .line 212
    invoke-virtual {v11, v9, v10}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v9, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 216
    .line 217
    invoke-virtual {v9, v7, v10}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v7, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 221
    .line 222
    invoke-virtual {v7, v8, v10}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v7, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 226
    .line 227
    invoke-virtual {v7, v0, v10}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :goto_3
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 231
    .line 232
    const-string v7, "max_par"

    .line 233
    .line 234
    const/4 v8, 0x3

    .line 235
    invoke-virtual {v0, v8, v7}, Ll4/l;->c0(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 239
    .line 240
    const-string v7, "installed_modules"

    .line 241
    .line 242
    invoke-virtual {v0, v7}, Ll4/l;->g0(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 246
    .line 247
    const-string v7, "first_open"

    .line 248
    .line 249
    invoke-virtual {v0, v7, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 253
    .line 254
    const-string v7, "store_scan"

    .line 255
    .line 256
    invoke-virtual {v0, v7, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 257
    .line 258
    .line 259
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 260
    .line 261
    const-string v7, "auto_update"

    .line 262
    .line 263
    invoke-virtual {v0, v7, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 264
    .line 265
    .line 266
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    .line 267
    .line 268
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    :try_start_0
    const-string v0, ""

    .line 273
    .line 274
    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_4

    .line 279
    :catch_0
    move-exception v0

    .line 280
    const-string v9, "Slide2"

    .line 281
    .line 282
    const-string v10, "Failed to get asset file list."

    .line 283
    .line 284
    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .line 286
    .line 287
    const/4 v0, 0x0

    .line 288
    :goto_4
    const/4 v9, 0x2

    .line 289
    if-nez v0, :cond_6

    .line 290
    .line 291
    goto/16 :goto_c

    .line 292
    .line 293
    :cond_6
    array-length v10, v0

    .line 294
    move v11, v4

    .line 295
    :goto_5
    if-ge v11, v10, :cond_e

    .line 296
    .line 297
    aget-object v12, v0, v11

    .line 298
    .line 299
    const-string v13, "busybox64"

    .line 300
    .line 301
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v13

    .line 305
    if-eqz v13, :cond_7

    .line 306
    .line 307
    goto :goto_b

    .line 308
    :cond_7
    const-string v13, "rootless"

    .line 309
    .line 310
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    if-eqz v13, :cond_8

    .line 315
    .line 316
    goto :goto_b

    .line 317
    :cond_8
    :try_start_1
    invoke-virtual {v7, v12, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 318
    .line 319
    .line 320
    move-result-object v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 321
    :try_start_2
    new-instance v14, Ljava/io/File;

    .line 322
    .line 323
    const-string v15, "/data/data/com.zalexdev.stryker/files/"

    .line 324
    .line 325
    invoke-direct {v14, v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance v12, Ljava/io/FileOutputStream;

    .line 329
    .line 330
    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 331
    .line 332
    .line 333
    const/16 v15, 0x2000

    .line 334
    .line 335
    :try_start_3
    new-array v15, v15, [B

    .line 336
    .line 337
    :goto_6
    invoke-virtual {v13, v15}, Ljava/io/InputStream;->read([B)I

    .line 338
    .line 339
    .line 340
    move-result v8

    .line 341
    const/4 v6, -0x1

    .line 342
    if-eq v8, v6, :cond_9

    .line 343
    .line 344
    invoke-virtual {v12, v15, v4, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 345
    .line 346
    .line 347
    const/16 v6, 0x10

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_9
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v14}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    .line 355
    .line 356
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 357
    .line 358
    .line 359
    :catch_1
    :goto_7
    :try_start_5
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 360
    .line 361
    .line 362
    goto :goto_b

    .line 363
    :catchall_0
    move-exception v0

    .line 364
    move-object/from16 v16, v12

    .line 365
    .line 366
    move-object v8, v13

    .line 367
    goto :goto_9

    .line 368
    :catchall_1
    move-exception v0

    .line 369
    move-object v8, v13

    .line 370
    :goto_8
    const/16 v16, 0x0

    .line 371
    .line 372
    goto :goto_9

    .line 373
    :catch_2
    const/4 v12, 0x0

    .line 374
    goto :goto_a

    .line 375
    :catchall_2
    move-exception v0

    .line 376
    const/4 v8, 0x0

    .line 377
    goto :goto_8

    .line 378
    :goto_9
    if-eqz v8, :cond_a

    .line 379
    .line 380
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 381
    .line 382
    .line 383
    :catch_3
    :cond_a
    if-eqz v16, :cond_b

    .line 384
    .line 385
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 386
    .line 387
    .line 388
    :catch_4
    :cond_b
    throw v0

    .line 389
    :catch_5
    const/4 v12, 0x0

    .line 390
    const/4 v13, 0x0

    .line 391
    :catch_6
    :goto_a
    if-eqz v13, :cond_c

    .line 392
    .line 393
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 394
    .line 395
    .line 396
    :catch_7
    :cond_c
    if-eqz v12, :cond_d

    .line 397
    .line 398
    goto :goto_7

    .line 399
    :catch_8
    :cond_d
    :goto_b
    add-int/lit8 v11, v11, 0x1

    .line 400
    .line 401
    const/16 v6, 0x10

    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_e
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    .line 405
    .line 406
    invoke-static {v0, v4}, Ll4/l;->v(Landroid/content/Context;Z)Z

    .line 407
    .line 408
    .line 409
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-nez v0, :cond_f

    .line 419
    .line 420
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 421
    .line 422
    const-string v4, "dos2unix /data/data/com.zalexdev.stryker/files/*.sh"

    .line 423
    .line 424
    invoke-virtual {v0, v4}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 425
    .line 426
    .line 427
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 428
    .line 429
    const-string v4, "dos2unix /data/data/com.zalexdev.stryker/files/*root*"

    .line 430
    .line 431
    invoke-virtual {v0, v4}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 432
    .line 433
    .line 434
    :cond_f
    :goto_c
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 435
    .line 436
    const-string v4, "save_aps"

    .line 437
    .line 438
    invoke-virtual {v0, v4, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 439
    .line 440
    .line 441
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 442
    .line 443
    const-string v4, "autoScan"

    .line 444
    .line 445
    invoke-virtual {v0, v4, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 446
    .line 447
    .line 448
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 449
    .line 450
    const-string v4, "dash"

    .line 451
    .line 452
    invoke-virtual {v0, v4, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 453
    .line 454
    .line 455
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 456
    .line 457
    const-string v4, "night"

    .line 458
    .line 459
    invoke-virtual {v0, v9, v4}, Ll4/l;->c0(ILjava/lang/String;)V

    .line 460
    .line 461
    .line 462
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 463
    .line 464
    const-string v4, "threads"

    .line 465
    .line 466
    const/16 v6, 0x64

    .line 467
    .line 468
    invoke-virtual {v0, v6, v4}, Ll4/l;->c0(ILjava/lang/String;)V

    .line 469
    .line 470
    .line 471
    if-eqz v5, :cond_10

    .line 472
    .line 473
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    .line 474
    .line 475
    const-string v4, "/data/data/com.zalexdev.stryker/files"

    .line 476
    .line 477
    invoke-virtual {v0, v4}, Ll4/l;->i(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    :cond_10
    new-instance v0, Lj2/g;

    .line 481
    .line 482
    invoke-direct {v0, v2, v5, v3}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 483
    .line 484
    .line 485
    iget-object v3, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    .line 486
    .line 487
    if-eqz v3, :cond_12

    .line 488
    .line 489
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    if-nez v3, :cond_11

    .line 494
    .line 495
    goto :goto_d

    .line 496
    :cond_11
    iget-object v3, v2, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    .line 497
    .line 498
    new-instance v4, Lf/n0;

    .line 499
    .line 500
    const/16 v5, 0x10

    .line 501
    .line 502
    invoke-direct {v4, v2, v0, v5}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_1

    .line 506
    .line 507
    :cond_12
    :goto_d
    return-void

    .line 508
    nop

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
