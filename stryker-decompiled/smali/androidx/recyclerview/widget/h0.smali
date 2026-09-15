.class public final Landroidx/recyclerview/widget/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/recyclerview/widget/h0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/h0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/recyclerview/widget/h0;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, v0, Landroidx/recyclerview/widget/h0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 12
    .line 13
    if-eqz v1, :cond_c

    .line 14
    .line 15
    check-cast v1, Landroidx/recyclerview/widget/l;

    .line 16
    .line 17
    iget-object v5, v1, Landroidx/recyclerview/widget/l;->h:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    xor-int/2addr v6, v2

    .line 24
    iget-object v7, v1, Landroidx/recyclerview/widget/l;->j:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    xor-int/2addr v8, v2

    .line 31
    iget-object v9, v1, Landroidx/recyclerview/widget/l;->k:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    xor-int/2addr v10, v2

    .line 38
    iget-object v11, v1, Landroidx/recyclerview/widget/l;->i:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    xor-int/2addr v12, v2

    .line 45
    if-nez v6, :cond_0

    .line 46
    .line 47
    if-nez v8, :cond_0

    .line 48
    .line 49
    if-nez v12, :cond_0

    .line 50
    .line 51
    if-nez v10, :cond_0

    .line 52
    .line 53
    move-object/from16 v16, v3

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    move-object/from16 v16, v3

    .line 66
    .line 67
    iget-wide v2, v1, Landroidx/recyclerview/widget/r0;->d:J

    .line 68
    .line 69
    if-eqz v14, :cond_1

    .line 70
    .line 71
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    check-cast v14, Landroidx/recyclerview/widget/p1;

    .line 76
    .line 77
    iget-object v15, v14, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v0, v1, Landroidx/recyclerview/widget/l;->q:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v2, Landroidx/recyclerview/widget/g;

    .line 98
    .line 99
    invoke-direct {v2, v1, v14, v4, v15}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/p1;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 107
    .line 108
    .line 109
    move-object/from16 v0, p0

    .line 110
    .line 111
    move-object/from16 v3, v16

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 116
    .line 117
    .line 118
    if-eqz v8, :cond_3

    .line 119
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    iget-object v4, v1, Landroidx/recyclerview/widget/l;->m:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 134
    .line 135
    .line 136
    new-instance v4, Landroidx/recyclerview/widget/f;

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    invoke-direct {v4, v1, v0, v5}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/l;Ljava/util/ArrayList;I)V

    .line 140
    .line 141
    .line 142
    if-eqz v6, :cond_2

    .line 143
    .line 144
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Landroidx/recyclerview/widget/k;

    .line 149
    .line 150
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/p1;

    .line 151
    .line 152
    iget-object v0, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 153
    .line 154
    sget-object v5, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 155
    .line 156
    invoke-static {v0, v4, v2, v3}, Landroidx/core/view/k0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {v4}, Landroidx/recyclerview/widget/f;->run()V

    .line 161
    .line 162
    .line 163
    :cond_3
    :goto_1
    if-eqz v10, :cond_5

    .line 164
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    .line 172
    .line 173
    iget-object v4, v1, Landroidx/recyclerview/widget/l;->n:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 179
    .line 180
    .line 181
    new-instance v4, Landroidx/recyclerview/widget/f;

    .line 182
    .line 183
    const/4 v5, 0x1

    .line 184
    invoke-direct {v4, v1, v0, v5}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/l;Ljava/util/ArrayList;I)V

    .line 185
    .line 186
    .line 187
    if-eqz v6, :cond_4

    .line 188
    .line 189
    const/4 v5, 0x0

    .line 190
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Landroidx/recyclerview/widget/j;

    .line 195
    .line 196
    iget-object v0, v0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/p1;

    .line 197
    .line 198
    iget-object v0, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 199
    .line 200
    sget-object v5, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 201
    .line 202
    invoke-static {v0, v4, v2, v3}, Landroidx/core/view/k0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    invoke-virtual {v4}, Landroidx/recyclerview/widget/f;->run()V

    .line 207
    .line 208
    .line 209
    :cond_5
    :goto_2
    if-eqz v12, :cond_b

    .line 210
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    .line 218
    .line 219
    iget-object v4, v1, Landroidx/recyclerview/widget/l;->l:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 225
    .line 226
    .line 227
    new-instance v4, Landroidx/recyclerview/widget/f;

    .line 228
    .line 229
    const/4 v5, 0x2

    .line 230
    invoke-direct {v4, v1, v0, v5}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/l;Ljava/util/ArrayList;I)V

    .line 231
    .line 232
    .line 233
    if-nez v6, :cond_7

    .line 234
    .line 235
    if-nez v8, :cond_7

    .line 236
    .line 237
    if-eqz v10, :cond_6

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_6
    invoke-virtual {v4}, Landroidx/recyclerview/widget/f;->run()V

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_7
    :goto_3
    const-wide/16 v11, 0x0

    .line 245
    .line 246
    if-eqz v6, :cond_8

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_8
    move-wide v2, v11

    .line 250
    :goto_4
    if-eqz v8, :cond_9

    .line 251
    .line 252
    iget-wide v5, v1, Landroidx/recyclerview/widget/r0;->e:J

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_9
    move-wide v5, v11

    .line 256
    :goto_5
    if-eqz v10, :cond_a

    .line 257
    .line 258
    iget-wide v11, v1, Landroidx/recyclerview/widget/r0;->f:J

    .line 259
    .line 260
    :cond_a
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 261
    .line 262
    .line 263
    move-result-wide v5

    .line 264
    add-long/2addr v5, v2

    .line 265
    const/4 v1, 0x0

    .line 266
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Landroidx/recyclerview/widget/p1;

    .line 271
    .line 272
    iget-object v0, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 273
    .line 274
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 275
    .line 276
    invoke-static {v0, v4, v5, v6}, Landroidx/core/view/k0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 277
    .line 278
    .line 279
    :cond_b
    :goto_6
    move-object/from16 v0, v16

    .line 280
    .line 281
    :goto_7
    const/4 v1, 0x0

    .line 282
    goto :goto_8

    .line 283
    :cond_c
    move-object v0, v3

    .line 284
    goto :goto_7

    .line 285
    :goto_8
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 286
    .line 287
    return-void

    .line 288
    :pswitch_0
    move-object v0, v3

    .line 289
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 290
    .line 291
    if-eqz v1, :cond_10

    .line 292
    .line 293
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_d

    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_d
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 301
    .line 302
    if-nez v1, :cond_e

    .line 303
    .line 304
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 305
    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_e
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 309
    .line 310
    if-eqz v1, :cond_f

    .line 311
    .line 312
    const/4 v1, 0x1

    .line 313
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 314
    .line 315
    goto :goto_9

    .line 316
    :cond_f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 317
    .line 318
    .line 319
    :cond_10
    :goto_9
    return-void

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
