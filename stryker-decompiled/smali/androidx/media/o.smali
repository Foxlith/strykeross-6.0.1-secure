.class public final Landroidx/media/o;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroidx/fragment/app/n;

    invoke-direct {v0, p1}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media/o;->a:Landroidx/fragment/app/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "data_callback_token"

    .line 11
    .line 12
    const-string v5, "data_calling_uid"

    .line 13
    .line 14
    const-string v6, "data_calling_pid"

    .line 15
    .line 16
    const-string v7, "data_package_name"

    .line 17
    .line 18
    const-string v8, "data_root_hints"

    .line 19
    .line 20
    const-string v9, "data_media_item_id"

    .line 21
    .line 22
    const-string v10, "data_result_receiver"

    .line 23
    .line 24
    move-object/from16 v11, p0

    .line 25
    .line 26
    iget-object v13, v11, Landroidx/media/o;->a:Landroidx/fragment/app/n;

    .line 27
    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Unhandled message: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "\n  Service version: 2\n  Client version: "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "MBServiceCompat"

    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :pswitch_0
    const-string v2, "data_custom_action_extras"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object v16

    .line 68
    invoke-static/range {v16 .. v16}, La/c;->f(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    const-string v2, "data_custom_action"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v15

    .line 77
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object/from16 v17, v1

    .line 82
    .line 83
    check-cast v17, Lb/e;

    .line 84
    .line 85
    new-instance v14, Landroidx/fragment/app/n;

    .line 86
    .line 87
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 88
    .line 89
    invoke-direct {v14, v0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    if-nez v17, :cond_0

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_0
    iget-object v0, v13, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 108
    .line 109
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 110
    .line 111
    new-instance v1, Landroidx/media/n;

    .line 112
    .line 113
    const/16 v18, 0x1

    .line 114
    .line 115
    move-object v12, v1

    .line 116
    invoke-direct/range {v12 .. v18}, Landroidx/media/n;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;Landroid/os/Bundle;Lb/e;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroidx/media/o;->a(Ljava/lang/Runnable;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :pswitch_1
    const-string v2, "data_search_extras"

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 127
    .line 128
    .line 129
    move-result-object v16

    .line 130
    invoke-static/range {v16 .. v16}, La/c;->f(Landroid/os/Bundle;)V

    .line 131
    .line 132
    .line 133
    const-string v2, "data_search_query"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    move-object/from16 v17, v1

    .line 144
    .line 145
    check-cast v17, Lb/e;

    .line 146
    .line 147
    new-instance v14, Landroidx/fragment/app/n;

    .line 148
    .line 149
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 150
    .line 151
    invoke-direct {v14, v0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_3

    .line 162
    .line 163
    if-nez v17, :cond_1

    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    :cond_1
    iget-object v0, v13, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 170
    .line 171
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 172
    .line 173
    new-instance v1, Landroidx/media/n;

    .line 174
    .line 175
    const/16 v18, 0x0

    .line 176
    .line 177
    move-object v12, v1

    .line 178
    invoke-direct/range {v12 .. v18}, Landroidx/media/n;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;Landroid/os/Bundle;Lb/e;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroidx/media/o;->a(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :pswitch_2
    new-instance v1, Landroidx/fragment/app/n;

    .line 187
    .line 188
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 189
    .line 190
    invoke-direct {v1, v0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v13, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 196
    .line 197
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 198
    .line 199
    new-instance v2, Landroidx/media/l;

    .line 200
    .line 201
    const/4 v3, 0x1

    .line 202
    invoke-direct {v2, v13, v1, v3}, Landroidx/media/l;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v2}, Landroidx/media/o;->a(Ljava/lang/Runnable;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :pswitch_3
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 211
    .line 212
    .line 213
    move-result-object v18

    .line 214
    invoke-static/range {v18 .. v18}, La/c;->f(Landroid/os/Bundle;)V

    .line 215
    .line 216
    .line 217
    new-instance v14, Landroidx/fragment/app/n;

    .line 218
    .line 219
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 220
    .line 221
    invoke-direct {v14, v0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v15

    .line 228
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v16

    .line 232
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v17

    .line 236
    iget-object v0, v13, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 239
    .line 240
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 241
    .line 242
    new-instance v1, Landroidx/media/k;

    .line 243
    .line 244
    const/16 v19, 0x1

    .line 245
    .line 246
    move-object v12, v1

    .line 247
    invoke-direct/range {v12 .. v19}, Landroidx/media/k;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;IILandroid/os/Bundle;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Landroidx/media/o;->a(Ljava/lang/Runnable;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :pswitch_4
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    move-object/from16 v16, v1

    .line 264
    .line 265
    check-cast v16, Lb/e;

    .line 266
    .line 267
    new-instance v14, Landroidx/fragment/app/n;

    .line 268
    .line 269
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 270
    .line 271
    invoke-direct {v14, v0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_3

    .line 282
    .line 283
    if-nez v16, :cond_2

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :cond_2
    iget-object v0, v13, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 290
    .line 291
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 292
    .line 293
    new-instance v1, Landroidx/media/m;

    .line 294
    .line 295
    const/16 v17, 0x1

    .line 296
    .line 297
    move-object v12, v1

    .line 298
    invoke-direct/range {v12 .. v17}, Landroidx/media/m;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Landroidx/media/o;->a(Ljava/lang/Runnable;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :pswitch_5
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v15

    .line 310
    invoke-static {v1, v4}, Lv/l;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 311
    .line 312
    .line 313
    move-result-object v16

    .line 314
    new-instance v14, Landroidx/fragment/app/n;

    .line 315
    .line 316
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 317
    .line 318
    invoke-direct {v14, v0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, v13, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 324
    .line 325
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 326
    .line 327
    new-instance v1, Landroidx/media/m;

    .line 328
    .line 329
    const/16 v17, 0x0

    .line 330
    .line 331
    move-object v12, v1

    .line 332
    invoke-direct/range {v12 .. v17}, Landroidx/media/m;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v1}, Landroidx/media/o;->a(Ljava/lang/Runnable;)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :pswitch_6
    const-string v2, "data_options"

    .line 341
    .line 342
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 343
    .line 344
    .line 345
    move-result-object v17

    .line 346
    invoke-static/range {v17 .. v17}, La/c;->f(Landroid/os/Bundle;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v15

    .line 353
    invoke-static {v1, v4}, Lv/l;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 354
    .line 355
    .line 356
    move-result-object v16

    .line 357
    new-instance v14, Landroidx/fragment/app/n;

    .line 358
    .line 359
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 360
    .line 361
    invoke-direct {v14, v0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    iget-object v0, v13, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 367
    .line 368
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 369
    .line 370
    new-instance v1, Landroidx/media/n;

    .line 371
    .line 372
    move-object v12, v1

    .line 373
    invoke-direct/range {v12 .. v17}, Landroidx/media/n;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v1}, Landroidx/media/o;->a(Ljava/lang/Runnable;)V

    .line 377
    .line 378
    .line 379
    goto :goto_1

    .line 380
    :pswitch_7
    new-instance v1, Landroidx/fragment/app/n;

    .line 381
    .line 382
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 383
    .line 384
    invoke-direct {v1, v0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    iget-object v0, v13, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 390
    .line 391
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 392
    .line 393
    new-instance v2, Landroidx/media/l;

    .line 394
    .line 395
    invoke-direct {v2, v13, v1, v3}, Landroidx/media/l;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v2}, Landroidx/media/o;->a(Ljava/lang/Runnable;)V

    .line 399
    .line 400
    .line 401
    goto :goto_1

    .line 402
    :pswitch_8
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 403
    .line 404
    .line 405
    move-result-object v18

    .line 406
    invoke-static/range {v18 .. v18}, La/c;->f(Landroid/os/Bundle;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v15

    .line 413
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    move-result v16

    .line 417
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    new-instance v14, Landroidx/fragment/app/n;

    .line 422
    .line 423
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 424
    .line 425
    invoke-direct {v14, v0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    iget-object v0, v13, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 431
    .line 432
    if-eqz v15, :cond_5

    .line 433
    .line 434
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    array-length v4, v2

    .line 443
    :goto_0
    if-ge v3, v4, :cond_6

    .line 444
    .line 445
    aget-object v5, v2, v3

    .line 446
    .line 447
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-eqz v5, :cond_4

    .line 452
    .line 453
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 454
    .line 455
    new-instance v2, Landroidx/media/k;

    .line 456
    .line 457
    const/16 v19, 0x0

    .line 458
    .line 459
    move-object v12, v2

    .line 460
    move/from16 v17, v1

    .line 461
    .line 462
    invoke-direct/range {v12 .. v19}, Landroidx/media/k;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;IILandroid/os/Bundle;I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v2}, Landroidx/media/o;->a(Ljava/lang/Runnable;)V

    .line 466
    .line 467
    .line 468
    :cond_3
    :goto_1
    return-void

    .line 469
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 470
    .line 471
    goto :goto_0

    .line 472
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 476
    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    const-string v3, "Package/uid mismatch: uid="

    .line 480
    .line 481
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v1, " package="

    .line 488
    .line 489
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    throw v0

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
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

.method public final sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, La/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "data_calling_uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data_calling_pid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
