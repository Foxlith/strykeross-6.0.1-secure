.class public final Lp2/t;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lp2/j;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp2/t;->a:I

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    iput-object p1, p0, Lp2/t;->b:Landroid/content/Context;

    iput-object p2, p0, Lp2/t;->c:Ljava/util/List;

    iput-object p3, p0, Lp2/t;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lp2/o;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp2/t;->a:I

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    iput-object p1, p0, Lp2/t;->b:Landroid/content/Context;

    iput-object p2, p0, Lp2/t;->c:Ljava/util/List;

    iput-object p3, p0, Lp2/t;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 2

    .line 1
    iget v0, p0, Lp2/t;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lp2/t;->c:Ljava/util/List;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget v0, p0, Lp2/t;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lp2/t;->c:Ljava/util/List;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/zalexdev/stryker/custom/Sploit;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Sploit;->getId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Sploit;->getId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Sploit;->getId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    :cond_1
    :goto_0
    int-to-long v0, p1

    .line 41
    :goto_1
    return-wide v0

    .line 42
    :pswitch_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/zalexdev/stryker/custom/Exploit;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    xor-int/2addr p1, v0

    .line 66
    :cond_3
    :goto_2
    int-to-long v0, p1

    .line 67
    return-wide v0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lp2/t;->a:I

    .line 6
    .line 7
    iget-object v7, v0, Lp2/t;->b:Landroid/content/Context;

    .line 8
    .line 9
    const-string v8, ""

    .line 10
    .line 11
    iget-object v9, v0, Lp2/t;->c:Ljava/util/List;

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v2, p1

    .line 17
    .line 18
    check-cast v2, Lp2/x;

    .line 19
    .line 20
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/zalexdev/stryker/custom/Sploit;

    .line 25
    .line 26
    iget-object v9, v2, Lp2/x;->b:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    if-nez v10, :cond_0

    .line 33
    .line 34
    move-object v10, v8

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getTitle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    :goto_0
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getAuthor()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    if-nez v9, :cond_1

    .line 48
    .line 49
    move-object v9, v8

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getAuthor()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    :goto_1
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getDate()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    if-nez v10, :cond_2

    .line 60
    .line 61
    move-object v10, v8

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getDate()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-nez v11, :cond_3

    .line 72
    .line 73
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    if-nez v11, :cond_3

    .line 78
    .line 79
    const-string v11, " \u00b7 "

    .line 80
    .line 81
    invoke-static {v9, v11, v10}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    invoke-static {v9, v10}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    :goto_3
    iget-object v10, v2, Lp2/x;->c:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getPlatform()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    if-nez v9, :cond_4

    .line 100
    .line 101
    move-object v9, v8

    .line 102
    goto :goto_4

    .line 103
    :cond_4
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getPlatform()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    :goto_4
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getType()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    if-nez v10, :cond_5

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_5
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getType()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    :goto_5
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    const-string v11, "\u2014"

    .line 131
    .line 132
    if-eqz v10, :cond_6

    .line 133
    .line 134
    move-object v10, v11

    .line 135
    goto :goto_6

    .line 136
    :cond_6
    move-object v10, v9

    .line 137
    :goto_6
    iget-object v12, v2, Lp2/x;->d:Landroid/widget/TextView;

    .line 138
    .line 139
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    if-eqz v10, :cond_7

    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_7
    move-object v11, v8

    .line 150
    :goto_7
    iget-object v10, v2, Lp2/x;->e:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    const-string v11, "webapps"

    .line 156
    .line 157
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    const-string v14, "freebsd"

    .line 162
    .line 163
    const-string v15, "macos"

    .line 164
    .line 165
    const-string v5, "ios"

    .line 166
    .line 167
    const-string v6, "android"

    .line 168
    .line 169
    const-string v3, "unix"

    .line 170
    .line 171
    const-string v4, "linux"

    .line 172
    .line 173
    const-string v0, "windows"

    .line 174
    .line 175
    if-eqz v13, :cond_8

    .line 176
    .line 177
    const v13, 0x7f0801dd

    .line 178
    .line 179
    .line 180
    :goto_8
    move-object/from16 p1, v1

    .line 181
    .line 182
    goto/16 :goto_b

    .line 183
    .line 184
    :cond_8
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    if-eqz v13, :cond_9

    .line 189
    .line 190
    const v13, 0x7f0801e4

    .line 191
    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_9
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    if-nez v13, :cond_12

    .line 199
    .line 200
    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    if-eqz v13, :cond_a

    .line 205
    .line 206
    goto :goto_a

    .line 207
    :cond_a
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    if-eqz v13, :cond_b

    .line 212
    .line 213
    const v13, 0x7f08011b

    .line 214
    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_b
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    if-nez v13, :cond_11

    .line 222
    .line 223
    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    if-eqz v13, :cond_c

    .line 228
    .line 229
    goto :goto_9

    .line 230
    :cond_c
    const-string v13, "hardware"

    .line 231
    .line 232
    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v13

    .line 236
    if-eqz v13, :cond_d

    .line 237
    .line 238
    const v13, 0x7f08009a

    .line 239
    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_d
    const-string v13, "multiple"

    .line 243
    .line 244
    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    if-eqz v13, :cond_e

    .line 249
    .line 250
    const v13, 0x7f0800c6

    .line 251
    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_e
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    if-eqz v13, :cond_f

    .line 259
    .line 260
    const v13, 0x7f0800d9

    .line 261
    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_f
    const-string v13, "solaris"

    .line 265
    .line 266
    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v13

    .line 270
    if-eqz v13, :cond_10

    .line 271
    .line 272
    const v13, 0x7f0801b5

    .line 273
    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_10
    const v13, 0x7f080197

    .line 277
    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_11
    :goto_9
    const v13, 0x7f080081

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_12
    :goto_a
    const v13, 0x7f080123

    .line 285
    .line 286
    .line 287
    goto :goto_8

    .line 288
    :goto_b
    iget-object v1, v2, Lp2/x;->f:Landroid/widget/ImageView;

    .line 289
    .line 290
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    .line 292
    .line 293
    sget-object v13, Lx/g;->a:Ljava/lang/Object;

    .line 294
    .line 295
    const v13, 0x7f0602f2

    .line 296
    .line 297
    .line 298
    invoke-static {v7, v13}, Lx/d;->a(Landroid/content/Context;I)I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    const v7, 0x7f080086

    .line 310
    .line 311
    .line 312
    const v13, 0x7f080087

    .line 313
    .line 314
    .line 315
    const v17, 0x7f080089

    .line 316
    .line 317
    .line 318
    if-nez v1, :cond_17

    .line 319
    .line 320
    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-nez v1, :cond_17

    .line 325
    .line 326
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_13

    .line 331
    .line 332
    goto :goto_d

    .line 333
    :cond_13
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-eqz v1, :cond_14

    .line 338
    .line 339
    move/from16 v1, v17

    .line 340
    .line 341
    goto :goto_e

    .line 342
    :cond_14
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-nez v1, :cond_16

    .line 347
    .line 348
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-nez v1, :cond_16

    .line 353
    .line 354
    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_15

    .line 359
    .line 360
    goto :goto_c

    .line 361
    :cond_15
    move v1, v13

    .line 362
    goto :goto_e

    .line 363
    :cond_16
    :goto_c
    move v1, v7

    .line 364
    goto :goto_e

    .line 365
    :cond_17
    :goto_d
    const v1, 0x7f080085

    .line 366
    .line 367
    .line 368
    :goto_e
    invoke-virtual {v12, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    const v4, -0xe4a1e0

    .line 376
    .line 377
    .line 378
    const v16, -0xbaa59c

    .line 379
    .line 380
    .line 381
    const v18, -0xb5eb74

    .line 382
    .line 383
    .line 384
    if-nez v1, :cond_1c

    .line 385
    .line 386
    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-nez v1, :cond_1c

    .line 391
    .line 392
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-eqz v1, :cond_18

    .line 397
    .line 398
    goto :goto_10

    .line 399
    :cond_18
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_19

    .line 404
    .line 405
    move/from16 v5, v18

    .line 406
    .line 407
    goto :goto_11

    .line 408
    :cond_19
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-nez v0, :cond_1b

    .line 413
    .line 414
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-nez v0, :cond_1b

    .line 419
    .line 420
    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-eqz v0, :cond_1a

    .line 425
    .line 426
    goto :goto_f

    .line 427
    :cond_1a
    move/from16 v5, v16

    .line 428
    .line 429
    goto :goto_11

    .line 430
    :cond_1b
    :goto_f
    move v5, v4

    .line 431
    goto :goto_11

    .line 432
    :cond_1c
    :goto_10
    const v5, -0xf2b85f

    .line 433
    .line 434
    .line 435
    :goto_11
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    .line 437
    .line 438
    const-string v0, "remote"

    .line 439
    .line 440
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    const-string v3, "dos"

    .line 445
    .line 446
    const-string v5, "local"

    .line 447
    .line 448
    if-nez v1, :cond_20

    .line 449
    .line 450
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-eqz v1, :cond_1d

    .line 455
    .line 456
    goto :goto_12

    .line 457
    :cond_1d
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    if-eqz v1, :cond_1e

    .line 462
    .line 463
    goto :goto_13

    .line 464
    :cond_1e
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-eqz v1, :cond_1f

    .line 469
    .line 470
    move/from16 v7, v17

    .line 471
    .line 472
    goto :goto_13

    .line 473
    :cond_1f
    move v7, v13

    .line 474
    goto :goto_13

    .line 475
    :cond_20
    :goto_12
    const v7, 0x7f080088

    .line 476
    .line 477
    .line 478
    :goto_13
    invoke-virtual {v10, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-nez v0, :cond_24

    .line 486
    .line 487
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_21

    .line 492
    .line 493
    goto :goto_14

    .line 494
    :cond_21
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    if-eqz v0, :cond_22

    .line 499
    .line 500
    goto :goto_15

    .line 501
    :cond_22
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_23

    .line 506
    .line 507
    move/from16 v4, v18

    .line 508
    .line 509
    goto :goto_15

    .line 510
    :cond_23
    move/from16 v4, v16

    .line 511
    .line 512
    goto :goto_15

    .line 513
    :cond_24
    :goto_14
    const v4, -0x19af00

    .line 514
    .line 515
    .line 516
    :goto_15
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    .line 518
    .line 519
    new-instance v0, Lp2/w;

    .line 520
    .line 521
    const/4 v1, 0x0

    .line 522
    move-object/from16 v3, p0

    .line 523
    .line 524
    move-object/from16 v4, p1

    .line 525
    .line 526
    invoke-direct {v0, v3, v4, v1}, Lp2/w;-><init>(Lp2/t;Lcom/zalexdev/stryker/custom/Sploit;I)V

    .line 527
    .line 528
    .line 529
    iget-object v1, v2, Lp2/x;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 530
    .line 531
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    .line 533
    .line 534
    new-instance v0, Lp2/w;

    .line 535
    .line 536
    const/4 v1, 0x1

    .line 537
    invoke-direct {v0, v3, v4, v1}, Lp2/w;-><init>(Lp2/t;Lcom/zalexdev/stryker/custom/Sploit;I)V

    .line 538
    .line 539
    .line 540
    iget-object v1, v2, Lp2/x;->g:Landroid/widget/ImageView;

    .line 541
    .line 542
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    .line 544
    .line 545
    return-void

    .line 546
    :pswitch_0
    move-object v3, v0

    .line 547
    move-object/from16 v0, p1

    .line 548
    .line 549
    check-cast v0, Lp2/s;

    .line 550
    .line 551
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    check-cast v1, Lcom/zalexdev/stryker/custom/Exploit;

    .line 556
    .line 557
    iget-object v2, v0, Lp2/s;->b:Landroid/widget/TextView;

    .line 558
    .line 559
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    .line 565
    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Exploit;->getPath()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    const-string v4, " "

    .line 579
    .line 580
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Exploit;->getArgs()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    if-nez v4, :cond_25

    .line 588
    .line 589
    goto :goto_16

    .line 590
    :cond_25
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v8

    .line 594
    :goto_16
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    iget-object v4, v0, Lp2/s;->c:Landroid/widget/TextView;

    .line 602
    .line 603
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    .line 605
    .line 606
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 607
    .line 608
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Exploit;->getIssystem()Ljava/lang/Boolean;

    .line 609
    .line 610
    .line 611
    move-result-object v4

    .line 612
    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    iget-object v4, v0, Lp2/s;->d:Landroid/widget/TextView;

    .line 617
    .line 618
    if-eqz v2, :cond_26

    .line 619
    .line 620
    const/4 v2, 0x0

    .line 621
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 622
    .line 623
    .line 624
    const v2, 0x7f130092

    .line 625
    .line 626
    .line 627
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 628
    .line 629
    .line 630
    const v2, 0x7f080085

    .line 631
    .line 632
    .line 633
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 634
    .line 635
    .line 636
    const v2, -0xf2b85f

    .line 637
    .line 638
    .line 639
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    .line 641
    .line 642
    goto :goto_17

    .line 643
    :cond_26
    const/16 v2, 0x8

    .line 644
    .line 645
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 646
    .line 647
    .line 648
    :goto_17
    const-string v2, "Python"

    .line 649
    .line 650
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Exploit;->getLang()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-eqz v2, :cond_27

    .line 659
    .line 660
    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    .line 661
    .line 662
    const v2, 0x7f060316

    .line 663
    .line 664
    .line 665
    invoke-static {v7, v2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 666
    .line 667
    .line 668
    move-result v2

    .line 669
    goto :goto_18

    .line 670
    :cond_27
    const v2, -0x95e466

    .line 671
    .line 672
    .line 673
    :goto_18
    iget-object v4, v0, Lp2/s;->e:Landroid/widget/ImageView;

    .line 674
    .line 675
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 676
    .line 677
    .line 678
    iget-object v4, v0, Lp2/s;->f:Landroid/widget/ImageView;

    .line 679
    .line 680
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 681
    .line 682
    .line 683
    new-instance v2, Lj2/j;

    .line 684
    .line 685
    const/4 v5, 0x1

    .line 686
    invoke-direct {v2, v3, v1, v0, v5}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 687
    .line 688
    .line 689
    iget-object v0, v0, Lp2/s;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 690
    .line 691
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    .line 696
    .line 697
    return-void

    .line 698
    nop

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget p2, p0, Lp2/t;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lp2/t;->b:Landroid/content/Context;

    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const v1, 0x7f0d002a

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Lp2/x;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Lp2/x;-><init>(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-object p2

    .line 26
    :pswitch_0
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const v1, 0x7f0d0029

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lp2/s;

    .line 38
    .line 39
    invoke-direct {p2, p1}, Lp2/s;-><init>(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    return-object p2

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
