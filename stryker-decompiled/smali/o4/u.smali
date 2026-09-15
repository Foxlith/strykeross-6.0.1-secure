.class public final Lo4/u;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# static fields
.field public static final m:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/app/Activity;

.field public final d:Ll4/l;

.field public volatile e:Lo4/l;

.field public volatile f:Lo4/q;

.field public volatile g:Ll4/c;

.field public volatile h:Ll4/c;

.field public volatile i:Lo4/p;

.field public volatile j:Ll4/h;

.field public volatile k:Lr3/q;

.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?:[0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo4/u;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo4/u;->e:Lo4/l;

    iput-object v0, p0, Lo4/u;->f:Lo4/q;

    iput-object v0, p0, Lo4/u;->g:Ll4/c;

    iput-object v0, p0, Lo4/u;->h:Ll4/c;

    iput-object v0, p0, Lo4/u;->i:Lo4/p;

    iput-object v0, p0, Lo4/u;->j:Ll4/h;

    iput-object v0, p0, Lo4/u;->k:Lr3/q;

    iput-object p1, p0, Lo4/u;->b:Landroid/content/Context;

    iput-object p3, p0, Lo4/u;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lo4/u;->c:Landroid/app/Activity;

    :try_start_0
    new-instance p2, Lcom/zalexdev/stryker/custom/WiFINetwork$WiFIComporator;

    invoke-direct {p2}, Lcom/zalexdev/stryker/custom/WiFINetwork$WiFIComporator;-><init>()V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p2, Ll4/l;

    invoke-direct {p2, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo4/u;->d:Ll4/l;

    return-void
.end method

.method public static d(Ljava/util/ArrayList;)Lcom/zalexdev/stryker/custom/WiFINetwork;
    .locals 6

    .line 1
    new-instance v0, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-direct {v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[+] WPS PIN:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "\'"

    const-string v5, ""

    if-eqz v3, :cond_0

    const-string v3, "[+] WPS PIN: "

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPin(Ljava/lang/String;)V

    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_0
    const-string v3, "[+] WPA PSK:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "[+] WPA PSK: "

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPsk(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setCanceled(Z)V

    :cond_3
    return-object v0
.end method

.method public static f(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/zalexdev/stryker/custom/WiFINetwork;I)V
    .locals 26

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move/from16 v6, p2

    .line 4
    .line 5
    new-instance v14, Landroid/app/Dialog;

    .line 6
    .line 7
    iget-object v0, v15, Lo4/u;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v14, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0d011e

    .line 13
    .line 14
    .line 15
    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v7, -0x2

    .line 23
    const/4 v8, -0x1

    .line 24
    const/4 v13, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 28
    .line 29
    invoke-direct {v1, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v8, v7}, Landroid/view/Window;->setLayout(II)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v14, v13}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a071b

    .line 42
    .line 43
    .line 44
    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/TextView;

    .line 49
    .line 50
    const v1, 0x7f0a0719

    .line 51
    .line 52
    .line 53
    invoke-virtual {v14, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/TextView;

    .line 58
    .line 59
    const v2, 0x7f0a071a

    .line 60
    .line 61
    .line 62
    invoke-virtual {v14, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/widget/TextView;

    .line 67
    .line 68
    const v3, 0x7f0a070e

    .line 69
    .line 70
    .line 71
    invoke-virtual {v14, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    move-object v10, v3

    .line 76
    check-cast v10, Landroid/widget/TextView;

    .line 77
    .line 78
    const v3, 0x7f0a071c

    .line 79
    .line 80
    .line 81
    invoke-virtual {v14, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    move-object v12, v3

    .line 86
    check-cast v12, Landroid/widget/TextView;

    .line 87
    .line 88
    const v3, 0x7f0a071e

    .line 89
    .line 90
    .line 91
    invoke-virtual {v14, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    move-object v11, v3

    .line 96
    check-cast v11, Landroid/widget/TextView;

    .line 97
    .line 98
    const v3, 0x7f0a070b

    .line 99
    .line 100
    .line 101
    invoke-virtual {v14, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object/from16 v16, v3

    .line 106
    .line 107
    check-cast v16, Landroid/widget/TextView;

    .line 108
    .line 109
    const v3, 0x7f0a0715

    .line 110
    .line 111
    .line 112
    invoke-virtual {v14, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object v9, v3

    .line 117
    check-cast v9, Landroid/widget/ImageView;

    .line 118
    .line 119
    const v3, 0x7f0a00a0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v14, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    move-object v5, v3

    .line 127
    check-cast v5, Landroid/widget/ProgressBar;

    .line 128
    .line 129
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    .line 130
    .line 131
    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 135
    .line 136
    .line 137
    const v3, 0x7f0a0497

    .line 138
    .line 139
    .line 140
    invoke-virtual {v14, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v17

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v15, Lo4/u;->d:Ll4/l;

    .line 159
    .line 160
    const-string v3, "hide"

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    .line 168
    const-string v0, "XX:XX:XX:XX:XX:XX"

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getModel()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const/16 v4, 0x8

    .line 178
    .line 179
    if-eqz v0, :cond_2

    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getModel()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    :goto_0
    const/4 v3, 0x1

    .line 193
    new-array v2, v3, [Z

    .line 194
    .line 195
    aput-boolean v13, v2, v13

    .line 196
    .line 197
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 198
    .line 199
    invoke-direct {v1, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 200
    .line 201
    .line 202
    new-instance v0, Lcom/stryker/terminal/ui/other/a;

    .line 203
    .line 204
    const/16 v18, 0x7

    .line 205
    .line 206
    move-object/from16 v19, v0

    .line 207
    .line 208
    move-object/from16 v20, v1

    .line 209
    .line 210
    move-object/from16 v1, p0

    .line 211
    .line 212
    move-object/from16 v21, v2

    .line 213
    .line 214
    move-object/from16 v2, v20

    .line 215
    .line 216
    move v7, v3

    .line 217
    move-object v3, v14

    .line 218
    move v8, v4

    .line 219
    move-object/from16 v4, v21

    .line 220
    .line 221
    move-object/from16 v21, v5

    .line 222
    .line 223
    move/from16 v5, v18

    .line 224
    .line 225
    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/ui/other/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    .line 232
    .line 233
    .line 234
    const-string v0, "wps-radio-off"

    .line 235
    .line 236
    const-string v1, "wlan_wps"

    .line 237
    .line 238
    const-string v2, "python3 -u /CORE/PixieWps/pixie.py -i "

    .line 239
    .line 240
    if-ne v6, v7, :cond_3

    .line 241
    .line 242
    filled-new-array {v13}, [I

    .line 243
    .line 244
    .line 245
    move-result-object v14

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 252
    .line 253
    invoke-virtual {v2, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-object v1, v15, Lo4/u;->d:Ll4/l;

    .line 261
    .line 262
    invoke-virtual {v1}, Ll4/l;->u0()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v1, " -K -F -b "

    .line 270
    .line 271
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    new-instance v1, Ljava/lang/Thread;

    .line 286
    .line 287
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 288
    .line 289
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    new-instance v3, Lo4/e;

    .line 293
    .line 294
    invoke-direct {v3, v2, v13}, Lo4/e;-><init>(Ll4/l;I)V

    .line 295
    .line 296
    .line 297
    invoke-direct {v1, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 301
    .line 302
    .line 303
    new-instance v13, Lo4/l;

    .line 304
    .line 305
    iget-object v2, v15, Lo4/u;->c:Landroid/app/Activity;

    .line 306
    .line 307
    iget-object v3, v15, Lo4/u;->b:Landroid/content/Context;

    .line 308
    .line 309
    move-object v0, v13

    .line 310
    move-object/from16 v1, p0

    .line 311
    .line 312
    move-object v5, v10

    .line 313
    move-object/from16 v6, v17

    .line 314
    .line 315
    move-object v7, v11

    .line 316
    move-object v8, v9

    .line 317
    move-object/from16 v9, v21

    .line 318
    .line 319
    move-object/from16 v10, p1

    .line 320
    .line 321
    move-object/from16 v11, v16

    .line 322
    .line 323
    move-object/from16 v18, v12

    .line 324
    .line 325
    move-object v12, v14

    .line 326
    move-object v14, v13

    .line 327
    move-object/from16 v13, v18

    .line 328
    .line 329
    invoke-direct/range {v0 .. v13}, Lo4/l;-><init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;[ILandroid/widget/TextView;)V

    .line 330
    .line 331
    .line 332
    iput-object v14, v15, Lo4/u;->e:Lo4/l;

    .line 333
    .line 334
    :goto_1
    move-object v2, v15

    .line 335
    goto/16 :goto_4

    .line 336
    .line 337
    :cond_3
    move-object/from16 v18, v12

    .line 338
    .line 339
    const/4 v3, 0x2

    .line 340
    const-string v4, ""

    .line 341
    .line 342
    if-ne v6, v3, :cond_7

    .line 343
    .line 344
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 345
    .line 346
    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 347
    .line 348
    .line 349
    new-instance v19, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 350
    .line 351
    invoke-direct/range {v19 .. v19}, Lcom/zalexdev/stryker/custom/WiFINetwork;-><init>()V

    .line 352
    .line 353
    .line 354
    iget-object v0, v15, Lo4/u;->d:Ll4/l;

    .line 355
    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 362
    .line 363
    invoke-virtual {v2}, Ll4/l;->H()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v2, "/wordlists"

    .line 371
    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v0, v1}, Ll4/l;->E(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-nez v0, :cond_5

    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    new-array v8, v0, [Ljava/lang/String;

    .line 394
    .line 395
    move v0, v13

    .line 396
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-ge v0, v1, :cond_4

    .line 401
    .line 402
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    check-cast v1, Ljava/lang/String;

    .line 407
    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    iget-object v5, v15, Lo4/u;->d:Ll4/l;

    .line 414
    .line 415
    invoke-virtual {v5}, Ll4/l;->H()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v5, "/wordlists/"

    .line 423
    .line 424
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    aput-object v1, v8, v0

    .line 436
    .line 437
    add-int/lit8 v0, v0, 0x1

    .line 438
    .line 439
    goto :goto_2

    .line 440
    :cond_4
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 441
    .line 442
    iget-object v1, v15, Lo4/u;->b:Landroid/content/Context;

    .line 443
    .line 444
    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 445
    .line 446
    .line 447
    const v1, 0x7f1305ae

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    new-instance v6, Lo4/f;

    .line 455
    .line 456
    move-object v0, v6

    .line 457
    move-object/from16 v1, p0

    .line 458
    .line 459
    move-object v3, v12

    .line 460
    move-object v4, v9

    .line 461
    move-object/from16 v5, v21

    .line 462
    .line 463
    move-object v9, v6

    .line 464
    move-object v6, v11

    .line 465
    move-object v11, v7

    .line 466
    move-object/from16 v7, v17

    .line 467
    .line 468
    move-object v13, v8

    .line 469
    move-object v8, v10

    .line 470
    move-object v10, v9

    .line 471
    move-object/from16 v9, v19

    .line 472
    .line 473
    move-object v15, v10

    .line 474
    move-object/from16 v10, v16

    .line 475
    .line 476
    move-object/from16 v19, v14

    .line 477
    .line 478
    move-object v14, v11

    .line 479
    move-object/from16 v11, p1

    .line 480
    .line 481
    move-object/from16 v22, v12

    .line 482
    .line 483
    move-object/from16 v12, v18

    .line 484
    .line 485
    invoke-direct/range {v0 .. v12}, Lo4/f;-><init>(Lo4/u;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v14, v13, v15}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    new-instance v1, Lo4/g;

    .line 493
    .line 494
    move-object/from16 v14, v19

    .line 495
    .line 496
    move-object/from16 v3, v22

    .line 497
    .line 498
    const/4 v2, 0x0

    .line 499
    invoke-direct {v1, v3, v14, v2}, Lo4/g;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Dialog;I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    .line 507
    .line 508
    .line 509
    goto :goto_3

    .line 510
    :cond_5
    const-string v0, "No wordlist found!\nPlease put worldlist in Stryker/wordlists/ and try again!\n"

    .line 511
    .line 512
    move-object/from16 v12, v18

    .line 513
    .line 514
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 515
    .line 516
    .line 517
    :cond_6
    :goto_3
    move-object/from16 v2, p0

    .line 518
    .line 519
    goto/16 :goto_4

    .line 520
    .line 521
    :cond_7
    move-object/from16 v12, v18

    .line 522
    .line 523
    const/4 v3, 0x3

    .line 524
    if-ne v6, v3, :cond_8

    .line 525
    .line 526
    new-instance v15, Ljava/util/Timer;

    .line 527
    .line 528
    invoke-direct {v15}, Ljava/util/Timer;-><init>()V

    .line 529
    .line 530
    .line 531
    new-array v13, v7, [Z

    .line 532
    .line 533
    const/4 v0, 0x0

    .line 534
    aput-boolean v0, v13, v0

    .line 535
    .line 536
    new-array v14, v7, [Z

    .line 537
    .line 538
    aput-boolean v0, v14, v0

    .line 539
    .line 540
    new-instance v0, Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .line 544
    .line 545
    new-instance v0, Ljava/util/ArrayList;

    .line 546
    .line 547
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .line 549
    .line 550
    const-string v0, "Aireplay-ng deauth not running"

    .line 551
    .line 552
    filled-new-array {v0}, [Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v16

    .line 556
    const-string v0, "1s"

    .line 557
    .line 558
    filled-new-array {v0}, [Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v18

    .line 562
    new-instance v8, Lo4/p;

    .line 563
    .line 564
    move-object/from16 v7, p0

    .line 565
    .line 566
    iget-object v2, v7, Lo4/u;->c:Landroid/app/Activity;

    .line 567
    .line 568
    iget-object v3, v7, Lo4/u;->b:Landroid/content/Context;

    .line 569
    .line 570
    move-object v0, v8

    .line 571
    move-object/from16 v1, p0

    .line 572
    .line 573
    move-object v4, v9

    .line 574
    move-object/from16 v5, v21

    .line 575
    .line 576
    move-object v6, v11

    .line 577
    move-object/from16 v7, v17

    .line 578
    .line 579
    move-object v11, v8

    .line 580
    move-object v8, v10

    .line 581
    move-object v9, v13

    .line 582
    move-object v10, v14

    .line 583
    move-object v14, v11

    .line 584
    move-object v11, v12

    .line 585
    move-object/from16 v12, p1

    .line 586
    .line 587
    move-object/from16 v13, v18

    .line 588
    .line 589
    move-object/from16 v23, v14

    .line 590
    .line 591
    move-object/from16 v14, v16

    .line 592
    .line 593
    invoke-direct/range {v0 .. v15}, Lo4/p;-><init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;[Z[ZLandroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Timer;)V

    .line 594
    .line 595
    .line 596
    move-object/from16 v15, p0

    .line 597
    .line 598
    move-object/from16 v0, v23

    .line 599
    .line 600
    iput-object v0, v15, Lo4/u;->i:Lo4/p;

    .line 601
    .line 602
    goto/16 :goto_1

    .line 603
    .line 604
    :cond_8
    move-object/from16 v15, p0

    .line 605
    .line 606
    const/4 v3, 0x4

    .line 607
    const-string v5, "\n"

    .line 608
    .line 609
    if-ne v6, v3, :cond_a

    .line 610
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 617
    .line 618
    invoke-virtual {v2, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string v1, " -B -b "

    .line 626
    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    iget-object v1, v15, Lo4/u;->d:Ll4/l;

    .line 642
    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    .line 647
    .line 648
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    const-string v3, "_pin"

    .line 656
    .line 657
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    invoke-virtual {v1, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    if-lez v1, :cond_9

    .line 673
    .line 674
    const-string v1, " -p "

    .line 675
    .line 676
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    iget-object v1, v15, Lo4/u;->d:Ll4/l;

    .line 681
    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .line 686
    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v4

    .line 691
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    invoke-virtual {v1, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    const-string v2, "Restoring progress: "

    .line 715
    .line 716
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 720
    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    .line 722
    .line 723
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .line 725
    .line 726
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v3

    .line 740
    invoke-virtual {v2, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 755
    .line 756
    .line 757
    :cond_9
    move-object v4, v0

    .line 758
    new-instance v13, Lo4/q;

    .line 759
    .line 760
    iget-object v2, v15, Lo4/u;->c:Landroid/app/Activity;

    .line 761
    .line 762
    iget-object v3, v15, Lo4/u;->b:Landroid/content/Context;

    .line 763
    .line 764
    move-object v0, v13

    .line 765
    move-object/from16 v1, p0

    .line 766
    .line 767
    move-object/from16 v5, v17

    .line 768
    .line 769
    move-object v6, v11

    .line 770
    move-object/from16 v7, p1

    .line 771
    .line 772
    move-object v8, v9

    .line 773
    move-object/from16 v9, v21

    .line 774
    .line 775
    move-object/from16 v11, v16

    .line 776
    .line 777
    invoke-direct/range {v0 .. v12}, Lo4/q;-><init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 778
    .line 779
    .line 780
    iput-object v13, v15, Lo4/u;->h:Ll4/c;

    .line 781
    .line 782
    goto/16 :goto_1

    .line 783
    .line 784
    :cond_a
    const/high16 v3, 0x1040000

    .line 785
    .line 786
    const/high16 v13, 0x3f800000    # 1.0f

    .line 787
    .line 788
    const v18, 0x3f266666    # 0.65f

    .line 789
    .line 790
    .line 791
    if-ne v6, v8, :cond_b

    .line 792
    .line 793
    iget-object v4, v15, Lo4/u;->d:Ll4/l;

    .line 794
    .line 795
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 796
    .line 797
    .line 798
    move-result-object v6

    .line 799
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    invoke-static {v9, v6}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 803
    .line 804
    .line 805
    iget-object v4, v15, Lo4/u;->d:Ll4/l;

    .line 806
    .line 807
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 808
    .line 809
    .line 810
    move-result-object v6

    .line 811
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    move-object/from16 v8, v21

    .line 815
    .line 816
    invoke-static {v8, v6}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(I)V

    .line 820
    .line 821
    .line 822
    iget-object v3, v15, Lo4/u;->b:Landroid/content/Context;

    .line 823
    .line 824
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    const v4, 0x7f130729

    .line 829
    .line 830
    .line 831
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v3

    .line 835
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 839
    .line 840
    .line 841
    invoke-static {v12}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 842
    .line 843
    .line 844
    new-instance v3, Ljava/lang/Thread;

    .line 845
    .line 846
    iget-object v4, v15, Lo4/u;->d:Ll4/l;

    .line 847
    .line 848
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    new-instance v5, Lo4/e;

    .line 852
    .line 853
    invoke-direct {v5, v4, v7}, Lo4/e;-><init>(Ll4/l;I)V

    .line 854
    .line 855
    .line 856
    invoke-direct {v3, v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 860
    .line 861
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    .line 863
    .line 864
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 868
    .line 869
    invoke-virtual {v2, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    iget-object v1, v15, Lo4/u;->d:Ll4/l;

    .line 877
    .line 878
    invoke-virtual {v1}, Ll4/l;->u0()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    const-string v1, " -N -b "

    .line 886
    .line 887
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v4

    .line 901
    new-instance v14, Lo4/q;

    .line 902
    .line 903
    iget-object v2, v15, Lo4/u;->c:Landroid/app/Activity;

    .line 904
    .line 905
    iget-object v3, v15, Lo4/u;->b:Landroid/content/Context;

    .line 906
    .line 907
    const/4 v13, 0x1

    .line 908
    move-object v0, v14

    .line 909
    move-object/from16 v1, p0

    .line 910
    .line 911
    move-object/from16 v5, v17

    .line 912
    .line 913
    move-object v6, v11

    .line 914
    move-object v7, v9

    .line 915
    move-object v9, v10

    .line 916
    move-object/from16 v10, p1

    .line 917
    .line 918
    move-object/from16 v11, v16

    .line 919
    .line 920
    invoke-direct/range {v0 .. v13}, Lo4/q;-><init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 921
    .line 922
    .line 923
    iput-object v14, v15, Lo4/u;->f:Lo4/q;

    .line 924
    .line 925
    goto/16 :goto_1

    .line 926
    .line 927
    :cond_b
    move-object/from16 v8, v21

    .line 928
    .line 929
    const/4 v0, 0x5

    .line 930
    if-ne v6, v0, :cond_d

    .line 931
    .line 932
    filled-new-array {v4}, [Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v6

    .line 936
    iget-object v0, v15, Lo4/u;->d:Ll4/l;

    .line 937
    .line 938
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    invoke-static {v9, v1}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 946
    .line 947
    .line 948
    iget-object v0, v15, Lo4/u;->d:Ll4/l;

    .line 949
    .line 950
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 955
    .line 956
    .line 957
    invoke-static {v8, v1}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 958
    .line 959
    .line 960
    new-instance v13, Landroid/app/Dialog;

    .line 961
    .line 962
    iget-object v0, v15, Lo4/u;->b:Landroid/content/Context;

    .line 963
    .line 964
    invoke-direct {v13, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 965
    .line 966
    .line 967
    const v0, 0x7f0d0072

    .line 968
    .line 969
    .line 970
    invoke-virtual {v13, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    if-eqz v0, :cond_c

    .line 978
    .line 979
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 980
    .line 981
    const/4 v2, 0x0

    .line 982
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 986
    .line 987
    .line 988
    const/4 v1, -0x2

    .line 989
    const/4 v2, -0x1

    .line 990
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 991
    .line 992
    .line 993
    :cond_c
    const v0, 0x7f0a0657

    .line 994
    .line 995
    .line 996
    invoke-virtual {v13, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    check-cast v0, Landroid/widget/TextView;

    .line 1001
    .line 1002
    const v1, 0x7f0a069b

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v13, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    move-object v3, v1

    .line 1010
    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1011
    .line 1012
    const v1, 0x7f0a0492

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v13, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v1

    .line 1019
    move-object v5, v1

    .line 1020
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 1021
    .line 1022
    const v1, 0x7f0a00f1

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v13, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v1

    .line 1029
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 1030
    .line 1031
    new-instance v2, Lj2/i;

    .line 1032
    .line 1033
    const/16 v4, 0xe

    .line 1034
    .line 1035
    invoke-direct {v2, v13, v4}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    .line 1040
    .line 1041
    const v1, 0x7f1301b0

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1045
    .line 1046
    .line 1047
    new-instance v4, Lo4/h;

    .line 1048
    .line 1049
    move-object v0, v4

    .line 1050
    move-object/from16 v1, p0

    .line 1051
    .line 1052
    move-object v2, v6

    .line 1053
    move-object v15, v4

    .line 1054
    move-object v4, v13

    .line 1055
    move-object/from16 p2, v13

    .line 1056
    .line 1057
    move-object v13, v5

    .line 1058
    move-object v5, v9

    .line 1059
    move-object v9, v6

    .line 1060
    move-object v6, v8

    .line 1061
    move v8, v7

    .line 1062
    move-object v7, v10

    .line 1063
    move v10, v8

    .line 1064
    move-object v8, v12

    .line 1065
    move-object v12, v9

    .line 1066
    move-object/from16 v9, p1

    .line 1067
    .line 1068
    move-object/from16 v10, v17

    .line 1069
    .line 1070
    move-object/from16 v24, v12

    .line 1071
    .line 1072
    move-object/from16 v12, v16

    .line 1073
    .line 1074
    invoke-direct/range {v0 .. v12}, Lo4/h;-><init>(Lo4/u;[Ljava/lang/String;Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    .line 1079
    .line 1080
    new-instance v0, Ln3/e;

    .line 1081
    .line 1082
    move-object/from16 v2, v24

    .line 1083
    .line 1084
    const/4 v1, 0x1

    .line 1085
    invoke-direct {v0, v2, v14, v1}, Ln3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1086
    .line 1087
    .line 1088
    move-object/from16 v1, p2

    .line 1089
    .line 1090
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1094
    .line 1095
    .line 1096
    goto/16 :goto_3

    .line 1097
    .line 1098
    :cond_d
    const/4 v0, 0x6

    .line 1099
    if-ne v6, v0, :cond_e

    .line 1100
    .line 1101
    move-object/from16 v15, p0

    .line 1102
    .line 1103
    iget-object v0, v15, Lo4/u;->d:Ll4/l;

    .line 1104
    .line 1105
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    .line 1111
    .line 1112
    invoke-static {v9, v1}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 1113
    .line 1114
    .line 1115
    iget-object v0, v15, Lo4/u;->d:Ll4/l;

    .line 1116
    .line 1117
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v1

    .line 1121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1122
    .line 1123
    .line 1124
    invoke-static {v8, v1}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1128
    .line 1129
    .line 1130
    const-string v0, "Trying to generate common pins...\n"

    .line 1131
    .line 1132
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    .line 1134
    .line 1135
    new-instance v4, Ljava/util/ArrayList;

    .line 1136
    .line 1137
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .line 1139
    .line 1140
    iget-object v13, v15, Lo4/u;->b:Landroid/content/Context;

    .line 1141
    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    const-string v1, "python3 -c \"import sys; sys.path.insert(0,\'/CORE/PixieWps\'); from pixie import WPSpin; [print(p) for p in WPSpin().getList(sys.argv[1])]\" "

    .line 1145
    .line 1146
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v1

    .line 1153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    new-instance v7, Ljava/lang/Thread;

    .line 1161
    .line 1162
    new-instance v6, Lo4/i;

    .line 1163
    .line 1164
    move-object v0, v6

    .line 1165
    move-object/from16 v1, p0

    .line 1166
    .line 1167
    move-object/from16 v3, v20

    .line 1168
    .line 1169
    move-object v5, v12

    .line 1170
    move-object v12, v6

    .line 1171
    move-object v6, v9

    .line 1172
    move-object v9, v7

    .line 1173
    move-object v7, v8

    .line 1174
    move-object v8, v10

    .line 1175
    move-object v10, v9

    .line 1176
    move-object v9, v13

    .line 1177
    move-object v13, v10

    .line 1178
    move-object/from16 v10, v17

    .line 1179
    .line 1180
    move-object v15, v12

    .line 1181
    move-object/from16 v12, p1

    .line 1182
    .line 1183
    move-object/from16 v25, v13

    .line 1184
    .line 1185
    move-object/from16 v13, v16

    .line 1186
    .line 1187
    invoke-direct/range {v0 .. v14}, Lo4/i;-><init>(Lo4/u;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Landroid/app/Dialog;)V

    .line 1188
    .line 1189
    .line 1190
    move-object/from16 v0, v25

    .line 1191
    .line 1192
    invoke-direct {v0, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1196
    .line 1197
    .line 1198
    goto/16 :goto_3

    .line 1199
    .line 1200
    :cond_e
    const/4 v0, 0x7

    .line 1201
    if-ne v6, v0, :cond_6

    .line 1202
    .line 1203
    new-instance v0, Ljava/lang/Thread;

    .line 1204
    .line 1205
    new-instance v1, Lj2/b;

    .line 1206
    .line 1207
    move-object/from16 v2, p0

    .line 1208
    .line 1209
    move-object/from16 v3, p1

    .line 1210
    .line 1211
    move-object/from16 v4, v20

    .line 1212
    .line 1213
    invoke-direct {v1, v2, v4, v3, v12}, Lj2/b;-><init>(Lo4/u;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1220
    .line 1221
    .line 1222
    :goto_4
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lo4/u;->d:Ll4/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lo4/u;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "wifi"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "\""

    .line 46
    .line 47
    const-string v3, ""

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return p1

    .line 58
    :catch_0
    :cond_0
    return v1

    .line 59
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "su -mm"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v4, "dumpsys netstats | grep wlan\n"

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 87
    .line 88
    .line 89
    const-string v4, "\n"

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 102
    .line 103
    .line 104
    new-instance v2, Ljava/io/BufferedReader;

    .line 105
    .line 106
    new-instance v4, Ljava/io/InputStreamReader;

    .line 107
    .line 108
    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .line 136
    .line 137
    :catch_1
    return v1
.end method

.method public final c(ILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lo4/u;->d:Ll4/l;

    .line 4
    .line 5
    iget-object v2, v1, Ll4/l;->c:Landroid/content/Context;

    .line 6
    .line 7
    const-class v3, Lcom/zalexdev/stryker/MainActivity;

    .line 8
    .line 9
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Ll4/l;->c:Landroid/content/Context;

    .line 13
    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v4, 0x1f

    .line 17
    .line 18
    if-lt v3, v4, :cond_0

    .line 19
    .line 20
    const/high16 v3, 0x4000000

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/high16 v3, 0x8000000

    .line 24
    .line 25
    :goto_0
    const/4 v4, 0x0

    .line 26
    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Lf4/b;->y()Landroid/app/NotificationChannel;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Lv/z;

    .line 35
    .line 36
    iget-object v5, v1, Ll4/l;->c:Landroid/content/Context;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-direct {v3, v5, v6}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/16 v5, 0x10

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Lv/z;->e(I)V

    .line 45
    .line 46
    .line 47
    const/4 v5, -0x1

    .line 48
    invoke-virtual {v3, v5}, Lv/z;->d(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    iget-object v7, v3, Lv/z;->s:Landroid/app/Notification;

    .line 56
    .line 57
    iput-wide v5, v7, Landroid/app/Notification;->when:J

    .line 58
    .line 59
    const v5, 0x7f08009b

    .line 60
    .line 61
    .line 62
    iput v5, v7, Landroid/app/Notification;->icon:I

    .line 63
    .line 64
    const-string v5, "Brute"

    .line 65
    .line 66
    invoke-static {v5}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 71
    .line 72
    invoke-static {p2}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iput-object p2, v3, Lv/z;->e:Ljava/lang/CharSequence;

    .line 77
    .line 78
    const-string p2, "BruteForce PSK"

    .line 79
    .line 80
    iput-object p2, v3, Lv/z;->q:Ljava/lang/String;

    .line 81
    .line 82
    const/4 p2, 0x5

    .line 83
    invoke-virtual {v3, p2}, Lv/z;->d(I)V

    .line 84
    .line 85
    .line 86
    iput-object v0, v3, Lv/z;->g:Landroid/app/PendingIntent;

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-virtual {v3, v0, p1, v4}, Lv/z;->f(IIZ)V

    .line 90
    .line 91
    .line 92
    const-string p1, "Info"

    .line 93
    .line 94
    invoke-static {p1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, v3, Lv/z;->h:Ljava/lang/CharSequence;

    .line 99
    .line 100
    iget-object p1, v1, Ll4/l;->c:Landroid/content/Context;

    .line 101
    .line 102
    const-string v0, "notification"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/app/NotificationManager;

    .line 109
    .line 110
    invoke-static {p1, v2}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lv/z;->a()Landroid/app/Notification;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo4/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lo4/j;-><init>(Lo4/u;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo4/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Lo4/t;

    .line 8
    .line 9
    iget-object v3, v0, Lo4/u;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v6, v0, Lo4/u;->d:Ll4/l;

    .line 22
    .line 23
    const-string v7, "hide"

    .line 24
    .line 25
    invoke-virtual {v6, v7}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    iget-object v6, v2, Lo4/t;->b:Landroid/widget/TextView;

    .line 32
    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    const-string v5, ""

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 39
    .line 40
    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v5, v2, Lo4/t;->b:Landroid/widget/TextView;

    .line 49
    .line 50
    const-string v6, "XX:XX:XX:XX:XX:XX"

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object v5, v2, Lo4/t;->a:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v5, v2, Lo4/t;->a:Landroid/widget/TextView;

    .line 65
    .line 66
    const/4 v6, 0x1

    .line 67
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v5, v2, Lo4/t;->f:Landroid/widget/TextView;

    .line 71
    .line 72
    const/16 v7, 0x8

    .line 73
    .line 74
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v8, v2, Lo4/t;->e:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object v9, v2, Lo4/t;->h:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object v10, v2, Lo4/t;->g:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object v11, v2, Lo4/t;->i:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPower()I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    const/16 v13, 0x64

    .line 102
    .line 103
    rsub-int/lit8 v12, v12, 0x64

    .line 104
    .line 105
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    const/4 v13, 0x0

    .line 110
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    new-instance v14, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v15, "%"

    .line 123
    .line 124
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    iget-object v15, v2, Lo4/t;->d:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    const-string v14, "#C62828"

    .line 137
    .line 138
    const-string v16, "#F57C00"

    .line 139
    .line 140
    const/16 v7, 0x28

    .line 141
    .line 142
    const-string v17, "#2E7D32"

    .line 143
    .line 144
    const/16 v6, 0x41

    .line 145
    .line 146
    if-lt v12, v6, :cond_2

    .line 147
    .line 148
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v18

    .line 152
    :goto_2
    move/from16 v13, v18

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_2
    if-lt v12, v7, :cond_3

    .line 156
    .line 157
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v18

    .line 161
    goto :goto_2

    .line 162
    :cond_3
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v18

    .line 166
    goto :goto_2

    .line 167
    :goto_3
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    .line 169
    .line 170
    iget-object v13, v2, Lo4/t;->k:Landroid/widget/ImageView;

    .line 171
    .line 172
    if-eqz v13, :cond_6

    .line 173
    .line 174
    if-lt v12, v6, :cond_4

    .line 175
    .line 176
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    goto :goto_4

    .line 181
    :cond_4
    if-lt v12, v7, :cond_5

    .line 182
    .line 183
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    goto :goto_4

    .line 188
    :cond_5
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    :goto_4
    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 193
    .line 194
    .line 195
    :cond_6
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getIs5hhz()Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-eqz v6, :cond_7

    .line 204
    .line 205
    const/4 v6, 0x0

    .line 206
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_7
    const/4 v6, 0x0

    .line 211
    :goto_5
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getWps()Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-eqz v5, :cond_8

    .line 220
    .line 221
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getBlocked()Ljava/lang/Boolean;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-nez v5, :cond_8

    .line 230
    .line 231
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_8
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getBlocked()Ljava/lang/Boolean;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_9

    .line 244
    .line 245
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    :cond_9
    :goto_6
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_a

    .line 257
    .line 258
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    :cond_a
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getVendor()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    iget-object v6, v0, Lo4/u;->b:Landroid/content/Context;

    .line 266
    .line 267
    if-eqz v5, :cond_b

    .line 268
    .line 269
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    if-eqz v7, :cond_c

    .line 274
    .line 275
    :cond_b
    const v5, 0x7f130715

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    :cond_c
    iget-object v7, v2, Lo4/t;->c:Landroid/widget/TextView;

    .line 283
    .line 284
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getModel()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    if-eqz v5, :cond_e

    .line 292
    .line 293
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getModel()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    if-lez v5, :cond_e

    .line 302
    .line 303
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getModel()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    const v8, 0x7f130714

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->isVulnVerified()Z

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    const v6, -0x19af00

    .line 326
    .line 327
    .line 328
    if-eqz v5, :cond_d

    .line 329
    .line 330
    const v4, 0x7f13071b

    .line 331
    .line 332
    .line 333
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(I)V

    .line 334
    .line 335
    .line 336
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v10, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 341
    .line 342
    .line 343
    const/4 v4, -0x1

    .line 344
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    .line 346
    .line 347
    const/4 v5, 0x0

    .line 348
    :goto_7
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_d
    const/4 v5, 0x0

    .line 353
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->isVulnerable()Z

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    if-eqz v4, :cond_f

    .line 358
    .line 359
    const v4, 0x7f13071a

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(I)V

    .line 363
    .line 364
    .line 365
    const/16 v4, -0x1f4e

    .line 366
    .line 367
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v10, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    .line 376
    .line 377
    goto :goto_7

    .line 378
    :cond_e
    const/4 v5, 0x0

    .line 379
    :cond_f
    :goto_8
    iget-object v4, v2, Lo4/t;->l:Landroid/view/View;

    .line 380
    .line 381
    if-eqz v4, :cond_11

    .line 382
    .line 383
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    const/4 v6, 0x1

    .line 388
    sub-int/2addr v3, v6

    .line 389
    if-ne v1, v3, :cond_10

    .line 390
    .line 391
    const/16 v7, 0x8

    .line 392
    .line 393
    goto :goto_9

    .line 394
    :cond_10
    move v7, v5

    .line 395
    :goto_9
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 396
    .line 397
    .line 398
    :cond_11
    new-instance v3, Lt2/i;

    .line 399
    .line 400
    const/4 v4, 0x2

    .line 401
    invoke-direct {v3, v0, v1, v4}, Lt2/i;-><init>(Landroidx/recyclerview/widget/k0;II)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v2, Lo4/t;->j:Landroid/view/View;

    .line 405
    .line 406
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    .line 408
    .line 409
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget-object p2, p0, Lo4/u;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d0121

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lo4/t;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0a071b

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v0, p2, Lo4/t;->a:Landroid/widget/TextView;

    .line 30
    .line 31
    const v0, 0x7f0a070d

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p2, Lo4/t;->b:Landroid/widget/TextView;

    .line 41
    .line 42
    const v0, 0x7f0a071a

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v0, p2, Lo4/t;->c:Landroid/widget/TextView;

    .line 52
    .line 53
    const v0, 0x7f0a071d

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v0, p2, Lo4/t;->d:Landroid/widget/TextView;

    .line 63
    .line 64
    const v0, 0x7f0a02fc

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/TextView;

    .line 72
    .line 73
    const v0, 0x7f0a02fe

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p2, Lo4/t;->j:Landroid/view/View;

    .line 81
    .line 82
    const v0, 0x7f0a02b1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .line 91
    iput-object v0, p2, Lo4/t;->k:Landroid/widget/ImageView;

    .line 92
    .line 93
    const v0, 0x7f0a0763

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object v0, p2, Lo4/t;->e:Landroid/widget/TextView;

    .line 103
    .line 104
    const v0, 0x7f0a0203

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v0, p2, Lo4/t;->f:Landroid/widget/TextView;

    .line 114
    .line 115
    const v0, 0x7f0a04c1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/TextView;

    .line 123
    .line 124
    iput-object v0, p2, Lo4/t;->g:Landroid/widget/TextView;

    .line 125
    .line 126
    const v0, 0x7f0a0378

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/widget/TextView;

    .line 134
    .line 135
    iput-object v0, p2, Lo4/t;->h:Landroid/widget/TextView;

    .line 136
    .line 137
    const v0, 0x7f0a034b

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/widget/TextView;

    .line 145
    .line 146
    iput-object v0, p2, Lo4/t;->i:Landroid/widget/TextView;

    .line 147
    .line 148
    const v0, 0x7f0a0717

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p2, Lo4/t;->l:Landroid/view/View;

    .line 156
    .line 157
    return-object p2
.end method
