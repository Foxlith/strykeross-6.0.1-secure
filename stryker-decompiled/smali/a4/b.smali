.class public abstract La4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v12, La4/c;

    .line 7
    .line 8
    const-string v2, "Atheros"

    .line 9
    .line 10
    const-string v3, "AR9271"

    .line 11
    .line 12
    const-string v4, "ath9k_htc"

    .line 13
    .line 14
    const/16 v24, 0x1

    .line 15
    .line 16
    const/16 v25, 0x1

    .line 17
    .line 18
    const/16 v26, 0x1

    .line 19
    .line 20
    const-string v9, "htc_9271.fw"

    .line 21
    .line 22
    const-string v10, "2.6.35"

    .line 23
    .line 24
    const-string v11, "Reference dongle. Full monitor + injection via mac80211."

    .line 25
    .line 26
    move-object v1, v12

    .line 27
    move/from16 v5, v24

    .line 28
    .line 29
    move/from16 v6, v25

    .line 30
    .line 31
    move/from16 v7, v26

    .line 32
    .line 33
    move/from16 v8, v26

    .line 34
    .line 35
    invoke-direct/range {v1 .. v11}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "0cf3:9271"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v1, "0cf3:1006"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string v1, "13d3:3327"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string v1, "0846:9030"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    new-instance v1, La4/c;

    .line 59
    .line 60
    const-string v14, "Atheros"

    .line 61
    .line 62
    const-string v15, "AR7010"

    .line 63
    .line 64
    const-string v16, "ath9k_htc"

    .line 65
    .line 66
    const/4 v2, 0x3

    .line 67
    const-string v21, "htc_7010.fw"

    .line 68
    .line 69
    const-string v22, "2.6.35"

    .line 70
    .line 71
    const-string v23, "Dual-band ath9k_htc variant."

    .line 72
    .line 73
    move-object v13, v1

    .line 74
    move/from16 v17, v24

    .line 75
    .line 76
    move/from16 v18, v2

    .line 77
    .line 78
    move/from16 v19, v26

    .line 79
    .line 80
    move/from16 v20, v26

    .line 81
    .line 82
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v3, "0cf3:7010"

    .line 86
    .line 87
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v3, "0cf3:7015"

    .line 91
    .line 92
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string v3, "0cf3:b002"

    .line 96
    .line 97
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string v3, "0cf3:b003"

    .line 101
    .line 102
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    new-instance v1, La4/c;

    .line 106
    .line 107
    const-string v14, "Atheros"

    .line 108
    .line 109
    const-string v15, "AR9170"

    .line 110
    .line 111
    const-string v16, "carl9170"

    .line 112
    .line 113
    const-string v21, "carl9170-1.fw"

    .line 114
    .line 115
    const-string v22, "2.6.37"

    .line 116
    .line 117
    const-string v23, "Older carl9170. Monitor + injection."

    .line 118
    .line 119
    move-object v13, v1

    .line 120
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v3, "0cf3:1002"

    .line 124
    .line 125
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    const-string v3, "0cf3:9170"

    .line 129
    .line 130
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string v3, "0846:9001"

    .line 134
    .line 135
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    new-instance v1, La4/c;

    .line 139
    .line 140
    const-string v14, "Realtek"

    .line 141
    .line 142
    const-string v15, "RTL8188CUS"

    .line 143
    .line 144
    const-string v16, "rtl8xxxu"

    .line 145
    .line 146
    const/4 v3, 0x2

    .line 147
    const/16 v21, 0x0

    .line 148
    .line 149
    const-string v22, "4.4"

    .line 150
    .line 151
    const-string v23, "mac80211. Injection works but less reliable than Atheros."

    .line 152
    .line 153
    move-object v13, v1

    .line 154
    move/from16 v18, v25

    .line 155
    .line 156
    move/from16 v20, v3

    .line 157
    .line 158
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v4, "0bda:8176"

    .line 162
    .line 163
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    const-string v4, "0bda:8177"

    .line 167
    .line 168
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    new-instance v1, La4/c;

    .line 172
    .line 173
    const-string v14, "Edimax"

    .line 174
    .line 175
    const-string v15, "EW-7811Un (RTL8188CUS)"

    .line 176
    .line 177
    const-string v16, "rtl8xxxu"

    .line 178
    .line 179
    const-string v22, "4.4"

    .line 180
    .line 181
    const/16 v23, 0x0

    .line 182
    .line 183
    move-object v13, v1

    .line 184
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v4, "7392:7811"

    .line 188
    .line 189
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    new-instance v1, La4/c;

    .line 193
    .line 194
    const-string v14, "Realtek"

    .line 195
    .line 196
    const-string v15, "RTL8192CU"

    .line 197
    .line 198
    const-string v16, "rtl8xxxu"

    .line 199
    .line 200
    const-string v22, "4.4"

    .line 201
    .line 202
    move-object v13, v1

    .line 203
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string v4, "0bda:8178"

    .line 207
    .line 208
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    const-string v4, "0bda:817b"

    .line 212
    .line 213
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    new-instance v1, La4/c;

    .line 217
    .line 218
    const-string v14, "Realtek"

    .line 219
    .line 220
    const-string v15, "RTL8192EU"

    .line 221
    .line 222
    const-string v16, "rtl8xxxu"

    .line 223
    .line 224
    const-string v22, "4.4"

    .line 225
    .line 226
    move-object v13, v1

    .line 227
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v4, "0bda:818b"

    .line 231
    .line 232
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    new-instance v1, La4/c;

    .line 236
    .line 237
    const-string v14, "Realtek"

    .line 238
    .line 239
    const-string v15, "RTL8723BU"

    .line 240
    .line 241
    const-string v16, "rtl8xxxu"

    .line 242
    .line 243
    const-string v22, "4.4"

    .line 244
    .line 245
    move-object v13, v1

    .line 246
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v4, "0bda:b720"

    .line 250
    .line 251
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    new-instance v1, La4/c;

    .line 255
    .line 256
    const-string v14, "Realtek"

    .line 257
    .line 258
    const-string v15, "RTL8188FU"

    .line 259
    .line 260
    const-string v16, "rtl8xxxu"

    .line 261
    .line 262
    const-string v22, "4.4"

    .line 263
    .line 264
    move-object v13, v1

    .line 265
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string v4, "0bda:f179"

    .line 269
    .line 270
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    new-instance v1, La4/c;

    .line 274
    .line 275
    const-string v14, "Realtek"

    .line 276
    .line 277
    const-string v15, "RTL8188EUS"

    .line 278
    .line 279
    const-string v16, "rtl8xxxu"

    .line 280
    .line 281
    const-string v22, "6.3"

    .line 282
    .line 283
    const-string v23, "Pre-6.3 kernels need the r8188eu staging driver (5.16\u20136.2) or aircrack-ng/rtl8188eus DKMS."

    .line 284
    .line 285
    move-object v13, v1

    .line 286
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-string v4, "0bda:8179"

    .line 290
    .line 291
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    new-instance v1, La4/c;

    .line 295
    .line 296
    const-string v14, "TP-Link"

    .line 297
    .line 298
    const-string v15, "TL-WN722N v2/v3 (RTL8188EUS)"

    .line 299
    .line 300
    const-string v16, "rtl8xxxu"

    .line 301
    .line 302
    const-string v22, "6.3"

    .line 303
    .line 304
    const-string v23, "Do NOT confuse with the v1 (AR9271). Same VID:PID family as RTL8188EUS."

    .line 305
    .line 306
    move-object v13, v1

    .line 307
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v4, "2357:010c"

    .line 311
    .line 312
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    new-instance v1, La4/c;

    .line 316
    .line 317
    const-string v14, "Realtek"

    .line 318
    .line 319
    const-string v15, "RTL8821CU"

    .line 320
    .line 321
    const-string v16, "rtw88_8821cu"

    .line 322
    .line 323
    const-string v22, "6.2"

    .line 324
    .line 325
    const-string v23, "rtw88_usb. Monitor + injection. No active-monitor / VIF."

    .line 326
    .line 327
    move-object v13, v1

    .line 328
    move/from16 v18, v2

    .line 329
    .line 330
    move/from16 v20, v26

    .line 331
    .line 332
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v4, "0bda:c811"

    .line 336
    .line 337
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    const-string v4, "0bda:c820"

    .line 341
    .line 342
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    new-instance v1, La4/c;

    .line 346
    .line 347
    const-string v14, "Realtek"

    .line 348
    .line 349
    const-string v15, "RTL8822BU"

    .line 350
    .line 351
    const-string v16, "rtw88_8822bu"

    .line 352
    .line 353
    const-string v22, "6.2"

    .line 354
    .line 355
    const/16 v23, 0x0

    .line 356
    .line 357
    move-object v13, v1

    .line 358
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string v4, "0bda:b82c"

    .line 362
    .line 363
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    const-string v4, "0bda:2102"

    .line 367
    .line 368
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    new-instance v1, La4/c;

    .line 372
    .line 373
    const-string v14, "Realtek"

    .line 374
    .line 375
    const-string v15, "RTL8822CU"

    .line 376
    .line 377
    const-string v16, "rtw88_8822cu"

    .line 378
    .line 379
    const-string v22, "6.2"

    .line 380
    .line 381
    move-object v13, v1

    .line 382
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    const-string v4, "0bda:c82f"

    .line 386
    .line 387
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    new-instance v1, La4/c;

    .line 391
    .line 392
    const-string v14, "Realtek"

    .line 393
    .line 394
    const-string v15, "RTL8812AU"

    .line 395
    .line 396
    const-string v16, "rtw88_8812au"

    .line 397
    .line 398
    const-string v22, "6.14"

    .line 399
    .line 400
    const-string v23, "Mainline since 6.14. On older kernels needs aircrack-ng/rtl8812au DKMS."

    .line 401
    .line 402
    move-object v13, v1

    .line 403
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    const-string v4, "0bda:8812"

    .line 407
    .line 408
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    const-string v4, "2357:011e"

    .line 412
    .line 413
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    const-string v4, "2357:0120"

    .line 417
    .line 418
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    const-string v4, "7392:a811"

    .line 422
    .line 423
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    const-string v4, "0e66:0023"

    .line 427
    .line 428
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    new-instance v1, La4/c;

    .line 432
    .line 433
    const-string v14, "Ralink"

    .line 434
    .line 435
    const-string v15, "RT5370"

    .line 436
    .line 437
    const-string v16, "rt2800usb"

    .line 438
    .line 439
    const-string v22, "2.6.31"

    .line 440
    .line 441
    const/16 v23, 0x0

    .line 442
    .line 443
    move-object v13, v1

    .line 444
    move/from16 v18, v25

    .line 445
    .line 446
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    const-string v4, "148f:5370"

    .line 450
    .line 451
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    const-string v4, "148f:5372"

    .line 455
    .line 456
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    new-instance v1, La4/c;

    .line 460
    .line 461
    const-string v14, "Ralink"

    .line 462
    .line 463
    const-string v15, "RT3070"

    .line 464
    .line 465
    const-string v16, "rt2800usb"

    .line 466
    .line 467
    const-string v22, "2.6.31"

    .line 468
    .line 469
    move-object v13, v1

    .line 470
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    const-string v4, "148f:3070"

    .line 474
    .line 475
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    const-string v4, "148f:3071"

    .line 479
    .line 480
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    const-string v4, "148f:3072"

    .line 484
    .line 485
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    new-instance v1, La4/c;

    .line 489
    .line 490
    const-string v14, "Ralink"

    .line 491
    .line 492
    const-string v15, "RT3572"

    .line 493
    .line 494
    const-string v16, "rt2800usb"

    .line 495
    .line 496
    const-string v22, "2.6.31"

    .line 497
    .line 498
    const-string v23, "Dual-band Alfa AWUS036NH variants."

    .line 499
    .line 500
    move-object v13, v1

    .line 501
    move/from16 v18, v2

    .line 502
    .line 503
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    const-string v4, "148f:3572"

    .line 507
    .line 508
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    const-string v4, "148f:3573"

    .line 512
    .line 513
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    new-instance v1, La4/c;

    .line 517
    .line 518
    const-string v14, "Ralink"

    .line 519
    .line 520
    const-string v15, "RT5572"

    .line 521
    .line 522
    const-string v16, "rt2800usb"

    .line 523
    .line 524
    const-string v22, "2.6.31"

    .line 525
    .line 526
    const/16 v23, 0x0

    .line 527
    .line 528
    move-object v13, v1

    .line 529
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    const-string v4, "148f:5572"

    .line 533
    .line 534
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    new-instance v1, La4/c;

    .line 538
    .line 539
    const-string v14, "MediaTek"

    .line 540
    .line 541
    const-string v15, "MT7601U"

    .line 542
    .line 543
    const-string v16, "mt7601u"

    .line 544
    .line 545
    const/16 v20, 0x4

    .line 546
    .line 547
    const-string v21, "mt7601u.bin"

    .line 548
    .line 549
    const-string v22, "4.2"

    .line 550
    .line 551
    const-string v23, "Cheap clones often ship unprogrammed EEPROM and never work. Not VIF-capable."

    .line 552
    .line 553
    move-object v13, v1

    .line 554
    move/from16 v18, v25

    .line 555
    .line 556
    move/from16 v19, v3

    .line 557
    .line 558
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    const-string v3, "148f:7601"

    .line 562
    .line 563
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    const-string v3, "0e8d:760a"

    .line 567
    .line 568
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    const-string v3, "0e8d:760b"

    .line 572
    .line 573
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    new-instance v1, La4/c;

    .line 577
    .line 578
    const-string v14, "MediaTek"

    .line 579
    .line 580
    const-string v15, "MT7610U"

    .line 581
    .line 582
    const-string v16, "mt76x0u"

    .line 583
    .line 584
    const-string v21, "mediatek/mt7610u.bin"

    .line 585
    .line 586
    const-string v22, "4.19"

    .line 587
    .line 588
    const/16 v23, 0x0

    .line 589
    .line 590
    move-object v13, v1

    .line 591
    move/from16 v18, v2

    .line 592
    .line 593
    move/from16 v19, v26

    .line 594
    .line 595
    move/from16 v20, v26

    .line 596
    .line 597
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    const-string v3, "0e8d:7610"

    .line 601
    .line 602
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    const-string v3, "13b1:003e"

    .line 606
    .line 607
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    new-instance v1, La4/c;

    .line 611
    .line 612
    const-string v14, "MediaTek"

    .line 613
    .line 614
    const-string v15, "MT7612U"

    .line 615
    .line 616
    const-string v16, "mt76x2u"

    .line 617
    .line 618
    const-string v21, "mediatek/mt7662u.bin"

    .line 619
    .line 620
    const-string v22, "4.19"

    .line 621
    .line 622
    const-string v23, "Excellent monitor + injection, VIF-capable. Recommended for pentesting."

    .line 623
    .line 624
    move-object v13, v1

    .line 625
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    const-string v3, "0e8d:7612"

    .line 629
    .line 630
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    const-string v3, "0b05:17eb"

    .line 634
    .line 635
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    const-string v3, "045e:02e6"

    .line 639
    .line 640
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    const-string v3, "0846:9053"

    .line 644
    .line 645
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    new-instance v1, La4/c;

    .line 649
    .line 650
    const-string v14, "MediaTek"

    .line 651
    .line 652
    const-string v15, "MT7921AU"

    .line 653
    .line 654
    const-string v16, "mt7921u"

    .line 655
    .line 656
    const/16 v19, 0x3

    .line 657
    .line 658
    const-string v21, "mediatek/WIFI_MT7961_patch_mcu_1a_2_hdr.bin"

    .line 659
    .line 660
    const-string v22, "5.18"

    .line 661
    .line 662
    const-string v23, "Wi-Fi 6. Monitor mode has been reported broken on some kernel versions (notably 6.18 regression, 2024 active-monitor reports). Verify with `aireplay-ng --test`."

    .line 663
    .line 664
    move-object v13, v1

    .line 665
    invoke-direct/range {v13 .. v23}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    const-string v2, "0e8d:7961"

    .line 669
    .line 670
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    const-string v2, "0846:9060"

    .line 674
    .line 675
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    const-string v2, "0846:9065"

    .line 679
    .line 680
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    new-instance v1, La4/c;

    .line 684
    .line 685
    const-string v4, "Realtek"

    .line 686
    .line 687
    const-string v5, "RTL8152 (100M)"

    .line 688
    .line 689
    const-string v6, "r8152"

    .line 690
    .line 691
    const/4 v2, 0x2

    .line 692
    const/16 v18, 0x4

    .line 693
    .line 694
    const/16 v19, 0x5

    .line 695
    .line 696
    const/4 v11, 0x0

    .line 697
    const/4 v12, 0x0

    .line 698
    const/4 v13, 0x0

    .line 699
    move-object v3, v1

    .line 700
    move v7, v2

    .line 701
    move/from16 v8, v18

    .line 702
    .line 703
    move/from16 v9, v19

    .line 704
    .line 705
    move/from16 v10, v19

    .line 706
    .line 707
    invoke-direct/range {v3 .. v13}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    const-string v3, "0bda:8152"

    .line 711
    .line 712
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    new-instance v1, La4/c;

    .line 716
    .line 717
    const-string v8, "Realtek"

    .line 718
    .line 719
    const-string v9, "RTL8153 (1G)"

    .line 720
    .line 721
    const-string v10, "r8152"

    .line 722
    .line 723
    const/4 v15, 0x0

    .line 724
    const/16 v16, 0x0

    .line 725
    .line 726
    const/16 v17, 0x0

    .line 727
    .line 728
    move-object v7, v1

    .line 729
    move v11, v2

    .line 730
    move/from16 v12, v18

    .line 731
    .line 732
    move/from16 v13, v19

    .line 733
    .line 734
    move/from16 v14, v19

    .line 735
    .line 736
    invoke-direct/range {v7 .. v17}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    const-string v3, "0bda:8153"

    .line 740
    .line 741
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    new-instance v1, La4/c;

    .line 745
    .line 746
    const-string v8, "TP-Link"

    .line 747
    .line 748
    const-string v9, "UE300 (RTL8153)"

    .line 749
    .line 750
    const-string v10, "r8152"

    .line 751
    .line 752
    move-object v7, v1

    .line 753
    invoke-direct/range {v7 .. v17}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    const-string v3, "2357:0601"

    .line 757
    .line 758
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    new-instance v1, La4/c;

    .line 762
    .line 763
    const-string v8, "Microsoft"

    .line 764
    .line 765
    const-string v9, "Surface Ethernet (RTL8153)"

    .line 766
    .line 767
    const-string v10, "r8152"

    .line 768
    .line 769
    move-object v7, v1

    .line 770
    invoke-direct/range {v7 .. v17}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    const-string v3, "045e:07ab"

    .line 774
    .line 775
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    new-instance v1, La4/c;

    .line 779
    .line 780
    const-string v8, "Microsoft"

    .line 781
    .line 782
    const-string v9, "Surface Dock Ethernet"

    .line 783
    .line 784
    const-string v10, "r8152"

    .line 785
    .line 786
    const-string v16, "6.3"

    .line 787
    .line 788
    move-object v7, v1

    .line 789
    invoke-direct/range {v7 .. v17}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    const-string v3, "045e:07c6"

    .line 793
    .line 794
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    new-instance v1, La4/c;

    .line 798
    .line 799
    const-string v8, "Realtek"

    .line 800
    .line 801
    const-string v9, "RTL8156B (2.5G)"

    .line 802
    .line 803
    const-string v10, "r8152"

    .line 804
    .line 805
    const/16 v16, 0x0

    .line 806
    .line 807
    move-object v7, v1

    .line 808
    invoke-direct/range {v7 .. v17}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    const-string v3, "0bda:8156"

    .line 812
    .line 813
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    new-instance v1, La4/c;

    .line 817
    .line 818
    const-string v8, "ASIX"

    .line 819
    .line 820
    const-string v9, "AX88179 (1G)"

    .line 821
    .line 822
    const-string v10, "ax88179_178a"

    .line 823
    .line 824
    move-object v7, v1

    .line 825
    invoke-direct/range {v7 .. v17}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    const-string v3, "0b95:1790"

    .line 829
    .line 830
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    const-string v3, "0b95:178a"

    .line 834
    .line 835
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    new-instance v1, La4/c;

    .line 839
    .line 840
    const-string v8, "ASIX"

    .line 841
    .line 842
    const-string v9, "AX88179A (1G)"

    .line 843
    .line 844
    const-string v10, "ax88179_178a"

    .line 845
    .line 846
    const-string v16, "6.0"

    .line 847
    .line 848
    move-object v7, v1

    .line 849
    invoke-direct/range {v7 .. v17}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    const-string v3, "0b95:17a0"

    .line 853
    .line 854
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    new-instance v1, La4/c;

    .line 858
    .line 859
    const-string v8, "D-Link"

    .line 860
    .line 861
    const-string v9, "DUB-1312 (AX88179)"

    .line 862
    .line 863
    const-string v10, "ax88179_178a"

    .line 864
    .line 865
    const/16 v16, 0x0

    .line 866
    .line 867
    move-object v7, v1

    .line 868
    invoke-direct/range {v7 .. v17}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    const-string v3, "2001:4a00"

    .line 872
    .line 873
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    new-instance v1, La4/c;

    .line 877
    .line 878
    const-string v8, "ASIX"

    .line 879
    .line 880
    const-string v9, "AX88772 (100M)"

    .line 881
    .line 882
    const-string v10, "asix"

    .line 883
    .line 884
    move-object v7, v1

    .line 885
    invoke-direct/range {v7 .. v17}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    const-string v3, "0b95:7720"

    .line 889
    .line 890
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    const-string v3, "0b95:772a"

    .line 894
    .line 895
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    const-string v3, "0b95:772b"

    .line 899
    .line 900
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    new-instance v1, La4/c;

    .line 904
    .line 905
    const-string v8, "D-Link"

    .line 906
    .line 907
    const-string v9, "DUB-E100 (AX88772)"

    .line 908
    .line 909
    const-string v10, "asix"

    .line 910
    .line 911
    move-object v7, v1

    .line 912
    invoke-direct/range {v7 .. v17}, La4/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    const-string v2, "2001:1a00"

    .line 916
    .line 917
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    sput-object v0, La4/b;->a:Ljava/util/Map;

    .line 925
    .line 926
    return-void
.end method
