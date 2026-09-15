.class public final Lo4/q;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic A:Landroid/widget/TextView;

.field public final synthetic B:Lo4/u;

.field public final synthetic s:I

.field public final synthetic t:Landroid/view/View;

.field public final synthetic u:Landroid/widget/TextView;

.field public final synthetic v:Landroid/widget/ImageView;

.field public final synthetic w:Landroid/widget/ProgressBar;

.field public final synthetic x:Landroid/widget/TextView;

.field public final synthetic y:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic z:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0

    iput p13, p0, Lo4/q;->s:I

    iput-object p1, p0, Lo4/q;->B:Lo4/u;

    iput-object p5, p0, Lo4/q;->t:Landroid/view/View;

    iput-object p6, p0, Lo4/q;->u:Landroid/widget/TextView;

    iput-object p7, p0, Lo4/q;->v:Landroid/widget/ImageView;

    iput-object p8, p0, Lo4/q;->w:Landroid/widget/ProgressBar;

    iput-object p9, p0, Lo4/q;->x:Landroid/widget/TextView;

    iput-object p10, p0, Lo4/q;->y:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p11, p0, Lo4/q;->z:Landroid/widget/TextView;

    iput-object p12, p0, Lo4/q;->A:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p2, p3, p4, p1}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo4/q;->s:I

    iput-object p1, p0, Lo4/q;->B:Lo4/u;

    iput-object p5, p0, Lo4/q;->t:Landroid/view/View;

    iput-object p6, p0, Lo4/q;->u:Landroid/widget/TextView;

    iput-object p7, p0, Lo4/q;->y:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p8, p0, Lo4/q;->v:Landroid/widget/ImageView;

    iput-object p9, p0, Lo4/q;->w:Landroid/widget/ProgressBar;

    iput-object p10, p0, Lo4/q;->x:Landroid/widget/TextView;

    iput-object p11, p0, Lo4/q;->z:Landroid/widget/TextView;

    iput-object p12, p0, Lo4/q;->A:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p2, p3, p4, p1}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Ll4/c;->b:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iget-object v4, v0, Ll4/c;->d:Ll4/l;

    .line 13
    .line 14
    const/high16 v5, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    iget v6, v0, Lo4/q;->s:I

    .line 21
    .line 22
    const-string v7, "Pin incorrect!"

    .line 23
    .line 24
    const-string v9, "\n"

    .line 25
    .line 26
    iget-object v11, v0, Lo4/q;->y:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 27
    .line 28
    iget-object v12, v0, Lo4/q;->z:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v14, v0, Lo4/q;->x:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object v15, v0, Lo4/q;->w:Landroid/widget/ProgressBar;

    .line 33
    .line 34
    iget-object v8, v0, Lo4/q;->v:Landroid/widget/ImageView;

    .line 35
    .line 36
    iget-object v13, v0, Lo4/q;->u:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v10, v0, Lo4/q;->t:Landroid/view/View;

    .line 39
    .line 40
    iget-object v1, v0, Lo4/q;->B:Lo4/u;

    .line 41
    .line 42
    packed-switch v6, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lo4/u;->e()V

    .line 46
    .line 47
    .line 48
    invoke-static/range {p1 .. p1}, Lo4/u;->d(Ljava/util/ArrayList;)Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/16 v6, 0x8

    .line 53
    .line 54
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v8, v5}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v15, v3}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 68
    .line 69
    .line 70
    const v3, 0x104000a

    .line 71
    .line 72
    .line 73
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    invoke-virtual {v4}, Ll4/l;->S()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_0

    .line 91
    .line 92
    invoke-virtual {v11}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    iget-object v7, v11, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v4, v3, v5, v6, v7}, Ll4/l;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const v5, 0x7f130539

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const v4, 0x7f130511

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lo4/s;

    .line 167
    .line 168
    const/4 v6, 0x0

    .line 169
    invoke-direct {v1, v0, v11, v6}, Lo4/s;-><init>(Ljava/lang/Object;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    const/16 v1, 0x8

    .line 183
    .line 184
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    :goto_0
    return-void

    .line 188
    :pswitch_0
    const/16 v6, 0x8

    .line 189
    .line 190
    invoke-virtual {v1}, Lo4/u;->e()V

    .line 191
    .line 192
    .line 193
    invoke-static/range {p1 .. p1}, Lo4/u;->d(Ljava/util/ArrayList;)Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    const/4 v6, 0x0

    .line 201
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-static {v8, v5}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v15, v3}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 211
    .line 212
    .line 213
    const v3, 0x104000a

    .line 214
    .line 215
    .line 216
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_3

    .line 228
    .line 229
    invoke-virtual {v4}, Ll4/l;->S()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_2

    .line 234
    .line 235
    invoke-virtual {v11}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    iget-object v7, v11, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v4, v3, v5, v6, v7}, Ll4/l;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    const v5, 0x7f130539

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    const v4, 0x7f130511

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    new-instance v2, Lj2/j;

    .line 310
    .line 311
    const/16 v3, 0x9

    .line 312
    .line 313
    invoke-direct {v2, v0, v11, v1, v3}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    const/4 v6, 0x0

    .line 320
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    const/16 v7, 0x8

    .line 328
    .line 329
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    :goto_1
    return-void

    .line 333
    :pswitch_1
    const/4 v6, 0x0

    .line 334
    const/16 v7, 0x8

    .line 335
    .line 336
    invoke-virtual {v1}, Lo4/u;->e()V

    .line 337
    .line 338
    .line 339
    invoke-static/range {p1 .. p1}, Lo4/u;->d(Ljava/util/ArrayList;)Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    invoke-static {v8, v5}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v15, v3}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 356
    .line 357
    .line 358
    const v3, 0x104000a

    .line 359
    .line 360
    .line 361
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_5

    .line 373
    .line 374
    invoke-virtual {v4}, Ll4/l;->S()Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_4

    .line 379
    .line 380
    invoke-virtual {v11}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    iget-object v7, v11, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v4, v3, v5, v6, v7}, Ll4/l;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    const v5, 0x7f130539

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    const v4, 0x7f130511

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    new-instance v2, Lj2/j;

    .line 455
    .line 456
    const/16 v6, 0x8

    .line 457
    .line 458
    invoke-direct {v2, v0, v11, v1, v6}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    .line 463
    .line 464
    const/4 v1, 0x0

    .line 465
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .line 467
    .line 468
    goto :goto_4

    .line 469
    :cond_5
    const/16 v6, 0x8

    .line 470
    .line 471
    const-string v1, "wps_locked"

    .line 472
    .line 473
    move-object/from16 v7, p1

    .line 474
    .line 475
    invoke-static {v7, v1}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-eqz v1, :cond_6

    .line 480
    .line 481
    const v1, 0x7f130736

    .line 482
    .line 483
    .line 484
    :goto_2
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    .line 485
    .line 486
    .line 487
    :goto_3
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 488
    .line 489
    .line 490
    goto :goto_4

    .line 491
    :cond_6
    const-string v1, "foreign_owner"

    .line 492
    .line 493
    invoke-static {v7, v1}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    if-eqz v1, :cond_7

    .line 498
    .line 499
    const v1, 0x7f130722

    .line 500
    .line 501
    .line 502
    goto :goto_2

    .line 503
    :cond_7
    const-string v1, "This router does not accept an empty WPS PIN."

    .line 504
    .line 505
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    .line 507
    .line 508
    goto :goto_3

    .line 509
    :goto_4
    return-void

    .line 510
    :pswitch_2
    move-object/from16 v7, p1

    .line 511
    .line 512
    const/16 v6, 0x8

    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    invoke-static/range {p1 .. p1}, Lo4/u;->d(Ljava/util/ArrayList;)Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 522
    .line 523
    .line 524
    const/4 v6, 0x0

    .line 525
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 533
    .line 534
    .line 535
    move-result v6

    .line 536
    if-eqz v6, :cond_9

    .line 537
    .line 538
    invoke-virtual {v4}, Ll4/l;->S()Z

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    if-eqz v6, :cond_8

    .line 543
    .line 544
    invoke-virtual {v11}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v10

    .line 556
    move-object/from16 v16, v12

    .line 557
    .line 558
    iget-object v12, v11, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v4, v6, v7, v10, v12}, Ll4/l;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    goto :goto_5

    .line 564
    :cond_8
    move-object/from16 v16, v12

    .line 565
    .line 566
    :goto_5
    invoke-static {v8, v5}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 567
    .line 568
    .line 569
    invoke-static {v15, v3}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 570
    .line 571
    .line 572
    const v3, 0x104000a

    .line 573
    .line 574
    .line 575
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    .line 576
    .line 577
    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    const v5, 0x7f130539

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    const v4, 0x7f130511

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    .line 634
    .line 635
    new-instance v1, Lcom/google/android/material/snackbar/a;

    .line 636
    .line 637
    const/16 v2, 0x1c

    .line 638
    .line 639
    invoke-direct {v1, v0, v11, v2}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 640
    .line 641
    .line 642
    move-object/from16 v2, v16

    .line 643
    .line 644
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    .line 646
    .line 647
    const/4 v1, 0x0

    .line 648
    :goto_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    .line 650
    .line 651
    goto :goto_7

    .line 652
    :cond_9
    move-object v2, v12

    .line 653
    const-string v1, "Pin not found!"

    .line 654
    .line 655
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    .line 657
    .line 658
    const/16 v1, 0x8

    .line 659
    .line 660
    goto :goto_6

    .line 661
    :goto_7
    return-void

    .line 662
    nop

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ll4/c;->d:Ll4/l;

    .line 2
    .line 3
    iget v1, p0, Lo4/q;->s:I

    .line 4
    .line 5
    iget-object v2, p0, Lo4/q;->B:Lo4/u;

    .line 6
    .line 7
    iget-object v3, p0, Lo4/q;->A:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string v4, "\n"

    .line 10
    .line 11
    const-string v5, "XX:XX:XX:XX:XX:XX"

    .line 12
    .line 13
    const-string v6, "((\\w{2}:){5}\\w{2})"

    .line 14
    .line 15
    const-string v7, "hide"

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v7}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_0
    invoke-virtual {v0, v7}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {v3}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_1
    invoke-virtual {v0, v7}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_2

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {v3}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_2
    invoke-virtual {v0, v7}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_3

    .line 184
    .line 185
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_3

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    :cond_3
    const-string v1, "Trying PIN"

    .line 208
    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_4

    .line 214
    .line 215
    const-string v1, "[0-9]+"

    .line 216
    .line 217
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_4

    .line 230
    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    iget-object v6, p0, Lo4/q;->y:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 237
    .line 238
    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v6, "_pin"

    .line 246
    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v0, v5, v1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-static {v3}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
