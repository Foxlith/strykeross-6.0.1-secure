.class public final Landroidx/recyclerview/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/recyclerview/widget/l;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/l;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/recyclerview/widget/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/f;->c:Landroidx/recyclerview/widget/l;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/recyclerview/widget/f;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    .line 8
    iget-object v11, v0, Landroidx/recyclerview/widget/f;->c:Landroidx/recyclerview/widget/l;

    .line 9
    .line 10
    iget-object v12, v0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/recyclerview/widget/p1;

    .line 30
    .line 31
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v4, v2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iget-object v6, v11, Landroidx/recyclerview/widget/l;->o:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-wide v7, v11, Landroidx/recyclerview/widget/r0;->c:J

    .line 50
    .line 51
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    new-instance v7, Landroidx/recyclerview/widget/g;

    .line 56
    .line 57
    invoke-direct {v7, v11, v2, v4, v5}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/p1;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    iget-object v1, v11, Landroidx/recyclerview/widget/l;->l:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    move-object v10, v4

    .line 92
    check-cast v10, Landroidx/recyclerview/widget/j;

    .line 93
    .line 94
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object v4, v10, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/p1;

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    if-nez v4, :cond_1

    .line 101
    .line 102
    move-object v8, v5

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    iget-object v4, v4, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 105
    .line 106
    move-object v8, v4

    .line 107
    :goto_2
    iget-object v4, v10, Landroidx/recyclerview/widget/j;->b:Landroidx/recyclerview/widget/p1;

    .line 108
    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    iget-object v4, v4, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 112
    .line 113
    move-object v13, v4

    .line 114
    goto :goto_3

    .line 115
    :cond_2
    move-object v13, v5

    .line 116
    :goto_3
    iget-object v14, v11, Landroidx/recyclerview/widget/l;->r:Ljava/util/ArrayList;

    .line 117
    .line 118
    iget-wide v6, v11, Landroidx/recyclerview/widget/r0;->f:J

    .line 119
    .line 120
    if-eqz v8, :cond_3

    .line 121
    .line 122
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    iget-object v4, v10, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/p1;

    .line 131
    .line 132
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    iget v4, v10, Landroidx/recyclerview/widget/j;->e:I

    .line 136
    .line 137
    iget v5, v10, Landroidx/recyclerview/widget/j;->c:I

    .line 138
    .line 139
    sub-int/2addr v4, v5

    .line 140
    int-to-float v4, v4

    .line 141
    invoke-virtual {v9, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 142
    .line 143
    .line 144
    iget v4, v10, Landroidx/recyclerview/widget/j;->f:I

    .line 145
    .line 146
    iget v5, v10, Landroidx/recyclerview/widget/j;->d:I

    .line 147
    .line 148
    sub-int/2addr v4, v5

    .line 149
    int-to-float v4, v4

    .line 150
    invoke-virtual {v9, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    new-instance v5, Landroidx/recyclerview/widget/i;

    .line 158
    .line 159
    const/16 v16, 0x0

    .line 160
    .line 161
    move-object v4, v5

    .line 162
    move-object v3, v5

    .line 163
    move-object v5, v11

    .line 164
    move-wide/from16 v17, v6

    .line 165
    .line 166
    move-object v6, v10

    .line 167
    move-object v7, v9

    .line 168
    move/from16 v9, v16

    .line 169
    .line 170
    invoke-direct/range {v4 .. v9}, Landroidx/recyclerview/widget/i;-><init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/j;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v15, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_3
    move-wide/from16 v17, v6

    .line 182
    .line 183
    :goto_4
    if-eqz v13, :cond_4

    .line 184
    .line 185
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    iget-object v3, v10, Landroidx/recyclerview/widget/j;->b:Landroidx/recyclerview/widget/p1;

    .line 190
    .line 191
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    move-wide/from16 v4, v17

    .line 203
    .line 204
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    const/high16 v14, 0x3f800000    # 1.0f

    .line 209
    .line 210
    invoke-virtual {v3, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    new-instance v15, Landroidx/recyclerview/widget/i;

    .line 215
    .line 216
    const/4 v9, 0x1

    .line 217
    move-object v4, v15

    .line 218
    move-object v5, v11

    .line 219
    move-object v6, v10

    .line 220
    move-object v8, v13

    .line 221
    invoke-direct/range {v4 .. v9}, Landroidx/recyclerview/widget/i;-><init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/j;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v15}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_4
    const/high16 v14, 0x3f800000    # 1.0f

    .line 233
    .line 234
    :goto_5
    move v3, v14

    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 238
    .line 239
    .line 240
    iget-object v1, v11, Landroidx/recyclerview/widget/l;->n:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :pswitch_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_8

    .line 255
    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Landroidx/recyclerview/widget/k;

    .line 261
    .line 262
    iget-object v6, v3, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/p1;

    .line 263
    .line 264
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    iget-object v8, v6, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 268
    .line 269
    iget v4, v3, Landroidx/recyclerview/widget/k;->d:I

    .line 270
    .line 271
    iget v5, v3, Landroidx/recyclerview/widget/k;->b:I

    .line 272
    .line 273
    sub-int v7, v4, v5

    .line 274
    .line 275
    iget v4, v3, Landroidx/recyclerview/widget/k;->e:I

    .line 276
    .line 277
    iget v3, v3, Landroidx/recyclerview/widget/k;->c:I

    .line 278
    .line 279
    sub-int v9, v4, v3

    .line 280
    .line 281
    if-eqz v7, :cond_6

    .line 282
    .line 283
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 288
    .line 289
    .line 290
    :cond_6
    if-eqz v9, :cond_7

    .line 291
    .line 292
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 297
    .line 298
    .line 299
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    iget-object v3, v11, Landroidx/recyclerview/widget/l;->p:Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    iget-wide v3, v11, Landroidx/recyclerview/widget/r0;->e:J

    .line 309
    .line 310
    invoke-virtual {v10, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    new-instance v13, Landroidx/recyclerview/widget/h;

    .line 315
    .line 316
    move-object v4, v13

    .line 317
    move-object v5, v11

    .line 318
    invoke-direct/range {v4 .. v10}, Landroidx/recyclerview/widget/h;-><init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/p1;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 326
    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 330
    .line 331
    .line 332
    iget-object v1, v11, Landroidx/recyclerview/widget/l;->m:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
