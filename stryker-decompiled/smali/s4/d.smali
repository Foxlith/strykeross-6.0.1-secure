.class public final Ls4/d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Lq4/c;

.field public b:I

.field public final c:Lp4/b;

.field public final d:Z


# direct methods
.method public constructor <init>(IZLq4/c;Lp4/b;Landroidx/fragment/app/a0;)V
    .locals 7

    .line 1
    invoke-direct {p0, p5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Ls4/d;->c:Lp4/b;

    .line 5
    .line 6
    iput-object p3, p0, Ls4/d;->a:Lq4/c;

    .line 7
    .line 8
    iput p1, p0, Ls4/d;->b:I

    .line 9
    .line 10
    iput-boolean p2, p0, Ls4/d;->d:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p4, 0x7f0d0030

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p4, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 24
    .line 25
    .line 26
    const p4, 0x7f0a0138

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    iget p5, p0, Ls4/d;->b:I

    .line 34
    .line 35
    invoke-virtual {p4, p5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    const p5, 0x7f0a0674

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p5

    .line 45
    check-cast p5, Landroid/widget/TextView;

    .line 46
    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p3}, Lq4/c;->a()Landroidx/fragment/app/x0;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget p3, p2, Landroidx/fragment/app/x0;->a:I

    .line 57
    .line 58
    const v0, 0x7f1300fa

    .line 59
    .line 60
    .line 61
    const v1, 0x7f1300fb

    .line 62
    .line 63
    .line 64
    const/16 v2, 0xff

    .line 65
    .line 66
    const v3, 0x7f1300fe

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    const/4 v5, 0x1

    .line 71
    packed-switch p3, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    new-instance p2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance p3, Lq4/b;

    .line 80
    .line 81
    new-instance v6, Lr4/b;

    .line 82
    .line 83
    invoke-direct {v6, p1}, Lr4/b;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p3, v3, v2, v6}, Lq4/b;-><init>(IILq4/a;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance p1, Lq4/b;

    .line 93
    .line 94
    new-instance p3, Lr4/b;

    .line 95
    .line 96
    invoke-direct {p3, v5}, Lr4/b;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v1, v2, p3}, Lq4/b;-><init>(IILq4/a;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    new-instance p1, Lq4/b;

    .line 106
    .line 107
    new-instance p3, Lr4/b;

    .line 108
    .line 109
    invoke-direct {p3, v4}, Lr4/b;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, v0, v2, p3}, Lq4/b;-><init>(IILq4/a;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :pswitch_0
    new-instance p3, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lq4/b;

    .line 125
    .line 126
    new-instance v1, Lr4/a;

    .line 127
    .line 128
    invoke-direct {v1, p2, p1}, Lr4/a;-><init>(Landroidx/fragment/app/x0;I)V

    .line 129
    .line 130
    .line 131
    const p1, 0x7f1300fc

    .line 132
    .line 133
    .line 134
    const/16 v2, 0x168

    .line 135
    .line 136
    invoke-direct {v0, p1, v2, v1}, Lq4/b;-><init>(IILq4/a;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance p1, Lq4/b;

    .line 143
    .line 144
    new-instance v0, Lr4/a;

    .line 145
    .line 146
    invoke-direct {v0, p2, v5}, Lr4/a;-><init>(Landroidx/fragment/app/x0;I)V

    .line 147
    .line 148
    .line 149
    const v1, 0x7f1300ff

    .line 150
    .line 151
    .line 152
    const/16 v2, 0x64

    .line 153
    .line 154
    invoke-direct {p1, v1, v2, v0}, Lq4/b;-><init>(IILq4/a;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance p1, Lq4/b;

    .line 161
    .line 162
    new-instance v0, Lr4/a;

    .line 163
    .line 164
    invoke-direct {v0, p2, v4}, Lr4/a;-><init>(Landroidx/fragment/app/x0;I)V

    .line 165
    .line 166
    .line 167
    const p2, 0x7f130100

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, p2, v2, v0}, Lq4/b;-><init>(IILq4/a;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-object p2, p3

    .line 177
    goto :goto_0

    .line 178
    :pswitch_1
    new-instance p2, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance p3, Lq4/b;

    .line 184
    .line 185
    new-instance v6, Landroidx/fragment/app/x0;

    .line 186
    .line 187
    invoke-direct {v6, p1}, Landroidx/fragment/app/x0;-><init>(I)V

    .line 188
    .line 189
    .line 190
    const p1, 0x7f1300f9

    .line 191
    .line 192
    .line 193
    invoke-direct {p3, p1, v2, v6}, Lq4/b;-><init>(IILq4/a;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    new-instance p1, Lq4/b;

    .line 200
    .line 201
    new-instance p3, Landroidx/fragment/app/x0;

    .line 202
    .line 203
    invoke-direct {p3, v5}, Landroidx/fragment/app/x0;-><init>(I)V

    .line 204
    .line 205
    .line 206
    invoke-direct {p1, v3, v2, p3}, Lq4/b;-><init>(IILq4/a;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    new-instance p1, Lq4/b;

    .line 213
    .line 214
    new-instance p3, Landroidx/fragment/app/x0;

    .line 215
    .line 216
    invoke-direct {p3, v4}, Landroidx/fragment/app/x0;-><init>(I)V

    .line 217
    .line 218
    .line 219
    invoke-direct {p1, v1, v2, p3}, Lq4/b;-><init>(IILq4/a;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    new-instance p1, Lq4/b;

    .line 226
    .line 227
    new-instance p3, Landroidx/fragment/app/x0;

    .line 228
    .line 229
    const/4 v1, 0x3

    .line 230
    invoke-direct {p3, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p1, v0, v2, p3}, Lq4/b;-><init>(IILq4/a;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object p3

    .line 248
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_1

    .line 253
    .line 254
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Lq4/b;

    .line 259
    .line 260
    new-instance v1, Ls4/b;

    .line 261
    .line 262
    iget v2, p0, Ls4/d;->b:I

    .line 263
    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-direct {v1, v0, v2, v3}, Ls4/b;-><init>(Lq4/b;ILandroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_1
    invoke-virtual {p0, p4, p5, p1, p2}, Ls4/d;->a(Landroid/view/View;Landroid/widget/TextView;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 276
    .line 277
    .line 278
    new-instance p2, Lv1/m;

    .line 279
    .line 280
    invoke-direct {p2, p0, p1, p4, p5}, Lv1/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    const p3, 0x7f0a010c

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object p3

    .line 290
    check-cast p3, Landroid/view/ViewGroup;

    .line 291
    .line 292
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result p4

    .line 300
    if-eqz p4, :cond_2

    .line 301
    .line 302
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p4

    .line 306
    check-cast p4, Ls4/b;

    .line 307
    .line 308
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 312
    .line 313
    .line 314
    move-result-object p5

    .line 315
    check-cast p5, Landroid/widget/LinearLayout$LayoutParams;

    .line 316
    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    const v1, 0x7f070057

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    iput v0, p5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 329
    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    const v1, 0x7f070056

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    iput v0, p5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 342
    .line 343
    iput-object p2, p4, Ls4/b;->b:Lv1/m;

    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_2
    return-void

    .line 347
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/widget/TextView;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ls4/d;->a:Lq4/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq4/c;->a()Landroidx/fragment/app/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v1, v1, Landroidx/fragment/app/x0;->a:I

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lq4/b;

    .line 21
    .line 22
    iget v1, v1, Lq4/b;->d:I

    .line 23
    .line 24
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lq4/b;

    .line 29
    .line 30
    iget v2, v2, Lq4/b;->d:I

    .line 31
    .line 32
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    check-cast p4, Lq4/b;

    .line 37
    .line 38
    iget p4, p4, Lq4/b;->d:I

    .line 39
    .line 40
    invoke-static {v1, v2, p4}, Landroid/graphics/Color;->rgb(III)I

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    goto :goto_0

    .line 45
    :pswitch_0
    new-array v1, v2, [F

    .line 46
    .line 47
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lq4/b;

    .line 52
    .line 53
    iget v2, v2, Lq4/b;->d:I

    .line 54
    .line 55
    int-to-float v2, v2

    .line 56
    aput v2, v1, v5

    .line 57
    .line 58
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lq4/b;

    .line 63
    .line 64
    iget v2, v2, Lq4/b;->d:I

    .line 65
    .line 66
    int-to-float v2, v2

    .line 67
    const/high16 v5, 0x42c80000    # 100.0f

    .line 68
    .line 69
    div-float/2addr v2, v5

    .line 70
    aput v2, v1, v4

    .line 71
    .line 72
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p4

    .line 76
    check-cast p4, Lq4/b;

    .line 77
    .line 78
    iget p4, p4, Lq4/b;->d:I

    .line 79
    .line 80
    int-to-float p4, p4

    .line 81
    div-float/2addr p4, v5

    .line 82
    aput p4, v1, v3

    .line 83
    .line 84
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 85
    .line 86
    .line 87
    move-result p4

    .line 88
    goto :goto_0

    .line 89
    :pswitch_1
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lq4/b;

    .line 94
    .line 95
    iget v1, v1, Lq4/b;->d:I

    .line 96
    .line 97
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lq4/b;

    .line 102
    .line 103
    iget v4, v4, Lq4/b;->d:I

    .line 104
    .line 105
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lq4/b;

    .line 110
    .line 111
    iget v3, v3, Lq4/b;->d:I

    .line 112
    .line 113
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    check-cast p4, Lq4/b;

    .line 118
    .line 119
    iget p4, p4, Lq4/b;->d:I

    .line 120
    .line 121
    invoke-static {v1, v4, v3, p4}, Landroid/graphics/Color;->argb(IIII)I

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    :goto_0
    iput p4, p0, Ls4/d;->b:I

    .line 126
    .line 127
    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    .line 129
    .line 130
    sget-object p1, Lp4/b;->a:Lp4/b;

    .line 131
    .line 132
    iget-object p4, p0, Ls4/d;->c:Lp4/b;

    .line 133
    .line 134
    if-ne p4, p1, :cond_1

    .line 135
    .line 136
    iget p1, p0, Ls4/d;->b:I

    .line 137
    .line 138
    sget-object p3, Lq4/c;->b:Lq4/c;

    .line 139
    .line 140
    if-ne v0, p3, :cond_0

    .line 141
    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string p3, "#%08X"

    .line 151
    .line 152
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    goto :goto_1

    .line 157
    :cond_0
    const p3, 0xffffff

    .line 158
    .line 159
    .line 160
    and-int/2addr p1, p3

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string p3, "#%06X"

    .line 170
    .line 171
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string p3, ""

    .line 184
    .line 185
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result p4

    .line 189
    if-eqz p4, :cond_2

    .line 190
    .line 191
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p4

    .line 195
    check-cast p4, Ls4/b;

    .line 196
    .line 197
    invoke-static {p3}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    invoke-virtual {p4}, Ls4/b;->getChannel()Lq4/b;

    .line 202
    .line 203
    .line 204
    move-result-object p4

    .line 205
    iget p4, p4, Lq4/b;->d:I

    .line 206
    .line 207
    const-string v0, " "

    .line 208
    .line 209
    invoke-static {p3, p4, v0}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    goto :goto_2

    .line 214
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    goto :goto_1

    .line 223
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    const p3, 0x7f050009

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-nez p1, :cond_3

    .line 235
    .line 236
    iget p1, p0, Ls4/d;->b:I

    .line 237
    .line 238
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 243
    .line 244
    .line 245
    move-result p4

    .line 246
    rsub-int p4, p4, 0xff

    .line 247
    .line 248
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    rsub-int v0, v0, 0xff

    .line 253
    .line 254
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    rsub-int p1, p1, 0xff

    .line 259
    .line 260
    invoke-static {p3, p4, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    .line 266
    .line 267
    :cond_3
    return-void

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getColorMode()Lq4/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/d;->a:Lq4/c;

    return-object v0
.end method

.method public getCurrentColor()I
    .locals 1

    .line 1
    iget v0, p0, Ls4/d;->b:I

    return v0
.end method

.method public getIndicatorMode()Lp4/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/d;->c:Lp4/b;

    return-object v0
.end method
