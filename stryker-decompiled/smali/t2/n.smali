.class public final synthetic Lt2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lt2/n;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lt2/n;->b:Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget p1, p0, Lt2/n;->a:I

    .line 2
    .line 3
    const-string v0, "/sdcard/Stryker/saved_networks.csv"

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v4, p0, Lt2/n;->b:Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->e:I

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/app/Dialog;

    .line 18
    .line 19
    iget-object v3, v4, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    const v3, 0x7f0d0072

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 35
    .line 36
    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, -0x1

    .line 47
    const/4 v5, -0x2

    .line 48
    invoke-virtual {v2, v3, v5}, Landroid/view/Window;->setLayout(II)V

    .line 49
    .line 50
    .line 51
    const v2, 0x7f0a0657

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/widget/TextView;

    .line 59
    .line 60
    const v3, 0x7f0a069b

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    move-object v5, v3

    .line 68
    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    .line 69
    .line 70
    const v3, 0x7f0a069c

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    move-object v6, v3

    .line 78
    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 79
    .line 80
    const v3, 0x7f0a0492

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    move-object v9, v3

    .line 88
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 89
    .line 90
    const v3, 0x7f0a00f1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 98
    .line 99
    new-instance v7, Lj2/i;

    .line 100
    .line 101
    invoke-direct {v7, p1, v1}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    const-string v1, "Enter path to file"

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "Path"

    .line 113
    .line 114
    invoke-virtual {v6, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lcom/stryker/terminal/ui/other/a;

    .line 121
    .line 122
    const/4 v8, 0x1

    .line 123
    move-object v3, v0

    .line 124
    move-object v7, p1

    .line 125
    invoke-direct/range {v3 .. v8}, Lcom/stryker/terminal/ui/other/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->e:I

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const-string p1, "Failed: "

    .line 141
    .line 142
    const-string v3, "\n"

    .line 143
    .line 144
    const-string v5, ","

    .line 145
    .line 146
    :try_start_0
    iget-object v6, v4, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    .line 147
    .line 148
    invoke-virtual {v6}, Ll4/l;->G()Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v8, "SSID"

    .line 158
    .line 159
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v8, "Password"

    .line 166
    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v8, "WPS Pin"

    .line 174
    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v8, "BSSID"

    .line 182
    .line 183
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    const/4 v9, 0x3

    .line 198
    if-eqz v8, :cond_0

    .line 199
    .line 200
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    check-cast v8, Ljava/util/ArrayList;

    .line 205
    .line 206
    const/4 v10, 0x2

    .line 207
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    check-cast v10, Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    check-cast v10, Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    check-cast v10, Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    check-cast v8, Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 260
    .line 261
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    new-instance v0, Ljava/io/FileWriter;

    .line 265
    .line 266
    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 280
    .line 281
    .line 282
    iget-object v0, v4, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    .line 283
    .line 284
    const-string v1, "Saved networks exported to /sdcard/Stryker/saved_networks.csv"

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :catch_1
    move-exception v0

    .line 291
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    const-string v2, "EPERM"

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_1

    .line 305
    .line 306
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 307
    .line 308
    iget-object v1, v4, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->b:Landroid/content/Context;

    .line 309
    .line 310
    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 311
    .line 312
    .line 313
    const-string v1, "Permission denied"

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    const-string v1, "Failed to write file, use write as root?"

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    new-instance v1, Lcom/stryker/terminal/ui/customize/a;

    .line 326
    .line 327
    const/16 v2, 0x8

    .line 328
    .line 329
    invoke-direct {v1, v4, v7, v2}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 330
    .line 331
    .line 332
    const v2, 0x1040013

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    new-instance v1, Lcom/stryker/terminal/setup/a;

    .line 340
    .line 341
    invoke-direct {v1, v9}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    .line 342
    .line 343
    .line 344
    const v2, 0x1040009

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    .line 352
    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_1
    iget-object v1, v4, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    .line 356
    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v1, v0}, Ll4/l;->r0(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 377
    .line 378
    .line 379
    goto :goto_2

    .line 380
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    .line 382
    .line 383
    iget-object v1, v4, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    .line 384
    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-virtual {v1, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :goto_2
    return-void

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
