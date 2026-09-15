.class public Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/a1;


# instance fields
.field public final a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

.field public final b:Ld2/a;

.field public c:I

.field public d:I

.field public e:I

.field public final f:Landroid/util/SparseIntArray;

.field public final g:Landroidx/viewpager2/adapter/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ld2/a;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->b:Ld2/a;

    .line 11
    .line 12
    new-instance v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 13
    .line 14
    invoke-direct {v1, p1, p0, p2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;-><init>(Landroid/content/Context;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/util/AttributeSet;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 18
    .line 19
    new-instance p1, Landroidx/viewpager2/adapter/c;

    .line 20
    .line 21
    invoke-direct {p1, p0, v0}, Landroidx/viewpager2/adapter/c;-><init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->g:Landroidx/viewpager2/adapter/c;

    .line 25
    .line 26
    new-instance p1, Landroid/util/SparseIntArray;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->f:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->u(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->u(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    instance-of v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 34
    .line 35
    iget v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 36
    .line 37
    int-to-double v3, v0

    .line 38
    int-to-double v5, v2

    .line 39
    div-double/2addr v3, v5

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    double-to-int v0, v2

    .line 45
    :cond_1
    const/4 v2, -0x1

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v1, v2, v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->c(II)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->b:Ld2/a;

    .line 53
    .line 54
    invoke-virtual {p0, v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->t(Ld2/a;)V

    .line 55
    .line 56
    .line 57
    iget v4, v3, Ld2/a;->a:I

    .line 58
    .line 59
    if-gez v4, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 63
    .line 64
    .line 65
    iget v4, v3, Ld2/a;->c:I

    .line 66
    .line 67
    mul-int/2addr v0, v4

    .line 68
    invoke-virtual {p0, v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->s(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getAvailableScrollBarHeight()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-gtz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {v1, v2, v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->c(II)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iget v5, v3, Ld2/a;->a:I

    .line 87
    .line 88
    iget v6, v3, Ld2/a;->c:I

    .line 89
    .line 90
    mul-int/2addr v5, v6

    .line 91
    add-int/2addr v5, v2

    .line 92
    iget v2, v3, Ld2/a;->b:I

    .line 93
    .line 94
    sub-int/2addr v5, v2

    .line 95
    int-to-float v2, v5

    .line 96
    int-to-float v0, v0

    .line 97
    div-float/2addr v2, v0

    .line 98
    int-to-float v0, v4

    .line 99
    mul-float/2addr v2, v0

    .line 100
    float-to-int v0, v2

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2}, Li5/a;->l0(Landroid/content/res/Resources;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iget v3, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->d:I

    .line 118
    .line 119
    sub-int/2addr v2, v3

    .line 120
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->c(II)V

    .line 121
    .line 122
    .line 123
    :goto_2
    iget-object v0, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->l:Landroid/graphics/Point;

    .line 124
    .line 125
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 126
    .line 127
    if-ltz v2, :cond_7

    .line 128
    .line 129
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 130
    .line 131
    if-gez v3, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    iget-object v3, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->m:Landroid/graphics/Point;

    .line 135
    .line 136
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 137
    .line 138
    add-int/2addr v2, v4

    .line 139
    int-to-float v5, v2

    .line 140
    iget v10, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->c:I

    .line 141
    .line 142
    div-int/lit8 v4, v10, 0x2

    .line 143
    .line 144
    iget v6, v3, Landroid/graphics/Point;->y:I

    .line 145
    .line 146
    add-int/2addr v6, v4

    .line 147
    int-to-float v6, v6

    .line 148
    iget v11, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->d:I

    .line 149
    .line 150
    add-int/2addr v2, v11

    .line 151
    int-to-float v7, v2

    .line 152
    iget-object v2, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    iget v8, v3, Landroid/graphics/Point;->y:I

    .line 159
    .line 160
    add-int/2addr v2, v8

    .line 161
    sub-int/2addr v2, v4

    .line 162
    int-to-float v8, v2

    .line 163
    iget-object v9, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->f:Landroid/graphics/Paint;

    .line 164
    .line 165
    move-object v4, p1

    .line 166
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    .line 168
    .line 169
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 170
    .line 171
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 172
    .line 173
    add-int/2addr v2, v4

    .line 174
    int-to-float v5, v2

    .line 175
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 176
    .line 177
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 178
    .line 179
    add-int/2addr v0, v3

    .line 180
    int-to-float v6, v0

    .line 181
    add-int/2addr v2, v11

    .line 182
    int-to-float v7, v2

    .line 183
    add-int/2addr v0, v10

    .line 184
    int-to-float v8, v0

    .line 185
    iget-object v9, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->e:Landroid/graphics/Paint;

    .line 186
    .line 187
    move-object v4, p1

    .line 188
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->b(Landroid/graphics/Canvas;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    :goto_3
    return-void
.end method

.method public getAvailableScrollBarHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 6
    .line 7
    iget v1, v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->c:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public getScrollBarThumbHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iget v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public getScrollBarWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iget v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->d:I

    .line 4
    .line 5
    return v0
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/a1;)V

    return-void
.end method

.method public final s(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v1

    sub-int/2addr p1, v0

    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/k0;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    move-result-object v0

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->g:Landroidx/viewpager2/adapter/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k0;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/k0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    return-void
.end method

.method public setAutoHideDelay(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iput p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->q:I

    .line 4
    .line 5
    iget-boolean p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->r:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setAutoHideEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->r:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->s:Landroidx/activity/d;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public setPopUpTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->m:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8
    .line 9
    .line 10
    iget-object p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setPopupBgColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    .line 4
    .line 5
    iput p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->h:I

    .line 6
    .line 7
    iget-object v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->g:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setPopupPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    .line 4
    .line 5
    iput p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->r:I

    .line 6
    .line 7
    return-void
.end method

.method public setPopupTextColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->m:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setPopupTextSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->b:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->m:Landroid/graphics/Paint;

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->k:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setStateChangeListener(Lc2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setThumbColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->e:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->h:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setTrackColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->f:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->h:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final t(Ld2/a;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p1, Ld2/a;->a:I

    .line 3
    .line 4
    iput v0, p1, Ld2/a;->b:I

    .line 5
    .line 6
    iput v0, p1, Ld2/a;->c:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p1, Ld2/a;->a:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget v1, p1, Ld2/a;->a:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 51
    .line 52
    iget v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 53
    .line 54
    div-int/2addr v1, v2

    .line 55
    iput v1, p1, Ld2/a;->a:I

    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/w0;->getDecoratedTop(Landroid/view/View;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, p1, Ld2/a;->b:I

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/w0;->getTopDecorationHeight(Landroid/view/View;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr v2, v1

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/w0;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    add-int/2addr v0, v2

    .line 89
    iput v0, p1, Ld2/a;->c:I

    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void
.end method

.method public final u(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    float-to-int v1, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    float-to-int v2, v2

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->e:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 30
    .line 31
    iget v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->c:I

    .line 32
    .line 33
    iget v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->d:I

    .line 34
    .line 35
    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a(Landroid/view/MotionEvent;III)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 40
    .line 41
    iget v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->c:I

    .line 42
    .line 43
    iget v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->d:I

    .line 44
    .line 45
    iget v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->e:I

    .line 46
    .line 47
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a(Landroid/view/MotionEvent;III)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iput v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->c:I

    .line 52
    .line 53
    iput v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->e:I

    .line 54
    .line 55
    iput v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->d:I

    .line 56
    .line 57
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 58
    .line 59
    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a(Landroid/view/MotionEvent;III)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 63
    .line 64
    iget-boolean p1, p1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->n:Z

    .line 65
    .line 66
    return p1
.end method
