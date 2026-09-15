.class public final synthetic Lr3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/io/Serializable;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lo4/p;Ljava/lang/String;Lcom/zalexdev/stryker/custom/WiFINetwork;[Z[Ljava/lang/String;[Z[ZLjava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lr3/b;->a:I

    iput-object p1, p0, Lr3/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lr3/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lr3/b;->d:Ljava/lang/Object;

    iput-object p4, p0, Lr3/b;->e:Ljava/io/Serializable;

    iput-object p5, p0, Lr3/b;->f:Ljava/lang/Object;

    iput-object p6, p0, Lr3/b;->g:Ljava/lang/Object;

    iput-object p7, p0, Lr3/b;->h:Ljava/lang/Object;

    iput-object p8, p0, Lr3/b;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo4/p;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/ArrayList;[Ljava/lang/String;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lr3/b;->a:I

    iput-object p1, p0, Lr3/b;->b:Ljava/lang/Object;

    const-string p1, "<b><p style=\'color:#2E7D32\'>Airodump-ng running normally - {s}</p></b>\n\n<p>{deauth}</p>\n\n\n\n<b><p>Clients (total - {total}): {clients}</p></b>\n\n"

    iput-object p1, p0, Lr3/b;->c:Ljava/lang/Object;

    iput-object p2, p0, Lr3/b;->d:Ljava/lang/Object;

    iput-object p3, p0, Lr3/b;->e:Ljava/io/Serializable;

    iput-object p4, p0, Lr3/b;->g:Ljava/lang/Object;

    iput-object p5, p0, Lr3/b;->h:Ljava/lang/Object;

    iput-object p6, p0, Lr3/b;->i:Ljava/lang/Object;

    iput-object p7, p0, Lr3/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lr3/t;Landroid/widget/ProgressBar;Landroid/widget/ImageView;[ILandroid/widget/TextView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/util/List;Landroid/widget/TextView;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr3/b;->a:I

    iput-object p1, p0, Lr3/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lr3/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lr3/b;->d:Ljava/lang/Object;

    iput-object p4, p0, Lr3/b;->e:Ljava/io/Serializable;

    iput-object p5, p0, Lr3/b;->f:Ljava/lang/Object;

    iput-object p6, p0, Lr3/b;->h:Ljava/lang/Object;

    iput-object p7, p0, Lr3/b;->i:Ljava/lang/Object;

    iput-object p8, p0, Lr3/b;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lr3/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lr3/b;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lo4/p;

    .line 11
    .line 12
    iget-object v1, p0, Lr3/b;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p0, Lr3/b;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, [Ljava/lang/String;

    .line 19
    .line 20
    iget-object v4, p0, Lr3/b;->e:Ljava/io/Serializable;

    .line 21
    .line 22
    check-cast v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-object v5, p0, Lr3/b;->g:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v5, Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v6, p0, Lr3/b;->h:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v6, [Ljava/lang/String;

    .line 31
    .line 32
    iget-object v7, p0, Lr3/b;->i:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v7, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 35
    .line 36
    iget-object v8, p0, Lr3/b;->f:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v8, Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    aget-object v3, v3, v2

    .line 44
    .line 45
    const-string v9, "{s}"

    .line 46
    .line 47
    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v3, "{clients}"

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "{total}"

    .line 70
    .line 71
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v3, "{deauth}"

    .line 76
    .line 77
    aget-object v2, v6, v2

    .line 78
    .line 79
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v0, v0, Ll4/h;->c:Ll4/l;

    .line 84
    .line 85
    const-string v2, "hide"

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v2, "XX:XX:XX:XX:XX:XX"

    .line 98
    .line 99
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lr3/b;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Lo4/p;

    .line 138
    .line 139
    iget-object v2, p0, Lr3/b;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v2, Ljava/lang/String;

    .line 142
    .line 143
    iget-object v3, p0, Lr3/b;->d:Ljava/lang/Object;

    .line 144
    .line 145
    move-object v7, v3

    .line 146
    check-cast v7, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 147
    .line 148
    iget-object v3, p0, Lr3/b;->e:Ljava/io/Serializable;

    .line 149
    .line 150
    move-object v8, v3

    .line 151
    check-cast v8, [Z

    .line 152
    .line 153
    iget-object v3, p0, Lr3/b;->f:Ljava/lang/Object;

    .line 154
    .line 155
    move-object v9, v3

    .line 156
    check-cast v9, [Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p0, Lr3/b;->g:Ljava/lang/Object;

    .line 159
    .line 160
    move-object v10, v3

    .line 161
    check-cast v10, [Z

    .line 162
    .line 163
    iget-object v3, p0, Lr3/b;->h:Ljava/lang/Object;

    .line 164
    .line 165
    move-object v11, v3

    .line 166
    check-cast v11, [Z

    .line 167
    .line 168
    iget-object v3, p0, Lr3/b;->i:Ljava/lang/Object;

    .line 169
    .line 170
    move-object v12, v3

    .line 171
    check-cast v12, Ljava/util/ArrayList;

    .line 172
    .line 173
    iget-boolean v3, v0, Ll4/h;->d:Z

    .line 174
    .line 175
    if-eqz v3, :cond_1

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_1
    const-string v3, "airodump-ng "

    .line 180
    .line 181
    const-string v4, " -w /sdcard/Stryker/hs/handshake  --ignore-negative-one --output-format pcap -c "

    .line 182
    .line 183
    invoke-static {v3, v2, v4}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getChannel()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v5, " --bssid "

    .line 195
    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v5, " --update 3"

    .line 207
    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getIs5hhz()Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-eqz v5, :cond_2

    .line 224
    .line 225
    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getChannel()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-gtz v5, :cond_2

    .line 230
    .line 231
    const-string v4, " -w /sdcard/Stryker/hs/handshake --ignore-negative-one --output-format pcap  --bssid "

    .line 232
    .line 233
    invoke-static {v3, v2, v4}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v3, " --band a --update 3"

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    move-object v6, v2

    .line 254
    goto :goto_0

    .line 255
    :cond_2
    move-object v6, v4

    .line 256
    :goto_0
    iget-object v2, v0, Ll4/h;->c:Ll4/l;

    .line 257
    .line 258
    iget-object v2, v2, Ll4/l;->f:Lu3/g;

    .line 259
    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v4, "Starting airodump-ng... "

    .line 263
    .line 264
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v2, v1, v3}, Lu3/g;->e(ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v13, v0, Lo4/p;->q:Lo4/u;

    .line 278
    .line 279
    new-instance v14, Lr3/q;

    .line 280
    .line 281
    iget-object v4, v0, Ll4/h;->a:Landroid/app/Activity;

    .line 282
    .line 283
    iget-object v5, v0, Ll4/h;->b:Landroid/content/Context;

    .line 284
    .line 285
    move-object v2, v14

    .line 286
    move-object v3, v0

    .line 287
    invoke-direct/range {v2 .. v12}, Lr3/q;-><init>(Lo4/p;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lcom/zalexdev/stryker/custom/WiFINetwork;[Z[Ljava/lang/String;[Z[ZLjava/util/ArrayList;)V

    .line 288
    .line 289
    .line 290
    iput-object v14, v13, Lo4/u;->k:Lr3/q;

    .line 291
    .line 292
    iget-object v2, v0, Lo4/p;->q:Lo4/u;

    .line 293
    .line 294
    iget-object v2, v2, Lo4/u;->k:Lr3/q;

    .line 295
    .line 296
    iput-boolean v1, v2, Ll4/c;->o:Z

    .line 297
    .line 298
    iget-boolean v1, v0, Ll4/h;->d:Z

    .line 299
    .line 300
    if-eqz v1, :cond_3

    .line 301
    .line 302
    iget-object v0, v0, Lo4/p;->q:Lo4/u;

    .line 303
    .line 304
    iget-object v0, v0, Lo4/u;->k:Lr3/q;

    .line 305
    .line 306
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 307
    .line 308
    .line 309
    :cond_3
    :goto_1
    return-void

    .line 310
    :pswitch_1
    iget-object v0, p0, Lr3/b;->b:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v0, Lr3/t;

    .line 313
    .line 314
    iget-object v3, p0, Lr3/b;->c:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v3, Landroid/widget/ProgressBar;

    .line 317
    .line 318
    iget-object v4, p0, Lr3/b;->d:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v4, Landroid/widget/ImageView;

    .line 321
    .line 322
    iget-object v5, p0, Lr3/b;->e:Ljava/io/Serializable;

    .line 323
    .line 324
    check-cast v5, [I

    .line 325
    .line 326
    iget-object v6, p0, Lr3/b;->f:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v6, Landroid/widget/TextView;

    .line 329
    .line 330
    iget-object v7, p0, Lr3/b;->h:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v7, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 333
    .line 334
    iget-object v8, p0, Lr3/b;->i:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v8, Ljava/util/List;

    .line 337
    .line 338
    iget-object v9, p0, Lr3/b;->g:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v9, Landroid/widget/TextView;

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    const/16 v10, 0x8

    .line 346
    .line 347
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    aget v2, v5, v2

    .line 354
    .line 355
    iget-object v3, v0, Lr3/t;->a:Landroid/content/Context;

    .line 356
    .line 357
    const/4 v5, 0x3

    .line 358
    if-nez v2, :cond_4

    .line 359
    .line 360
    const v2, 0x7f1304c1

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 364
    .line 365
    .line 366
    new-instance v2, Lcom/stryker/terminal/component/session/b;

    .line 367
    .line 368
    invoke-direct {v2, v0, v7, v1, v5}, Lcom/stryker/terminal/component/session/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 369
    .line 370
    .line 371
    iget-object v0, v0, Lr3/t;->b:Landroid/app/Activity;

    .line 372
    .line 373
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    .line 375
    .line 376
    const v0, 0x7f060302

    .line 377
    .line 378
    .line 379
    :goto_2
    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 384
    .line 385
    .line 386
    goto :goto_3

    .line 387
    :cond_4
    const-string v1, ", "

    .line 388
    .line 389
    invoke-static {v1, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    const v2, 0x7f1300a8

    .line 394
    .line 395
    .line 396
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Lcom/stryker/terminal/component/session/b;

    .line 408
    .line 409
    const/4 v2, 0x2

    .line 410
    invoke-direct {v1, v0, v7, v2, v5}, Lcom/stryker/terminal/component/session/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 411
    .line 412
    .line 413
    iget-object v0, v0, Lr3/t;->b:Landroid/app/Activity;

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    .line 417
    .line 418
    const v0, 0x7f060073

    .line 419
    .line 420
    .line 421
    goto :goto_2

    .line 422
    :goto_3
    const v0, 0x7f1300a2

    .line 423
    .line 424
    .line 425
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
