.class public abstract Landroidx/core/view/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Class;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/view/i0;->a:I

    iput-object p2, p0, Landroidx/core/view/i0;->b:Ljava/lang/Class;

    iput p3, p0, Landroidx/core/view/i0;->d:I

    iput p4, p0, Landroidx/core/view/i0;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/view/i0;->c:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Landroidx/core/view/g0;

    .line 9
    .line 10
    iget v0, v0, Landroidx/core/view/g0;->e:I

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    packed-switch v0, :pswitch_data_1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/core/view/v0;->c(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :pswitch_0
    invoke-static {p1}, Landroidx/core/view/v0;->d(Landroid/view/View;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :pswitch_1
    packed-switch v0, :pswitch_data_2

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroidx/core/view/x0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :pswitch_2
    invoke-static {p1}, Landroidx/core/view/v0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :pswitch_3
    packed-switch v0, :pswitch_data_3

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Landroidx/core/view/x0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :pswitch_4
    invoke-static {p1}, Landroidx/core/view/v0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_0

    .line 62
    :pswitch_5
    packed-switch v0, :pswitch_data_4

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Landroidx/core/view/v0;->c(Landroid/view/View;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    :pswitch_6
    invoke-static {p1}, Landroidx/core/view/v0;->d(Landroid/view/View;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_0
    return-object p1

    .line 83
    :cond_0
    iget v0, p0, Landroidx/core/view/i0;->a:I

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Landroidx/core/view/i0;->b:Ljava/lang/Class;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_1
    const/4 p1, 0x0

    .line 99
    return-object p1

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/view/i0;->c:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Landroidx/core/view/g0;

    .line 9
    .line 10
    iget v0, v0, Landroidx/core/view/g0;->e:I

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p2, Ljava/lang/Boolean;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-static {p1, p2}, Landroidx/core/view/v0;->g(Landroid/view/View;Z)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_c

    .line 28
    .line 29
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-static {p1, p2}, Landroidx/core/view/v0;->i(Landroid/view/View;Z)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_c

    .line 37
    .line 38
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    .line 39
    .line 40
    packed-switch v0, :pswitch_data_2

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Landroidx/core/view/x0;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_c

    .line 47
    .line 48
    :pswitch_2
    invoke-static {p1, p2}, Landroidx/core/view/v0;->h(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_c

    .line 52
    .line 53
    :pswitch_3
    check-cast p2, Ljava/lang/CharSequence;

    .line 54
    .line 55
    packed-switch v0, :pswitch_data_3

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Landroidx/core/view/x0;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_c

    .line 62
    .line 63
    :pswitch_4
    invoke-static {p1, p2}, Landroidx/core/view/v0;->h(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_c

    .line 67
    .line 68
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    .line 69
    .line 70
    packed-switch v0, :pswitch_data_4

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-static {p1, p2}, Landroidx/core/view/v0;->g(Landroid/view/View;Z)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_c

    .line 81
    .line 82
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-static {p1, p2}, Landroidx/core/view/v0;->i(Landroid/view/View;Z)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_c

    .line 90
    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/core/view/i0;->a(Landroid/view/View;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    move-object v1, p0

    .line 96
    check-cast v1, Landroidx/core/view/g0;

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    const/4 v3, 0x1

    .line 100
    iget v1, v1, Landroidx/core/view/g0;->e:I

    .line 101
    .line 102
    packed-switch v1, :pswitch_data_5

    .line 103
    .line 104
    .line 105
    check-cast v0, Ljava/lang/Boolean;

    .line 106
    .line 107
    move-object v4, p2

    .line 108
    check-cast v4, Ljava/lang/Boolean;

    .line 109
    .line 110
    packed-switch v1, :pswitch_data_6

    .line 111
    .line 112
    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    move v0, v3

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    move v0, v2

    .line 124
    :goto_0
    if-eqz v4, :cond_2

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_2

    .line 131
    .line 132
    move v1, v3

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    move v1, v2

    .line 135
    :goto_1
    if-ne v0, v1, :cond_3

    .line 136
    .line 137
    :goto_2
    move v2, v3

    .line 138
    :cond_3
    xor-int/lit8 v0, v2, 0x1

    .line 139
    .line 140
    goto/16 :goto_a

    .line 141
    .line 142
    :pswitch_7
    if-eqz v0, :cond_4

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    move v0, v3

    .line 151
    goto :goto_3

    .line 152
    :cond_4
    move v0, v2

    .line 153
    :goto_3
    if-eqz v4, :cond_5

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    move v1, v3

    .line 162
    goto :goto_4

    .line 163
    :cond_5
    move v1, v2

    .line 164
    :goto_4
    if-ne v0, v1, :cond_3

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :pswitch_8
    check-cast v0, Ljava/lang/CharSequence;

    .line 168
    .line 169
    move-object v2, p2

    .line 170
    check-cast v2, Ljava/lang/CharSequence;

    .line 171
    .line 172
    packed-switch v1, :pswitch_data_7

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    :goto_5
    xor-int/2addr v0, v3

    .line 180
    goto/16 :goto_a

    .line 181
    .line 182
    :pswitch_9
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    goto :goto_5

    .line 187
    :pswitch_a
    check-cast v0, Ljava/lang/CharSequence;

    .line 188
    .line 189
    move-object v2, p2

    .line 190
    check-cast v2, Ljava/lang/CharSequence;

    .line 191
    .line 192
    packed-switch v1, :pswitch_data_8

    .line 193
    .line 194
    .line 195
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    goto :goto_5

    .line 200
    :pswitch_b
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    goto :goto_5

    .line 205
    :pswitch_c
    check-cast v0, Ljava/lang/Boolean;

    .line 206
    .line 207
    move-object v4, p2

    .line 208
    check-cast v4, Ljava/lang/Boolean;

    .line 209
    .line 210
    packed-switch v1, :pswitch_data_9

    .line 211
    .line 212
    .line 213
    if-eqz v0, :cond_6

    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_6

    .line 220
    .line 221
    move v0, v3

    .line 222
    goto :goto_6

    .line 223
    :cond_6
    move v0, v2

    .line 224
    :goto_6
    if-eqz v4, :cond_7

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_7

    .line 231
    .line 232
    move v1, v3

    .line 233
    goto :goto_7

    .line 234
    :cond_7
    move v1, v2

    .line 235
    :goto_7
    if-ne v0, v1, :cond_3

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :pswitch_d
    if-eqz v0, :cond_8

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_8

    .line 245
    .line 246
    move v0, v3

    .line 247
    goto :goto_8

    .line 248
    :cond_8
    move v0, v2

    .line 249
    :goto_8
    if-eqz v4, :cond_9

    .line 250
    .line 251
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_9

    .line 256
    .line 257
    move v1, v3

    .line 258
    goto :goto_9

    .line 259
    :cond_9
    move v1, v2

    .line 260
    :goto_9
    if-ne v0, v1, :cond_3

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :goto_a
    if-eqz v0, :cond_d

    .line 264
    .line 265
    invoke-static {p1}, Landroidx/core/view/c1;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-nez v0, :cond_a

    .line 270
    .line 271
    const/4 v0, 0x0

    .line 272
    goto :goto_b

    .line 273
    :cond_a
    instance-of v1, v0, Landroidx/core/view/a;

    .line 274
    .line 275
    if-eqz v1, :cond_b

    .line 276
    .line 277
    check-cast v0, Landroidx/core/view/a;

    .line 278
    .line 279
    iget-object v0, v0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    .line 280
    .line 281
    goto :goto_b

    .line 282
    :cond_b
    new-instance v1, Landroidx/core/view/c;

    .line 283
    .line 284
    invoke-direct {v1, v0}, Landroidx/core/view/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 285
    .line 286
    .line 287
    move-object v0, v1

    .line 288
    :goto_b
    if-nez v0, :cond_c

    .line 289
    .line 290
    new-instance v0, Landroidx/core/view/c;

    .line 291
    .line 292
    invoke-direct {v0}, Landroidx/core/view/c;-><init>()V

    .line 293
    .line 294
    .line 295
    :cond_c
    invoke-static {p1, v0}, Landroidx/core/view/c1;->o(Landroid/view/View;Landroidx/core/view/c;)V

    .line 296
    .line 297
    .line 298
    iget v0, p0, Landroidx/core/view/i0;->a:I

    .line 299
    .line 300
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    iget p2, p0, Landroidx/core/view/i0;->d:I

    .line 304
    .line 305
    invoke-static {p2, p1}, Landroidx/core/view/c1;->i(ILandroid/view/View;)V

    .line 306
    .line 307
    .line 308
    :cond_d
    :goto_c
    return-void

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_8
    .end packed-switch

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
