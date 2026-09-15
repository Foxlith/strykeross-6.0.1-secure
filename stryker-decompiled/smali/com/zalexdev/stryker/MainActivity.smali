.class public Lcom/zalexdev/stryker/MainActivity;
.super Lf/q;
.source "SourceFile"


# static fields
.field public static q:Landroid/widget/TextView;

.field public static r:Landroid/widget/ImageView;

.field public static s:I

.field public static t:Landroidx/fragment/app/u0;

.field public static final u:Ljava/util/HashMap;

.field public static volatile v:Z

.field public static volatile w:Z

.field public static final x:Ljava/util/LinkedHashMap;

.field public static final y:Ljava/util/HashSet;

.field public static final z:Ljava/util/HashSet;


# instance fields
.field public a:Ll4/l;

.field public b:Le0/j;

.field public c:Z

.field public d:Landroid/view/View;

.field public e:Landroidx/drawerlayout/widget/DrawerLayout;

.field public f:Lz3/d;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public i:Z

.field public j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field public k:La4/f;

.field public final l:Landroidx/fragment/app/x0;

.field public volatile m:Z

.field public volatile n:Z

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/zalexdev/stryker/MainActivity;->u:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0166

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lj2/n;

    .line 21
    .line 22
    const-string v4, "Dashboard"

    .line 23
    .line 24
    const v5, 0x7f0800dd

    .line 25
    .line 26
    .line 27
    const v6, -0xea9a40

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v4, v5, v6}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const v2, 0x7f0a0638

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lj2/n;

    .line 44
    .line 45
    const-string v4, "Terminal"

    .line 46
    .line 47
    const v5, 0x7f0801c8

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v4, v5, v6}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const v2, 0x7f0a0386

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v4, Lj2/n;

    .line 64
    .line 65
    const-string v5, "Logs"

    .line 66
    .line 67
    const v7, 0x7f0800a8

    .line 68
    .line 69
    .line 70
    invoke-direct {v4, v5, v7, v6}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const v3, 0x7f0a0716

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-instance v4, Lj2/n;

    .line 84
    .line 85
    const-string v5, "WiFi networks"

    .line 86
    .line 87
    const v7, 0x7f0801e0

    .line 88
    .line 89
    .line 90
    invoke-direct {v4, v5, v7, v6}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const v3, 0x7f0a025c

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-instance v4, Lj2/n;

    .line 104
    .line 105
    const-string v5, "Handshakes"

    .line 106
    .line 107
    const v7, 0x7f0801b9

    .line 108
    .line 109
    .line 110
    const v8, -0xff7685

    .line 111
    .line 112
    .line 113
    invoke-direct {v4, v5, v7, v8}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const v3, 0x7f0a039a

    .line 120
    .line 121
    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    new-instance v5, Lj2/n;

    .line 127
    .line 128
    const-string v7, "MAC changer"

    .line 129
    .line 130
    const v8, 0x7f08018a

    .line 131
    .line 132
    .line 133
    invoke-direct {v5, v7, v8, v6}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    const v4, 0x7f0a0747

    .line 140
    .line 141
    .line 142
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    new-instance v7, Lj2/n;

    .line 147
    .line 148
    const-string v8, "WhisperPair (BLE)"

    .line 149
    .line 150
    const v9, 0x7f0801e5

    .line 151
    .line 152
    .line 153
    const v10, -0xc6b655

    .line 154
    .line 155
    .line 156
    invoke-direct {v7, v8, v9, v10}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v5, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    const v5, 0x7f0a034e

    .line 163
    .line 164
    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    new-instance v7, Lj2/n;

    .line 170
    .line 171
    const-string v8, "Local network"

    .line 172
    .line 173
    const v9, 0x7f080120

    .line 174
    .line 175
    .line 176
    const v11, -0x54b844

    .line 177
    .line 178
    .line 179
    invoke-direct {v7, v8, v9, v11}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v5, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    const v5, 0x7f0a0449

    .line 186
    .line 187
    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    new-instance v7, Lj2/n;

    .line 193
    .line 194
    const-string v8, "Nmap"

    .line 195
    .line 196
    const v9, 0x7f0801a7

    .line 197
    .line 198
    .line 199
    invoke-direct {v7, v8, v9, v11}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v5, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    const v5, 0x7f0a0477

    .line 206
    .line 207
    .line 208
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    new-instance v7, Lj2/n;

    .line 213
    .line 214
    const-string v8, "Web scanner"

    .line 215
    .line 216
    const v9, 0x7f0801de

    .line 217
    .line 218
    .line 219
    invoke-direct {v7, v8, v9, v10}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v5, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    const v5, 0x7f0a008e

    .line 226
    .line 227
    .line 228
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    new-instance v7, Lj2/n;

    .line 233
    .line 234
    const-string v8, "Arsenal"

    .line 235
    .line 236
    const v9, 0x7f08014a

    .line 237
    .line 238
    .line 239
    const v10, -0x109400

    .line 240
    .line 241
    .line 242
    invoke-direct {v7, v8, v9, v10}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v5, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    const v5, 0x7f0a024a

    .line 249
    .line 250
    .line 251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    new-instance v8, Lj2/n;

    .line 256
    .line 257
    const-string v9, "HID Attacks"

    .line 258
    .line 259
    const v10, 0x7f08011f

    .line 260
    .line 261
    .line 262
    const v11, -0x39d7d8

    .line 263
    .line 264
    .line 265
    invoke-direct {v8, v9, v10, v11}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v7, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    const v7, 0x7f0a03ca

    .line 272
    .line 273
    .line 274
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    new-instance v8, Lj2/n;

    .line 279
    .line 280
    const-string v9, "Metasploit"

    .line 281
    .line 282
    const v10, 0x7f0801b4

    .line 283
    .line 284
    .line 285
    invoke-direct {v8, v9, v10, v11}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v7, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    const v7, 0x7f0a0220

    .line 292
    .line 293
    .line 294
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    new-instance v9, Lj2/n;

    .line 299
    .line 300
    const-string v10, "GeoMac"

    .line 301
    .line 302
    const v11, 0x7f080138

    .line 303
    .line 304
    .line 305
    const v12, -0xff7c71

    .line 306
    .line 307
    .line 308
    invoke-direct {v9, v10, v11, v12}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v8, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    const v8, 0x7f0a06fa

    .line 315
    .line 316
    .line 317
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    new-instance v9, Lj2/n;

    .line 322
    .line 323
    const-string v10, "VNC desktop"

    .line 324
    .line 325
    const v11, 0x7f0801db

    .line 326
    .line 327
    .line 328
    const v12, -0xa1ca4f

    .line 329
    .line 330
    .line 331
    invoke-direct {v9, v10, v11, v12}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v8, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    const v8, 0x7f0a067c

    .line 338
    .line 339
    .line 340
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    new-instance v10, Lj2/n;

    .line 345
    .line 346
    const-string v11, "USB Arsenal"

    .line 347
    .line 348
    const v13, 0x7f0801d9

    .line 349
    .line 350
    .line 351
    invoke-direct {v10, v11, v13, v6}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v9, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    const v9, 0x7f0a039e

    .line 358
    .line 359
    .line 360
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    new-instance v10, Lj2/n;

    .line 365
    .line 366
    const-string v11, "Core manager"

    .line 367
    .line 368
    const v13, 0x7f0801d2

    .line 369
    .line 370
    .line 371
    invoke-direct {v10, v11, v13, v12}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v9, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    const v9, 0x7f0a0019

    .line 378
    .line 379
    .line 380
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v10

    .line 384
    new-instance v11, Lj2/n;

    .line 385
    .line 386
    const-string v12, "About"

    .line 387
    .line 388
    const v13, 0x7f080118

    .line 389
    .line 390
    .line 391
    invoke-direct {v11, v12, v13, v6}, Lj2/n;-><init>(Ljava/lang/String;II)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v10, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    sput-object v0, Lcom/zalexdev/stryker/MainActivity;->x:Ljava/util/LinkedHashMap;

    .line 398
    .line 399
    new-instance v0, Ljava/util/HashSet;

    .line 400
    .line 401
    const/4 v6, 0x3

    .line 402
    new-array v10, v6, [Ljava/lang/Integer;

    .line 403
    .line 404
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    const/4 v11, 0x0

    .line 409
    aput-object v5, v10, v11

    .line 410
    .line 411
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    const/4 v8, 0x1

    .line 416
    aput-object v5, v10, v8

    .line 417
    .line 418
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    const/4 v5, 0x2

    .line 423
    aput-object v3, v10, v5

    .line 424
    .line 425
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 430
    .line 431
    .line 432
    sput-object v0, Lcom/zalexdev/stryker/MainActivity;->y:Ljava/util/HashSet;

    .line 433
    .line 434
    new-instance v0, Ljava/util/HashSet;

    .line 435
    .line 436
    const/4 v3, 0x5

    .line 437
    new-array v3, v3, [Ljava/lang/Integer;

    .line 438
    .line 439
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    aput-object v1, v3, v11

    .line 444
    .line 445
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    aput-object v1, v3, v8

    .line 450
    .line 451
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    aput-object v1, v3, v5

    .line 456
    .line 457
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    aput-object v1, v3, v6

    .line 462
    .line 463
    const/4 v1, 0x4

    .line 464
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    aput-object v2, v3, v1

    .line 469
    .line 470
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 475
    .line 476
    .line 477
    sput-object v0, Lcom/zalexdev/stryker/MainActivity;->z:Ljava/util/HashSet;

    .line 478
    .line 479
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf/q;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/MainActivity;->i:Z

    new-instance v0, Landroidx/fragment/app/x0;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->l:Landroidx/fragment/app/x0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zalexdev/stryker/MainActivity;->p:Z

    return-void
.end method

.method public static f(II)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    const-string p0, "Attached to the VM"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attached to the VM \u2014 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " adapters"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final g(La4/e;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 14
    .line 15
    const v1, 0x7f0a067e

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_a

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 33
    .line 34
    iget-object v2, v2, Ll4/l;->c:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v2}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    move-object v6, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v2, v2, Lu2/h;->o:Lu2/l;

    .line 46
    .line 47
    move-object v6, v2

    .line 48
    :goto_0
    const/4 v2, 0x2

    .line 49
    if-nez v6, :cond_3

    .line 50
    .line 51
    new-instance p1, Lj2/c;

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    invoke-direct {p1, p0, v0}, Lj2/c;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "Start the VM first, then re-scan"

    .line 58
    .line 59
    const-string v1, "Start VM"

    .line 60
    .line 61
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/zalexdev/stryker/MainActivity;->m(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iget-object v4, p1, La4/e;->a:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v5, v6, Lu2/l;->b:Landroid/hardware/usb/UsbManager;

    .line 68
    .line 69
    if-eqz v5, :cond_5

    .line 70
    .line 71
    if-nez v4, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const-string v7, ":"

    .line 75
    .line 76
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    array-length v7, v4

    .line 81
    if-eq v7, v2, :cond_6

    .line 82
    .line 83
    :catch_0
    :cond_5
    :goto_1
    move-object v7, v3

    .line 84
    goto :goto_2

    .line 85
    :cond_6
    :try_start_0
    aget-object v2, v4, v1

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const/16 v7, 0x10

    .line 92
    .line 93
    invoke-static {v2, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v8, 0x1

    .line 98
    aget-object v4, v4, v8

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_5

    .line 125
    .line 126
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    check-cast v7, Landroid/hardware/usb/UsbDevice;

    .line 131
    .line 132
    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-ne v8, v2, :cond_7

    .line 137
    .line 138
    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-ne v8, v4, :cond_7

    .line 143
    .line 144
    :goto_2
    if-eqz v7, :cond_9

    .line 145
    .line 146
    invoke-static {v7}, Lu2/l;->h(Landroid/hardware/usb/UsbDevice;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_8

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_8
    const-string v0, "Attaching adapter to the VM\u2026"

    .line 154
    .line 155
    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/zalexdev/stryker/MainActivity;->m(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Ljava/lang/Thread;

    .line 159
    .line 160
    new-instance v1, Lj2/b;

    .line 161
    .line 162
    const/4 v9, 0x1

    .line 163
    move-object v4, v1

    .line 164
    move-object v5, p0

    .line 165
    move-object v8, p1

    .line 166
    invoke-direct/range {v4 .. v9}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    const-string p1, "usb-attach"

    .line 170
    .line 171
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_9
    :goto_3
    const/16 p1, 0x8

    .line 179
    .line 180
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    :cond_a
    :goto_4
    return-void
.end method

.method public final h(Z)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_1

    .line 8
    :catch_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :catch_1
    move-exception v0

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/lit8 v2, v1, 0x1

    .line 20
    .line 21
    new-array v2, v2, [Ljava/lang/String;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ge v3, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    aput-object v4, v2, v3

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const v3, 0x7f130163

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    aput-object v0, v2, v1

    .line 53
    .line 54
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    const v1, 0x7f130538

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lj2/f;

    .line 67
    .line 68
    invoke-direct {v1, p0, v2, p1}, Lj2/f;-><init>(Lcom/zalexdev/stryker/MainActivity;[Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->r:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v1, 0x7f0801ac

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->l:Landroidx/fragment/app/x0;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/zalexdev/stryker/MainActivity;->b:Le0/j;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget v1, v1, Le0/j;->a:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const v1, 0x7f0a0166

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f01002f

    .line 29
    .line 30
    .line 31
    const v2, 0x7f010030

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/x0;->f(III)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final j()Z
    .locals 4

    .line 1
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final k()V
    .locals 8

    .line 1
    iget-object v4, p0, Lcom/zalexdev/stryker/MainActivity;->d:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v4, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const v0, 0x7f0a01bb

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v2, v0

    .line 18
    check-cast v2, Landroid/widget/TextView;

    .line 19
    .line 20
    const v0, 0x7f0a01bd

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string v1, "engine_type"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    new-instance v6, Ljava/lang/Thread;

    .line 52
    .line 53
    new-instance v7, Lj2/b;

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    move-object v0, v7

    .line 57
    move-object v1, p0

    .line 58
    invoke-direct/range {v0 .. v5}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    const-string v0, "drawer-engine-status"

    .line 62
    .line 63
    invoke-direct {v6, v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 71
    sput-boolean v0, Lcom/zalexdev/stryker/MainActivity;->w:Z

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    const v0, 0x7f1301ae

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 79
    .line 80
    .line 81
    :cond_4
    if-eqz v3, :cond_5

    .line 82
    .line 83
    :try_start_0
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 84
    .line 85
    const v0, 0x7f060315

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method public final l()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/zalexdev/stryker/MainActivity;->m:Z

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/zalexdev/stryker/MainActivity;->n:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/zalexdev/stryker/MainActivity;->n:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const-class v3, Lcom/zalexdev/stryker/appintro/AppIntroActivity;

    .line 29
    .line 30
    const-string v4, "User"

    .line 31
    .line 32
    const-string v5, "username"

    .line 33
    .line 34
    const-string v6, "first_open"

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 39
    .line 40
    invoke-virtual {v0, v6}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-static {p0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lu2/h;->m()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {p0}, Lcom/zalexdev/stryker/engine/RootlessService;->b(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/zalexdev/stryker/dashboard/Dashboard;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lf/n0;

    .line 66
    .line 67
    const/16 v3, 0xb

    .line 68
    .line 69
    invoke-direct {v1, p0, v0, v3}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/os/Handler;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lj2/a;

    .line 85
    .line 86
    const/4 v3, 0x7

    .line 87
    invoke-direct {v1, p0, v3}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v3, 0x5dc

    .line 91
    .line 92
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    new-instance v5, Ljava/util/Timer;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v6, Lj2/m;

    .line 101
    .line 102
    invoke-direct {v6, p0, v2}, Lj2/m;-><init>(Landroid/content/ContextWrapper;I)V

    .line 103
    .line 104
    .line 105
    const-wide/16 v7, 0x0

    .line 106
    .line 107
    const-wide/16 v9, 0x12c

    .line 108
    .line 109
    invoke-virtual/range {v5 .. v10}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/zalexdev/stryker/MainActivity;->j()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    new-instance v0, Ljava/lang/Thread;

    .line 119
    .line 120
    new-instance v1, Lj2/a;

    .line 121
    .line 122
    const/4 v2, 0x6

    .line 123
    invoke-direct {v1, p0, v2}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 134
    .line 135
    invoke-virtual {v0, v5, v4}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iput-boolean v2, p0, Lcom/zalexdev/stryker/MainActivity;->n:Z

    .line 139
    .line 140
    new-instance v0, Landroid/content/Intent;

    .line 141
    .line 142
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_1
    return-void

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 150
    .line 151
    invoke-virtual {v1, v6}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    const-string v6, "/data/local/stryker/release/6.0"

    .line 156
    .line 157
    if-eqz v1, :cond_6

    .line 158
    .line 159
    iget-object v1, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 160
    .line 161
    invoke-virtual {v1, v6}, Ll4/l;->c(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_5

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    .line 169
    .line 170
    new-instance v1, Lj2/a;

    .line 171
    .line 172
    invoke-direct {v1, p0, v2}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 183
    .line 184
    invoke-virtual {v1, v5, v4}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iput-boolean v2, p0, Lcom/zalexdev/stryker/MainActivity;->n:Z

    .line 188
    .line 189
    new-instance v1, Landroid/content/Intent;

    .line 190
    .line 191
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .line 193
    .line 194
    iget-object v3, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {v3}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_7

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_7
    invoke-virtual {v3, v6}, Ll4/l;->c(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_8

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_8
    sget-object v4, Ll4/l;->j:[Ljava/lang/String;

    .line 214
    .line 215
    aget-object v2, v4, v2

    .line 216
    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v5, "/data/local/stryker/release/"

    .line 220
    .line 221
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v3, v2}, Ll4/l;->c(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_9

    .line 236
    .line 237
    const-string v2, "migrate_legacy_chroot"

    .line 238
    .line 239
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    .line 241
    .line 242
    :cond_9
    :goto_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    .line 244
    .line 245
    :cond_a
    :goto_4
    return-void
.end method

.method public final m(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v1, 0x7f0a0680

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ProgressBar;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 16
    .line 17
    const v2, 0x7f0a067f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/ImageView;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 27
    .line 28
    const v3, 0x7f0a0681

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/TextView;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 38
    .line 39
    const v4, 0x7f0a067d

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    const/16 p2, 0x8

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    move v4, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v4, p2

    .line 63
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    if-eqz v1, :cond_6

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    if-ne p1, v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    const p1, 0x7f0800c9

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lx/g;->a:Ljava/lang/Object;

    .line 81
    .line 82
    const p1, 0x7f060073

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-static {p0, p1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    const/4 v0, 0x2

    .line 94
    if-ne p1, v0, :cond_5

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    const p1, 0x7f0801dc

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    .line 104
    .line 105
    sget-object p1, Lx/g;->a:Ljava/lang/Object;

    .line 106
    .line 107
    const p1, 0x7f060339

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    .line 115
    .line 116
    if-nez p3, :cond_7

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_7
    move p2, v2

    .line 120
    :goto_3
    invoke-virtual {v3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    if-eqz p3, :cond_8

    .line 124
    .line 125
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :cond_8
    invoke-virtual {v3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    :cond_9
    return-void
.end method

.method public final n()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->k:La4/f;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/lang/Thread;

    .line 18
    .line 19
    new-instance v3, Lf/n0;

    .line 20
    .line 21
    invoke-direct {v3, p0, v0, v1}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 32
    .line 33
    const v2, 0x7f14030c

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setDismissWithAnimation(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 46
    .line 47
    const v3, 0x7f0d011a

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    move v0, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move v0, v3

    .line 67
    :goto_0
    new-instance v4, La4/f;

    .line 68
    .line 69
    iget-object v5, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 70
    .line 71
    invoke-direct {v4, v5}, La4/f;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    .line 72
    .line 73
    .line 74
    iput-object v4, p0, Lcom/zalexdev/stryker/MainActivity;->k:La4/f;

    .line 75
    .line 76
    iput-boolean v0, v4, La4/f;->o:Z

    .line 77
    .line 78
    iget-object v5, v4, La4/f;->k:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v4, La4/f;->l:Landroid/view/View;

    .line 84
    .line 85
    const/16 v5, 0x8

    .line 86
    .line 87
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 91
    .line 92
    const v6, 0x7f0a0109

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v6}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-object v6, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 100
    .line 101
    const v7, 0x7f0a0107

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v7}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    iget-object v7, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 109
    .line 110
    const v8, 0x7f0a068e

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v8}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iget-object v8, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 118
    .line 119
    const v9, 0x7f0a067e

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v9}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    if-nez v0, :cond_3

    .line 127
    .line 128
    if-eqz v8, :cond_3

    .line 129
    .line 130
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    :cond_3
    if-eqz v3, :cond_4

    .line 134
    .line 135
    new-instance v0, Lj2/c;

    .line 136
    .line 137
    invoke-direct {v0, p0, v2}, Lj2/c;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    if-eqz v6, :cond_5

    .line 144
    .line 145
    new-instance v0, Lj2/c;

    .line 146
    .line 147
    const/4 v2, 0x2

    .line 148
    invoke-direct {v0, p0, v2}, Lj2/c;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    if-eqz v7, :cond_6

    .line 155
    .line 156
    new-instance v0, Lcom/google/android/material/snackbar/a;

    .line 157
    .line 158
    const/16 v2, 0xb

    .line 159
    .line 160
    invoke-direct {v0, p0, v4, v2}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 169
    .line 170
    .line 171
    new-instance v0, Ljava/lang/Thread;

    .line 172
    .line 173
    new-instance v2, Lf/n0;

    .line 174
    .line 175
    invoke-direct {v2, p0, v4, v1}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final o(Landroid/view/View;Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->u:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    sput-boolean v0, Lcom/zalexdev/stryker/MainActivity;->v:Z

    .line 22
    .line 23
    const v3, 0x7f0a0522

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move v4, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v4, 0x8

    .line 37
    .line 38
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    sget-object v3, Lcom/zalexdev/stryker/MainActivity;->x:Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_d

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/util/Map$Entry;

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lj2/n;

    .line 78
    .line 79
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-nez v6, :cond_3

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    const v7, 0x7f0a0537

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Landroid/widget/TextView;

    .line 94
    .line 95
    const v8, 0x7f0a0531

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    check-cast v8, Landroid/widget/ImageView;

    .line 103
    .line 104
    const v9, 0x7f0a0529

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Landroid/widget/TextView;

    .line 112
    .line 113
    if-eqz v7, :cond_4

    .line 114
    .line 115
    iget-object v10, v4, Lj2/n;->a:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    const v7, 0x7f060074

    .line 121
    .line 122
    .line 123
    if-eqz v8, :cond_5

    .line 124
    .line 125
    iget v10, v4, Lj2/n;->b:I

    .line 126
    .line 127
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    .line 129
    .line 130
    sget-object v10, Lx/g;->a:Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {p0, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 137
    .line 138
    .line 139
    :cond_5
    sget-object v8, Lcom/zalexdev/stryker/MainActivity;->u:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    sget-object v8, Lcom/zalexdev/stryker/MainActivity;->y:Ljava/util/HashSet;

    .line 149
    .line 150
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    sget-boolean v10, Lcom/zalexdev/stryker/MainActivity;->w:Z

    .line 161
    .line 162
    if-nez v10, :cond_6

    .line 163
    .line 164
    sget-object v10, Lcom/zalexdev/stryker/MainActivity;->z:Ljava/util/HashSet;

    .line 165
    .line 166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_6

    .line 175
    .line 176
    move v10, v1

    .line 177
    goto :goto_3

    .line 178
    :cond_6
    move v10, v2

    .line 179
    :goto_3
    if-eqz v0, :cond_8

    .line 180
    .line 181
    if-nez v8, :cond_7

    .line 182
    .line 183
    if-eqz v10, :cond_8

    .line 184
    .line 185
    :cond_7
    move v10, v1

    .line 186
    goto :goto_4

    .line 187
    :cond_8
    move v10, v2

    .line 188
    :goto_4
    if-eqz v9, :cond_a

    .line 189
    .line 190
    if-eqz v8, :cond_a

    .line 191
    .line 192
    const-string v11, "ROOT"

    .line 193
    .line 194
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    if-eqz v10, :cond_9

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_9
    const v7, 0x7f060302

    .line 201
    .line 202
    .line 203
    :goto_5
    sget-object v11, Lx/g;->a:Ljava/lang/Object;

    .line 204
    .line 205
    invoke-static {p0, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    :cond_a
    if-eqz v10, :cond_c

    .line 216
    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    if-eqz v8, :cond_b

    .line 220
    .line 221
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    iget-object v4, v4, Lj2/n;->a:Ljava/lang/String;

    .line 225
    .line 226
    const-string v7, " needs root hardware \u2014 unavailable on the rootless VM"

    .line 227
    .line 228
    :goto_6
    invoke-static {v5, v4, v7}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    goto :goto_7

    .line 233
    :cond_b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    iget-object v4, v4, Lj2/n;->a:Ljava/lang/String;

    .line 237
    .line 238
    const-string v7, " needs the VM \u2014 start it from the dashboard first"

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :goto_7
    const v5, 0x3ee66666    # 0.45f

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    .line 245
    .line 246
    .line 247
    new-instance v5, Lcom/google/android/material/snackbar/a;

    .line 248
    .line 249
    const/16 v7, 0xa

    .line 250
    .line 251
    invoke-direct {v5, p0, v4, v7}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_2

    .line 258
    .line 259
    :cond_c
    const/high16 v4, 0x3f800000    # 1.0f

    .line 260
    .line 261
    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    .line 262
    .line 263
    .line 264
    new-instance v4, Lr3/a;

    .line 265
    .line 266
    const/4 v7, 0x2

    .line 267
    invoke-direct {v4, p0, p2, v5, v7}, Lr3/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_2

    .line 274
    .line 275
    :cond_d
    sget p1, Lcom/zalexdev/stryker/MainActivity;->s:I

    .line 276
    .line 277
    if-eqz p1, :cond_e

    .line 278
    .line 279
    iget-object p2, p0, Lcom/zalexdev/stryker/MainActivity;->l:Landroidx/fragment/app/x0;

    .line 280
    .line 281
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    invoke-static {p1}, Landroidx/fragment/app/x0;->h(I)V

    .line 285
    .line 286
    .line 287
    :cond_e
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0a0205

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/u0;->v(I)Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v2, v1, Lcom/zalexdev/stryker/settings/SettingsNew;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    check-cast v1, Lcom/zalexdev/stryker/settings/SettingsNew;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->x()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->I()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/zalexdev/stryker/MainActivity;->i()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->x()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->I()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const-string v1, "nav_type"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    const v0, 0x7f0a01b9

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 70
    .line 71
    const v1, 0x800003

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-static {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->c()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->p()V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ll4/l;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lu3/e;->c(Landroid/content/Context;)Lu3/e;

    .line 16
    .line 17
    .line 18
    const p1, 0x7f0d0022

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lf/q;->setContentView(I)V

    .line 22
    .line 23
    .line 24
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v0, 0x21

    .line 27
    .line 28
    if-lt p1, v0, :cond_0

    .line 29
    .line 30
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    filled-new-array {p1}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/16 v0, 0x539

    .line 43
    .line 44
    invoke-static {p0, p1, v0}, Lv/g;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 48
    .line 49
    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sput-object p1, Lcom/zalexdev/stryker/MainActivity;->t:Landroidx/fragment/app/u0;

    .line 68
    .line 69
    invoke-static {p1, p1}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Lcom/zalexdev/stryker/Initializing;

    .line 74
    .line 75
    invoke-direct {v0}, Lcom/zalexdev/stryker/Initializing;-><init>()V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    const v2, 0x7f0a0205

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->h(Z)I

    .line 87
    .line 88
    .line 89
    const p1, 0x7f0a0595

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/ImageView;

    .line 97
    .line 98
    sput-object p1, Lcom/zalexdev/stryker/MainActivity;->r:Landroid/widget/ImageView;

    .line 99
    .line 100
    new-instance v1, Lj2/c;

    .line 101
    .line 102
    invoke-direct {v1, p0, v0}, Lj2/c;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Ljava/lang/Thread;

    .line 109
    .line 110
    new-instance v1, Lj2/a;

    .line 111
    .line 112
    const/4 v2, 0x1

    .line 113
    invoke-direct {v1, p0, v2}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 123
    .line 124
    const-string v1, "clean_after_update"

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_1

    .line 131
    .line 132
    new-instance p1, Ljava/lang/Thread;

    .line 133
    .line 134
    new-instance v3, Lj2/a;

    .line 135
    .line 136
    const/4 v4, 0x2

    .line 137
    invoke-direct {v3, p0, v4}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Ll4/l;->g0(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/MainActivity;->l()V

    .line 152
    .line 153
    .line 154
    const p1, 0x7f0a01b9

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 162
    .line 163
    const v1, 0x7f0a05fd

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Landroid/widget/TextView;

    .line 171
    .line 172
    sput-object v1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 173
    .line 174
    const v1, 0x7f0a03c0

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Landroid/widget/ImageView;

    .line 182
    .line 183
    new-instance v3, Lcom/google/android/material/snackbar/a;

    .line 184
    .line 185
    const/16 v4, 0x8

    .line 186
    .line 187
    invoke-direct {v3, p0, p1, v4}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    const v1, 0x7f0a0417

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {p0, v1, p1}, Lcom/zalexdev/stryker/MainActivity;->o(Landroid/view/View;Landroidx/drawerlayout/widget/DrawerLayout;)V

    .line 201
    .line 202
    .line 203
    const v3, 0x7f0a03bc

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    new-instance v4, Lcom/nambimobile/widgets/efab/a;

    .line 211
    .line 212
    const/4 v5, 0x3

    .line 213
    invoke-direct {v4, p1, v5}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    const v3, 0x7f0a01ba

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    check-cast v3, Landroid/widget/TextView;

    .line 227
    .line 228
    if-eqz v3, :cond_2

    .line 229
    .line 230
    const-string v4, "arm64"

    .line 231
    .line 232
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    :cond_2
    iput-object v1, p0, Lcom/zalexdev/stryker/MainActivity;->d:Landroid/view/View;

    .line 236
    .line 237
    iput-object p1, p0, Lcom/zalexdev/stryker/MainActivity;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 238
    .line 239
    new-instance v3, Lj2/k;

    .line 240
    .line 241
    invoke-direct {v3, v1, p1, p0}, Lj2/k;-><init>(Landroid/view/View;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/zalexdev/stryker/MainActivity;)V

    .line 242
    .line 243
    .line 244
    iget-object v4, p1, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 245
    .line 246
    if-nez v4, :cond_3

    .line 247
    .line 248
    new-instance v4, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object v4, p1, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 254
    .line 255
    :cond_3
    iget-object p1, p1, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/zalexdev/stryker/MainActivity;->k()V

    .line 261
    .line 262
    .line 263
    const p1, 0x7f0a01be

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Landroid/widget/TextView;

    .line 271
    .line 272
    if-eqz p1, :cond_4

    .line 273
    .line 274
    const-string v1, "v6.0.1"

    .line 275
    .line 276
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    :cond_4
    sget p1, Lcom/zalexdev/stryker/MainActivity;->s:I

    .line 280
    .line 281
    if-nez p1, :cond_5

    .line 282
    .line 283
    iget-object p1, p0, Lcom/zalexdev/stryker/MainActivity;->l:Landroidx/fragment/app/x0;

    .line 284
    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    const p1, 0x7f0a0166

    .line 289
    .line 290
    .line 291
    invoke-static {p1}, Landroidx/fragment/app/x0;->h(I)V

    .line 292
    .line 293
    .line 294
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    if-eqz p1, :cond_6

    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    const-string v1, "open_update"

    .line 305
    .line 306
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_6

    .line 311
    .line 312
    move v0, v2

    .line 313
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    new-instance v1, Ljava/lang/Thread;

    .line 318
    .line 319
    new-instance v2, Ln1/o;

    .line 320
    .line 321
    const/4 v3, 0x4

    .line 322
    invoke-direct {v2, p1, v0, p0, v3}, Ln1/o;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    .line 323
    .line 324
    .line 325
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 329
    .line 330
    .line 331
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/a0;->onResume()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/MainActivity;->k()V

    iget-boolean v0, p0, Lcom/zalexdev/stryker/MainActivity;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/MainActivity;->p:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zalexdev/stryker/MainActivity;->l()V

    return-void
.end method
