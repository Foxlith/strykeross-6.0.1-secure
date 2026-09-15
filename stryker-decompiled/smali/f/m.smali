.class public Lf/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final P:Lf/i;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lf/n;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lf/m;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/i;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lf/n;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lf/i;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v0, p0, Lf/m;->P:Lf/i;

    iput p2, p0, Lf/m;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Lf/n;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lf/n;

    .line 4
    .line 5
    iget-object v2, v0, Lf/m;->P:Lf/i;

    .line 6
    .line 7
    iget-object v2, v2, Lf/i;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget v3, v0, Lf/m;->mTheme:I

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Lf/n;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lf/m;->P:Lf/i;

    .line 15
    .line 16
    iget-object v3, v2, Lf/i;->f:Landroid/view/View;

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    iget-object v12, v1, Lf/n;->a:Lf/l;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iput-object v3, v12, Lf/l;->G:Landroid/view/View;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v3, v2, Lf/i;->e:Ljava/lang/CharSequence;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iput-object v3, v12, Lf/l;->e:Ljava/lang/CharSequence;

    .line 32
    .line 33
    iget-object v4, v12, Lf/l;->E:Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v3, v2, Lf/i;->d:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iput-object v3, v12, Lf/l;->C:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    iput v11, v12, Lf/l;->B:I

    .line 47
    .line 48
    iget-object v4, v12, Lf/l;->D:Landroid/widget/ImageView;

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v4, v12, Lf/l;->D:Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget v3, v2, Lf/i;->c:I

    .line 61
    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    iput-object v10, v12, Lf/l;->C:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    iput v3, v12, Lf/l;->B:I

    .line 67
    .line 68
    iget-object v4, v12, Lf/l;->D:Landroid/widget/ImageView;

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v3, v12, Lf/l;->D:Landroid/widget/ImageView;

    .line 78
    .line 79
    iget v4, v12, Lf/l;->B:I

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/16 v3, 0x8

    .line 86
    .line 87
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_0
    iget-object v3, v2, Lf/i;->g:Ljava/lang/CharSequence;

    .line 91
    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    iput-object v3, v12, Lf/l;->f:Ljava/lang/CharSequence;

    .line 95
    .line 96
    iget-object v4, v12, Lf/l;->F:Landroid/widget/TextView;

    .line 97
    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    iget-object v3, v2, Lf/i;->h:Ljava/lang/CharSequence;

    .line 104
    .line 105
    if-nez v3, :cond_6

    .line 106
    .line 107
    iget-object v4, v2, Lf/i;->i:Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    if-eqz v4, :cond_7

    .line 110
    .line 111
    :cond_6
    iget-object v4, v2, Lf/i;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 112
    .line 113
    iget-object v5, v2, Lf/i;->i:Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    const/4 v6, -0x1

    .line 116
    invoke-virtual {v12, v6, v3, v4, v5}, Lf/l;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    iget-object v3, v2, Lf/i;->k:Ljava/lang/CharSequence;

    .line 120
    .line 121
    if-nez v3, :cond_8

    .line 122
    .line 123
    iget-object v4, v2, Lf/i;->l:Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    if-eqz v4, :cond_9

    .line 126
    .line 127
    :cond_8
    iget-object v4, v2, Lf/i;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    .line 129
    iget-object v5, v2, Lf/i;->l:Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    const/4 v6, -0x2

    .line 132
    invoke-virtual {v12, v6, v3, v4, v5}, Lf/l;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    .line 133
    .line 134
    .line 135
    :cond_9
    iget-object v3, v2, Lf/i;->n:Ljava/lang/CharSequence;

    .line 136
    .line 137
    if-nez v3, :cond_a

    .line 138
    .line 139
    iget-object v4, v2, Lf/i;->o:Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    if-eqz v4, :cond_b

    .line 142
    .line 143
    :cond_a
    iget-object v4, v2, Lf/i;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 144
    .line 145
    iget-object v5, v2, Lf/i;->o:Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    const/4 v6, -0x3

    .line 148
    invoke-virtual {v12, v6, v3, v4, v5}, Lf/l;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    :cond_b
    iget-object v3, v2, Lf/i;->u:[Ljava/lang/CharSequence;

    .line 152
    .line 153
    const/4 v13, 0x1

    .line 154
    if-nez v3, :cond_c

    .line 155
    .line 156
    iget-object v3, v2, Lf/i;->J:Landroid/database/Cursor;

    .line 157
    .line 158
    if-nez v3, :cond_c

    .line 159
    .line 160
    iget-object v3, v2, Lf/i;->v:Landroid/widget/ListAdapter;

    .line 161
    .line 162
    if-eqz v3, :cond_17

    .line 163
    .line 164
    :cond_c
    iget v3, v12, Lf/l;->K:I

    .line 165
    .line 166
    iget-object v4, v2, Lf/i;->b:Landroid/view/LayoutInflater;

    .line 167
    .line 168
    invoke-virtual {v4, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 173
    .line 174
    iget-boolean v4, v2, Lf/i;->F:Z

    .line 175
    .line 176
    if-eqz v4, :cond_e

    .line 177
    .line 178
    iget-object v4, v2, Lf/i;->J:Landroid/database/Cursor;

    .line 179
    .line 180
    if-nez v4, :cond_d

    .line 181
    .line 182
    new-instance v14, Lf/e;

    .line 183
    .line 184
    iget-object v6, v2, Lf/i;->a:Landroid/content/Context;

    .line 185
    .line 186
    iget v7, v12, Lf/l;->L:I

    .line 187
    .line 188
    iget-object v8, v2, Lf/i;->u:[Ljava/lang/CharSequence;

    .line 189
    .line 190
    move-object v4, v14

    .line 191
    move-object v5, v2

    .line 192
    move-object v9, v3

    .line 193
    invoke-direct/range {v4 .. v9}, Lf/e;-><init>(Lf/i;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_d
    new-instance v14, Lf/f;

    .line 198
    .line 199
    iget-object v6, v2, Lf/i;->a:Landroid/content/Context;

    .line 200
    .line 201
    iget-object v7, v2, Lf/i;->J:Landroid/database/Cursor;

    .line 202
    .line 203
    move-object v4, v14

    .line 204
    move-object v5, v2

    .line 205
    move-object v8, v3

    .line 206
    move-object v9, v12

    .line 207
    invoke-direct/range {v4 .. v9}, Lf/f;-><init>(Lf/i;Landroid/content/Context;Landroid/database/Cursor;Landroidx/appcompat/app/AlertController$RecycleListView;Lf/l;)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_e
    iget-boolean v4, v2, Lf/i;->G:Z

    .line 212
    .line 213
    if-eqz v4, :cond_f

    .line 214
    .line 215
    iget v4, v12, Lf/l;->M:I

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_f
    iget v4, v12, Lf/l;->N:I

    .line 219
    .line 220
    :goto_1
    iget-object v5, v2, Lf/i;->J:Landroid/database/Cursor;

    .line 221
    .line 222
    const v6, 0x1020014

    .line 223
    .line 224
    .line 225
    if-eqz v5, :cond_10

    .line 226
    .line 227
    new-instance v5, Landroid/widget/SimpleCursorAdapter;

    .line 228
    .line 229
    iget-object v15, v2, Lf/i;->a:Landroid/content/Context;

    .line 230
    .line 231
    iget-object v7, v2, Lf/i;->J:Landroid/database/Cursor;

    .line 232
    .line 233
    iget-object v8, v2, Lf/i;->K:Ljava/lang/String;

    .line 234
    .line 235
    filled-new-array {v8}, [Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v18

    .line 239
    filled-new-array {v6}, [I

    .line 240
    .line 241
    .line 242
    move-result-object v19

    .line 243
    move-object v14, v5

    .line 244
    move/from16 v16, v4

    .line 245
    .line 246
    move-object/from16 v17, v7

    .line 247
    .line 248
    invoke-direct/range {v14 .. v19}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_10
    iget-object v14, v2, Lf/i;->v:Landroid/widget/ListAdapter;

    .line 253
    .line 254
    if-eqz v14, :cond_11

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_11
    new-instance v14, Lf/k;

    .line 258
    .line 259
    iget-object v5, v2, Lf/i;->u:[Ljava/lang/CharSequence;

    .line 260
    .line 261
    iget-object v7, v2, Lf/i;->a:Landroid/content/Context;

    .line 262
    .line 263
    invoke-direct {v14, v7, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :goto_2
    iput-object v14, v12, Lf/l;->H:Landroid/widget/ListAdapter;

    .line 267
    .line 268
    iget v4, v2, Lf/i;->H:I

    .line 269
    .line 270
    iput v4, v12, Lf/l;->I:I

    .line 271
    .line 272
    iget-object v4, v2, Lf/i;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    .line 274
    if-eqz v4, :cond_12

    .line 275
    .line 276
    new-instance v4, Lf/g;

    .line 277
    .line 278
    invoke-direct {v4, v2, v12, v11}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 279
    .line 280
    .line 281
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 282
    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_12
    iget-object v4, v2, Lf/i;->I:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 286
    .line 287
    if-eqz v4, :cond_13

    .line 288
    .line 289
    new-instance v4, Lf/h;

    .line 290
    .line 291
    invoke-direct {v4, v2, v3, v12}, Lf/h;-><init>(Lf/i;Landroidx/appcompat/app/AlertController$RecycleListView;Lf/l;)V

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_13
    :goto_4
    iget-object v4, v2, Lf/i;->M:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 296
    .line 297
    if-eqz v4, :cond_14

    .line 298
    .line 299
    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 300
    .line 301
    .line 302
    :cond_14
    iget-boolean v4, v2, Lf/i;->G:Z

    .line 303
    .line 304
    if-eqz v4, :cond_15

    .line 305
    .line 306
    invoke-virtual {v3, v13}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_15
    iget-boolean v4, v2, Lf/i;->F:Z

    .line 311
    .line 312
    if-eqz v4, :cond_16

    .line 313
    .line 314
    const/4 v4, 0x2

    .line 315
    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 316
    .line 317
    .line 318
    :cond_16
    :goto_5
    iput-object v3, v12, Lf/l;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 319
    .line 320
    :cond_17
    iget-object v3, v2, Lf/i;->y:Landroid/view/View;

    .line 321
    .line 322
    if-eqz v3, :cond_19

    .line 323
    .line 324
    iget-boolean v4, v2, Lf/i;->D:Z

    .line 325
    .line 326
    if-eqz v4, :cond_18

    .line 327
    .line 328
    iget v4, v2, Lf/i;->z:I

    .line 329
    .line 330
    iget v5, v2, Lf/i;->A:I

    .line 331
    .line 332
    iget v6, v2, Lf/i;->B:I

    .line 333
    .line 334
    iget v2, v2, Lf/i;->C:I

    .line 335
    .line 336
    iput-object v3, v12, Lf/l;->h:Landroid/view/View;

    .line 337
    .line 338
    iput v11, v12, Lf/l;->i:I

    .line 339
    .line 340
    iput-boolean v13, v12, Lf/l;->n:Z

    .line 341
    .line 342
    iput v4, v12, Lf/l;->j:I

    .line 343
    .line 344
    iput v5, v12, Lf/l;->k:I

    .line 345
    .line 346
    iput v6, v12, Lf/l;->l:I

    .line 347
    .line 348
    iput v2, v12, Lf/l;->m:I

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_18
    iput-object v3, v12, Lf/l;->h:Landroid/view/View;

    .line 352
    .line 353
    iput v11, v12, Lf/l;->i:I

    .line 354
    .line 355
    iput-boolean v11, v12, Lf/l;->n:Z

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_19
    iget v2, v2, Lf/i;->x:I

    .line 359
    .line 360
    if-eqz v2, :cond_1a

    .line 361
    .line 362
    iput-object v10, v12, Lf/l;->h:Landroid/view/View;

    .line 363
    .line 364
    iput v2, v12, Lf/l;->i:I

    .line 365
    .line 366
    iput-boolean v11, v12, Lf/l;->n:Z

    .line 367
    .line 368
    :cond_1a
    :goto_6
    iget-object v2, v0, Lf/m;->P:Lf/i;

    .line 369
    .line 370
    iget-boolean v2, v2, Lf/i;->q:Z

    .line 371
    .line 372
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 373
    .line 374
    .line 375
    iget-object v2, v0, Lf/m;->P:Lf/i;

    .line 376
    .line 377
    iget-boolean v2, v2, Lf/i;->q:Z

    .line 378
    .line 379
    if-eqz v2, :cond_1b

    .line 380
    .line 381
    invoke-virtual {v1, v13}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 382
    .line 383
    .line 384
    :cond_1b
    iget-object v2, v0, Lf/m;->P:Lf/i;

    .line 385
    .line 386
    iget-object v2, v2, Lf/i;->r:Landroid/content/DialogInterface$OnCancelListener;

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 389
    .line 390
    .line 391
    iget-object v2, v0, Lf/m;->P:Lf/i;

    .line 392
    .line 393
    iget-object v2, v2, Lf/i;->s:Landroid/content/DialogInterface$OnDismissListener;

    .line 394
    .line 395
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 396
    .line 397
    .line 398
    iget-object v2, v0, Lf/m;->P:Lf/i;

    .line 399
    .line 400
    iget-object v2, v2, Lf/i;->t:Landroid/content/DialogInterface$OnKeyListener;

    .line 401
    .line 402
    if-eqz v2, :cond_1c

    .line 403
    .line 404
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 405
    .line 406
    .line 407
    :cond_1c
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iget-object v0, v0, Lf/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->v:Landroid/widget/ListAdapter;

    iput-object p2, v0, Lf/i;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-boolean p1, v0, Lf/i;->q:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->J:Landroid/database/Cursor;

    iput-object p3, v0, Lf/i;->K:Ljava/lang/String;

    iput-object p2, v0, Lf/i;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->f:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput p1, v0, Lf/i;->c:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lf/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Lf/m;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lf/m;->P:Lf/i;

    iget-object v1, v1, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object p1, p0, Lf/m;->P:Lf/i;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lf/i;->c:I

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lf/m;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p1, p0, Lf/m;->P:Lf/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iget-object v1, v0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lf/i;->u:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lf/m;->P:Lf/i;

    iput-object p2, p1, Lf/i;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->u:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lf/i;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lf/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iget-object v1, v0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lf/i;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lf/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lf/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iget-object v1, v0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lf/i;->u:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lf/m;->P:Lf/i;

    iput-object p3, p1, Lf/i;->I:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, p1, Lf/i;->E:[Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Lf/i;->F:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lf/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->J:Landroid/database/Cursor;

    iput-object p4, v0, Lf/i;->I:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, v0, Lf/i;->L:Ljava/lang/String;

    iput-object p3, v0, Lf/i;->K:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lf/i;->F:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lf/m;
    .locals 1

    .line 3
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->u:[Ljava/lang/CharSequence;

    iput-object p3, v0, Lf/i;->I:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, v0, Lf/i;->E:[Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lf/i;->F:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iget-object v1, v0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lf/i;->k:Ljava/lang/CharSequence;

    iget-object p1, p0, Lf/m;->P:Lf/i;

    iput-object p2, p1, Lf/i;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->k:Ljava/lang/CharSequence;

    iput-object p2, v0, Lf/i;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iget-object v1, v0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lf/i;->n:Ljava/lang/CharSequence;

    iget-object p1, p0, Lf/m;->P:Lf/i;

    iput-object p2, p1, Lf/i;->p:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->n:Ljava/lang/CharSequence;

    iput-object p2, v0, Lf/i;->p:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->o:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->r:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->s:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->M:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->t:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iget-object v1, v0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lf/i;->h:Ljava/lang/CharSequence;

    iget-object p1, p0, Lf/m;->P:Lf/i;

    iput-object p2, p1, Lf/i;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->h:Ljava/lang/CharSequence;

    iput-object p2, v0, Lf/i;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->i:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lf/m;
    .locals 0

    .line 1
    iget-object p1, p0, Lf/m;->P:Lf/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iget-object v1, v0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lf/i;->u:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lf/m;->P:Lf/i;

    iput-object p3, p1, Lf/i;->w:Landroid/content/DialogInterface$OnClickListener;

    iput p2, p1, Lf/i;->H:I

    const/4 p2, 0x1

    iput-boolean p2, p1, Lf/i;->G:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->J:Landroid/database/Cursor;

    iput-object p4, v0, Lf/i;->w:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lf/i;->H:I

    iput-object p3, v0, Lf/i;->K:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lf/i;->G:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 1

    .line 3
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->v:Landroid/widget/ListAdapter;

    iput-object p3, v0, Lf/i;->w:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lf/i;->H:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lf/i;->G:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;
    .locals 1

    .line 4
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->u:[Ljava/lang/CharSequence;

    iput-object p3, v0, Lf/i;->w:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lf/i;->H:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lf/i;->G:Z

    return-object p0
.end method

.method public setTitle(I)Lf/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iget-object v1, v0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lf/i;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lf/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Lf/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/i;

    const/4 v1, 0x0

    iput-object v1, v0, Lf/i;->y:Landroid/view/View;

    iput p1, v0, Lf/i;->x:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Lf/i;->D:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lf/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->y:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Lf/i;->x:I

    iput-boolean p1, v0, Lf/i;->D:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lf/m;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Lf/m;->P:Lf/i;

    iput-object p1, v0, Lf/i;->y:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Lf/i;->x:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lf/i;->D:Z

    iput p2, v0, Lf/i;->z:I

    iput p3, v0, Lf/i;->A:I

    iput p4, v0, Lf/i;->B:I

    iput p5, v0, Lf/i;->C:I

    return-object p0
.end method

.method public show()Lf/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
