.class public final Lm4/e;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public s:Z

.field public final synthetic t:Lcom/zalexdev/stryker/vnc/VNCFragment;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/vnc/VNCFragment;Landroidx/fragment/app/a0;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lm4/e;->t:Lcom/zalexdev/stryker/vnc/VNCFragment;

    const-string p1, "/CORE/VNC/install.sh"

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p1, v0}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm4/e;->s:Z

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    sget p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 2
    .line 3
    iget-object p1, p0, Lm4/e;->t:Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "xfce"

    .line 13
    .line 14
    iget-object v1, p0, Ll4/c;->d:Ll4/l;

    .line 15
    .line 16
    const-string v2, "vnc_installed_de"

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/Thread;

    .line 22
    .line 23
    new-instance v1, Lm4/a;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-direct {v1, p1, v2}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 43
    .line 44
    const-string v2, ""

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->B:Lcom/google/android/material/button/MaterialButton;

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 8

    .line 1
    sget v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 2
    .line 3
    iget-object v0, p0, Lm4/e;->t:Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_1
    const-string v1, "\u00d7"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0x13

    .line 23
    .line 24
    if-eqz v2, :cond_a

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "Refreshing package index"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sget-object v4, Ln4/a;->b:Ln4/a;

    .line 43
    .line 44
    sget-object v5, Lm4/f;->b:Lm4/f;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/zalexdev/stryker/vnc/VNCFragment;->h(Ln4/a;Lm4/f;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_2
    const-string v2, "Installing XFCE"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    sget-object v6, Ln4/a;->c:Ln4/a;

    .line 59
    .line 60
    sget-object v7, Lm4/f;->c:Lm4/f;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    :goto_1
    invoke-virtual {v0, v4, v7}, Lcom/zalexdev/stryker/vnc/VNCFragment;->h(Ln4/a;Lm4/f;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v6, v5}, Lcom/zalexdev/stryker/vnc/VNCFragment;->h(Ln4/a;Lm4/f;)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const-string v2, "Preparing the VNC password"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    sget-object v4, Ln4/a;->d:Ln4/a;

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    :goto_2
    invoke-virtual {v0, v6, v7}, Lcom/zalexdev/stryker/vnc/VNCFragment;->h(Ln4/a;Lm4/f;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    const-string v2, "Writing helper scripts"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    sget-object v6, Ln4/a;->e:Ln4/a;

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    const-string v2, "Verifying the installation"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    sget-object v4, Ln4/a;->f:Ln4/a;

    .line 103
    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const-string v2, "Done"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_7

    .line 114
    .line 115
    invoke-virtual {v0, v4, v7}, Lcom/zalexdev/stryker/vnc/VNCFragment;->h(Ln4/a;Lm4/f;)V

    .line 116
    .line 117
    .line 118
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_8

    .line 123
    .line 124
    iget-object v2, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 125
    .line 126
    new-instance v4, Ld4/d;

    .line 127
    .line 128
    const/16 v5, 0x9

    .line 129
    .line 130
    invoke-direct {v4, v0, v1, v5}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    sget-object v2, Ln2/e;->b:Ln2/e;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_9

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_9
    iget-object v4, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 146
    .line 147
    new-instance v5, Lv3/g;

    .line 148
    .line 149
    invoke-direct {v5, v0, v2, v1, v3}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    :goto_4
    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_a
    invoke-static {p1}, Ln2/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_c

    .line 165
    .line 166
    invoke-static {v1}, Ln2/d;->a(Ljava/lang/String;)Ln2/e;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-nez v4, :cond_b

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_b
    iget-object v4, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 178
    .line 179
    new-instance v5, Lv3/g;

    .line 180
    .line 181
    invoke-direct {v5, v0, v2, v1, v3}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_c
    :goto_5
    const/16 v1, 0x28

    .line 186
    .line 187
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    add-int/lit8 v2, v1, 0x1

    .line 192
    .line 193
    const/16 v3, 0x29

    .line 194
    .line 195
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    const/4 v4, 0x0

    .line 200
    if-ltz v1, :cond_11

    .line 201
    .line 202
    if-gez v3, :cond_d

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_d
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const-string v2, "/"

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    array-length v2, v1

    .line 216
    const/4 v3, 0x2

    .line 217
    if-eq v2, v3, :cond_e

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_e
    :try_start_0
    aget-object v2, v1, v4

    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    const/4 v3, 0x1

    .line 231
    aget-object v1, v1, v3

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    if-lez v1, :cond_11

    .line 242
    .line 243
    if-le v2, v1, :cond_f

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_f
    iget-boolean v5, p0, Lm4/e;->s:Z

    .line 247
    .line 248
    if-nez v5, :cond_10

    .line 249
    .line 250
    iput-boolean v3, p0, Lm4/e;->s:Z

    .line 251
    .line 252
    iget-object v5, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 253
    .line 254
    invoke-virtual {v5, v4}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 255
    .line 256
    .line 257
    iget-object v5, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 258
    .line 259
    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 260
    .line 261
    .line 262
    :cond_10
    iget-object v1, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 263
    .line 264
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setProgressCompat(IZ)V

    .line 265
    .line 266
    .line 267
    :catch_0
    :cond_11
    :goto_6
    const-string v1, "E: "

    .line 268
    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-nez v1, :cond_14

    .line 274
    .line 275
    const-string v1, "Failed to update packages"

    .line 276
    .line 277
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-nez v1, :cond_14

    .line 282
    .line 283
    const-string v1, "Failed to write"

    .line 284
    .line 285
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_12

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_12
    const-string v1, "No previous VNC"

    .line 293
    .line 294
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_13

    .line 299
    .line 300
    iget-object p1, p0, Ll4/c;->d:Ll4/l;

    .line 301
    .line 302
    const-string v0, "Default password set to \"stryker\""

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_a

    .line 308
    :cond_13
    const-string v1, "Use the helper scripts"

    .line 309
    .line 310
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-eqz p1, :cond_17

    .line 315
    .line 316
    const-string p1, "Install complete"

    .line 317
    .line 318
    const-string v1, "VNC server installed."

    .line 319
    .line 320
    invoke-virtual {v0, p1, v1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_a

    .line 324
    :cond_14
    :goto_7
    invoke-static {}, Ln4/a;->values()[Ln4/a;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    array-length v2, v1

    .line 329
    :goto_8
    if-ge v4, v2, :cond_16

    .line 330
    .line 331
    aget-object v3, v1, v4

    .line 332
    .line 333
    iget-object v5, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->P:Ljava/util/EnumMap;

    .line 334
    .line 335
    invoke-virtual {v5, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    check-cast v5, Lm4/h;

    .line 340
    .line 341
    if-eqz v5, :cond_15

    .line 342
    .line 343
    iget-object v5, v5, Lm4/h;->c:Landroid/widget/ProgressBar;

    .line 344
    .line 345
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    if-nez v5, :cond_15

    .line 350
    .line 351
    sget-object v1, Lm4/f;->d:Lm4/f;

    .line 352
    .line 353
    invoke-virtual {v0, v3, v1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->h(Ln4/a;Lm4/f;)V

    .line 354
    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_16
    :goto_9
    const-string v1, "Install failed"

    .line 361
    .line 362
    invoke-virtual {v0, v1, p1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :cond_17
    :goto_a
    return-void
.end method
