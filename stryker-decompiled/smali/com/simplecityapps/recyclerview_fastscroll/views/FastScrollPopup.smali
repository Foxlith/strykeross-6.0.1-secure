.class public Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

.field public b:Landroid/content/res/Resources;

.field public c:I

.field public d:I

.field public e:Landroid/graphics/Path;

.field public f:Landroid/graphics/RectF;

.field public g:Landroid/graphics/Paint;

.field public h:I

.field public i:Landroid/graphics/Rect;

.field public j:Landroid/graphics/Rect;

.field public k:Landroid/graphics/Rect;

.field public l:Ljava/lang/String;

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/Rect;

.field public o:F

.field public p:Landroid/animation/ObjectAnimator;

.field public q:Z

.field public r:I


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->q:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->q:Z

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->p:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->p:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    const-wide/16 v1, 0xc8

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x96

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->o:F

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    cmpl-float v2, v2, v3

    .line 9
    .line 10
    if-lez v2, :cond_2

    .line 11
    .line 12
    iget-object v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->l:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object v5, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    int-to-float v6, v6

    .line 30
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    int-to-float v7, v7

    .line 33
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    .line 35
    .line 36
    iget-object v6, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->j:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 43
    .line 44
    .line 45
    iget-object v8, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->e:Landroid/graphics/Path;

    .line 46
    .line 47
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 48
    .line 49
    .line 50
    iget-object v9, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->f:Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-virtual {v9, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 53
    .line 54
    .line 55
    iget v6, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->r:I

    .line 56
    .line 57
    const/4 v10, 0x2

    .line 58
    const/4 v11, 0x7

    .line 59
    const/4 v12, 0x6

    .line 60
    const/4 v13, 0x5

    .line 61
    const/4 v14, 0x4

    .line 62
    const/4 v15, 0x3

    .line 63
    const/16 v3, 0x8

    .line 64
    .line 65
    if-ne v6, v2, :cond_0

    .line 66
    .line 67
    new-array v3, v3, [F

    .line 68
    .line 69
    iget v6, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->d:I

    .line 70
    .line 71
    int-to-float v6, v6

    .line 72
    aput v6, v3, v7

    .line 73
    .line 74
    aput v6, v3, v2

    .line 75
    .line 76
    aput v6, v3, v10

    .line 77
    .line 78
    aput v6, v3, v15

    .line 79
    .line 80
    aput v6, v3, v14

    .line 81
    .line 82
    aput v6, v3, v13

    .line 83
    .line 84
    aput v6, v3, v12

    .line 85
    .line 86
    aput v6, v3, v11

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object v6, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->b:Landroid/content/res/Resources;

    .line 90
    .line 91
    invoke-static {v6}, Li5/a;->l0(Landroid/content/res/Resources;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_1

    .line 96
    .line 97
    new-array v3, v3, [F

    .line 98
    .line 99
    iget v6, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->d:I

    .line 100
    .line 101
    int-to-float v6, v6

    .line 102
    aput v6, v3, v7

    .line 103
    .line 104
    aput v6, v3, v2

    .line 105
    .line 106
    aput v6, v3, v10

    .line 107
    .line 108
    aput v6, v3, v15

    .line 109
    .line 110
    aput v6, v3, v14

    .line 111
    .line 112
    aput v6, v3, v13

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    aput v6, v3, v12

    .line 116
    .line 117
    aput v6, v3, v11

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    const/4 v6, 0x0

    .line 121
    new-array v3, v3, [F

    .line 122
    .line 123
    iget v11, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->d:I

    .line 124
    .line 125
    int-to-float v11, v11

    .line 126
    aput v11, v3, v7

    .line 127
    .line 128
    aput v11, v3, v2

    .line 129
    .line 130
    aput v11, v3, v10

    .line 131
    .line 132
    aput v11, v3, v15

    .line 133
    .line 134
    aput v6, v3, v14

    .line 135
    .line 136
    aput v6, v3, v13

    .line 137
    .line 138
    aput v11, v3, v12

    .line 139
    .line 140
    const/4 v2, 0x7

    .line 141
    aput v11, v3, v2

    .line 142
    .line 143
    :goto_0
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 144
    .line 145
    invoke-virtual {v8, v9, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 146
    .line 147
    .line 148
    iget-object v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->g:Landroid/graphics/Paint;

    .line 149
    .line 150
    iget v3, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->h:I

    .line 151
    .line 152
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    int-to-float v3, v3

    .line 157
    iget v6, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->o:F

    .line 158
    .line 159
    mul-float/2addr v3, v6

    .line 160
    float-to-int v3, v3

    .line 161
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->m:Landroid/graphics/Paint;

    .line 165
    .line 166
    iget v6, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->o:F

    .line 167
    .line 168
    const/high16 v7, 0x437f0000    # 255.0f

    .line 169
    .line 170
    mul-float/2addr v6, v7

    .line 171
    float-to-int v6, v6

    .line 172
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    .line 177
    .line 178
    iget-object v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->l:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    iget-object v7, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->n:Landroid/graphics/Rect;

    .line 185
    .line 186
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    sub-int/2addr v6, v8

    .line 191
    div-int/2addr v6, v10

    .line 192
    int-to-float v6, v6

    .line 193
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    sub-int/2addr v5, v7

    .line 206
    div-int/2addr v5, v10

    .line 207
    sub-int/2addr v8, v5

    .line 208
    int-to-float v5, v8

    .line 209
    invoke-virtual {v1, v2, v6, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 213
    .line 214
    .line 215
    :cond_2
    return-void
.end method

.method public getAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->o:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->o:F

    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
