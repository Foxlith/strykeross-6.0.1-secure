.class public final synthetic Lw2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/geomac/GeoMac;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/geomac/GeoMac;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lw2/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw2/f;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw2/f;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, v0, Lw2/f;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget v1, Lcom/zalexdev/stryker/geomac/GeoMac;->r:I

    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 19
    .line 20
    iget-object v3, v5, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const v3, 0x7f1301fc

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v3, 0x7f1301fb

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v3, Lw2/g;

    .line 40
    .line 41
    invoke-direct {v3, v5, v4}, Lw2/g;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;I)V

    .line 42
    .line 43
    .line 44
    const v4, 0x7f1301fd

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/high16 v3, 0x1040000

    .line 52
    .line 53
    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lf/m;->show()Lf/n;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_0
    sget v1, Lcom/zalexdev/stryker/geomac/GeoMac;->r:I

    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 67
    .line 68
    iget-object v2, v5, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 69
    .line 70
    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    const v2, 0x7f130204

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x2

    .line 81
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 82
    .line 83
    const v6, 0x7f130201

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    aput-object v6, v2, v4

    .line 91
    .line 92
    const v4, 0x7f130202

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    aput-object v4, v2, v3

    .line 100
    .line 101
    new-instance v4, Lw2/g;

    .line 102
    .line 103
    invoke-direct {v4, v5, v3}, Lw2/g;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lf/m;->show()Lf/n;

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_1
    sget v1, Lcom/zalexdev/stryker/geomac/GeoMac;->r:I

    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    new-instance v1, Ljava/io/File;

    .line 120
    .line 121
    const-string v3, "/sdcard/Stryker/geomac"

    .line 122
    .line 123
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v6, Lx2/a;

    .line 127
    .line 128
    invoke-direct {v6, v4}, Lx2/a;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    new-instance v6, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    if-nez v1, :cond_0

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_0
    array-length v7, v1

    .line 144
    move v8, v4

    .line 145
    :goto_0
    if-ge v8, v7, :cond_1

    .line 146
    .line 147
    aget-object v9, v1, v8

    .line 148
    .line 149
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    add-int/lit8 v8, v8, 0x1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    new-instance v1, Le0/b;

    .line 156
    .line 157
    const/4 v7, 0x5

    .line 158
    invoke-direct {v1, v7}, Le0/b;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 162
    .line 163
    .line 164
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    const v7, 0x7f130208

    .line 169
    .line 170
    .line 171
    if-eqz v1, :cond_2

    .line 172
    .line 173
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 174
    .line 175
    iget-object v4, v5, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 176
    .line 177
    invoke-direct {v1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const v4, 0x7f130205

    .line 185
    .line 186
    .line 187
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v5, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    const v3, 0x104000a

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    :goto_2
    invoke-virtual {v1}, Lf/m;->show()Lf/n;

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 215
    .line 216
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 217
    .line 218
    const-string v3, "yyyy-MM-dd HH:mm"

    .line 219
    .line 220
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 221
    .line 222
    invoke-direct {v2, v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 223
    .line 224
    .line 225
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-ge v4, v3, :cond_3

    .line 230
    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    check-cast v8, Ljava/io/File;

    .line 241
    .line 242
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v8, "\n"

    .line 250
    .line 251
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    new-instance v8, Ljava/util/Date;

    .line 255
    .line 256
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    check-cast v9, Ljava/io/File;

    .line 261
    .line 262
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    .line 263
    .line 264
    .line 265
    move-result-wide v9

    .line 266
    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    aput-object v3, v1, v4

    .line 281
    .line 282
    add-int/lit8 v4, v4, 0x1

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_3
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 286
    .line 287
    iget-object v3, v5, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 288
    .line 289
    invoke-direct {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    new-instance v3, Lcom/stryker/terminal/ui/customize/a;

    .line 297
    .line 298
    const/16 v4, 0x9

    .line 299
    .line 300
    invoke-direct {v3, v5, v6, v4}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    goto :goto_2

    .line 308
    :goto_4
    return-void

    .line 309
    :pswitch_2
    iget-object v1, v5, Lcom/zalexdev/stryker/geomac/GeoMac;->j:Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-eqz v2, :cond_4

    .line 316
    .line 317
    iget-object v1, v5, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 318
    .line 319
    const v2, 0x7f130209

    .line 320
    .line 321
    .line 322
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 327
    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    const-wide v6, -0x3fa9800000000000L    # -90.0

    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    const-wide v8, 0x4056800000000000L    # 90.0

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    const-wide v10, -0x3f99800000000000L    # -180.0

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    const-wide v12, 0x4066800000000000L    # 180.0

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    move-wide v15, v6

    .line 355
    move-wide/from16 v19, v8

    .line 356
    .line 357
    move-wide/from16 v17, v10

    .line 358
    .line 359
    move-wide/from16 v21, v12

    .line 360
    .line 361
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_9

    .line 366
    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    check-cast v2, Ly2/b;

    .line 372
    .line 373
    iget-wide v6, v2, Ly2/b;->c:D

    .line 374
    .line 375
    cmpl-double v4, v6, v15

    .line 376
    .line 377
    if-lez v4, :cond_6

    .line 378
    .line 379
    move-wide v15, v6

    .line 380
    :cond_6
    cmpg-double v4, v6, v19

    .line 381
    .line 382
    if-gez v4, :cond_7

    .line 383
    .line 384
    move-wide/from16 v19, v6

    .line 385
    .line 386
    :cond_7
    iget-wide v6, v2, Ly2/b;->d:D

    .line 387
    .line 388
    cmpl-double v2, v6, v17

    .line 389
    .line 390
    if-lez v2, :cond_8

    .line 391
    .line 392
    move-wide/from16 v17, v6

    .line 393
    .line 394
    :cond_8
    cmpg-double v2, v6, v21

    .line 395
    .line 396
    if-gez v2, :cond_5

    .line 397
    .line 398
    move-wide/from16 v21, v6

    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_9
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    .line 402
    .line 403
    move-object v14, v1

    .line 404
    invoke-direct/range {v14 .. v22}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 405
    .line 406
    .line 407
    iget-object v2, v5, Lcom/zalexdev/stryker/geomac/GeoMac;->f:Lorg/osmdroid/views/MapView;

    .line 408
    .line 409
    const/16 v4, 0x50

    .line 410
    .line 411
    invoke-virtual {v2, v1, v3, v4}, Lorg/osmdroid/views/MapView;->zoomToBoundingBox(Lorg/osmdroid/util/BoundingBox;ZI)V

    .line 412
    .line 413
    .line 414
    :goto_6
    return-void

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
