.class public Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:Lp2/j;

.field public b:Ll4/l;

.field public c:Lcom/zalexdev/stryker/custom/Sploit;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "\u2014"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lp2/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lp2/a;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0100

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Ll4/l;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->b:Ll4/l;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v1, Lcom/zalexdev/stryker/custom/Sploit;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/zalexdev/stryker/custom/Sploit;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 28
    .line 29
    const-string v2, "title"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Sploit;->setTitle(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 39
    .line 40
    const-string v2, "id"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Sploit;->setId(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 50
    .line 51
    const-string v2, "platform"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Sploit;->setPlatform(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 61
    .line 62
    const-string v2, "type"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Sploit;->setType(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 72
    .line 73
    const-string v2, "author"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Sploit;->setAuthor(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 83
    .line 84
    const-string v2, "date"

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Sploit;->setDate(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 94
    .line 95
    const-string v2, "path"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/custom/Sploit;->setPath(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const v0, 0x7f0a0571

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getTitle()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    const v0, 0x7f0a056d

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v1}, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "EDB-ID: "

    .line 146
    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    const v0, 0x7f0a056f

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 162
    .line 163
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getPlatform()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v1}, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    const v0, 0x7f0a0572

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 184
    .line 185
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getType()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v1}, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    const v0, 0x7f0a056a

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 206
    .line 207
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getAuthor()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v1}, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    const v0, 0x7f0a056b

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getDate()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v1}, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    const v0, 0x7f0a056e

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 250
    .line 251
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v1}, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    const v0, 0x7f0a056c

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroid/widget/ImageView;

    .line 272
    .line 273
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getPlatform()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const-string v2, ""

    .line 280
    .line 281
    if-nez v1, :cond_1

    .line 282
    .line 283
    move-object v1, v2

    .line 284
    goto :goto_0

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 286
    .line 287
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getPlatform()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    :goto_0
    iget-object v3, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 296
    .line 297
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Sploit;->getType()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    if-nez v3, :cond_2

    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_2
    iget-object v2, p0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 305
    .line 306
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Sploit;->getType()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    :goto_1
    const-string v3, "webapps"

    .line 315
    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_3

    .line 321
    .line 322
    const v1, 0x7f0801dd

    .line 323
    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :cond_3
    const-string v2, "windows"

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_4

    .line 334
    .line 335
    const v1, 0x7f0801e4

    .line 336
    .line 337
    .line 338
    goto/16 :goto_4

    .line 339
    .line 340
    :cond_4
    const-string v2, "linux"

    .line 341
    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    if-nez v2, :cond_d

    .line 347
    .line 348
    const-string v2, "unix"

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_5

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_5
    const-string v2, "android"

    .line 358
    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-eqz v2, :cond_6

    .line 364
    .line 365
    const v1, 0x7f08011b

    .line 366
    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_6
    const-string v2, "ios"

    .line 370
    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-nez v2, :cond_c

    .line 376
    .line 377
    const-string v2, "macos"

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_7

    .line 384
    .line 385
    goto :goto_2

    .line 386
    :cond_7
    const-string v2, "hardware"

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-eqz v2, :cond_8

    .line 393
    .line 394
    const v1, 0x7f08009a

    .line 395
    .line 396
    .line 397
    goto :goto_4

    .line 398
    :cond_8
    const-string v2, "multiple"

    .line 399
    .line 400
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_9

    .line 405
    .line 406
    const v1, 0x7f0800c6

    .line 407
    .line 408
    .line 409
    goto :goto_4

    .line 410
    :cond_9
    const-string v2, "freebsd"

    .line 411
    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-eqz v2, :cond_a

    .line 417
    .line 418
    const v1, 0x7f0800d9

    .line 419
    .line 420
    .line 421
    goto :goto_4

    .line 422
    :cond_a
    const-string v2, "solaris"

    .line 423
    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    if-eqz v1, :cond_b

    .line 429
    .line 430
    const v1, 0x7f0801b5

    .line 431
    .line 432
    .line 433
    goto :goto_4

    .line 434
    :cond_b
    const v1, 0x7f080197

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :cond_c
    :goto_2
    const v1, 0x7f080081

    .line 439
    .line 440
    .line 441
    goto :goto_4

    .line 442
    :cond_d
    :goto_3
    const v1, 0x7f080123

    .line 443
    .line 444
    .line 445
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    .line 447
    .line 448
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 449
    .line 450
    const v1, 0x7f0602f2

    .line 451
    .line 452
    .line 453
    invoke-static {p2, v1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 458
    .line 459
    .line 460
    const v0, 0x7f0a0573

    .line 461
    .line 462
    .line 463
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 468
    .line 469
    const v1, 0x7f0a0570

    .line 470
    .line 471
    .line 472
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 477
    .line 478
    const v2, 0x7f0a0569

    .line 479
    .line 480
    .line 481
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 486
    .line 487
    new-instance v2, Lcom/google/android/material/snackbar/a;

    .line 488
    .line 489
    const/16 v3, 0xd

    .line 490
    .line 491
    invoke-direct {v2, p0, p2, v3}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    .line 496
    .line 497
    new-instance p2, Lp2/y;

    .line 498
    .line 499
    const/4 v0, 0x0

    .line 500
    invoke-direct {p2, p0, v0}, Lp2/y;-><init>(Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    .line 505
    .line 506
    new-instance p2, Lp2/y;

    .line 507
    .line 508
    const/4 v0, 0x1

    .line 509
    invoke-direct {p2, p0, v0}, Lp2/y;-><init>(Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    .line 514
    .line 515
    return-void
.end method
