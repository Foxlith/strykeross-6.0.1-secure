.class public final synthetic Lo4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lo4/u;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:[I

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Landroid/widget/ImageView;

.field public final synthetic h:Landroid/widget/ProgressBar;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:Landroid/widget/TextView;

.field public final synthetic l:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic m:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lo4/u;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/ArrayList;Landroid/widget/TextView;[ILandroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/b;->a:Lo4/u;

    iput-object p2, p0, Lo4/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lo4/b;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lo4/b;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lo4/b;->e:[I

    iput-object p6, p0, Lo4/b;->f:Landroid/content/Context;

    iput-object p7, p0, Lo4/b;->g:Landroid/widget/ImageView;

    iput-object p8, p0, Lo4/b;->h:Landroid/widget/ProgressBar;

    iput-object p9, p0, Lo4/b;->i:Landroid/widget/TextView;

    iput-object p10, p0, Lo4/b;->j:Landroid/view/View;

    iput-object p11, p0, Lo4/b;->k:Landroid/widget/TextView;

    iput-object p12, p0, Lo4/b;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p13, p0, Lo4/b;->m:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v15, v0, Lo4/b;->a:Lo4/u;

    .line 4
    .line 5
    iget-object v1, v0, Lo4/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    iget-object v14, v0, Lo4/b;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v13, v0, Lo4/b;->d:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v12, v0, Lo4/b;->e:[I

    .line 12
    .line 13
    iget-object v11, v0, Lo4/b;->f:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v8, v0, Lo4/b;->g:Landroid/widget/ImageView;

    .line 16
    .line 17
    iget-object v9, v0, Lo4/b;->h:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    iget-object v10, v0, Lo4/b;->i:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v7, v0, Lo4/b;->j:Landroid/view/View;

    .line 22
    .line 23
    iget-object v6, v0, Lo4/b;->k:Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v5, v0, Lo4/b;->l:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 26
    .line 27
    iget-object v4, v0, Lo4/b;->m:Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 30
    .line 31
    invoke-virtual {v2}, Ll4/l;->t0()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Generated "

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    aget v2, v12, v3

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " pins\n"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    new-array v2, v1, [Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    aput-object v1, v2, v3

    .line 76
    .line 77
    new-instance v3, Lo4/r;

    .line 78
    .line 79
    iget-object v1, v15, Lo4/u;->c:Landroid/app/Activity;

    .line 80
    .line 81
    move-object/from16 v16, v1

    .line 82
    .line 83
    move-object v1, v3

    .line 84
    move-object/from16 v17, v2

    .line 85
    .line 86
    move-object v2, v15

    .line 87
    move-object v0, v3

    .line 88
    move-object/from16 v3, v16

    .line 89
    .line 90
    move-object/from16 v16, v4

    .line 91
    .line 92
    move-object v4, v11

    .line 93
    move-object/from16 v18, v5

    .line 94
    .line 95
    move-object v5, v8

    .line 96
    move-object/from16 v19, v6

    .line 97
    .line 98
    move-object v6, v9

    .line 99
    move-object/from16 v20, v7

    .line 100
    .line 101
    move-object v7, v10

    .line 102
    move-object/from16 v8, v20

    .line 103
    .line 104
    move-object/from16 v9, v19

    .line 105
    .line 106
    move-object/from16 v10, v17

    .line 107
    .line 108
    move-object/from16 v17, v11

    .line 109
    .line 110
    move-object/from16 v11, v18

    .line 111
    .line 112
    move-object/from16 v18, v12

    .line 113
    .line 114
    move-object/from16 v12, v16

    .line 115
    .line 116
    move-object/from16 v21, v15

    .line 117
    .line 118
    move-object/from16 v15, v18

    .line 119
    .line 120
    move-object/from16 v16, v17

    .line 121
    .line 122
    invoke-direct/range {v1 .. v16}, Lo4/r;-><init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;[Lcom/zalexdev/stryker/custom/WiFINetwork;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;[ILandroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    move-object/from16 v15, v21

    .line 126
    .line 127
    iput-object v0, v15, Lo4/u;->j:Ll4/h;

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_0
    move-object/from16 v16, v4

    .line 132
    .line 133
    move-object/from16 v18, v5

    .line 134
    .line 135
    move-object/from16 v19, v6

    .line 136
    .line 137
    move-object/from16 v20, v7

    .line 138
    .line 139
    iget-object v0, v15, Lo4/u;->d:Ll4/l;

    .line 140
    .line 141
    const v1, 0x3f266666    # 0.65f

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {v8, v1}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, v15, Lo4/u;->d:Ll4/l;

    .line 155
    .line 156
    const/high16 v1, 0x3f800000    # 1.0f

    .line 157
    .line 158
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {v9, v1}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 166
    .line 167
    .line 168
    const/high16 v0, 0x1040000

    .line 169
    .line 170
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v1, v15, Lo4/u;->b:Landroid/content/Context;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const v2, 0x7f130539

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const/4 v1, 0x1

    .line 195
    add-int/lit8 v1, p2, -0x1

    .line 196
    .line 197
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v2, "Trying to connect... with pin "

    .line 216
    .line 217
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v2, "\n"

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v13}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v2, "python3 -u /CORE/PixieWps/pixie.py -i "

    .line 247
    .line 248
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 252
    .line 253
    const-string v3, "wlan_wps"

    .line 254
    .line 255
    invoke-virtual {v2, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 263
    .line 264
    invoke-virtual {v2}, Ll4/l;->u0()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v2, " -p "

    .line 272
    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v1, " -b "

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {v18 .. v18}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    new-instance v0, Lo4/q;

    .line 302
    .line 303
    iget-object v3, v15, Lo4/u;->c:Landroid/app/Activity;

    .line 304
    .line 305
    iget-object v4, v15, Lo4/u;->b:Landroid/content/Context;

    .line 306
    .line 307
    const/4 v14, 0x3

    .line 308
    move-object v1, v0

    .line 309
    move-object v2, v15

    .line 310
    move-object/from16 v6, v20

    .line 311
    .line 312
    move-object/from16 v7, v19

    .line 313
    .line 314
    move-object/from16 v11, v18

    .line 315
    .line 316
    move-object/from16 v12, v16

    .line 317
    .line 318
    invoke-direct/range {v1 .. v14}, Lo4/q;-><init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 319
    .line 320
    .line 321
    iput-object v0, v15, Lo4/u;->f:Lo4/q;

    .line 322
    .line 323
    :cond_1
    :goto_0
    return-void
.end method
