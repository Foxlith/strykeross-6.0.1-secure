.class public final Landroidx/recyclerview/widget/o;
.super Landroidx/recyclerview/widget/b1;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/recyclerview/widget/o;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/o;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .line 1
    iget p2, p0, Landroidx/recyclerview/widget/o;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/o;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;

    .line 11
    .line 12
    iget-object p1, v2, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->l:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object p2, v2, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->k:Ld4/o;

    .line 19
    .line 20
    iget-object p2, p2, Ld4/o;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iget-boolean p3, v2, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->m:Z

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    add-int/lit8 p2, p2, -0x2

    .line 31
    .line 32
    if-lt p1, p2, :cond_1

    .line 33
    .line 34
    :cond_0
    move v0, v1

    .line 35
    :cond_1
    iput-boolean v0, v2, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->m:Z

    .line 36
    .line 37
    if-eq v0, p3, :cond_3

    .line 38
    .line 39
    iget-object p1, v2, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->c:Ll4/l;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const-string p2, "1"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string p2, "0"

    .line 49
    .line 50
    :goto_0
    const-string p3, "nuclei_term_autoscroll"

    .line 51
    .line 52
    invoke-virtual {p1, p3, p2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void

    .line 56
    :pswitch_0
    if-gtz p3, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    move-object p1, v2

    .line 60
    check-cast p1, Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 61
    .line 62
    iget-object p2, p1, Lcom/zalexdev/stryker/logger/LoggerFragment;->f:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroidx/recyclerview/widget/w0;->getItemCount()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iget-object p3, p1, Lcom/zalexdev/stryker/logger/LoggerFragment;->f:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 69
    .line 70
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    add-int/lit8 p2, p2, -0xf

    .line 75
    .line 76
    if-lt p3, p2, :cond_6

    .line 77
    .line 78
    iget-boolean p2, p1, Lcom/zalexdev/stryker/logger/LoggerFragment;->s:Z

    .line 79
    .line 80
    if-nez p2, :cond_6

    .line 81
    .line 82
    iget-boolean p2, p1, Lcom/zalexdev/stryker/logger/LoggerFragment;->t:Z

    .line 83
    .line 84
    if-nez p2, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    iput-boolean v1, p1, Lcom/zalexdev/stryker/logger/LoggerFragment;->s:Z

    .line 88
    .line 89
    iget v5, p1, Lcom/zalexdev/stryker/logger/LoggerFragment;->r:I

    .line 90
    .line 91
    iget-wide v3, p1, Lcom/zalexdev/stryker/logger/LoggerFragment;->v:J

    .line 92
    .line 93
    iget-object p2, p1, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    .line 94
    .line 95
    invoke-virtual {p2}, Lv1/t;->i()Lv1/t;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance p2, Lu3/o;

    .line 100
    .line 101
    move-object v0, p2

    .line 102
    move-object v1, p1

    .line 103
    invoke-direct/range {v0 .. v5}, Lu3/o;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;Lv1/t;JI)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/zalexdev/stryker/logger/LoggerFragment;->f(Ljava/lang/Runnable;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    :goto_1
    return-void

    .line 110
    :pswitch_1
    check-cast v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 111
    .line 112
    iget-object p1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_a

    .line 119
    .line 120
    iget-boolean p1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->p:Z

    .line 121
    .line 122
    if-nez p1, :cond_8

    .line 123
    .line 124
    iget-object p1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->o:Landroid/animation/Animator;

    .line 125
    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 129
    .line 130
    .line 131
    :cond_7
    filled-new-array {v0}, [I

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string p2, "offsetX"

    .line 136
    .line 137
    invoke-static {v2, p2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->o:Landroid/animation/Animator;

    .line 142
    .line 143
    new-instance p2, Lt0/c;

    .line 144
    .line 145
    invoke-direct {p2}, Lt0/c;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->o:Landroid/animation/Animator;

    .line 152
    .line 153
    const-wide/16 p2, 0x96

    .line 154
    .line 155
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 156
    .line 157
    .line 158
    iget-object p1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->o:Landroid/animation/Animator;

    .line 159
    .line 160
    new-instance p2, Landroidx/appcompat/widget/d;

    .line 161
    .line 162
    const/4 p3, 0x3

    .line 163
    invoke-direct {p2, v2, p3}, Landroidx/appcompat/widget/d;-><init>(Ljava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    .line 168
    .line 169
    iput-boolean v1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->p:Z

    .line 170
    .line 171
    iget-object p1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->o:Landroid/animation/Animator;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 174
    .line 175
    .line 176
    :cond_8
    iget-boolean p1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->r:Z

    .line 177
    .line 178
    if-eqz p1, :cond_9

    .line 179
    .line 180
    invoke-virtual {v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b()V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_9
    iget-object p1, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 185
    .line 186
    if-eqz p1, :cond_a

    .line 187
    .line 188
    iget-object p2, v2, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->s:Landroidx/activity/d;

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 191
    .line 192
    .line 193
    :cond_a
    :goto_2
    return-void

    .line 194
    :pswitch_2
    check-cast v2, Landroidx/recyclerview/widget/r;

    .line 195
    .line 196
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    iget-object p3, v2, Landroidx/recyclerview/widget/r;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 205
    .line 206
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 207
    .line 208
    .line 209
    move-result p3

    .line 210
    iget v3, v2, Landroidx/recyclerview/widget/r;->s:I

    .line 211
    .line 212
    sub-int v4, p3, v3

    .line 213
    .line 214
    iget v5, v2, Landroidx/recyclerview/widget/r;->a:I

    .line 215
    .line 216
    if-lez v4, :cond_b

    .line 217
    .line 218
    if-lt v3, v5, :cond_b

    .line 219
    .line 220
    move v4, v1

    .line 221
    goto :goto_3

    .line 222
    :cond_b
    move v4, v0

    .line 223
    :goto_3
    iput-boolean v4, v2, Landroidx/recyclerview/widget/r;->u:Z

    .line 224
    .line 225
    iget-object v4, v2, Landroidx/recyclerview/widget/r;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 226
    .line 227
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    iget v6, v2, Landroidx/recyclerview/widget/r;->r:I

    .line 232
    .line 233
    sub-int v7, v4, v6

    .line 234
    .line 235
    if-lez v7, :cond_c

    .line 236
    .line 237
    if-lt v6, v5, :cond_c

    .line 238
    .line 239
    move v5, v1

    .line 240
    goto :goto_4

    .line 241
    :cond_c
    move v5, v0

    .line 242
    :goto_4
    iput-boolean v5, v2, Landroidx/recyclerview/widget/r;->v:Z

    .line 243
    .line 244
    iget-boolean v7, v2, Landroidx/recyclerview/widget/r;->u:Z

    .line 245
    .line 246
    if-nez v7, :cond_d

    .line 247
    .line 248
    if-nez v5, :cond_d

    .line 249
    .line 250
    iget p1, v2, Landroidx/recyclerview/widget/r;->w:I

    .line 251
    .line 252
    if-eqz p1, :cond_11

    .line 253
    .line 254
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/r;->g(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_d
    const/high16 v0, 0x40000000    # 2.0f

    .line 259
    .line 260
    if-eqz v7, :cond_e

    .line 261
    .line 262
    int-to-float p1, p1

    .line 263
    int-to-float v5, v3

    .line 264
    div-float v7, v5, v0

    .line 265
    .line 266
    add-float/2addr v7, p1

    .line 267
    mul-float/2addr v7, v5

    .line 268
    int-to-float p1, p3

    .line 269
    div-float/2addr v7, p1

    .line 270
    float-to-int p1, v7

    .line 271
    iput p1, v2, Landroidx/recyclerview/widget/r;->l:I

    .line 272
    .line 273
    mul-int p1, v3, v3

    .line 274
    .line 275
    div-int/2addr p1, p3

    .line 276
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    iput p1, v2, Landroidx/recyclerview/widget/r;->k:I

    .line 281
    .line 282
    :cond_e
    iget-boolean p1, v2, Landroidx/recyclerview/widget/r;->v:Z

    .line 283
    .line 284
    if-eqz p1, :cond_f

    .line 285
    .line 286
    int-to-float p1, p2

    .line 287
    int-to-float p2, v6

    .line 288
    div-float p3, p2, v0

    .line 289
    .line 290
    add-float/2addr p3, p1

    .line 291
    mul-float/2addr p3, p2

    .line 292
    int-to-float p1, v4

    .line 293
    div-float/2addr p3, p1

    .line 294
    float-to-int p1, p3

    .line 295
    iput p1, v2, Landroidx/recyclerview/widget/r;->p:I

    .line 296
    .line 297
    mul-int p1, v6, v6

    .line 298
    .line 299
    div-int/2addr p1, v4

    .line 300
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    iput p1, v2, Landroidx/recyclerview/widget/r;->n:I

    .line 305
    .line 306
    :cond_f
    iget p1, v2, Landroidx/recyclerview/widget/r;->w:I

    .line 307
    .line 308
    if-eqz p1, :cond_10

    .line 309
    .line 310
    if-ne p1, v1, :cond_11

    .line 311
    .line 312
    :cond_10
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/r;->g(I)V

    .line 313
    .line 314
    .line 315
    :cond_11
    :goto_5
    return-void

    .line 316
    nop

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
