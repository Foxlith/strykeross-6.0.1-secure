.class public final Lf/d0;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/vnc/VNCFragment;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lf/d0;->a:I

    .line 1
    invoke-direct {p0, p1, v0}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lf/d0;->a:I

    iput-object p1, p0, Lf/d0;->b:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget v0, p0, Lf/d0;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "id"

    .line 5
    .line 6
    const-string v3, "status"

    .line 7
    .line 8
    const-string v4, "tool"

    .line 9
    .line 10
    const-string v5, "line"

    .line 11
    .line 12
    iget-object v6, p0, Lf/d0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v6, Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 18
    .line 19
    sget p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 20
    .line 21
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "com.zalexdev.stryker.vnc.action.START"

    .line 33
    .line 34
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->o()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "com.zalexdev.stryker.vnc.action.STOP"

    .line 49
    .line 50
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/zalexdev/stryker/vnc/VNCFragment;->n()V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void

    .line 60
    :pswitch_0
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    check-cast v6, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;

    .line 65
    .line 66
    iget p2, v6, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->a:I

    .line 67
    .line 68
    if-ne p1, p2, :cond_3

    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->readNewLines()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->d()V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void

    .line 77
    :pswitch_1
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    check-cast v6, Lcom/zalexdev/stryker/nuclei/NucleiReport;

    .line 82
    .line 83
    iget p2, v6, Lcom/zalexdev/stryker/nuclei/NucleiReport;->a:I

    .line 84
    .line 85
    if-ne p1, p2, :cond_4

    .line 86
    .line 87
    invoke-virtual {v6}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->f()V

    .line 88
    .line 89
    .line 90
    :cond_4
    return-void

    .line 91
    :pswitch_2
    check-cast v6, Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 92
    .line 93
    sget p1, Lcom/zalexdev/stryker/nuclei/NucleiMain;->p:I

    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->g()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_3
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v0, "nuclei"

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    move-object v0, v6

    .line 119
    check-cast v0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;

    .line 120
    .line 121
    sget v1, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->t:I

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->e(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    check-cast v6, Lcom/zalexdev/stryker/nuclei/InstallNuclei;

    .line 133
    .line 134
    sget p2, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->t:I

    .line 135
    .line 136
    invoke-virtual {v6, p1}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->g(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    :goto_1
    return-void

    .line 140
    :pswitch_4
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string v0, "metasploit"

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_8

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_8
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p1, :cond_9

    .line 158
    .line 159
    move-object v0, v6

    .line 160
    check-cast v0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 161
    .line 162
    sget v1, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->u:I

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->f(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_9
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_a

    .line 172
    .line 173
    check-cast v6, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 174
    .line 175
    sget p2, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->u:I

    .line 176
    .line 177
    invoke-virtual {v6, p1}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_a
    :goto_2
    return-void

    .line 181
    :pswitch_5
    check-cast v6, Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 182
    .line 183
    iget-object p1, v6, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 184
    .line 185
    iget-object p2, v6, Lcom/zalexdev/stryker/logger/LoggerFragment;->C:Lu3/k;

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, v6, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 191
    .line 192
    const-wide/16 v0, 0xfa

    .line 193
    .line 194
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_6
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const-string v0, "hydra"

    .line 203
    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_b

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_b
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-eqz p1, :cond_c

    .line 216
    .line 217
    move-object v0, v6

    .line 218
    check-cast v0, Lcom/zalexdev/stryker/hydra/HydraInstall;

    .line 219
    .line 220
    sget v1, Lcom/zalexdev/stryker/hydra/HydraInstall;->t:I

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/hydra/HydraInstall;->e(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_c
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    if-eqz p1, :cond_d

    .line 230
    .line 231
    check-cast v6, Lcom/zalexdev/stryker/hydra/HydraInstall;

    .line 232
    .line 233
    sget p2, Lcom/zalexdev/stryker/hydra/HydraInstall;->t:I

    .line 234
    .line 235
    invoke-virtual {v6, p1}, Lcom/zalexdev/stryker/hydra/HydraInstall;->g(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_d
    :goto_3
    return-void

    .line 239
    :pswitch_7
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    if-nez p1, :cond_e

    .line 244
    .line 245
    check-cast v6, Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 246
    .line 247
    sget p1, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    .line 248
    .line 249
    invoke-virtual {v6}, Lcom/zalexdev/stryker/coremanger/CoreManager;->d()V

    .line 250
    .line 251
    .line 252
    :cond_e
    return-void

    .line 253
    :pswitch_8
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    const-string v0, "cameradar"

    .line 258
    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_f

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_f
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    if-eqz p1, :cond_10

    .line 271
    .line 272
    move-object v0, v6

    .line 273
    check-cast v0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;

    .line 274
    .line 275
    sget v1, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->t:I

    .line 276
    .line 277
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->e(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_10
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    if-eqz p1, :cond_11

    .line 285
    .line 286
    check-cast v6, Lcom/zalexdev/stryker/cameradar/CameradarInstall;

    .line 287
    .line 288
    sget p2, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->t:I

    .line 289
    .line 290
    invoke-virtual {v6, p1}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->g(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    :cond_11
    :goto_4
    return-void

    .line 294
    :pswitch_9
    const-string v0, "context"

    .line 295
    .line 296
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string p1, "intent"

    .line 300
    .line 301
    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    check-cast v6, Lt1/d;

    .line 305
    .line 306
    check-cast v6, Lt1/a;

    .line 307
    .line 308
    iget p1, v6, Lt1/a;->g:I

    .line 309
    .line 310
    packed-switch p1, :pswitch_data_1

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    if-nez p1, :cond_12

    .line 318
    .line 319
    goto/16 :goto_8

    .line 320
    .line 321
    :cond_12
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    sget v0, Lt1/k;->a:I

    .line 326
    .line 327
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    if-eqz p1, :cond_1f

    .line 338
    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 340
    .line 341
    .line 342
    move-result p2

    .line 343
    const v0, -0x46671f94

    .line 344
    .line 345
    .line 346
    if-eq p2, v0, :cond_15

    .line 347
    .line 348
    const v0, -0x2b8fb65c

    .line 349
    .line 350
    .line 351
    if-eq p2, v0, :cond_13

    .line 352
    .line 353
    goto/16 :goto_8

    .line 354
    .line 355
    :cond_13
    const-string p2, "android.intent.action.DEVICE_STORAGE_OK"

    .line 356
    .line 357
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    if-nez p1, :cond_14

    .line 362
    .line 363
    goto/16 :goto_8

    .line 364
    .line 365
    :cond_14
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 366
    .line 367
    :goto_5
    invoke-virtual {v6, p1}, Lt1/f;->c(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_8

    .line 371
    .line 372
    :cond_15
    const-string p2, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 373
    .line 374
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-nez p1, :cond_16

    .line 379
    .line 380
    goto/16 :goto_8

    .line 381
    .line 382
    :cond_16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 383
    .line 384
    goto :goto_5

    .line 385
    :pswitch_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    if-nez p1, :cond_17

    .line 390
    .line 391
    goto/16 :goto_8

    .line 392
    .line 393
    :cond_17
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    sget-object v0, Lt1/c;->a:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    if-eqz p1, :cond_1f

    .line 410
    .line 411
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 412
    .line 413
    .line 414
    move-result p2

    .line 415
    const v0, -0x7606c095    # -6.0004207E-33f

    .line 416
    .line 417
    .line 418
    if-eq p2, v0, :cond_1a

    .line 419
    .line 420
    const v0, 0x1d398bfd

    .line 421
    .line 422
    .line 423
    if-eq p2, v0, :cond_18

    .line 424
    .line 425
    goto :goto_8

    .line 426
    :cond_18
    const-string p2, "android.intent.action.BATTERY_LOW"

    .line 427
    .line 428
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    if-nez p1, :cond_19

    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_19
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 436
    .line 437
    :goto_6
    invoke-virtual {v6, p1}, Lt1/f;->c(Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    goto :goto_8

    .line 441
    :cond_1a
    const-string p2, "android.intent.action.BATTERY_OKAY"

    .line 442
    .line 443
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result p1

    .line 447
    if-nez p1, :cond_1b

    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_1b
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 451
    .line 452
    goto :goto_6

    .line 453
    :pswitch_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    if-nez p1, :cond_1c

    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_1c
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 461
    .line 462
    .line 463
    move-result-object p2

    .line 464
    sget-object v0, Lt1/b;->a:Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 470
    .line 471
    .line 472
    move-result p2

    .line 473
    sparse-switch p2, :sswitch_data_0

    .line 474
    .line 475
    .line 476
    goto :goto_8

    .line 477
    :sswitch_0
    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 478
    .line 479
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result p1

    .line 483
    if-nez p1, :cond_1d

    .line 484
    .line 485
    goto :goto_8

    .line 486
    :cond_1d
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 487
    .line 488
    :goto_7
    invoke-virtual {v6, p1}, Lt1/f;->c(Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    goto :goto_8

    .line 492
    :sswitch_1
    const-string p2, "android.os.action.CHARGING"

    .line 493
    .line 494
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result p1

    .line 498
    if-nez p1, :cond_1d

    .line 499
    .line 500
    goto :goto_8

    .line 501
    :sswitch_2
    const-string p2, "android.os.action.DISCHARGING"

    .line 502
    .line 503
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    if-nez p1, :cond_1e

    .line 508
    .line 509
    goto :goto_8

    .line 510
    :cond_1e
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 511
    .line 512
    goto :goto_7

    .line 513
    :sswitch_3
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 514
    .line 515
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    if-nez p1, :cond_1e

    .line 520
    .line 521
    :cond_1f
    :goto_8
    return-void

    .line 522
    :pswitch_c
    check-cast v6, Lf/e0;

    .line 523
    .line 524
    check-cast v6, Lf/c0;

    .line 525
    .line 526
    iget p1, v6, Lf/c0;->c:I

    .line 527
    .line 528
    iget-object p2, v6, Lf/c0;->d:Lf/h0;

    .line 529
    .line 530
    const/4 v0, 0x1

    .line 531
    packed-switch p1, :pswitch_data_2

    .line 532
    .line 533
    .line 534
    invoke-virtual {p2, v0, v0}, Lf/h0;->m(ZZ)Z

    .line 535
    .line 536
    .line 537
    goto :goto_9

    .line 538
    :pswitch_d
    invoke-virtual {p2, v0, v0}, Lf/h0;->m(ZZ)Z

    .line 539
    .line 540
    .line 541
    :goto_9
    return-void

    .line 542
    nop

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
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

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_3
        -0x3465cce -> :sswitch_2
        0x388694fe -> :sswitch_1
        0x3cbf870b -> :sswitch_0
    .end sparse-switch

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
