.class public final Ld4/b;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# static fields
.field public static final b:[I

.field public static final c:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, -0x2cd0d1

    const v1, -0x48e3e4

    const v2, -0xea9a40

    const v3, -0x657db

    const v4, -0x109400

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Ld4/b;->b:[I

    const-string v0, "HIGH"

    const-string v1, "CRITICAL"

    const-string v2, "INFO"

    const-string v3, "LOW"

    const-string v4, "MEDIUM"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld4/b;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    iput-object p1, p0, Ld4/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 8

    .line 1
    check-cast p1, Ld4/a;

    .line 2
    .line 3
    iget-object v0, p0, Ld4/b;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/zalexdev/stryker/custom/NucleiItem;

    .line 10
    .line 11
    iget v0, p2, Lcom/zalexdev/stryker/custom/NucleiItem;->severity:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x4

    .line 19
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :goto_0
    sget-object v2, Ld4/b;->b:[I

    .line 24
    .line 25
    aget v2, v2, v0

    .line 26
    .line 27
    iget-object v3, p1, Ld4/a;->a:Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v4, p2, Lcom/zalexdev/stryker/custom/NucleiItem;->title:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v4, p2, Lcom/zalexdev/stryker/custom/NucleiItem;->title:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    const-string v4, "(untitled finding)"

    .line 48
    .line 49
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p1, Ld4/a;->b:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v4, p2, Lcom/zalexdev/stryker/custom/NucleiItem;->host:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p2, Lcom/zalexdev/stryker/custom/NucleiItem;->description:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    iget-object v3, p2, Lcom/zalexdev/stryker/custom/NucleiItem;->description:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    goto :goto_4

    .line 81
    :cond_4
    :goto_3
    const-string v3, "\u2014"

    .line 82
    .line 83
    :goto_4
    iget-object v4, p1, Ld4/a;->c:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    sget-object v3, Ld4/b;->c:[Ljava/lang/String;

    .line 89
    .line 90
    aget-object v0, v3, v0

    .line 91
    .line 92
    iget-object v3, p1, Ld4/a;->d:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p1, Ld4/a;->e:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const/16 v2, 0x28

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 129
    .line 130
    .line 131
    :cond_5
    iget-object v0, p2, Lcom/zalexdev/stryker/custom/NucleiItem;->results:Ljava/lang/String;

    .line 132
    .line 133
    const/4 v2, 0x1

    .line 134
    const/4 v3, 0x0

    .line 135
    if-nez v0, :cond_6

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_a

    .line 147
    .line 148
    const-string v4, "[]"

    .line 149
    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-nez v4, :cond_a

    .line 155
    .line 156
    const-string v4, "\"\""

    .line 157
    .line 158
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_7

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_7
    const-string v3, "[\""

    .line 166
    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_8

    .line 172
    .line 173
    const-string v3, "\"]"

    .line 174
    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_8

    .line 180
    .line 181
    const/4 v3, 0x2

    .line 182
    invoke-static {v0, v3, v3}, Lorg/bouncycastle/math/ec/a;->c(Ljava/lang/String;II)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    goto :goto_5

    .line 187
    :cond_8
    const-string v3, "["

    .line 188
    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_9

    .line 194
    .line 195
    const-string v3, "]"

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_9

    .line 202
    .line 203
    invoke-static {v0, v2, v2}, Lorg/bouncycastle/math/ec/a;->c(Ljava/lang/String;II)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    :cond_9
    :goto_5
    const-string v3, "\\/"

    .line 208
    .line 209
    const-string v4, "/"

    .line 210
    .line 211
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v3, "\\\""

    .line 216
    .line 217
    const-string v4, "\""

    .line 218
    .line 219
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v3, "\",\""

    .line 224
    .line 225
    const-string v4, "\n"

    .line 226
    .line 227
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    :cond_a
    :goto_6
    const/16 v0, 0x8

    .line 232
    .line 233
    iget-object v4, p1, Ld4/a;->f:Landroid/view/View;

    .line 234
    .line 235
    if-nez v3, :cond_b

    .line 236
    .line 237
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_b
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    iget-object v4, p1, Ld4/a;->g:Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    :goto_7
    iget-object v3, p2, Lcom/zalexdev/stryker/custom/NucleiItem;->tags:Ljava/util/ArrayList;

    .line 250
    .line 251
    iget-object v4, p1, Ld4/a;->h:Lcom/google/android/material/chip/ChipGroup;

    .line 252
    .line 253
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 254
    .line 255
    .line 256
    if-eqz v3, :cond_11

    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-eqz v5, :cond_c

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_c
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    if-eqz v5, :cond_12

    .line 277
    .line 278
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    check-cast v5, Ljava/lang/String;

    .line 283
    .line 284
    if-nez v5, :cond_d

    .line 285
    .line 286
    const-string v5, ""

    .line 287
    .line 288
    goto :goto_9

    .line 289
    :cond_d
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    const-string v6, "http://"

    .line 294
    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    if-nez v6, :cond_e

    .line 300
    .line 301
    const-string v6, "https://"

    .line 302
    .line 303
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    if-eqz v6, :cond_f

    .line 308
    .line 309
    :cond_e
    :try_start_0
    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    if-eqz v7, :cond_f

    .line 318
    .line 319
    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :catch_0
    :cond_f
    :goto_9
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    if-eqz v6, :cond_10

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_10
    new-instance v6, Lcom/google/android/material/chip/Chip;

    .line 331
    .line 332
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-direct {v6, v7}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    .line 341
    .line 342
    const/high16 v5, 0x41200000    # 10.0f

    .line 343
    .line 344
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6, v1}, Lcom/google/android/material/chip/Chip;->setEnsureMinTouchTargetSize(Z)V

    .line 348
    .line 349
    .line 350
    const/4 v5, 0x0

    .line 351
    invoke-virtual {v6, v5}, Lcom/google/android/material/chip/Chip;->setChipMinHeight(F)V

    .line 352
    .line 353
    .line 354
    const/high16 v7, 0x14000000

    .line 355
    .line 356
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6, v5}, Lcom/google/android/material/chip/Chip;->setChipStrokeWidth(F)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6, v1}, Landroid/view/View;->setClickable(Z)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 373
    .line 374
    .line 375
    goto :goto_8

    .line 376
    :cond_11
    :goto_a
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .line 378
    .line 379
    :cond_12
    iget-object p2, p2, Lcom/zalexdev/stryker/custom/NucleiItem;->cve:Ljava/lang/String;

    .line 380
    .line 381
    if-eqz p2, :cond_14

    .line 382
    .line 383
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    if-eqz v3, :cond_13

    .line 392
    .line 393
    goto :goto_b

    .line 394
    :cond_13
    move v2, v1

    .line 395
    :cond_14
    :goto_b
    iget-object p1, p1, Ld4/a;->i:Landroid/widget/TextView;

    .line 396
    .line 397
    if-eqz v2, :cond_15

    .line 398
    .line 399
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_15
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    .line 408
    .line 409
    :goto_c
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0d0078

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Ld4/a;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Ld4/a;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method
