.class public final Landroidx/core/view/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/core/view/c;


# direct methods
.method public constructor <init>(Landroidx/core/view/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {v0, p1}, Landroidx/core/view/c;->getAccessibilityNodeProvider(Landroid/view/View;)Lh0/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lh0/l;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lh0/h;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lh0/h;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    .line 9
    .line 10
    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const-class v4, Ljava/lang/Boolean;

    .line 15
    .line 16
    const/16 v5, 0x1c

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    if-lt v3, v5, :cond_0

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Landroidx/core/view/v0;->d(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const v3, 0x7f0a061a

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v3, v6

    .line 45
    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x1

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    move v3, v8

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v3, v7

    .line 60
    :goto_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    if-lt v9, v5, :cond_3

    .line 63
    .line 64
    invoke-static {v1, v3}, Landroidx/core/view/j;->v(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v2, v8, v3}, Lh0/h;->f(IZ)V

    .line 69
    .line 70
    .line 71
    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    if-lt v3, v5, :cond_4

    .line 74
    .line 75
    invoke-static/range {p1 .. p1}, Landroidx/core/view/v0;->c(Landroid/view/View;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const v3, 0x7f0a0614

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    move-object v3, v6

    .line 99
    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    .line 100
    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    move v8, v7

    .line 111
    :goto_4
    if-lt v9, v5, :cond_7

    .line 112
    .line 113
    invoke-static {v1, v8}, Landroidx/core/view/j;->B(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_7
    const/4 v3, 0x2

    .line 118
    invoke-virtual {v2, v3, v8}, Lh0/h;->f(IZ)V

    .line 119
    .line 120
    .line 121
    :goto_5
    invoke-static/range {p1 .. p1}, Landroidx/core/view/c1;->e(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-lt v9, v5, :cond_8

    .line 126
    .line 127
    invoke-static {v1, v3}, Landroidx/core/view/j;->u(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    const-string v5, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    .line 136
    .line 137
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    :goto_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 141
    .line 142
    const/16 v4, 0x1e

    .line 143
    .line 144
    if-lt v3, v4, :cond_9

    .line 145
    .line 146
    invoke-static/range {p1 .. p1}, Landroidx/core/view/x0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    goto :goto_7

    .line 151
    :cond_9
    const v3, 0x7f0a061b

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    const-class v5, Ljava/lang/CharSequence;

    .line 159
    .line 160
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_a

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_a
    move-object v3, v6

    .line 168
    :goto_7
    check-cast v3, Ljava/lang/CharSequence;

    .line 169
    .line 170
    if-lt v9, v4, :cond_b

    .line 171
    .line 172
    invoke-static {v1, v3}, Landroidx/core/view/v2;->p(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    :goto_8
    move-object/from16 v3, p0

    .line 176
    .line 177
    goto :goto_9

    .line 178
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    const-string v5, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 183
    .line 184
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    goto :goto_8

    .line 188
    :goto_9
    iget-object v4, v3, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    .line 189
    .line 190
    invoke-virtual {v4, v0, v2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    const/16 v5, 0x1a

    .line 198
    .line 199
    if-ge v9, v5, :cond_13

    .line 200
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 206
    .line 207
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 215
    .line 216
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 224
    .line 225
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    const-string v11, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 233
    .line 234
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const v5, 0x7f0a0613

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    check-cast v12, Landroid/util/SparseArray;

    .line 245
    .line 246
    if-eqz v12, :cond_e

    .line 247
    .line 248
    new-instance v13, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    move v14, v7

    .line 254
    :goto_a
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 255
    .line 256
    .line 257
    move-result v15

    .line 258
    if-ge v14, v15, :cond_d

    .line 259
    .line 260
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 265
    .line 266
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v15

    .line 270
    if-nez v15, :cond_c

    .line 271
    .line 272
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    :cond_c
    add-int/lit8 v14, v14, 0x1

    .line 280
    .line 281
    goto :goto_a

    .line 282
    :cond_d
    move v14, v7

    .line 283
    :goto_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v15

    .line 287
    if-ge v14, v15, :cond_e

    .line 288
    .line 289
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v15

    .line 293
    check-cast v15, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 296
    .line 297
    .line 298
    move-result v15

    .line 299
    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 300
    .line 301
    .line 302
    add-int/lit8 v14, v14, 0x1

    .line 303
    .line 304
    goto :goto_b

    .line 305
    :cond_e
    instance-of v12, v4, Landroid/text/Spanned;

    .line 306
    .line 307
    if-eqz v12, :cond_f

    .line 308
    .line 309
    move-object v6, v4

    .line 310
    check-cast v6, Landroid/text/Spanned;

    .line 311
    .line 312
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 313
    .line 314
    .line 315
    move-result v12

    .line 316
    const-class v13, Landroid/text/style/ClickableSpan;

    .line 317
    .line 318
    invoke-interface {v6, v7, v12, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    check-cast v6, [Landroid/text/style/ClickableSpan;

    .line 323
    .line 324
    :cond_f
    if-eqz v6, :cond_13

    .line 325
    .line 326
    array-length v12, v6

    .line 327
    if-lez v12, :cond_13

    .line 328
    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 334
    .line 335
    const v13, 0x7f0a0025

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    check-cast v1, Landroid/util/SparseArray;

    .line 346
    .line 347
    if-nez v1, :cond_10

    .line 348
    .line 349
    new-instance v1, Landroid/util/SparseArray;

    .line 350
    .line 351
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    :cond_10
    move v5, v7

    .line 358
    :goto_c
    array-length v12, v6

    .line 359
    if-ge v5, v12, :cond_13

    .line 360
    .line 361
    aget-object v12, v6, v5

    .line 362
    .line 363
    move v13, v7

    .line 364
    :goto_d
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 365
    .line 366
    .line 367
    move-result v14

    .line 368
    if-ge v13, v14, :cond_12

    .line 369
    .line 370
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v14

    .line 374
    check-cast v14, Ljava/lang/ref/WeakReference;

    .line 375
    .line 376
    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v14

    .line 380
    check-cast v14, Landroid/text/style/ClickableSpan;

    .line 381
    .line 382
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v14

    .line 386
    if-eqz v14, :cond_11

    .line 387
    .line 388
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 389
    .line 390
    .line 391
    move-result v12

    .line 392
    goto :goto_e

    .line 393
    :cond_11
    add-int/lit8 v13, v13, 0x1

    .line 394
    .line 395
    goto :goto_d

    .line 396
    :cond_12
    sget v12, Lh0/h;->d:I

    .line 397
    .line 398
    add-int/lit8 v13, v12, 0x1

    .line 399
    .line 400
    sput v13, Lh0/h;->d:I

    .line 401
    .line 402
    :goto_e
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 403
    .line 404
    aget-object v14, v6, v5

    .line 405
    .line 406
    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    aget-object v13, v6, v5

    .line 413
    .line 414
    move-object v14, v4

    .line 415
    check-cast v14, Landroid/text/Spanned;

    .line 416
    .line 417
    invoke-virtual {v2, v8}, Lh0/h;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 418
    .line 419
    .line 420
    move-result-object v15

    .line 421
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 422
    .line 423
    .line 424
    move-result v16

    .line 425
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2, v9}, Lh0/h;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 437
    .line 438
    .line 439
    move-result v15

    .line 440
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v15

    .line 444
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v10}, Lh0/h;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 452
    .line 453
    .line 454
    move-result v13

    .line 455
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v13

    .line 459
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v11}, Lh0/h;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 463
    .line 464
    .line 465
    move-result-object v7

    .line 466
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v12

    .line 470
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    add-int/lit8 v5, v5, 0x1

    .line 474
    .line 475
    const/4 v7, 0x0

    .line 476
    goto :goto_c

    .line 477
    :cond_13
    invoke-static/range {p1 .. p1}, Landroidx/core/view/c;->getActionList(Landroid/view/View;)Ljava/util/List;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const/4 v7, 0x0

    .line 482
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    if-ge v7, v1, :cond_14

    .line 487
    .line 488
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    check-cast v1, Lh0/g;

    .line 493
    .line 494
    invoke-virtual {v2, v1}, Lh0/h;->b(Lh0/g;)V

    .line 495
    .line 496
    .line 497
    add-int/lit8 v7, v7, 0x1

    .line 498
    .line 499
    goto :goto_f

    .line 500
    :cond_14
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/c;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
