.class public final Landroid/support/v4/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/support/v4/media/a;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroid/support/v4/media/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_0
    new-instance v0, Landroidx/recyclerview/widget/z1;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput v1, v0, Landroidx/recyclerview/widget/z1;->a:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, v0, Landroidx/recyclerview/widget/z1;->b:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Landroidx/recyclerview/widget/z1;->c:I

    .line 37
    .line 38
    if-lez v1, :cond_0

    .line 39
    .line 40
    new-array v1, v1, [I

    .line 41
    .line 42
    iput-object v1, v0, Landroidx/recyclerview/widget/z1;->d:[I

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, v0, Landroidx/recyclerview/widget/z1;->e:I

    .line 52
    .line 53
    if-lez v1, :cond_1

    .line 54
    .line 55
    new-array v1, v1, [I

    .line 56
    .line 57
    iput-object v1, v0, Landroidx/recyclerview/widget/z1;->f:[I

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-ne v1, v2, :cond_2

    .line 67
    .line 68
    move v1, v2

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move v1, v3

    .line 71
    :goto_0
    iput-boolean v1, v0, Landroidx/recyclerview/widget/z1;->h:Z

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ne v1, v2, :cond_3

    .line 78
    .line 79
    move v1, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move v1, v3

    .line 82
    :goto_1
    iput-boolean v1, v0, Landroidx/recyclerview/widget/z1;->i:Z

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ne v1, v2, :cond_4

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move v2, v3

    .line 92
    :goto_2
    iput-boolean v2, v0, Landroidx/recyclerview/widget/z1;->j:Z

    .line 93
    .line 94
    const-class v1, Landroidx/recyclerview/widget/y1;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, v0, Landroidx/recyclerview/widget/z1;->g:Ljava/util/List;

    .line 105
    .line 106
    return-object v0

    .line 107
    :pswitch_1
    new-instance v0, Landroidx/recyclerview/widget/y1;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iput v1, v0, Landroidx/recyclerview/widget/y1;->a:I

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    iput v1, v0, Landroidx/recyclerview/widget/y1;->b:I

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-ne v1, v2, :cond_5

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    move v2, v3

    .line 132
    :goto_3
    iput-boolean v2, v0, Landroidx/recyclerview/widget/y1;->d:Z

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-lez v1, :cond_6

    .line 139
    .line 140
    new-array v1, v1, [I

    .line 141
    .line 142
    iput-object v1, v0, Landroidx/recyclerview/widget/y1;->c:[I

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 145
    .line 146
    .line 147
    :cond_6
    return-object v0

    .line 148
    :pswitch_2
    new-instance v0, Landroidx/recyclerview/widget/a0;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iput v1, v0, Landroidx/recyclerview/widget/a0;->a:I

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    iput v1, v0, Landroidx/recyclerview/widget/a0;->b:I

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-ne p1, v2, :cond_7

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    move v2, v3

    .line 173
    :goto_4
    iput-boolean v2, v0, Landroidx/recyclerview/widget/a0;->c:Z

    .line 174
    .line 175
    return-object v0

    .line 176
    :pswitch_3
    new-instance v0, Lw0/u;

    .line 177
    .line 178
    invoke-direct {v0, p1}, Lw0/u;-><init>(Landroid/os/Parcel;)V

    .line 179
    .line 180
    .line 181
    return-object v0

    .line 182
    :pswitch_4
    new-instance v0, Lw0/t;

    .line 183
    .line 184
    invoke-direct {v0, p1}, Lw0/t;-><init>(Landroid/os/Parcel;)V

    .line 185
    .line 186
    .line 187
    return-object v0

    .line 188
    :pswitch_5
    new-instance v0, Lw0/l;

    .line 189
    .line 190
    invoke-direct {v0, p1}, Lw0/l;-><init>(Landroid/os/Parcel;)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :pswitch_6
    new-instance v0, Lw0/i;

    .line 195
    .line 196
    invoke-direct {v0, p1}, Lw0/i;-><init>(Landroid/os/Parcel;)V

    .line 197
    .line 198
    .line 199
    return-object v0

    .line 200
    :pswitch_7
    new-instance v0, Lw0/g;

    .line 201
    .line 202
    invoke-direct {v0, p1}, Lw0/g;-><init>(Landroid/os/Parcel;)V

    .line 203
    .line 204
    .line 205
    return-object v0

    .line 206
    :pswitch_8
    new-instance v0, Lw0/e;

    .line 207
    .line 208
    invoke-direct {v0, p1}, Lw0/e;-><init>(Landroid/os/Parcel;)V

    .line 209
    .line 210
    .line 211
    return-object v0

    .line 212
    :pswitch_9
    new-instance v0, Lw0/d;

    .line 213
    .line 214
    invoke-direct {v0, p1}, Lw0/d;-><init>(Landroid/os/Parcel;)V

    .line 215
    .line 216
    .line 217
    return-object v0

    .line 218
    :pswitch_a
    new-instance v0, Landroidx/fragment/app/a1;

    .line 219
    .line 220
    invoke-direct {v0, p1}, Landroidx/fragment/app/a1;-><init>(Landroid/os/Parcel;)V

    .line 221
    .line 222
    .line 223
    return-object v0

    .line 224
    :pswitch_b
    new-instance v0, Landroidx/fragment/app/w0;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 227
    .line 228
    .line 229
    iput-object v1, v0, Landroidx/fragment/app/w0;->e:Ljava/lang/String;

    .line 230
    .line 231
    new-instance v1, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    iput-object v1, v0, Landroidx/fragment/app/w0;->f:Ljava/util/ArrayList;

    .line 237
    .line 238
    new-instance v1, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object v1, v0, Landroidx/fragment/app/w0;->g:Ljava/util/ArrayList;

    .line 244
    .line 245
    sget-object v1, Landroidx/fragment/app/a1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    iput-object v1, v0, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iput-object v1, v0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    .line 258
    .line 259
    sget-object v1, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 260
    .line 261
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, [Landroidx/fragment/app/b;

    .line 266
    .line 267
    iput-object v1, v0, Landroidx/fragment/app/w0;->c:[Landroidx/fragment/app/b;

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    iput v1, v0, Landroidx/fragment/app/w0;->d:I

    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iput-object v1, v0, Landroidx/fragment/app/w0;->e:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    iput-object v1, v0, Landroidx/fragment/app/w0;->f:Ljava/util/ArrayList;

    .line 286
    .line 287
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 288
    .line 289
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    iput-object v1, v0, Landroidx/fragment/app/w0;->g:Ljava/util/ArrayList;

    .line 294
    .line 295
    sget-object v1, Landroidx/fragment/app/q0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 296
    .line 297
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    iput-object p1, v0, Landroidx/fragment/app/w0;->h:Ljava/util/ArrayList;

    .line 302
    .line 303
    return-object v0

    .line 304
    :pswitch_c
    new-instance v0, Landroidx/fragment/app/q0;

    .line 305
    .line 306
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    iput-object v1, v0, Landroidx/fragment/app/q0;->a:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    iput p1, v0, Landroidx/fragment/app/q0;->b:I

    .line 320
    .line 321
    return-object v0

    .line 322
    :pswitch_d
    new-instance v0, Landroidx/fragment/app/b;

    .line 323
    .line 324
    invoke-direct {v0, p1}, Landroidx/fragment/app/b;-><init>(Landroid/os/Parcel;)V

    .line 325
    .line 326
    .line 327
    return-object v0

    .line 328
    :pswitch_e
    new-instance v0, Lk0/l;

    .line 329
    .line 330
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    iput p1, v0, Lk0/l;->a:I

    .line 338
    .line 339
    return-object v0

    .line 340
    :pswitch_f
    new-instance v0, Landroidx/appcompat/widget/y0;

    .line 341
    .line 342
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-eqz p1, :cond_8

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_8
    move v2, v3

    .line 353
    :goto_5
    iput-boolean v2, v0, Landroidx/appcompat/widget/y0;->a:Z

    .line 354
    .line 355
    return-object v0

    .line 356
    :pswitch_10
    new-instance v0, Landroidx/appcompat/widget/n;

    .line 357
    .line 358
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    iput p1, v0, Landroidx/appcompat/widget/n;->a:I

    .line 366
    .line 367
    return-object v0

    .line 368
    :pswitch_11
    new-instance v0, Landroidx/activity/result/i;

    .line 369
    .line 370
    invoke-direct {v0, p1}, Landroidx/activity/result/i;-><init>(Landroid/os/Parcel;)V

    .line 371
    .line 372
    .line 373
    return-object v0

    .line 374
    :pswitch_12
    new-instance v0, Landroidx/activity/result/a;

    .line 375
    .line 376
    invoke-direct {v0, p1}, Landroidx/activity/result/a;-><init>(Landroid/os/Parcel;)V

    .line 377
    .line 378
    .line 379
    return-object v0

    .line 380
    :pswitch_13
    new-instance v0, Lb/e;

    .line 381
    .line 382
    invoke-direct {v0, p1}, Lb/e;-><init>(Landroid/os/Parcel;)V

    .line 383
    .line 384
    .line 385
    return-object v0

    .line 386
    :pswitch_14
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 387
    .line 388
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;)V

    .line 389
    .line 390
    .line 391
    return-object v0

    .line 392
    :pswitch_15
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 393
    .line 394
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    iput v1, v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->a:I

    .line 402
    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    iput v1, v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->c:I

    .line 408
    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    iput v1, v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->d:I

    .line 414
    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    iput v1, v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->e:I

    .line 420
    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    iput p1, v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->b:I

    .line 426
    .line 427
    return-object v0

    .line 428
    :pswitch_16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 433
    .line 434
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Landroid/os/Parcelable;)V

    .line 435
    .line 436
    .line 437
    return-object v0

    .line 438
    :pswitch_17
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 439
    .line 440
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 441
    .line 442
    .line 443
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 444
    .line 445
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    check-cast p1, Landroid/os/ResultReceiver;

    .line 450
    .line 451
    iput-object p1, v0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->a:Landroid/os/ResultReceiver;

    .line 452
    .line 453
    return-object v0

    .line 454
    :pswitch_18
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 455
    .line 456
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/os/Parcel;)V

    .line 457
    .line 458
    .line 459
    return-object v0

    .line 460
    :pswitch_19
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    .line 461
    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 467
    .line 468
    .line 469
    move-result p1

    .line 470
    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    .line 471
    .line 472
    .line 473
    return-object v0

    .line 474
    :pswitch_1a
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 475
    .line 476
    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    .line 477
    .line 478
    .line 479
    return-object v0

    .line 480
    :pswitch_1b
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 481
    .line 482
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    if-eqz p1, :cond_d

    .line 487
    .line 488
    move-object v0, p1

    .line 489
    check-cast v0, Landroid/media/MediaDescription;

    .line 490
    .line 491
    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    invoke-virtual {v0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    .line 500
    .line 501
    .line 502
    move-result-object v5

    .line 503
    invoke-virtual {v0}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    invoke-virtual {v0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    invoke-virtual {v0}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    .line 512
    .line 513
    .line 514
    move-result-object v8

    .line 515
    invoke-virtual {v0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    const-string v9, "android.support.v4.media.description.MEDIA_URI"

    .line 520
    .line 521
    if-eqz v2, :cond_9

    .line 522
    .line 523
    invoke-static {v2}, La/c;->f(Landroid/os/Bundle;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 527
    .line 528
    .line 529
    move-result-object v10

    .line 530
    check-cast v10, Landroid/net/Uri;

    .line 531
    .line 532
    goto :goto_6

    .line 533
    :cond_9
    move-object v10, v1

    .line 534
    :goto_6
    if-eqz v10, :cond_b

    .line 535
    .line 536
    const-string v11, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    .line 537
    .line 538
    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result v12

    .line 542
    if-eqz v12, :cond_a

    .line 543
    .line 544
    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    .line 545
    .line 546
    .line 547
    move-result v12

    .line 548
    const/4 v13, 0x2

    .line 549
    if-ne v12, v13, :cond_a

    .line 550
    .line 551
    move-object v9, v1

    .line 552
    goto :goto_7

    .line 553
    :cond_a
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    :cond_b
    move-object v9, v2

    .line 560
    :goto_7
    if-eqz v10, :cond_c

    .line 561
    .line 562
    goto :goto_8

    .line 563
    :cond_c
    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    move-object v10, v0

    .line 568
    :goto_8
    new-instance v1, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 569
    .line 570
    move-object v2, v1

    .line 571
    invoke-direct/range {v2 .. v10}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 572
    .line 573
    .line 574
    iput-object p1, v1, Landroid/support/v4/media/MediaDescriptionCompat;->i:Ljava/lang/Object;

    .line 575
    .line 576
    :cond_d
    return-object v1

    .line 577
    :pswitch_1c
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 578
    .line 579
    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    .line 580
    .line 581
    .line 582
    return-object v0

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/media/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Landroidx/recyclerview/widget/z1;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Landroidx/recyclerview/widget/y1;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Landroidx/recyclerview/widget/a0;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lw0/u;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Lw0/t;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Lw0/l;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Lw0/i;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Lw0/g;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Lw0/e;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Lw0/d;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [Landroidx/fragment/app/a1;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Landroidx/fragment/app/w0;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [Landroidx/fragment/app/q0;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [Landroidx/fragment/app/b;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [Lk0/l;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [Landroidx/appcompat/widget/y0;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [Landroidx/appcompat/widget/n;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [Landroidx/activity/result/i;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [Landroidx/activity/result/a;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [Lb/e;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_17
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_18
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_19
    new-array p1, p1, [Landroid/support/v4/media/RatingCompat;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_1a
    new-array p1, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_1b
    new-array p1, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_1c
    new-array p1, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
