.class public final synthetic Lt3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;Landroid/widget/EditText;Ljava/lang/String;Lcom/stryker/terminal/ui/other/SetupActivity;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lt3/e;->a:I

    iput-object p1, p0, Lt3/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lt3/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Lt3/e;->d:Ljava/lang/String;

    iput-object p4, p0, Lt3/e;->f:Ljava/lang/Object;

    iput p5, p0, Lt3/e;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Ln3/i;Lcom/zalexdev/stryker/custom/Device;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p6, p0, Lt3/e;->a:I

    iput-object p1, p0, Lt3/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lt3/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Lt3/e;->d:Ljava/lang/String;

    iput p4, p0, Lt3/e;->e:I

    iput-object p5, p0, Lt3/e;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lt3/e;->a:I

    .line 2
    .line 3
    const-string v1, "\\."

    .line 4
    .line 5
    const-string v2, "."

    .line 6
    .line 7
    const/16 v3, 0x3e8

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "Scanning"

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    const-string v7, "Finished scanning device: "

    .line 14
    .line 15
    const-string v8, " -n -Pn -O -F --max-os-tries=3"

    .line 16
    .line 17
    const-string v9, "nmap "

    .line 18
    .line 19
    iget-object v10, p0, Lt3/e;->d:Ljava/lang/String;

    .line 20
    .line 21
    iget v11, p0, Lt3/e;->e:I

    .line 22
    .line 23
    iget-object v12, p0, Lt3/e;->f:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v13, p0, Lt3/e;->c:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v14, p0, Lt3/e;->b:Ljava/lang/Object;

    .line 28
    .line 29
    packed-switch v0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    check-cast v14, Landroid/app/ProgressDialog;

    .line 33
    .line 34
    check-cast v13, Landroid/widget/EditText;

    .line 35
    .line 36
    check-cast v12, Lcom/stryker/terminal/ui/other/SetupActivity;

    .line 37
    .line 38
    invoke-static {v14, v13, v10, v12, v11}, Lcom/stryker/terminal/ui/other/SetupActivity;->f(Landroid/app/ProgressDialog;Landroid/widget/EditText;Ljava/lang/String;Lcom/stryker/terminal/ui/other/SetupActivity;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    check-cast v14, Ln3/i;

    .line 43
    .line 44
    check-cast v13, Lcom/zalexdev/stryker/custom/Device;

    .line 45
    .line 46
    check-cast v12, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v8, v14, Ll4/c;->d:Ll4/l;

    .line 74
    .line 75
    invoke-virtual {v8, v0}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    iget-object v8, v14, Ll4/c;->m:Lu3/g;

    .line 96
    .line 97
    invoke-virtual {v8, v6, v7}, Lu3/g;->e(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v6, v14, Ln3/i;->t:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v6, Lr3/v;

    .line 103
    .line 104
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v7}, Lr3/v;->g(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/Device;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_0

    .line 124
    .line 125
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v0, v5}, Lcom/zalexdev/stryker/custom/Device;->setMac(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getVendor()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v0, v5}, Lcom/zalexdev/stryker/custom/Device;->setVendor(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_0
    :try_start_0
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v5, v3}, Ljava/net/InetAddress;->isReachable(I)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_2

    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    .line 163
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_1

    .line 172
    .line 173
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    aget-object v3, v1, v4

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    goto :goto_1

    .line 182
    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/custom/Device;->setSubname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    :cond_2
    :goto_2
    invoke-virtual {v0, v4}, Lcom/zalexdev/stryker/custom/Device;->setShim(Z)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Lt3/f;

    .line 193
    .line 194
    invoke-direct {v1, v14, v0, v11, v4}, Lt3/f;-><init>(Ln3/i;Lcom/zalexdev/stryker/custom/Device;II)V

    .line 195
    .line 196
    .line 197
    iget-object v0, v14, Ll4/c;->a:Landroid/app/Activity;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 203
    .line 204
    .line 205
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_1
    check-cast v14, Ln3/i;

    .line 210
    .line 211
    check-cast v13, Lcom/zalexdev/stryker/custom/Device;

    .line 212
    .line 213
    check-cast v12, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 214
    .line 215
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iget-object v8, v14, Ll4/c;->d:Ll4/l;

    .line 241
    .line 242
    invoke-virtual {v8, v0}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    iget-object v8, v14, Ll4/c;->m:Lu3/g;

    .line 263
    .line 264
    invoke-virtual {v8, v6, v7}, Lu3/g;->e(ILjava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v7, v14, Ln3/i;->t:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v7, Lr3/v;

    .line 270
    .line 271
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-static {v0, v8}, Lr3/v;->g(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/zalexdev/stryker/custom/Device;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_3

    .line 291
    .line 292
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-virtual {v0, v5}, Lcom/zalexdev/stryker/custom/Device;->setMac(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getVendor()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-virtual {v0, v5}, Lcom/zalexdev/stryker/custom/Device;->setVendor(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_3
    :try_start_1
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-virtual {v5, v3}, Ljava/net/InetAddress;->isReachable(I)Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-eqz v3, :cond_5

    .line 319
    .line 320
    invoke-virtual {v5}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_4

    .line 329
    .line 330
    invoke-virtual {v13}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-nez v2, :cond_4

    .line 339
    .line 340
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    aget-object v3, v1, v4

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :catch_1
    move-exception v1

    .line 348
    goto :goto_4

    .line 349
    :cond_4
    :goto_3
    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/custom/Device;->setSubname(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 354
    .line 355
    .line 356
    :cond_5
    :goto_5
    new-instance v1, Lt3/f;

    .line 357
    .line 358
    invoke-direct {v1, v14, v0, v11, v6}, Lt3/f;-><init>(Ln3/i;Lcom/zalexdev/stryker/custom/Device;II)V

    .line 359
    .line 360
    .line 361
    iget-object v0, v14, Ll4/c;->a:Landroid/app/Activity;

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 367
    .line 368
    .line 369
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
