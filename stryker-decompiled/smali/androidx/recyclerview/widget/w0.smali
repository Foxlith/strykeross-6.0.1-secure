.class public abstract Landroidx/recyclerview/widget/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Landroidx/recyclerview/widget/e;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Landroidx/recyclerview/widget/d2;

.field private final mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/c2;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroidx/recyclerview/widget/k1;

.field mVerticalBoundCheck:Landroidx/recyclerview/widget/d2;

.field private final mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/c2;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/t0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/t0;-><init>(Landroidx/recyclerview/widget/w0;I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/w0;->mHorizontalBoundCheckCallback:Landroidx/recyclerview/widget/c2;

    new-instance v2, Landroidx/recyclerview/widget/t0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/t0;-><init>(Landroidx/recyclerview/widget/w0;I)V

    iput-object v2, p0, Landroidx/recyclerview/widget/w0;->mVerticalBoundCheckCallback:Landroidx/recyclerview/widget/c2;

    new-instance v4, Landroidx/recyclerview/widget/d2;

    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/d2;-><init>(Landroidx/recyclerview/widget/t0;)V

    iput-object v4, p0, Landroidx/recyclerview/widget/w0;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/d2;

    new-instance v0, Landroidx/recyclerview/widget/d2;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/d2;-><init>(Landroidx/recyclerview/widget/t0;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/w0;->mVerticalBoundCheck:Landroidx/recyclerview/widget/d2;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/w0;->mRequestedSimpleAnimations:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/w0;->mIsAttachedToWindow:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/w0;->mAutoMeasure:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/w0;->mMeasurementCacheEnabled:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/w0;->mItemPrefetchEnabled:Z

    return-void
.end method

.method public static b(III)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public static chooseSize(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 4

    .line 1
    sub-int/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_2

    if-ltz p3, :cond_0

    :goto_0
    move p1, v3

    goto :goto_2

    :cond_0
    if-ne p3, v1, :cond_1

    if-eq p1, v2, :cond_4

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_4

    :cond_1
    move p1, p2

    move p3, p1

    goto :goto_2

    :cond_2
    if-ltz p3, :cond_3

    goto :goto_0

    :cond_3
    if-ne p3, v1, :cond_5

    :cond_4
    move p3, p0

    goto :goto_2

    :cond_5
    if-ne p3, v0, :cond_1

    if-eq p1, v2, :cond_7

    if-ne p1, v3, :cond_6

    goto :goto_1

    :cond_6
    move p3, p0

    move p1, p2

    goto :goto_2

    :cond_7
    :goto_1
    move p3, p0

    move p1, v2

    :goto_2
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    if-ltz p2, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    move p2, p1

    goto :goto_1

    :cond_1
    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    move p2, p0

    goto :goto_0

    :cond_3
    const/4 p3, -0x2

    if-ne p2, p3, :cond_0

    const/high16 p1, -0x80000000

    move p2, p0

    :goto_1
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/v0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/v0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lx0/a;->a:[I

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    iput p3, v0, Landroidx/recyclerview/widget/v0;->a:I

    .line 19
    .line 20
    const/16 p3, 0xa

    .line 21
    .line 22
    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, v0, Landroidx/recyclerview/widget/v0;->b:I

    .line 27
    .line 28
    const/16 p2, 0x9

    .line 29
    .line 30
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iput-boolean p2, v0, Landroidx/recyclerview/widget/v0;->c:Z

    .line 35
    .line 36
    const/16 p2, 0xb

    .line 37
    .line 38
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput-boolean p1, v0, Landroidx/recyclerview/widget/v0;->d:Z

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;IZ)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p3, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/g2;->c(Landroidx/recyclerview/widget/p1;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 26
    .line 27
    iget-object p3, p3, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p3, v0, v2}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroidx/recyclerview/widget/e2;

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    invoke-static {}, Landroidx/recyclerview/widget/e2;->a()Landroidx/recyclerview/widget/e2;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p3, v0, v2}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2
    iget p3, v2, Landroidx/recyclerview/widget/e2;->a:I

    .line 46
    .line 47
    or-int/2addr p3, v1

    .line 48
    iput p3, v2, Landroidx/recyclerview/widget/e2;->a:I

    .line 49
    .line 50
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    check-cast p3, Landroidx/recyclerview/widget/x0;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, 0x0

    .line 61
    if-nez v2, :cond_7

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isScrap()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v4, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    .line 76
    if-ne v2, v4, :cond_6

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/e;->j(Landroid/view/View;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v2, -0x1

    .line 85
    if-ne p2, v2, :cond_4

    .line 86
    .line 87
    iget-object p2, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 88
    .line 89
    invoke-virtual {p2}, Landroidx/recyclerview/widget/e;->e()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    :cond_4
    if-eq v1, v2, :cond_5

    .line 94
    .line 95
    if-eq v1, p2, :cond_9

    .line 96
    .line 97
    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    .line 99
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    .line 100
    .line 101
    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/w0;->moveView(II)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    .line 110
    .line 111
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p2

    .line 133
    :cond_6
    iget-object v2, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 134
    .line 135
    invoke-virtual {v2, p1, p2, v3}, Landroidx/recyclerview/widget/e;->a(Landroid/view/View;IZ)V

    .line 136
    .line 137
    .line 138
    iput-boolean v1, p3, Landroidx/recyclerview/widget/x0;->c:Z

    .line 139
    .line 140
    iget-object p2, p0, Landroidx/recyclerview/widget/w0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    .line 141
    .line 142
    if-eqz p2, :cond_9

    .line 143
    .line 144
    invoke-virtual {p2}, Landroidx/recyclerview/widget/k1;->isRunning()Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-eqz p2, :cond_9

    .line 149
    .line 150
    iget-object p2, p0, Landroidx/recyclerview/widget/w0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    .line 151
    .line 152
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/k1;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isScrap()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->unScrap()V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->clearReturnedFromScrapFlag()V

    .line 167
    .line 168
    .line 169
    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, p1, p2, v2, v3}, Landroidx/recyclerview/widget/e;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 176
    .line 177
    .line 178
    :cond_9
    :goto_4
    iget-boolean p1, p3, Landroidx/recyclerview/widget/x0;->d:Z

    .line 179
    .line 180
    if-eqz p1, :cond_a

    .line 181
    .line 182
    iget-object p1, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 185
    .line 186
    .line 187
    iput-boolean v3, p3, Landroidx/recyclerview/widget/x0;->d:Z

    .line 188
    .line 189
    :cond_a
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/w0;->addDisappearingView(Landroid/view/View;I)V

    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/w0;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/w0;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/w0;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/w0;->attachView(Landroid/view/View;I)V

    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/x0;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/w0;->attachView(Landroid/view/View;ILandroidx/recyclerview/widget/x0;)V

    return-void
.end method

.method public attachView(Landroid/view/View;ILandroidx/recyclerview/widget/x0;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 3
    iget-object v1, v1, Landroidx/recyclerview/widget/g2;->a:Ln/k;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v0, v2}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/recyclerview/widget/e2;

    if-nez v2, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/e2;->a()Landroidx/recyclerview/widget/e2;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v2, Landroidx/recyclerview/widget/e2;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Landroidx/recyclerview/widget/e2;->a:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/g2;->c(Landroidx/recyclerview/widget/p1;)V

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/recyclerview/widget/e;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/e1;ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/w0;->removeViewAt(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/e1;->j(Landroidx/recyclerview/widget/p1;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/w0;->detachViewAt(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/e1;->k(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/g2;->c(Landroidx/recyclerview/widget/p1;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public abstract canScrollHorizontally()Z
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/x0;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/u0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/u0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public abstract computeHorizontalScrollExtent(Landroidx/recyclerview/widget/l1;)I
.end method

.method public abstract computeHorizontalScrollOffset(Landroidx/recyclerview/widget/l1;)I
.end method

.method public abstract computeHorizontalScrollRange(Landroidx/recyclerview/widget/l1;)I
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public detachAndScrapAttachedViews(Landroidx/recyclerview/widget/e1;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/w0;->c(Landroidx/recyclerview/widget/e1;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/e1;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e;->j(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Landroidx/recyclerview/widget/w0;->c(Landroidx/recyclerview/widget/e1;ILandroid/view/View;)V

    return-void
.end method

.method public detachAndScrapViewAt(ILandroidx/recyclerview/widget/e1;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Landroidx/recyclerview/widget/w0;->c(Landroidx/recyclerview/widget/e1;ILandroid/view/View;)V

    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e;->j(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e;->c(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e;->c(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/w0;->mIsAttachedToWindow:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/e1;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/w0;->mIsAttachedToWindow:Z

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/w0;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/e1;)V

    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/r0;->d(Landroidx/recyclerview/widget/p1;)V

    :cond_0
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ne v4, p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 34
    .line 35
    iget-boolean v4, v4, Landroidx/recyclerview/widget/l1;->g:Z

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    :cond_1
    return-object v2

    .line 46
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public abstract generateDefaultLayoutParams()Landroidx/recyclerview/widget/x0;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/x0;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/x0;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/x0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/x0;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/x0;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/x0;

    check-cast p1, Landroidx/recyclerview/widget/x0;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/x0;-><init>(Landroidx/recyclerview/widget/x0;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/recyclerview/widget/x0;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/x0;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/x0;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/x0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/x0;

    iget-object p1, p1, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e;->d(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/x0;

    iget-object v0, v0, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/x0;

    iget-object v0, v0, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/e;->k(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/w0;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/w0;->mHeightMode:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    move-result p1

    return p1
.end method

.method public getLayoutDirection()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/x0;

    iget-object p1, p1, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public getMinimumHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/k0;->d(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/k0;->e(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingEnd()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/view/l0;->e(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingStart()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/view/l0;->f(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/x0;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/x0;

    iget-object p1, p1, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getSelectionModeForAccessibility(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/x0;

    iget-object p1, p1, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/x0;

    iget-object p2, p2, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p2, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget p2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p2, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/w0;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/w0;->mWidthMode:I

    return v0
.end method

.method public hasFlexibleChildInBothOrientations()Z
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasFocus()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/16 v0, 0x80

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/g2;->d(Landroidx/recyclerview/widget/p1;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "View should be fully attached to be ignored"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/w0;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/w0;->mAutoMeasure:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/w0;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public isLayoutHierarchical(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/w0;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k1;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .locals 1

    iget-object p3, p0, Landroidx/recyclerview/widget/w0;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/d2;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/d2;->b(Landroid/view/View;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/w0;->mVerticalBoundCheck:Landroidx/recyclerview/widget/d2;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/d2;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return p1

    :cond_1
    xor-int/2addr p1, v0

    return p1
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/x0;

    iget-object v0, v0, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/x0;

    iget-object v1, v0, Landroidx/recyclerview/widget/x0;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/x0;

    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget p2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidthMode()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v3

    invoke-static {p3, v1, v4, v2, v3}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeightMode()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v3

    invoke-static {v1, v2, v4, p2, v3}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2, v0}, Landroidx/recyclerview/widget/w0;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/x0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/x0;

    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget p2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidthMode()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v3

    invoke-static {p3, v1, v4, v2, v3}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeightMode()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v3

    add-int/2addr v4, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v3

    invoke-static {v1, v2, v4, p2, v3}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2, v0}, Landroidx/recyclerview/widget/w0;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/x0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->detachViewAt(I)V

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/w0;->attachView(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/k0;Landroidx/recyclerview/widget/k0;)V
    .locals 0

    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/e1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/recyclerview/widget/w0;->onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Lh0/h;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lh0/h;->a(I)V

    invoke-virtual {p3, v2}, Lh0/h;->k(Z)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lh0/h;->a(I)V

    invoke-virtual {p3, v2}, Lh0/h;->k(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/w0;->getRowCountForAccessibility(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/w0;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/w0;->isLayoutHierarchical(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/w0;->getSelectionModeForAccessibility(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    invoke-static {v0, v1, p1, v2}, Landroidx/fragment/app/n;->d(IIIZ)Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2
    iget-object p2, p3, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lh0/h;)V
    .locals 2

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/recyclerview/widget/w0;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Lh0/h;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Lh0/h;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    iget-object v0, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/e;->k(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/w0;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroid/view/View;Lh0/h;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroid/view/View;Lh0/h;)V
    .locals 0

    .line 2
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/w0;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public abstract onLayoutChildren(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V
.end method

.method public abstract onLayoutCompleted(Landroidx/recyclerview/widget/l1;)V
.end method

.method public onMeasure(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->isSmoothScrolling()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p3, p4}, Landroidx/recyclerview/widget/w0;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onSmoothScrollerStopped(Landroidx/recyclerview/widget/k1;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/w0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/w0;->performAccessibilityAction(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;ILandroid/os/Bundle;)Z
    .locals 8

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result p4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p4

    :cond_1
    const/16 v0, 0x1000

    const/4 v1, 0x1

    if-eq p3, v0, :cond_5

    const/16 v0, 0x2000

    if-eq p3, v0, :cond_2

    move v3, p2

    move v4, v3

    goto :goto_3

    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    neg-int p1, p1

    goto :goto_0

    :cond_3
    move p1, p2

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result p3

    sub-int/2addr p4, p3

    neg-int p3, p4

    :goto_1
    move v4, p1

    move v3, p3

    goto :goto_3

    :cond_4
    move v4, p1

    move v3, p2

    goto :goto_3

    :cond_5
    iget-object p3, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_2

    :cond_6
    move p1, p2

    :goto_2
    iget-object p3, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result p3

    sub-int p3, p4, p3

    goto :goto_1

    :goto_3
    if-nez v4, :cond_7

    if-nez v3, :cond_7

    return p2

    :cond_7
    iget-object v2, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return v1
.end method

.method public performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/w0;->performAccessibilityActionForItem(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityActionForItem(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/core/view/k0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/e;->f(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, v1, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/i0;

    .line 16
    .line 17
    iget-object v4, v3, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v5, v1, Landroidx/recyclerview/widget/e;->b:Landroidx/recyclerview/widget/d;

    .line 27
    .line 28
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/d;->f(I)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/e;->l(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/i0;->b(I)V

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/e1;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/e1;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAndRecycleScrapInt(Landroidx/recyclerview/widget/e1;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-ltz v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/recyclerview/widget/p1;

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 20
    .line 21
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/p1;->setIsRecyclable(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p1;->isTmpDetached()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    iget-object v5, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v5, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 50
    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/r0;->d(Landroidx/recyclerview/widget/p1;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    const/4 v5, 0x1

    .line 57
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/p1;->setIsRecyclable(Z)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/4 v3, 0x0

    .line 65
    iput-object v3, v2, Landroidx/recyclerview/widget/p1;->mScrapContainer:Landroidx/recyclerview/widget/e1;

    .line 66
    .line 67
    iput-boolean v4, v2, Landroidx/recyclerview/widget/p1;->mInChangeScrap:Z

    .line 68
    .line 69
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p1;->clearReturnedFromScrapFlag()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/e1;->j(Landroidx/recyclerview/widget/p1;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p1, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 86
    .line 87
    .line 88
    :cond_4
    if-lez v0, :cond_5

    .line 89
    .line 90
    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 93
    .line 94
    .line 95
    :cond_5
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/e1;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->removeView(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/e1;->i(Landroid/view/View;)V

    return-void
.end method

.method public removeAndRecycleViewAt(ILandroidx/recyclerview/widget/e1;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->removeViewAt(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/e1;->i(Landroid/view/View;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/i0;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v3, v0, Landroidx/recyclerview/widget/e;->b:Landroidx/recyclerview/widget/d;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->f(I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e;->l(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/i0;->b(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e;->f(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/i0;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v3, v0, Landroidx/recyclerview/widget/e;->b:Landroidx/recyclerview/widget/d;

    .line 25
    .line 26
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/d;->f(I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/e;->l(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/i0;->b(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/w0;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v5, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v5

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p3, v3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getLayoutDirection()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    move v2, v6

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    if-eqz p5, :cond_5

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v5}, Landroidx/recyclerview/widget/w0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    if-ge p2, v3, :cond_6

    iget p2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v2

    if-le p2, p3, :cond_6

    iget p2, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    if-ge p2, v4, :cond_6

    iget p2, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    if-gt p2, p5, :cond_5

    goto :goto_3

    :cond_5
    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    return v0

    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    .line 4
    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :goto_5
    return v7
.end method

.method public requestLayout()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/w0;->mRequestedSimpleAnimations:Z

    return-void
.end method

.method public abstract scrollHorizontallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
.end method

.method public abstract scrollToPosition(I)V
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroidx/recyclerview/widget/w0;->mAutoMeasure:Z

    return-void
.end method

.method public setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/w0;->setMeasureSpecs(II)V

    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/w0;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/w0;->mItemPrefetchEnabled:Z

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/w0;->mPrefetchMaxCountObserved:I

    iget-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/e1;->n()V

    :cond_0
    return-void
.end method

.method public setMeasureSpecs(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/w0;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/w0;->mWidthMode:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_0

    iput v0, p0, Landroidx/recyclerview/widget/w0;->mWidth:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/w0;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/w0;->mHeightMode:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_1

    iput v0, p0, Landroidx/recyclerview/widget/w0;->mHeight:I

    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getMinimumWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/w0;->chooseSize(III)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/w0;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMeasuredDimensionFromChildren(II)V
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_0
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_5

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v7}, Landroidx/recyclerview/widget/w0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    move v1, v6

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v4, :cond_3

    move v4, v6

    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v2, :cond_4

    move v2, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/w0;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/w0;->mMeasurementCacheEnabled:Z

    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/w0;->mWidth:I

    :goto_0
    iput p1, p0, Landroidx/recyclerview/widget/w0;->mHeight:I

    goto :goto_1

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    iput-object v0, p0, Landroidx/recyclerview/widget/w0;->mChildHelper:Landroidx/recyclerview/widget/e;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/w0;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    :goto_1
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Landroidx/recyclerview/widget/w0;->mWidthMode:I

    iput p1, p0, Landroidx/recyclerview/widget/w0;->mHeightMode:I

    return-void
.end method

.method public shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/x0;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/w0;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/w0;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/w0;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public shouldMeasureTwice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/x0;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/w0;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/w0;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/w0;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public abstract smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;I)V
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/k1;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k1;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k1;->stop()V

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/w0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/k1;->start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/w0;)V

    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->stopIgnoring()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->resetInternal()V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    return-void
.end method

.method public stopSmoothScroller()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/w0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k1;->stop()V

    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
