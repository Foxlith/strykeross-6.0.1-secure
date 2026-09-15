.class public final synthetic Lw3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/metasploit/SetValues;

.field public final synthetic c:Landroidx/fragment/app/u0;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/metasploit/SetValues;Landroidx/fragment/app/u0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lw3/o;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw3/o;->b:Lcom/zalexdev/stryker/metasploit/SetValues;

    .line 7
    .line 8
    iput-object p2, p0, Lw3/o;->c:Landroidx/fragment/app/u0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lw3/o;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lw3/o;->c:Landroidx/fragment/app/u0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lw3/o;->b:Lcom/zalexdev/stryker/metasploit/SetValues;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->a:Landroidx/fragment/app/a0;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->h:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v5, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/MsfExploit;->getTitle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->n:Landroid/widget/TextView;

    .line 44
    .line 45
    const v5, 0x7f130432

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/MsfExploit;->getDescription()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/MsfExploit;->getDescription()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->i:Landroid/widget/TextView;

    .line 72
    .line 73
    iget-object v5, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 74
    .line 75
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/MsfExploit;->getDescription()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->i:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/MsfExploit;->getReference()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/MsfExploit;->getReference()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->j:Landroid/widget/TextView;

    .line 108
    .line 109
    iget-object v5, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/MsfExploit;->getReference()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->j:Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :cond_2
    new-instance v0, Lx3/d;

    .line 124
    .line 125
    iget-object v2, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->b:Landroid/content/Context;

    .line 126
    .line 127
    iget-object v5, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 128
    .line 129
    iget-object v6, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    .line 131
    invoke-direct {v0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v7, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v7, v0, Lx3/d;->d:Ljava/util/ArrayList;

    .line 140
    .line 141
    iput-object v2, v0, Lx3/d;->a:Landroid/content/Context;

    .line 142
    .line 143
    new-instance v7, Ll4/l;

    .line 144
    .line 145
    invoke-direct {v7, v2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iput-object v7, v0, Lx3/d;->b:Ll4/l;

    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/MsfExploit;->getArguments()Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iput-object v2, v0, Lx3/d;->c:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    new-array v2, v2, [Ljava/lang/String;

    .line 161
    .line 162
    iput-object v2, v0, Lx3/d;->e:[Ljava/lang/String;

    .line 163
    .line 164
    iput-object v6, v0, Lx3/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    iput-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->c:Lx3/d;

    .line 167
    .line 168
    iget-object v2, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 169
    .line 170
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    .line 175
    const/16 v2, 0x32

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 178
    .line 179
    .line 180
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 181
    .line 182
    const/16 v2, 0x8

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->k:Lcom/google/android/material/button/MaterialButton;

    .line 188
    .line 189
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    .line 191
    .line 192
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->k:Lcom/google/android/material/button/MaterialButton;

    .line 193
    .line 194
    new-instance v2, Lcom/google/android/material/snackbar/a;

    .line 195
    .line 196
    const/16 v4, 0x18

    .line 197
    .line 198
    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    :cond_3
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->d:Lz3/d;

    .line 206
    .line 207
    iget-object v5, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    new-instance v6, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v8, "use "

    .line 220
    .line 221
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/MsfExploit;->getUrl()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v0, v7}, Lz3/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 236
    .line 237
    .line 238
    const-string v7, "show options"

    .line 239
    .line 240
    invoke-virtual {v0, v7}, Lz3/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    const-string v8, "show info"

    .line 245
    .line 246
    invoke-virtual {v0, v8}, Lz3/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-eqz v9, :cond_7

    .line 259
    .line 260
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    check-cast v9, Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    const-string v10, "\\s{2,}"

    .line 271
    .line 272
    const-string v11, ";"

    .line 273
    .line 274
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    array-length v11, v10

    .line 283
    if-lez v11, :cond_4

    .line 284
    .line 285
    const-string v11, "[a-zA-Z]+"

    .line 286
    .line 287
    aget-object v12, v10, v2

    .line 288
    .line 289
    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    if-eqz v11, :cond_4

    .line 294
    .line 295
    aget-object v11, v10, v2

    .line 296
    .line 297
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 298
    .line 299
    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v12

    .line 303
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    if-eqz v11, :cond_4

    .line 308
    .line 309
    new-instance v11, Lcom/zalexdev/stryker/custom/Argument;

    .line 310
    .line 311
    invoke-direct {v11}, Lcom/zalexdev/stryker/custom/Argument;-><init>()V

    .line 312
    .line 313
    .line 314
    array-length v12, v10

    .line 315
    const/4 v13, 0x4

    .line 316
    const/4 v14, 0x3

    .line 317
    if-ne v12, v13, :cond_5

    .line 318
    .line 319
    aget-object v12, v10, v2

    .line 320
    .line 321
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    invoke-virtual {v11, v12}, Lcom/zalexdev/stryker/custom/Argument;->setName(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    aget-object v12, v10, v4

    .line 329
    .line 330
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v12

    .line 334
    invoke-virtual {v11, v12}, Lcom/zalexdev/stryker/custom/Argument;->setValue(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    aget-object v10, v10, v14

    .line 338
    .line 339
    :goto_2
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    invoke-virtual {v11, v10}, Lcom/zalexdev/stryker/custom/Argument;->setDescription(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_5
    array-length v12, v10

    .line 348
    const/4 v13, 0x2

    .line 349
    if-ne v12, v14, :cond_6

    .line 350
    .line 351
    aget-object v12, v10, v2

    .line 352
    .line 353
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v12

    .line 357
    invoke-virtual {v11, v12}, Lcom/zalexdev/stryker/custom/Argument;->setName(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    aget-object v10, v10, v13

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_6
    array-length v12, v10

    .line 364
    if-ne v12, v13, :cond_4

    .line 365
    .line 366
    aget-object v10, v10, v2

    .line 367
    .line 368
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v10

    .line 372
    invoke-virtual {v11, v10}, Lcom/zalexdev/stryker/custom/Argument;->setName(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :goto_3
    iget-object v10, v0, Lz3/d;->a:Landroid/content/Context;

    .line 376
    .line 377
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 378
    .line 379
    .line 380
    move-result-object v10

    .line 381
    const v12, 0x7f13076f

    .line 382
    .line 383
    .line 384
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result v9

    .line 392
    invoke-virtual {v11, v9}, Lcom/zalexdev/stryker/custom/Argument;->setRequired(Z)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :cond_7
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-ge v2, v0, :cond_e

    .line 405
    .line 406
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Ljava/lang/String;

    .line 411
    .line 412
    const-string v7, "Name:"

    .line 413
    .line 414
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 415
    .line 416
    .line 417
    move-result v9

    .line 418
    if-eqz v9, :cond_8

    .line 419
    .line 420
    const-string v9, ""

    .line 421
    .line 422
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v5, v0}, Lcom/zalexdev/stryker/custom/MsfExploit;->setTitle(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_8
    const-string v7, "Description:"

    .line 435
    .line 436
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    if-eqz v7, :cond_b

    .line 441
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    add-int/lit8 v7, v2, 0x1

    .line 448
    .line 449
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    if-ge v7, v9, :cond_a

    .line 454
    .line 455
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v9

    .line 459
    check-cast v9, Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 462
    .line 463
    .line 464
    move-result v9

    .line 465
    if-ge v9, v4, :cond_9

    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_9
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    check-cast v9, Ljava/lang/String;

    .line 473
    .line 474
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v9, " "

    .line 478
    .line 479
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    add-int/lit8 v7, v7, 0x1

    .line 483
    .line 484
    goto :goto_5

    .line 485
    :cond_a
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {v5, v0}, Lcom/zalexdev/stryker/custom/MsfExploit;->setDescription(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    goto :goto_8

    .line 497
    :cond_b
    const-string v7, "References:"

    .line 498
    .line 499
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    if-eqz v0, :cond_d

    .line 504
    .line 505
    add-int/lit8 v0, v2, 0x1

    .line 506
    .line 507
    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    if-ge v0, v7, :cond_d

    .line 512
    .line 513
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    check-cast v7, Ljava/lang/String;

    .line 518
    .line 519
    const-string v9, "https://"

    .line 520
    .line 521
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 522
    .line 523
    .line 524
    move-result v7

    .line 525
    if-eqz v7, :cond_c

    .line 526
    .line 527
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    check-cast v0, Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v5, v0}, Lcom/zalexdev/stryker/custom/MsfExploit;->setReference(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    goto :goto_8

    .line 537
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 538
    .line 539
    goto :goto_7

    .line 540
    :cond_d
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 541
    .line 542
    goto/16 :goto_4

    .line 543
    .line 544
    :cond_e
    invoke-virtual {v5, v6}, Lcom/zalexdev/stryker/custom/MsfExploit;->setArguments(Ljava/util/ArrayList;)V

    .line 545
    .line 546
    .line 547
    iput-object v5, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 548
    .line 549
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/MsfExploit;->getArguments()Ljava/util/ArrayList;

    .line 550
    .line 551
    .line 552
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    if-nez v0, :cond_10

    .line 559
    .line 560
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->a:Landroidx/fragment/app/a0;

    .line 561
    .line 562
    if-eqz v0, :cond_10

    .line 563
    .line 564
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-nez v0, :cond_f

    .line 569
    .line 570
    goto :goto_9

    .line 571
    :cond_f
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/SetValues;->a:Landroidx/fragment/app/a0;

    .line 572
    .line 573
    new-instance v2, Lw3/o;

    .line 574
    .line 575
    invoke-direct {v2, v3, v1, v4}, Lw3/o;-><init>(Lcom/zalexdev/stryker/metasploit/SetValues;Landroidx/fragment/app/u0;I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 579
    .line 580
    .line 581
    :cond_10
    :goto_9
    return-void

    .line 582
    nop

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
