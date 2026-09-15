.class public final Landroidx/emoji2/text/g;
.super Lf/q0;
.source "SourceFile"


# instance fields
.field public volatile c:Lv/y;

.field public volatile d:Lv1/h;


# virtual methods
.method public final K()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroidx/emoji2/text/f;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/f;-><init>(Landroidx/emoji2/text/g;)V

    iget-object v1, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/l;

    iget-object v1, v1, Landroidx/emoji2/text/l;->f:Landroidx/emoji2/text/k;

    invoke-interface {v1, v0}, Landroidx/emoji2/text/k;->a(Lv1/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/l;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/l;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final L(Ljava/lang/CharSequence;ZII)Ljava/lang/CharSequence;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/g;->c:Lv/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v1, p1, Landroidx/emoji2/text/w;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    check-cast v2, Landroidx/emoji2/text/w;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/emoji2/text/w;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-class v2, Landroidx/emoji2/text/x;

    .line 17
    .line 18
    if-nez v1, :cond_3

    .line 19
    .line 20
    :try_start_0
    instance-of v3, p1, Landroid/text/Spannable;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of v3, p1, Landroid/text/Spanned;

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    move-object v3, p1

    .line 30
    check-cast v3, Landroid/text/Spanned;

    .line 31
    .line 32
    add-int/lit8 v4, p3, -0x1

    .line 33
    .line 34
    add-int/lit8 v5, p4, 0x1

    .line 35
    .line 36
    invoke-interface {v3, v4, v5, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-gt v3, p4, :cond_2

    .line 41
    .line 42
    new-instance v3, Landroidx/emoji2/text/z;

    .line 43
    .line 44
    invoke-direct {v3, p1}, Landroidx/emoji2/text/z;-><init>(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p2

    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    new-instance v3, Landroidx/emoji2/text/z;

    .line 54
    .line 55
    move-object v4, p1

    .line 56
    check-cast v4, Landroid/text/Spannable;

    .line 57
    .line 58
    invoke-direct {v3, v4}, Landroidx/emoji2/text/z;-><init>(Landroid/text/Spannable;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    const/4 v4, 0x0

    .line 62
    if-eqz v3, :cond_5

    .line 63
    .line 64
    iget-object v5, v3, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    .line 65
    .line 66
    invoke-interface {v5, p3, p4, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, [Landroidx/emoji2/text/x;

    .line 71
    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    array-length v5, v2

    .line 75
    if-lez v5, :cond_5

    .line 76
    .line 77
    array-length v5, v2

    .line 78
    move v6, v4

    .line 79
    :goto_2
    if-ge v6, v5, :cond_5

    .line 80
    .line 81
    aget-object v7, v2, v6

    .line 82
    .line 83
    iget-object v8, v3, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    .line 84
    .line 85
    invoke-interface {v8, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    iget-object v9, v3, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    .line 90
    .line 91
    invoke-interface {v9, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eq v8, p4, :cond_4

    .line 96
    .line 97
    invoke-virtual {v3, v7}, Landroidx/emoji2/text/z;->removeSpan(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-static {v8, p3}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    invoke-static {v9, p4}, Ljava/lang/Math;->max(II)I

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    if-eq p3, p4, :cond_16

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-lt p3, v2, :cond_6

    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_6
    new-instance v2, Landroidx/emoji2/text/q;

    .line 122
    .line 123
    iget-object v5, v0, Lv/y;->c:Lv1/h;

    .line 124
    .line 125
    iget-object v5, v5, Lv1/h;->c:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v5, Landroidx/emoji2/text/u;

    .line 128
    .line 129
    iget-boolean v6, v0, Lv/y;->a:Z

    .line 130
    .line 131
    iget-object v7, v0, Lv/y;->e:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v7, [I

    .line 134
    .line 135
    invoke-direct {v2, v5, v6, v7}, Landroidx/emoji2/text/q;-><init>(Landroidx/emoji2/text/u;Z[I)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1, p3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    move v6, v5

    .line 143
    move v5, v4

    .line 144
    move-object v4, v3

    .line 145
    :cond_7
    :goto_3
    move v3, p3

    .line 146
    :cond_8
    :goto_4
    const/16 v7, 0x21

    .line 147
    .line 148
    const/4 v8, 0x1

    .line 149
    const v9, 0x7fffffff

    .line 150
    .line 151
    .line 152
    const/4 v10, 0x2

    .line 153
    if-ge p3, p4, :cond_f

    .line 154
    .line 155
    if-ge v5, v9, :cond_f

    .line 156
    .line 157
    invoke-virtual {v2, v6}, Landroidx/emoji2/text/q;->a(I)I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-eq v9, v8, :cond_d

    .line 162
    .line 163
    if-eq v9, v10, :cond_c

    .line 164
    .line 165
    const/4 v8, 0x3

    .line 166
    if-eq v9, v8, :cond_9

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_9
    if-nez p2, :cond_a

    .line 170
    .line 171
    iget-object v8, v2, Landroidx/emoji2/text/q;->g:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v8, Landroidx/emoji2/text/u;

    .line 174
    .line 175
    iget-object v8, v8, Landroidx/emoji2/text/u;->b:Landroidx/emoji2/text/p;

    .line 176
    .line 177
    invoke-virtual {v0, p1, v3, p3, v8}, Lv/y;->b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/p;)Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-nez v8, :cond_7

    .line 182
    .line 183
    :cond_a
    if-nez v4, :cond_b

    .line 184
    .line 185
    new-instance v4, Landroidx/emoji2/text/z;

    .line 186
    .line 187
    new-instance v8, Landroid/text/SpannableString;

    .line 188
    .line 189
    invoke-direct {v8, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    invoke-direct {v4, v8}, Landroidx/emoji2/text/z;-><init>(Landroid/text/Spannable;)V

    .line 193
    .line 194
    .line 195
    :cond_b
    iget-object v8, v2, Landroidx/emoji2/text/q;->g:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v8, Landroidx/emoji2/text/u;

    .line 198
    .line 199
    iget-object v8, v8, Landroidx/emoji2/text/u;->b:Landroidx/emoji2/text/p;

    .line 200
    .line 201
    iget-object v9, v0, Lv/y;->b:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v9, Ld/d;

    .line 204
    .line 205
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    new-instance v9, Landroidx/emoji2/text/x;

    .line 209
    .line 210
    invoke-direct {v9, v8}, Landroidx/emoji2/text/x;-><init>(Landroidx/emoji2/text/p;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v9, v3, p3, v7}, Landroidx/emoji2/text/z;->setSpan(Ljava/lang/Object;III)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v5, v5, 0x1

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_c
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    add-int/2addr p3, v7

    .line 224
    if-ge p3, p4, :cond_8

    .line 225
    .line 226
    invoke-static {p1, p3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    goto :goto_4

    .line 231
    :cond_d
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    invoke-static {p3}, Ljava/lang/Character;->charCount(I)I

    .line 236
    .line 237
    .line 238
    move-result p3

    .line 239
    add-int/2addr v3, p3

    .line 240
    if-ge v3, p4, :cond_e

    .line 241
    .line 242
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 243
    .line 244
    .line 245
    move-result p3

    .line 246
    move v6, p3

    .line 247
    :cond_e
    move p3, v3

    .line 248
    goto :goto_4

    .line 249
    :cond_f
    iget p4, v2, Landroidx/emoji2/text/q;->a:I

    .line 250
    .line 251
    if-ne p4, v10, :cond_13

    .line 252
    .line 253
    iget-object p4, v2, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast p4, Landroidx/emoji2/text/u;

    .line 256
    .line 257
    iget-object p4, p4, Landroidx/emoji2/text/u;->b:Landroidx/emoji2/text/p;

    .line 258
    .line 259
    if-eqz p4, :cond_13

    .line 260
    .line 261
    iget p4, v2, Landroidx/emoji2/text/q;->d:I

    .line 262
    .line 263
    if-gt p4, v8, :cond_10

    .line 264
    .line 265
    invoke-virtual {v2}, Landroidx/emoji2/text/q;->d()Z

    .line 266
    .line 267
    .line 268
    move-result p4

    .line 269
    if-eqz p4, :cond_13

    .line 270
    .line 271
    :cond_10
    if-ge v5, v9, :cond_13

    .line 272
    .line 273
    if-nez p2, :cond_11

    .line 274
    .line 275
    iget-object p2, v2, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast p2, Landroidx/emoji2/text/u;

    .line 278
    .line 279
    iget-object p2, p2, Landroidx/emoji2/text/u;->b:Landroidx/emoji2/text/p;

    .line 280
    .line 281
    invoke-virtual {v0, p1, v3, p3, p2}, Lv/y;->b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/p;)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-nez p2, :cond_13

    .line 286
    .line 287
    :cond_11
    if-nez v4, :cond_12

    .line 288
    .line 289
    new-instance v4, Landroidx/emoji2/text/z;

    .line 290
    .line 291
    invoke-direct {v4, p1}, Landroidx/emoji2/text/z;-><init>(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    :cond_12
    iget-object p2, v2, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast p2, Landroidx/emoji2/text/u;

    .line 297
    .line 298
    iget-object p2, p2, Landroidx/emoji2/text/u;->b:Landroidx/emoji2/text/p;

    .line 299
    .line 300
    iget-object p4, v0, Lv/y;->b:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast p4, Ld/d;

    .line 303
    .line 304
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    new-instance p4, Landroidx/emoji2/text/x;

    .line 308
    .line 309
    invoke-direct {p4, p2}, Landroidx/emoji2/text/x;-><init>(Landroidx/emoji2/text/p;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, p4, v3, p3, v7}, Landroidx/emoji2/text/z;->setSpan(Ljava/lang/Object;III)V

    .line 313
    .line 314
    .line 315
    :cond_13
    if-eqz v4, :cond_15

    .line 316
    .line 317
    iget-object p2, v4, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .line 319
    if-eqz v1, :cond_14

    .line 320
    .line 321
    check-cast p1, Landroidx/emoji2/text/w;

    .line 322
    .line 323
    invoke-virtual {p1}, Landroidx/emoji2/text/w;->b()V

    .line 324
    .line 325
    .line 326
    :cond_14
    move-object p1, p2

    .line 327
    goto :goto_7

    .line 328
    :cond_15
    if-eqz v1, :cond_17

    .line 329
    .line 330
    :goto_5
    move-object p2, p1

    .line 331
    check-cast p2, Landroidx/emoji2/text/w;

    .line 332
    .line 333
    invoke-virtual {p2}, Landroidx/emoji2/text/w;->b()V

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_16
    :goto_6
    if-eqz v1, :cond_17

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_17
    :goto_7
    return-object p1

    .line 341
    :goto_8
    if-eqz v1, :cond_18

    .line 342
    .line 343
    check-cast p1, Landroidx/emoji2/text/w;

    .line 344
    .line 345
    invoke-virtual {p1}, Landroidx/emoji2/text/w;->b()V

    .line 346
    .line 347
    .line 348
    :cond_18
    throw p2
.end method

.method public final M(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/emoji2/text/g;->d:Lv1/h;

    .line 4
    .line 5
    iget-object v1, v1, Lv1/h;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lq0/b;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {v1, v2}, Lq0/c;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v4, v1, Lq0/c;->b:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    iget v1, v1, Lq0/c;->a:I

    .line 20
    .line 21
    add-int/2addr v2, v1

    .line 22
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v3

    .line 28
    :goto_0
    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 34
    .line 35
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Landroidx/emoji2/text/l;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const-string v0, "android.support.text.emoji.emojiCompat_replaceAll"

    .line 43
    .line 44
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
