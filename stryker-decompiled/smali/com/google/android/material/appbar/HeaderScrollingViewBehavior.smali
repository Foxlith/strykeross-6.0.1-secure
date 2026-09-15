.class abstract Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/ViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private overlayTop:I

.field final tempRect1:Landroid/graphics/Rect;

.field final tempRect2:Landroid/graphics/Rect;

.field private verticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return-void
.end method

.method private static resolveGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method


# virtual methods
.method public abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 3

    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    int-to-float v2, v0

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-static {p1, v1, v0}, Lv1/f;->j(III)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public final getOverlayTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    return v0
.end method

.method public getScrollRange(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public final getVerticalLayoutGap()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return v0
.end method

.method public layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 8

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/coordinatorlayout/widget/f;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    .line 32
    add-int/2addr v3, v4

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    sub-int/2addr v4, v6

    .line 42
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 43
    .line 44
    sub-int/2addr v4, v6

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    add-int/2addr v7, v6

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    sub-int/2addr v7, v6

    .line 59
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 60
    .line 61
    sub-int/2addr v7, v6

    .line 62
    invoke-virtual {v5, v2, v3, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/q2;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 72
    .line 73
    invoke-static {p1}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    invoke-static {p2}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_0

    .line 84
    .line 85
    iget p1, v5, Landroid/graphics/Rect;->left:I

    .line 86
    .line 87
    invoke-virtual {v2}, Landroidx/core/view/q2;->b()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    add-int/2addr v3, p1

    .line 92
    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 93
    .line 94
    iget p1, v5, Landroid/graphics/Rect;->right:I

    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/core/view/q2;->c()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    sub-int/2addr p1, v2

    .line 101
    iput p1, v5, Landroid/graphics/Rect;->right:I

    .line 102
    .line 103
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 104
    .line 105
    iget v1, v1, Landroidx/coordinatorlayout/widget/f;->c:I

    .line 106
    .line 107
    invoke-static {v1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->resolveGravity(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    move-object v6, p1

    .line 120
    move v7, p3

    .line 121
    invoke-static/range {v2 .. v7}, Landroidx/core/view/m;->b(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 129
    .line 130
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 131
    .line 132
    sub-int/2addr v2, p3

    .line 133
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 134
    .line 135
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 136
    .line 137
    sub-int/2addr v4, p3

    .line 138
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 139
    .line 140
    .line 141
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    sub-int/2addr p1, p2

    .line 148
    :goto_0
    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 152
    .line 153
    .line 154
    const/4 p1, 0x0

    .line 155
    goto :goto_0

    .line 156
    :goto_1
    return-void
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v2, -0x2

    .line 11
    if-ne v0, v2, :cond_5

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    .line 25
    .line 26
    move-result p5

    .line 27
    if-lez p5, :cond_1

    .line 28
    .line 29
    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 30
    .line 31
    invoke-static {v2}, Landroidx/core/view/k0;->b(Landroid/view/View;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/q2;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/core/view/q2;->d()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {v3}, Landroidx/core/view/q2;->a()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    add-int/2addr v3, v4

    .line 52
    add-int/2addr p5, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result p5

    .line 58
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    add-int/2addr p5, v3

    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->shouldHeaderOverlapScrollingChild()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    neg-int v2, v2

    .line 74
    int-to-float v2, v2

    .line 75
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 81
    .line 82
    .line 83
    sub-int/2addr p5, v2

    .line 84
    :goto_1
    if-ne v0, v1, :cond_4

    .line 85
    .line 86
    const/high16 v0, 0x40000000    # 2.0f

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const/high16 v0, -0x80000000

    .line 90
    .line 91
    :goto_2
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    move-object v1, p1

    .line 96
    move-object v2, p2

    .line 97
    move v3, p3

    .line 98
    move v4, p4

    .line 99
    move v6, p6

    .line 100
    invoke-virtual/range {v1 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x1

    .line 104
    return p1

    .line 105
    :cond_5
    const/4 p1, 0x0

    .line 106
    return p1
.end method

.method public final setOverlayTop(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    return-void
.end method

.method public shouldHeaderOverlapScrollingChild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
