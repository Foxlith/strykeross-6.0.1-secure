.class public abstract Lf/q;
.super Landroidx/fragment/app/a0;
.source "SourceFile"

# interfaces
.implements Lf/r;
.implements Lv/h0;


# static fields
.field private static final DELEGATE_TAG:Ljava/lang/String; = "androidx:appcompat"


# instance fields
.field private mDelegate:Lf/u;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/activity/h;->getSavedStateRegistry()Lb1/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lf/o;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lf/o;-><init>(Lf/q;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "androidx:appcompat"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lb1/d;->c(Ljava/lang/String;Lb1/c;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lf/p;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lf/p;-><init>(Lf/q;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/activity/h;->addOnContextAvailableListener(Lc/b;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/q;->e()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lf/h0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lf/h0;->v()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const v2, 0x1020002

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lf/h0;->m:Lf/b0;

    .line 28
    .line 29
    iget-object p2, v0, Lf/h0;->l:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lf/b0;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lf/h0;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lf/h0;->P:Z

    .line 9
    .line 10
    iget v2, v0, Lf/h0;->T:I

    .line 11
    .line 12
    const/16 v3, -0x64

    .line 13
    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v2, Lf/u;->b:I

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p1, v2}, Lf/h0;->B(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1}, Lf/u;->c(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x3

    .line 28
    if-eqz v2, :cond_7

    .line 29
    .line 30
    invoke-static {p1}, Lf/u;->c(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_1
    invoke-static {}, Lv1/f;->D()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    sget-boolean v2, Lf/u;->f:Z

    .line 44
    .line 45
    if-nez v2, :cond_7

    .line 46
    .line 47
    sget-object v2, Lf/u;->a:Lf/o0;

    .line 48
    .line 49
    new-instance v4, Landroidx/activity/b;

    .line 50
    .line 51
    invoke-direct {v4, p1, v3}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4}, Lf/o0;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_2
    sget-object v2, Lf/u;->i:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    sget-object v4, Lf/u;->c:Ld0/h;

    .line 62
    .line 63
    if-nez v4, :cond_6

    .line 64
    .line 65
    sget-object v4, Lf/u;->d:Ld0/h;

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-static {p1}, La/c;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v4}, Ld0/h;->a(Ljava/lang/String;)Ld0/h;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    sput-object v4, Lf/u;->d:Ld0/h;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    :goto_1
    sget-object v4, Lf/u;->d:Ld0/h;

    .line 83
    .line 84
    iget-object v4, v4, Ld0/h;->a:Ld0/i;

    .line 85
    .line 86
    check-cast v4, Ld0/j;

    .line 87
    .line 88
    iget-object v4, v4, Ld0/j;->a:Landroid/os/LocaleList;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    :cond_4
    :goto_2
    monitor-exit v2

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    sget-object v4, Lf/u;->d:Ld0/h;

    .line 99
    .line 100
    sput-object v4, Lf/u;->c:Ld0/h;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    sget-object v5, Lf/u;->d:Ld0/h;

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ld0/h;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_4

    .line 110
    .line 111
    sget-object v4, Lf/u;->c:Ld0/h;

    .line 112
    .line 113
    sput-object v4, Lf/u;->d:Ld0/h;

    .line 114
    .line 115
    iget-object v4, v4, Ld0/h;->a:Ld0/i;

    .line 116
    .line 117
    check-cast v4, Ld0/j;

    .line 118
    .line 119
    iget-object v4, v4, Ld0/j;->a:Landroid/os/LocaleList;

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {p1, v4}, La/c;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw p1

    .line 131
    :cond_7
    :goto_4
    invoke-static {p1}, Lf/h0;->o(Landroid/content/Context;)Ld0/h;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    sget-boolean v4, Lf/h0;->l0:Z

    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    const/4 v6, 0x0

    .line 139
    if-eqz v4, :cond_8

    .line 140
    .line 141
    instance-of v4, p1, Landroid/view/ContextThemeWrapper;

    .line 142
    .line 143
    if-eqz v4, :cond_8

    .line 144
    .line 145
    invoke-static {p1, v0, v2, v6, v5}, Lf/h0;->s(Landroid/content/Context;ILd0/h;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    :try_start_1
    move-object v7, p1

    .line 150
    check-cast v7, Landroid/view/ContextThemeWrapper;

    .line 151
    .line 152
    invoke-virtual {v7, v4}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .line 154
    .line 155
    goto/16 :goto_b

    .line 156
    .line 157
    :catch_0
    :cond_8
    instance-of v4, p1, Li/f;

    .line 158
    .line 159
    if-eqz v4, :cond_9

    .line 160
    .line 161
    invoke-static {p1, v0, v2, v6, v5}, Lf/h0;->s(Landroid/content/Context;ILd0/h;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    :try_start_2
    move-object v7, p1

    .line 166
    check-cast v7, Li/f;

    .line 167
    .line 168
    invoke-virtual {v7, v4}, Li/f;->a(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 169
    .line 170
    .line 171
    goto/16 :goto_b

    .line 172
    .line 173
    :catch_1
    :cond_9
    sget-boolean v4, Lf/h0;->k0:Z

    .line 174
    .line 175
    if-nez v4, :cond_a

    .line 176
    .line 177
    goto/16 :goto_b

    .line 178
    .line 179
    :cond_a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 180
    .line 181
    new-instance v7, Landroid/content/res/Configuration;

    .line 182
    .line 183
    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    .line 184
    .line 185
    .line 186
    const/4 v8, -0x1

    .line 187
    iput v8, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 188
    .line 189
    const/4 v8, 0x0

    .line 190
    iput v8, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 191
    .line 192
    invoke-virtual {p1, v7}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    iget v10, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 213
    .line 214
    iput v10, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 215
    .line 216
    invoke-virtual {v7, v9}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-nez v10, :cond_20

    .line 221
    .line 222
    new-instance v10, Landroid/content/res/Configuration;

    .line 223
    .line 224
    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    .line 225
    .line 226
    .line 227
    iput v8, v10, Landroid/content/res/Configuration;->fontScale:F

    .line 228
    .line 229
    invoke-virtual {v7, v9}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-nez v8, :cond_b

    .line 234
    .line 235
    goto/16 :goto_5

    .line 236
    .line 237
    :cond_b
    iget v8, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 238
    .line 239
    iget v11, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 240
    .line 241
    cmpl-float v8, v8, v11

    .line 242
    .line 243
    if-eqz v8, :cond_c

    .line 244
    .line 245
    iput v11, v10, Landroid/content/res/Configuration;->fontScale:F

    .line 246
    .line 247
    :cond_c
    iget v8, v7, Landroid/content/res/Configuration;->mcc:I

    .line 248
    .line 249
    iget v11, v9, Landroid/content/res/Configuration;->mcc:I

    .line 250
    .line 251
    if-eq v8, v11, :cond_d

    .line 252
    .line 253
    iput v11, v10, Landroid/content/res/Configuration;->mcc:I

    .line 254
    .line 255
    :cond_d
    iget v8, v7, Landroid/content/res/Configuration;->mnc:I

    .line 256
    .line 257
    iget v11, v9, Landroid/content/res/Configuration;->mnc:I

    .line 258
    .line 259
    if-eq v8, v11, :cond_e

    .line 260
    .line 261
    iput v11, v10, Landroid/content/res/Configuration;->mnc:I

    .line 262
    .line 263
    :cond_e
    invoke-static {v7, v9, v10}, Lf/z;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 264
    .line 265
    .line 266
    iget v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 267
    .line 268
    iget v11, v9, Landroid/content/res/Configuration;->touchscreen:I

    .line 269
    .line 270
    if-eq v8, v11, :cond_f

    .line 271
    .line 272
    iput v11, v10, Landroid/content/res/Configuration;->touchscreen:I

    .line 273
    .line 274
    :cond_f
    iget v8, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 275
    .line 276
    iget v11, v9, Landroid/content/res/Configuration;->keyboard:I

    .line 277
    .line 278
    if-eq v8, v11, :cond_10

    .line 279
    .line 280
    iput v11, v10, Landroid/content/res/Configuration;->keyboard:I

    .line 281
    .line 282
    :cond_10
    iget v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 283
    .line 284
    iget v11, v9, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 285
    .line 286
    if-eq v8, v11, :cond_11

    .line 287
    .line 288
    iput v11, v10, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 289
    .line 290
    :cond_11
    iget v8, v7, Landroid/content/res/Configuration;->navigation:I

    .line 291
    .line 292
    iget v11, v9, Landroid/content/res/Configuration;->navigation:I

    .line 293
    .line 294
    if-eq v8, v11, :cond_12

    .line 295
    .line 296
    iput v11, v10, Landroid/content/res/Configuration;->navigation:I

    .line 297
    .line 298
    :cond_12
    iget v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 299
    .line 300
    iget v11, v9, Landroid/content/res/Configuration;->navigationHidden:I

    .line 301
    .line 302
    if-eq v8, v11, :cond_13

    .line 303
    .line 304
    iput v11, v10, Landroid/content/res/Configuration;->navigationHidden:I

    .line 305
    .line 306
    :cond_13
    iget v8, v7, Landroid/content/res/Configuration;->orientation:I

    .line 307
    .line 308
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    .line 309
    .line 310
    if-eq v8, v11, :cond_14

    .line 311
    .line 312
    iput v11, v10, Landroid/content/res/Configuration;->orientation:I

    .line 313
    .line 314
    :cond_14
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 315
    .line 316
    and-int/lit8 v8, v8, 0xf

    .line 317
    .line 318
    iget v11, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 319
    .line 320
    and-int/lit8 v11, v11, 0xf

    .line 321
    .line 322
    if-eq v8, v11, :cond_15

    .line 323
    .line 324
    iget v8, v10, Landroid/content/res/Configuration;->screenLayout:I

    .line 325
    .line 326
    or-int/2addr v8, v11

    .line 327
    iput v8, v10, Landroid/content/res/Configuration;->screenLayout:I

    .line 328
    .line 329
    :cond_15
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 330
    .line 331
    and-int/lit16 v8, v8, 0xc0

    .line 332
    .line 333
    iget v11, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 334
    .line 335
    and-int/lit16 v11, v11, 0xc0

    .line 336
    .line 337
    if-eq v8, v11, :cond_16

    .line 338
    .line 339
    iget v8, v10, Landroid/content/res/Configuration;->screenLayout:I

    .line 340
    .line 341
    or-int/2addr v8, v11

    .line 342
    iput v8, v10, Landroid/content/res/Configuration;->screenLayout:I

    .line 343
    .line 344
    :cond_16
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 345
    .line 346
    and-int/lit8 v8, v8, 0x30

    .line 347
    .line 348
    iget v11, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 349
    .line 350
    and-int/lit8 v11, v11, 0x30

    .line 351
    .line 352
    if-eq v8, v11, :cond_17

    .line 353
    .line 354
    iget v8, v10, Landroid/content/res/Configuration;->screenLayout:I

    .line 355
    .line 356
    or-int/2addr v8, v11

    .line 357
    iput v8, v10, Landroid/content/res/Configuration;->screenLayout:I

    .line 358
    .line 359
    :cond_17
    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 360
    .line 361
    and-int/lit16 v8, v8, 0x300

    .line 362
    .line 363
    iget v11, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 364
    .line 365
    and-int/lit16 v11, v11, 0x300

    .line 366
    .line 367
    if-eq v8, v11, :cond_18

    .line 368
    .line 369
    iget v8, v10, Landroid/content/res/Configuration;->screenLayout:I

    .line 370
    .line 371
    or-int/2addr v8, v11

    .line 372
    iput v8, v10, Landroid/content/res/Configuration;->screenLayout:I

    .line 373
    .line 374
    :cond_18
    const/16 v8, 0x1a

    .line 375
    .line 376
    if-lt v4, v8, :cond_1a

    .line 377
    .line 378
    invoke-static {v7}, Lc3/a;->a(Landroid/content/res/Configuration;)I

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    and-int/2addr v8, v3

    .line 383
    invoke-static {v9}, Lc3/a;->a(Landroid/content/res/Configuration;)I

    .line 384
    .line 385
    .line 386
    move-result v11

    .line 387
    and-int/2addr v11, v3

    .line 388
    if-eq v8, v11, :cond_19

    .line 389
    .line 390
    invoke-static {v10}, Lc3/a;->a(Landroid/content/res/Configuration;)I

    .line 391
    .line 392
    .line 393
    move-result v8

    .line 394
    invoke-static {v9}, Lc3/a;->a(Landroid/content/res/Configuration;)I

    .line 395
    .line 396
    .line 397
    move-result v11

    .line 398
    and-int/2addr v3, v11

    .line 399
    or-int/2addr v3, v8

    .line 400
    invoke-static {v10, v3}, Lc3/a;->u(Landroid/content/res/Configuration;I)V

    .line 401
    .line 402
    .line 403
    :cond_19
    invoke-static {v7}, Lc3/a;->a(Landroid/content/res/Configuration;)I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    and-int/lit8 v3, v3, 0xc

    .line 408
    .line 409
    invoke-static {v9}, Lc3/a;->a(Landroid/content/res/Configuration;)I

    .line 410
    .line 411
    .line 412
    move-result v8

    .line 413
    and-int/lit8 v8, v8, 0xc

    .line 414
    .line 415
    if-eq v3, v8, :cond_1a

    .line 416
    .line 417
    invoke-static {v10}, Lc3/a;->a(Landroid/content/res/Configuration;)I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    invoke-static {v9}, Lc3/a;->a(Landroid/content/res/Configuration;)I

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    and-int/lit8 v8, v8, 0xc

    .line 426
    .line 427
    or-int/2addr v3, v8

    .line 428
    invoke-static {v10, v3}, Lc3/a;->u(Landroid/content/res/Configuration;I)V

    .line 429
    .line 430
    .line 431
    :cond_1a
    iget v3, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 432
    .line 433
    and-int/lit8 v3, v3, 0xf

    .line 434
    .line 435
    iget v8, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 436
    .line 437
    and-int/lit8 v8, v8, 0xf

    .line 438
    .line 439
    if-eq v3, v8, :cond_1b

    .line 440
    .line 441
    iget v3, v10, Landroid/content/res/Configuration;->uiMode:I

    .line 442
    .line 443
    or-int/2addr v3, v8

    .line 444
    iput v3, v10, Landroid/content/res/Configuration;->uiMode:I

    .line 445
    .line 446
    :cond_1b
    iget v3, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 447
    .line 448
    and-int/lit8 v3, v3, 0x30

    .line 449
    .line 450
    iget v8, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 451
    .line 452
    and-int/lit8 v8, v8, 0x30

    .line 453
    .line 454
    if-eq v3, v8, :cond_1c

    .line 455
    .line 456
    iget v3, v10, Landroid/content/res/Configuration;->uiMode:I

    .line 457
    .line 458
    or-int/2addr v3, v8

    .line 459
    iput v3, v10, Landroid/content/res/Configuration;->uiMode:I

    .line 460
    .line 461
    :cond_1c
    iget v3, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 462
    .line 463
    iget v8, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 464
    .line 465
    if-eq v3, v8, :cond_1d

    .line 466
    .line 467
    iput v8, v10, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 468
    .line 469
    :cond_1d
    iget v3, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 470
    .line 471
    iget v8, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 472
    .line 473
    if-eq v3, v8, :cond_1e

    .line 474
    .line 475
    iput v8, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 476
    .line 477
    :cond_1e
    iget v3, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 478
    .line 479
    iget v8, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 480
    .line 481
    if-eq v3, v8, :cond_1f

    .line 482
    .line 483
    iput v8, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 484
    .line 485
    :cond_1f
    iget v3, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 486
    .line 487
    iget v7, v9, Landroid/content/res/Configuration;->densityDpi:I

    .line 488
    .line 489
    if-eq v3, v7, :cond_21

    .line 490
    .line 491
    iput v7, v10, Landroid/content/res/Configuration;->densityDpi:I

    .line 492
    .line 493
    goto :goto_5

    .line 494
    :cond_20
    move-object v10, v6

    .line 495
    :cond_21
    :goto_5
    invoke-static {p1, v0, v2, v10, v1}, Lf/h0;->s(Landroid/content/Context;ILd0/h;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    new-instance v2, Li/f;

    .line 500
    .line 501
    const v3, 0x7f140240

    .line 502
    .line 503
    .line 504
    invoke-direct {v2, p1, v3}, Li/f;-><init>(Landroid/content/Context;I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2, v0}, Li/f;->a(Landroid/content/res/Configuration;)V

    .line 508
    .line 509
    .line 510
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 511
    .line 512
    .line 513
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    .line 514
    if-eqz p1, :cond_25

    .line 515
    .line 516
    invoke-virtual {v2}, Li/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    const/16 v0, 0x1d

    .line 521
    .line 522
    if-lt v4, v0, :cond_22

    .line 523
    .line 524
    invoke-static {p1}, Ly/q;->a(Landroid/content/res/Resources$Theme;)V

    .line 525
    .line 526
    .line 527
    goto :goto_a

    .line 528
    :cond_22
    sget-object v0, Ly/p;->a:Ljava/lang/Object;

    .line 529
    .line 530
    monitor-enter v0

    .line 531
    :try_start_4
    sget-boolean v3, Ly/p;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 532
    .line 533
    if-nez v3, :cond_23

    .line 534
    .line 535
    :try_start_5
    const-class v3, Landroid/content/res/Resources$Theme;

    .line 536
    .line 537
    const-string v4, "rebase"

    .line 538
    .line 539
    new-array v7, v5, [Ljava/lang/Class;

    .line 540
    .line 541
    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    sput-object v3, Ly/p;->b:Ljava/lang/reflect/Method;

    .line 546
    .line 547
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 548
    .line 549
    .line 550
    goto :goto_6

    .line 551
    :catchall_1
    move-exception p1

    .line 552
    goto :goto_9

    .line 553
    :catch_2
    move-exception v3

    .line 554
    :try_start_6
    const-string v4, "ResourcesCompat"

    .line 555
    .line 556
    const-string v7, "Failed to retrieve rebase() method"

    .line 557
    .line 558
    invoke-static {v4, v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .line 560
    .line 561
    :goto_6
    sput-boolean v1, Ly/p;->c:Z

    .line 562
    .line 563
    :cond_23
    sget-object v1, Ly/p;->b:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 564
    .line 565
    if-eqz v1, :cond_24

    .line 566
    .line 567
    :try_start_7
    new-array v3, v5, [Ljava/lang/Object;

    .line 568
    .line 569
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 570
    .line 571
    .line 572
    goto :goto_8

    .line 573
    :catch_3
    move-exception p1

    .line 574
    goto :goto_7

    .line 575
    :catch_4
    move-exception p1

    .line 576
    :goto_7
    :try_start_8
    const-string v1, "ResourcesCompat"

    .line 577
    .line 578
    const-string v3, "Failed to invoke rebase() method via reflection"

    .line 579
    .line 580
    invoke-static {v1, v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .line 582
    .line 583
    sput-object v6, Ly/p;->b:Ljava/lang/reflect/Method;

    .line 584
    .line 585
    :cond_24
    :goto_8
    monitor-exit v0

    .line 586
    goto :goto_a

    .line 587
    :goto_9
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 588
    throw p1

    .line 589
    :catch_5
    :cond_25
    :goto_a
    move-object p1, v2

    .line 590
    :goto_b
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 591
    .line 592
    .line 593
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lf/b;->j(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lv/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0a06a6

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f0a06a9

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "<this>"

    .line 38
    .line 39
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const v2, 0x7f0a06a8

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const v1, 0x7f0a06a7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lf/h0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lf/h0;->v()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lf/h0;->l:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getDelegate()Lf/u;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/q;->mDelegate:Lf/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lf/u;->a:Lf/o0;

    .line 6
    .line 7
    new-instance v0, Lf/h0;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1, p0, p0}, Lf/h0;-><init>(Landroid/content/Context;Landroid/view/Window;Lf/r;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lf/q;->mDelegate:Lf/u;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lf/q;->mDelegate:Lf/u;

    .line 16
    .line 17
    return-object v0
.end method

.method public getDrawerToggleDelegate()Lf/c;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lf/h0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lf/w;

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v1, v0, v2}, Lf/w;-><init>(Lf/h0;I)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lf/h0;

    .line 6
    .line 7
    iget-object v1, v0, Lf/h0;->q:Li/k;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lf/h0;->z()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Li/k;

    .line 15
    .line 16
    iget-object v2, v0, Lf/h0;->p:Lf/b;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lf/b;->e()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, v0, Lf/h0;->k:Landroid/content/Context;

    .line 26
    .line 27
    :goto_0
    invoke-direct {v1, v2}, Li/k;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lf/h0;->q:Li/k;

    .line 31
    .line 32
    :cond_1
    iget-object v0, v0, Lf/h0;->q:Li/k;

    .line 33
    .line 34
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/q;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    sget v1, Landroidx/appcompat/widget/v4;->a:I

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSupportActionBar()Lf/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lf/h0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lf/h0;->z()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lf/h0;->p:Lf/b;

    .line 11
    .line 12
    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {p0}, Lv1/f;->x(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0}, Lf/u;->b()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lf/h0;

    .line 9
    .line 10
    iget-boolean v0, p1, Lf/h0;->G:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p1, Lf/h0;->A:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lf/h0;->z()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lf/h0;->p:Lf/b;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lf/b;->g()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/a0;->a()Landroidx/appcompat/widget/a0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p1, Lf/h0;->k:Landroid/content/Context;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/a0;->a:Landroidx/appcompat/widget/d3;

    .line 36
    .line 37
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    iget-object v3, v2, Landroidx/appcompat/widget/d3;->b:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ln/e;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Ln/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    monitor-exit v0

    .line 56
    new-instance v0, Landroid/content/res/Configuration;

    .line 57
    .line 58
    iget-object v1, p1, Lf/h0;->k:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p1, Lf/h0;->S:Landroid/content/res/Configuration;

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0, v0}, Lf/h0;->m(ZZ)Z

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lf/q;->mResources:Landroid/content/res/Resources;

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lf/q;->mResources:Landroid/content/res/Resources;

    .line 98
    .line 99
    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void

    .line 103
    :goto_1
    :try_start_3
    monitor-exit v2

    .line 104
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    monitor-exit v0

    .line 107
    throw p1
.end method

.method public onContentChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/q;->onSupportContentChanged()V

    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Lv/i0;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lv/h0;->getSupportParentActivityIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lv1/f;->x(Landroid/app/Activity;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p1, Lv/i0;->b:Landroid/content/Context;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_1
    iget-object p1, p1, Lv/i0;->a:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :goto_0
    :try_start_0
    invoke-static {v2, v1}, Lv1/f;->y(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 48
    .line 49
    .line 50
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :goto_1
    const-string v0, "TaskStackBuilder"

    .line 59
    .line 60
    const-string v1, "Bad ComponentName while traversing activity parent metadata"

    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_3
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/a0;->onDestroy()V

    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0}, Lf/u;->e()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public onLocalesChanged(Ld0/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/a0;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lf/b;->d()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lf/q;->onSupportNavigateUp()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onNightModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/a0;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lf/h0;

    .line 9
    .line 10
    invoke-virtual {p1}, Lf/h0;->v()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/a0;->onPostResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lf/h0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lf/h0;->z()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lf/h0;->p:Lf/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lf/b;->o(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Lv/i0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/a0;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lf/h0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lf/h0;->m(ZZ)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/a0;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lf/h0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lf/h0;->z()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lf/h0;->p:Lf/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lf/b;->o(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onSupportActionModeFinished(Li/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSupportActionModeStarted(Li/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf/q;->getSupportParentActivityIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lf/q;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    new-instance v0, Lv/i0;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lv/i0;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lf/q;->onCreateSupportNavigateUpTaskStack(Lv/i0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lf/q;->onPrepareSupportNavigateUpTaskStack(Lv/i0;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lv/i0;->a:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    new-array v3, v1, [Landroid/content/Intent;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, [Landroid/content/Intent;

    .line 40
    .line 41
    new-instance v3, Landroid/content/Intent;

    .line 42
    .line 43
    aget-object v4, v2, v1

    .line 44
    .line 45
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    const v4, 0x1000c000

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    aput-object v3, v2, v1

    .line 56
    .line 57
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 58
    .line 59
    iget-object v0, v0, Lv/i0;->b:Landroid/content/Context;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v2, v1}, Lx/a;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    sget v0, Lv/g;->b:I

    .line 66
    .line 67
    invoke-static {p0}, Lv/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_1
    invoke-virtual {p0, v0}, Lf/q;->supportNavigateUpTo(Landroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    const/4 v0, 0x1

    .line 87
    return v0

    .line 88
    :cond_2
    return v1
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    move-result-object p2

    invoke-virtual {p2, p1}, Lf/u;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Li/b;)Li/c;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public openOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/b;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/q;->e()V

    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/u;->h(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lf/q;->e()V

    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/u;->i(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lf/q;->e()V

    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lf/u;->j(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lf/h0;

    .line 6
    .line 7
    iget-object v1, v0, Lf/h0;->j:Ljava/lang/Object;

    .line 8
    .line 9
    instance-of v1, v1, Landroid/app/Activity;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {v0}, Lf/h0;->z()V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lf/h0;->p:Lf/b;

    .line 18
    .line 19
    instance-of v2, v1, Lf/y0;

    .line 20
    .line 21
    if-nez v2, :cond_4

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-object v2, v0, Lf/h0;->q:Li/k;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lf/b;->h()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iput-object v2, v0, Lf/h0;->p:Lf/b;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    new-instance v1, Lf/t0;

    .line 36
    .line 37
    iget-object v2, v0, Lf/h0;->j:Ljava/lang/Object;

    .line 38
    .line 39
    instance-of v3, v2, Landroid/app/Activity;

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    check-cast v2, Landroid/app/Activity;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v2, v0, Lf/h0;->r:Ljava/lang/CharSequence;

    .line 51
    .line 52
    :goto_0
    iget-object v3, v0, Lf/h0;->m:Lf/b0;

    .line 53
    .line 54
    invoke-direct {v1, p1, v2, v3}, Lf/t0;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lf/b0;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Lf/h0;->p:Lf/b;

    .line 58
    .line 59
    iget-object v2, v0, Lf/h0;->m:Lf/b0;

    .line 60
    .line 61
    iget-object v1, v1, Lf/t0;->c:Lf/s0;

    .line 62
    .line 63
    iput-object v1, v2, Lf/b0;->b:Lf/s0;

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, v0, Lf/h0;->m:Lf/b0;

    .line 71
    .line 72
    iput-object v2, p1, Lf/b0;->b:Lf/s0;

    .line 73
    .line 74
    :goto_1
    invoke-virtual {v0}, Lf/h0;->b()V

    .line 75
    .line 76
    .line 77
    :goto_2
    return-void

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lf/h0;

    .line 9
    .line 10
    iput p1, v0, Lf/h0;->U:I

    .line 11
    .line 12
    return-void
.end method

.method public startSupportActionMode(Li/b;)Li/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/u;->l(Li/b;)Li/c;

    move-result-object p1

    return-object p1
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0}, Lf/u;->b()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lv/w;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/q;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/u;->g(I)Z

    move-result p1

    return p1
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lv/w;->c(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
