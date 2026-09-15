.class public final synthetic Lr3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr3/t;

.field public final synthetic c:Lcom/zalexdev/stryker/custom/Device;


# direct methods
.method public synthetic constructor <init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lr3/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lr3/g;->b:Lr3/t;

    .line 7
    .line 8
    iput-object p2, p0, Lr3/g;->c:Lcom/zalexdev/stryker/custom/Device;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lr3/g;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    iget-object v2, p0, Lr3/g;->c:Lcom/zalexdev/stryker/custom/Device;

    .line 6
    .line 7
    iget-object v3, p0, Lr3/g;->b:Lr3/t;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v2}, Lr3/t;->g(Lcom/zalexdev/stryker/custom/Device;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, v3, Lr3/t;->e:Landroid/app/Dialog;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Ljava/lang/Thread;

    .line 26
    .line 27
    new-instance v2, Lr3/l;

    .line 28
    .line 29
    invoke-direct {v2, v3, p1, v1}, Lr3/l;-><init>(Lr3/t;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string p1, "cameradar-check"

    .line 33
    .line 34
    invoke-direct {v0, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroid/content/Intent;

    .line 45
    .line 46
    iget-object v0, v3, Lr3/t;->b:Landroid/app/Activity;

    .line 47
    .line 48
    const-class v1, Lcom/zalexdev/stryker/localnetwork/utils/NmapReportGenerator;

    .line 49
    .line 50
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "ip"

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance p1, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v1, v3, Lr3/t;->d:Ll4/l;

    .line 76
    .line 77
    const-string v4, "EternalBlue"

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Ll4/l;->z(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/Exploit;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string v4, "SMBGhost"

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ll4/l;->z(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/Exploit;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    const-string v4, "Bluekeep"

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ll4/l;->z(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/Exploit;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    const-string v4, "CVE-2022-27255"

    .line 105
    .line 106
    invoke-virtual {v1, v4}, Ll4/l;->z(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/Exploit;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-ge v0, v1, :cond_1

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-nez v1, :cond_0

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Lcom/zalexdev/stryker/custom/Exploit;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v1, v4}, Lcom/zalexdev/stryker/custom/Exploit;->setIp(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x3

    .line 143
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-eqz v1, :cond_2

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/zalexdev/stryker/custom/Exploit;

    .line 154
    .line 155
    const-string v1, "23"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Exploit;->setPort(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_4

    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Lcom/zalexdev/stryker/custom/Exploit;

    .line 180
    .line 181
    if-eqz v1, :cond_3

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {v3, v0}, Lr3/t;->f(Ljava/util/ArrayList;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v0, "ssh://"

    .line 197
    .line 198
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {v3, p1}, Lr3/t;->e(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v0, "ftp://"

    .line 222
    .line 223
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {v3, p1}, Lr3/t;->e(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v0, "http://"

    .line 247
    .line 248
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {v3, p1}, Lr3/t;->e(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :pswitch_6
    iget-object p1, v3, Lr3/t;->d:Ll4/l;

    .line 267
    .line 268
    :try_start_0
    const-string v1, "rm -rf /exploits; mkdir -p /exploits; cp -f /sdcard/Stryker/exploits/* /exploits/ 2>/dev/null; chmod -R 0755 /exploits"

    .line 269
    .line 270
    invoke-virtual {p1, v1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Ll4/l;->A()Ljava/util/ArrayList;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    new-array v1, v1, [Ljava/lang/String;

    .line 282
    .line 283
    move v4, v0

    .line 284
    :goto_3
    invoke-virtual {p1}, Ll4/l;->A()Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-ge v4, v5, :cond_5

    .line 293
    .line 294
    invoke-virtual {p1}, Ll4/l;->A()Ljava/util/ArrayList;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    check-cast v5, Lcom/zalexdev/stryker/custom/Exploit;

    .line 303
    .line 304
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    aput-object v5, v1, v4

    .line 309
    .line 310
    add-int/lit8 v4, v4, 0x1

    .line 311
    .line 312
    goto :goto_3

    .line 313
    :catch_0
    move-exception p1

    .line 314
    goto :goto_4

    .line 315
    :cond_5
    new-instance p1, Lf/m;

    .line 316
    .line 317
    iget-object v4, v3, Lr3/t;->b:Landroid/app/Activity;

    .line 318
    .line 319
    invoke-direct {p1, v4}, Lf/m;-><init>(Landroid/content/Context;)V

    .line 320
    .line 321
    .line 322
    const-string v4, "Select Exploit"

    .line 323
    .line 324
    invoke-virtual {p1, v4}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    .line 325
    .line 326
    .line 327
    new-instance v4, Lr3/k;

    .line 328
    .line 329
    invoke-direct {v4, v3, v2, v0}, Lr3/k;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1, v1, v4}, Lf/m;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1}, Lf/m;->show()Lf/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .line 337
    .line 338
    goto :goto_5

    .line 339
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 340
    .line 341
    .line 342
    :goto_5
    return-void

    .line 343
    :pswitch_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    new-instance p1, Ljava/lang/Thread;

    .line 347
    .line 348
    new-instance v0, Lr3/j;

    .line 349
    .line 350
    invoke-direct {v0, v3, v2, v1}, Lr3/j;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    .line 351
    .line 352
    .line 353
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :pswitch_8
    iget-object p1, v3, Lr3/t;->e:Landroid/app/Dialog;

    .line 361
    .line 362
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 363
    .line 364
    .line 365
    new-instance p1, Ljava/lang/Thread;

    .line 366
    .line 367
    new-instance v1, Lr3/j;

    .line 368
    .line 369
    invoke-direct {v1, v3, v2, v0}, Lr3/j;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    .line 370
    .line 371
    .line 372
    const-string v0, "hydra-check"

    .line 373
    .line 374
    invoke-direct {p1, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :pswitch_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    new-instance p1, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v0, "https://"

    .line 387
    .line 388
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {v3, p1}, Lr3/t;->e(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    return-void

    .line 406
    :pswitch_a
    invoke-virtual {v3, v2}, Lr3/t;->g(Lcom/zalexdev/stryker/custom/Device;)V

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :pswitch_b
    invoke-virtual {v3, v2}, Lr3/t;->g(Lcom/zalexdev/stryker/custom/Device;)V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    nop

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
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
