.class public final Lv/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:Ljava/lang/CharSequence;

.field public i:I

.field public j:Z

.field public k:Lv/y;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Landroid/os/Bundle;

.field public p:I

.field public q:Ljava/lang/String;

.field public final r:Z

.field public final s:Landroid/app/Notification;

.field public final t:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv/z;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv/z;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv/z;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/z;->j:Z

    const/4 v1, 0x0

    iput v1, p0, Lv/z;->p:I

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lv/z;->s:Landroid/app/Notification;

    iput-object p1, p0, Lv/z;->a:Landroid/content/Context;

    iput-object p2, p0, Lv/z;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Lv/z;->i:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv/z;->t:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lv/z;->r:Z

    return-void
.end method

.method public static c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    iget-object v3, v0, Lv/z;->a:Landroid/content/Context;

    .line 16
    .line 17
    const/16 v4, 0x1a

    .line 18
    .line 19
    if-lt v2, v4, :cond_0

    .line 20
    .line 21
    new-instance v2, Landroid/app/Notification$Builder;

    .line 22
    .line 23
    iget-object v2, v0, Lv/z;->q:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v3, v2}, Lq1/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    .line 31
    .line 32
    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v3, v0, Lv/z;->s:Landroid/app/Notification;

    .line 36
    .line 37
    iget-wide v5, v3, Landroid/app/Notification;->when:J

    .line 38
    .line 39
    invoke-virtual {v2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iget v6, v3, Landroid/app/Notification;->icon:I

    .line 44
    .line 45
    iget v7, v3, Landroid/app/Notification;->iconLevel:I

    .line 46
    .line 47
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v6, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    iget-object v6, v3, Landroid/app/Notification;->vibrate:[J

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget v6, v3, Landroid/app/Notification;->ledARGB:I

    .line 71
    .line 72
    iget v8, v3, Landroid/app/Notification;->ledOnMS:I

    .line 73
    .line 74
    iget v9, v3, Landroid/app/Notification;->ledOffMS:I

    .line 75
    .line 76
    invoke-virtual {v5, v6, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 81
    .line 82
    and-int/lit8 v6, v6, 0x2

    .line 83
    .line 84
    const/4 v8, 0x1

    .line 85
    const/4 v9, 0x0

    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    move v6, v8

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    move v6, v9

    .line 91
    :goto_1
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 96
    .line 97
    and-int/lit8 v6, v6, 0x8

    .line 98
    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    move v6, v8

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    move v6, v9

    .line 104
    :goto_2
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 109
    .line 110
    and-int/lit8 v6, v6, 0x10

    .line 111
    .line 112
    if-eqz v6, :cond_3

    .line 113
    .line 114
    move v6, v8

    .line 115
    goto :goto_3

    .line 116
    :cond_3
    move v6, v9

    .line 117
    :goto_3
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    iget v6, v3, Landroid/app/Notification;->defaults:I

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    iget-object v6, v0, Lv/z;->e:Ljava/lang/CharSequence;

    .line 128
    .line 129
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    iget-object v6, v0, Lv/z;->f:Ljava/lang/CharSequence;

    .line 134
    .line 135
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    iget-object v6, v0, Lv/z;->h:Ljava/lang/CharSequence;

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    iget-object v6, v0, Lv/z;->g:Landroid/app/PendingIntent;

    .line 146
    .line 147
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    iget-object v6, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 152
    .line 153
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 158
    .line 159
    and-int/lit16 v6, v6, 0x80

    .line 160
    .line 161
    if-eqz v6, :cond_4

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_4
    move v8, v9

    .line 165
    :goto_4
    invoke-virtual {v5, v7, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget v6, v0, Lv/z;->l:I

    .line 178
    .line 179
    iget v8, v0, Lv/z;->m:I

    .line 180
    .line 181
    iget-boolean v10, v0, Lv/z;->n:Z

    .line 182
    .line 183
    invoke-virtual {v5, v6, v8, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    iget v6, v0, Lv/z;->i:I

    .line 195
    .line 196
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 197
    .line 198
    .line 199
    iget-object v5, v0, Lv/z;->b:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    const-string v8, "android.support.allowGeneratedReplies"

    .line 210
    .line 211
    const/16 v10, 0x1d

    .line 212
    .line 213
    const/16 v11, 0x1c

    .line 214
    .line 215
    if-eqz v6, :cond_a

    .line 216
    .line 217
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Lv/x;

    .line 222
    .line 223
    invoke-virtual {v6}, Lv/x;->a()Landroidx/core/graphics/drawable/IconCompat;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    new-instance v13, Landroid/app/Notification$Action$Builder;

    .line 228
    .line 229
    if-eqz v12, :cond_5

    .line 230
    .line 231
    invoke-static {v12, v7}, La0/d;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    goto :goto_6

    .line 236
    :cond_5
    move-object v12, v7

    .line 237
    :goto_6
    iget-object v14, v6, Lv/x;->f:Ljava/lang/CharSequence;

    .line 238
    .line 239
    iget-object v15, v6, Lv/x;->g:Landroid/app/PendingIntent;

    .line 240
    .line 241
    invoke-direct {v13, v12, v14, v15}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 242
    .line 243
    .line 244
    iget-object v12, v6, Lv/x;->a:Landroid/os/Bundle;

    .line 245
    .line 246
    new-instance v14, Landroid/os/Bundle;

    .line 247
    .line 248
    if-eqz v12, :cond_6

    .line 249
    .line 250
    invoke-direct {v14, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 251
    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_6
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 255
    .line 256
    .line 257
    :goto_7
    iget-boolean v12, v6, Lv/x;->c:Z

    .line 258
    .line 259
    invoke-virtual {v14, v8, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    .line 261
    .line 262
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 263
    .line 264
    invoke-virtual {v13, v12}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 265
    .line 266
    .line 267
    const-string v12, "android.support.action.semanticAction"

    .line 268
    .line 269
    invoke-virtual {v14, v12, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    if-lt v8, v11, :cond_7

    .line 273
    .line 274
    invoke-static {v13, v9}, Landroidx/core/view/j;->p(Landroid/app/Notification$Action$Builder;I)V

    .line 275
    .line 276
    .line 277
    :cond_7
    if-lt v8, v10, :cond_8

    .line 278
    .line 279
    invoke-static {v13, v9}, Lcom/google/android/material/textfield/h;->d(Landroid/app/Notification$Action$Builder;Z)V

    .line 280
    .line 281
    .line 282
    :cond_8
    const/16 v10, 0x1f

    .line 283
    .line 284
    if-lt v8, v10, :cond_9

    .line 285
    .line 286
    invoke-static {v13, v9}, Landroidx/core/view/d;->h(Landroid/app/Notification$Action$Builder;Z)V

    .line 287
    .line 288
    .line 289
    :cond_9
    const-string v8, "android.support.action.showsUserInterface"

    .line 290
    .line 291
    iget-boolean v6, v6, Lv/x;->d:Z

    .line 292
    .line 293
    invoke-virtual {v14, v8, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v13, v14}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v13}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 304
    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_a
    iget-object v5, v0, Lv/z;->o:Landroid/os/Bundle;

    .line 308
    .line 309
    if-eqz v5, :cond_b

    .line 310
    .line 311
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 312
    .line 313
    .line 314
    :cond_b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 315
    .line 316
    iget-boolean v6, v0, Lv/z;->j:Z

    .line 317
    .line 318
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    iget v12, v0, Lv/z;->p:I

    .line 341
    .line 342
    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    iget-object v12, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 355
    .line 356
    iget-object v3, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 357
    .line 358
    invoke-virtual {v6, v12, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 359
    .line 360
    .line 361
    iget-object v3, v0, Lv/z;->c:Ljava/util/ArrayList;

    .line 362
    .line 363
    iget-object v6, v0, Lv/z;->t:Ljava/util/ArrayList;

    .line 364
    .line 365
    if-ge v5, v11, :cond_e

    .line 366
    .line 367
    if-nez v3, :cond_c

    .line 368
    .line 369
    move-object v5, v7

    .line 370
    goto :goto_8

    .line 371
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 374
    .line 375
    .line 376
    move-result v12

    .line 377
    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v12

    .line 384
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v13

    .line 388
    if-nez v13, :cond_d

    .line 389
    .line 390
    :goto_8
    invoke-static {v5, v6}, La/c;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    goto :goto_9

    .line 395
    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    throw v7

    .line 403
    :cond_e
    :goto_9
    if-eqz v6, :cond_f

    .line 404
    .line 405
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-nez v5, :cond_f

    .line 410
    .line 411
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 416
    .line 417
    .line 418
    move-result v6

    .line 419
    if-eqz v6, :cond_f

    .line 420
    .line 421
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    check-cast v6, Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 428
    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_f
    iget-object v5, v0, Lv/z;->d:Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 434
    .line 435
    .line 436
    move-result v6

    .line 437
    if-lez v6, :cond_14

    .line 438
    .line 439
    invoke-virtual/range {p0 .. p0}, Lv/z;->b()Landroid/os/Bundle;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    const-string v12, "android.car.EXTENSIONS"

    .line 444
    .line 445
    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    if-nez v6, :cond_10

    .line 450
    .line 451
    new-instance v6, Landroid/os/Bundle;

    .line 452
    .line 453
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 454
    .line 455
    .line 456
    :cond_10
    new-instance v13, Landroid/os/Bundle;

    .line 457
    .line 458
    invoke-direct {v13, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 459
    .line 460
    .line 461
    new-instance v14, Landroid/os/Bundle;

    .line 462
    .line 463
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 464
    .line 465
    .line 466
    move v15, v9

    .line 467
    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 468
    .line 469
    .line 470
    move-result v10

    .line 471
    if-ge v15, v10, :cond_13

    .line 472
    .line 473
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v10

    .line 477
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v16

    .line 481
    move-object/from16 v11, v16

    .line 482
    .line 483
    check-cast v11, Lv/x;

    .line 484
    .line 485
    sget-object v16, Lv/a0;->a:Ljava/lang/Object;

    .line 486
    .line 487
    new-instance v4, Landroid/os/Bundle;

    .line 488
    .line 489
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v11}, Lv/x;->a()Landroidx/core/graphics/drawable/IconCompat;

    .line 493
    .line 494
    .line 495
    move-result-object v17

    .line 496
    if-eqz v17, :cond_11

    .line 497
    .line 498
    invoke-virtual/range {v17 .. v17}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    .line 499
    .line 500
    .line 501
    move-result v17

    .line 502
    move/from16 v9, v17

    .line 503
    .line 504
    :cond_11
    const-string v7, "icon"

    .line 505
    .line 506
    invoke-virtual {v4, v7, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 507
    .line 508
    .line 509
    const-string v7, "title"

    .line 510
    .line 511
    iget-object v9, v11, Lv/x;->f:Ljava/lang/CharSequence;

    .line 512
    .line 513
    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 514
    .line 515
    .line 516
    const-string v7, "actionIntent"

    .line 517
    .line 518
    iget-object v9, v11, Lv/x;->g:Landroid/app/PendingIntent;

    .line 519
    .line 520
    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 521
    .line 522
    .line 523
    iget-object v7, v11, Lv/x;->a:Landroid/os/Bundle;

    .line 524
    .line 525
    new-instance v9, Landroid/os/Bundle;

    .line 526
    .line 527
    if-eqz v7, :cond_12

    .line 528
    .line 529
    invoke-direct {v9, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 530
    .line 531
    .line 532
    goto :goto_c

    .line 533
    :cond_12
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 534
    .line 535
    .line 536
    :goto_c
    iget-boolean v7, v11, Lv/x;->c:Z

    .line 537
    .line 538
    invoke-virtual {v9, v8, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 539
    .line 540
    .line 541
    const-string v7, "extras"

    .line 542
    .line 543
    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 544
    .line 545
    .line 546
    const-string v7, "remoteInputs"

    .line 547
    .line 548
    const/4 v9, 0x0

    .line 549
    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 550
    .line 551
    .line 552
    const-string v7, "showsUserInterface"

    .line 553
    .line 554
    iget-boolean v9, v11, Lv/x;->d:Z

    .line 555
    .line 556
    invoke-virtual {v4, v7, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 557
    .line 558
    .line 559
    const-string v7, "semanticAction"

    .line 560
    .line 561
    const/4 v9, 0x0

    .line 562
    invoke-virtual {v4, v7, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v14, v10, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 566
    .line 567
    .line 568
    add-int/lit8 v15, v15, 0x1

    .line 569
    .line 570
    const/16 v4, 0x1a

    .line 571
    .line 572
    const/4 v7, 0x0

    .line 573
    const/4 v9, 0x0

    .line 574
    const/16 v11, 0x1c

    .line 575
    .line 576
    goto :goto_b

    .line 577
    :cond_13
    const-string v4, "invisible_actions"

    .line 578
    .line 579
    invoke-virtual {v6, v4, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v13, v4, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual/range {p0 .. p0}, Lv/z;->b()Landroid/os/Bundle;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    invoke-virtual {v4, v12, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 593
    .line 594
    .line 595
    :cond_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 596
    .line 597
    iget-object v4, v0, Lv/z;->o:Landroid/os/Bundle;

    .line 598
    .line 599
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    const/4 v5, 0x0

    .line 604
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 605
    .line 606
    .line 607
    const/16 v4, 0x1a

    .line 608
    .line 609
    if-lt v1, v4, :cond_15

    .line 610
    .line 611
    invoke-static {v2}, Lq1/a;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-static {v4}, Lq1/a;->l(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    invoke-static {v4}, Lq1/a;->o(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    invoke-static {v4}, Lq1/a;->q(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 624
    .line 625
    .line 626
    move-result-object v4

    .line 627
    invoke-static {v4}, Lq1/a;->g(Landroid/app/Notification$Builder;)V

    .line 628
    .line 629
    .line 630
    iget-object v4, v0, Lv/z;->q:Ljava/lang/String;

    .line 631
    .line 632
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 633
    .line 634
    .line 635
    move-result v4

    .line 636
    if-nez v4, :cond_15

    .line 637
    .line 638
    const/4 v4, 0x0

    .line 639
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    const/4 v6, 0x0

    .line 644
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 645
    .line 646
    .line 647
    move-result-object v5

    .line 648
    invoke-virtual {v5, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 649
    .line 650
    .line 651
    move-result-object v5

    .line 652
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 653
    .line 654
    .line 655
    :cond_15
    const/16 v4, 0x1c

    .line 656
    .line 657
    if-lt v1, v4, :cond_16

    .line 658
    .line 659
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    .line 665
    .line 666
    move-result v4

    .line 667
    if-nez v4, :cond_17

    .line 668
    .line 669
    :cond_16
    const/16 v3, 0x1d

    .line 670
    .line 671
    goto :goto_d

    .line 672
    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-static {v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    const/4 v1, 0x0

    .line 680
    throw v1

    .line 681
    :goto_d
    if-lt v1, v3, :cond_18

    .line 682
    .line 683
    iget-boolean v3, v0, Lv/z;->r:Z

    .line 684
    .line 685
    invoke-static {v2, v3}, Lcom/google/android/material/textfield/h;->f(Landroid/app/Notification$Builder;Z)V

    .line 686
    .line 687
    .line 688
    invoke-static {v2}, Lcom/google/android/material/textfield/h;->e(Landroid/app/Notification$Builder;)V

    .line 689
    .line 690
    .line 691
    :cond_18
    iget-object v3, v0, Lv/z;->k:Lv/y;

    .line 692
    .line 693
    if-eqz v3, :cond_19

    .line 694
    .line 695
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    .line 696
    .line 697
    invoke-direct {v4, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 698
    .line 699
    .line 700
    iget-object v5, v3, Lv/y;->c:Lv1/h;

    .line 701
    .line 702
    check-cast v5, Ljava/lang/CharSequence;

    .line 703
    .line 704
    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    iget-object v5, v3, Lv/y;->e:Ljava/lang/Object;

    .line 709
    .line 710
    check-cast v5, Ljava/lang/CharSequence;

    .line 711
    .line 712
    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    iget-boolean v5, v3, Lv/y;->a:Z

    .line 717
    .line 718
    if-eqz v5, :cond_19

    .line 719
    .line 720
    iget-object v5, v3, Lv/y;->d:Landroidx/emoji2/text/i;

    .line 721
    .line 722
    check-cast v5, Ljava/lang/CharSequence;

    .line 723
    .line 724
    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 725
    .line 726
    .line 727
    :cond_19
    const/16 v4, 0x1a

    .line 728
    .line 729
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    if-eqz v3, :cond_1a

    .line 734
    .line 735
    iget-object v2, v0, Lv/z;->k:Lv/y;

    .line 736
    .line 737
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 738
    .line 739
    .line 740
    :cond_1a
    if-eqz v3, :cond_1d

    .line 741
    .line 742
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 743
    .line 744
    if-eqz v2, :cond_1d

    .line 745
    .line 746
    iget-boolean v4, v3, Lv/y;->a:Z

    .line 747
    .line 748
    if-eqz v4, :cond_1b

    .line 749
    .line 750
    iget-object v4, v3, Lv/y;->d:Landroidx/emoji2/text/i;

    .line 751
    .line 752
    check-cast v4, Ljava/lang/CharSequence;

    .line 753
    .line 754
    const-string v5, "android.summaryText"

    .line 755
    .line 756
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 757
    .line 758
    .line 759
    :cond_1b
    iget-object v3, v3, Lv/y;->c:Lv1/h;

    .line 760
    .line 761
    check-cast v3, Ljava/lang/CharSequence;

    .line 762
    .line 763
    if-eqz v3, :cond_1c

    .line 764
    .line 765
    const-string v4, "android.title.big"

    .line 766
    .line 767
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 768
    .line 769
    .line 770
    :cond_1c
    const-string v3, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 771
    .line 772
    const-string v4, "androidx.core.app.NotificationCompat$BigTextStyle"

    .line 773
    .line 774
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    :cond_1d
    return-object v1
.end method

.method public final b()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/z;->o:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lv/z;->o:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lv/z;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/z;->s:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv/z;->s:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Landroid/app/Notification;->flags:I

    return-void
.end method

.method public final f(IIZ)V
    .locals 0

    .line 1
    iput p1, p0, Lv/z;->l:I

    iput p2, p0, Lv/z;->m:I

    iput-boolean p3, p0, Lv/z;->n:Z

    return-void
.end method

.method public final g(Lv/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/z;->k:Lv/y;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lv/z;->k:Lv/y;

    .line 6
    .line 7
    iget-object v0, p1, Lv/y;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lv/z;

    .line 10
    .line 11
    if-eq v0, p0, :cond_0

    .line 12
    .line 13
    iput-object p0, p1, Lv/y;->b:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lv/z;->g(Lv/y;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
