.class public Lcom/zalexdev/stryker/about/FeatureCardStack;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:I

.field public final f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:Z

.field public k:Z

.field public l:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 20
    .line 21
    const/high16 p2, 0x41900000    # 18.0f

    .line 22
    .line 23
    mul-float/2addr p2, p1

    .line 24
    iput p2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->b:F

    .line 25
    .line 26
    const p2, 0x3d4ccccd    # 0.05f

    .line 27
    .line 28
    .line 29
    iput p2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->c:F

    .line 30
    .line 31
    const/high16 p2, 0x41b00000    # 22.0f

    .line 32
    .line 33
    mul-float/2addr p1, p2

    .line 34
    iput p1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->d:F

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iput p2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->e:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    mul-int/lit8 p1, p1, 0x8

    .line 55
    .line 56
    iput p1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->f:I

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    int-to-float v3, v3

    const/4 v5, 0x0

    mul-float v6, v5, v3

    iget v7, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->b:F

    mul-float/2addr v7, v3

    iget v8, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->c:F

    mul-float/2addr v8, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v8, v3, v8

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    move v3, v5

    :goto_2
    const v4, 0x7f0a01eb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    move v9, v0

    goto :goto_3

    :cond_2
    const/4 v9, 0x4

    :goto_3
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x140

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    return p2
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->k:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_8

    .line 5
    .line 6
    iget-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x2

    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_3

    .line 25
    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    if-eq v0, p1, :cond_3

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->g:F

    .line 38
    .line 39
    sub-float/2addr v0, v2

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->h:F

    .line 45
    .line 46
    sub-float/2addr p1, v2

    .line 47
    iget-boolean v2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->j:Z

    .line 48
    .line 49
    if-nez v2, :cond_7

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iget v3, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->e:I

    .line 56
    .line 57
    int-to-float v3, v3

    .line 58
    cmpl-float v2, v2, v3

    .line 59
    .line 60
    if-lez v2, :cond_7

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    cmpl-float p1, v0, p1

    .line 71
    .line 72
    if-lez p1, :cond_7

    .line 73
    .line 74
    iput-boolean v1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->j:Z

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/view/ViewGroup;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return v1

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 89
    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->g:F

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->h:F

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/zalexdev/stryker/about/FeatureCardStack;->b()Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    :goto_0
    iput v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->i:F

    .line 124
    .line 125
    iput-boolean v1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->j:Z

    .line 126
    .line 127
    iget-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 128
    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 139
    .line 140
    .line 141
    :goto_1
    iget-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_2
    iget-boolean p1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->j:Z

    .line 147
    .line 148
    return p1

    .line 149
    :cond_8
    :goto_3
    return v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/about/FeatureCardStack;->b()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_13

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->k:Z

    .line 9
    .line 10
    if-nez v2, :cond_13

    .line 11
    .line 12
    iget-object v2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x2

    .line 19
    if-ge v3, v4, :cond_0

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    iget-object v3, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v3, :cond_10

    .line 36
    .line 37
    const/high16 v6, 0x3f800000    # 1.0f

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    if-eq v3, v5, :cond_5

    .line 41
    .line 42
    if-eq v3, v4, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    if-eq v3, v0, :cond_5

    .line 46
    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget v1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->g:F

    .line 57
    .line 58
    sub-float/2addr p1, v1

    .line 59
    iget-boolean v1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->j:Z

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget v3, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->e:I

    .line 68
    .line 69
    int-to-float v3, v3

    .line 70
    cmpl-float v1, v1, v3

    .line 71
    .line 72
    if-lez v1, :cond_3

    .line 73
    .line 74
    iput-boolean v5, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->j:Z

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/view/ViewGroup;

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-boolean v1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->j:Z

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    int-to-float v1, v1

    .line 100
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    div-float/2addr v3, v1

    .line 105
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    iget v4, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->i:F

    .line 110
    .line 111
    add-float/2addr v4, p1

    .line 112
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 113
    .line 114
    .line 115
    div-float/2addr p1, v1

    .line 116
    const/high16 v1, 0x41600000    # 14.0f

    .line 117
    .line 118
    mul-float/2addr p1, v1

    .line 119
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-le p1, v5, :cond_4

    .line 127
    .line 128
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/view/View;

    .line 133
    .line 134
    iget v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->c:F

    .line 135
    .line 136
    sub-float v1, v6, v0

    .line 137
    .line 138
    mul-float/2addr v0, v3

    .line 139
    add-float/2addr v0, v1

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 141
    .line 142
    .line 143
    iget v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->c:F

    .line 144
    .line 145
    sub-float/2addr v6, v0

    .line 146
    mul-float/2addr v0, v3

    .line 147
    add-float/2addr v0, v6

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 149
    .line 150
    .line 151
    iget v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->b:F

    .line 152
    .line 153
    mul-float v1, v0, v3

    .line 154
    .line 155
    sub-float/2addr v0, v1

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 157
    .line 158
    .line 159
    mul-float/2addr v3, v7

    .line 160
    sub-float/2addr v7, v3

    .line 161
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 162
    .line 163
    .line 164
    :cond_4
    return v5

    .line 165
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iget v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->g:F

    .line 170
    .line 171
    sub-float/2addr p1, v0

    .line 172
    iget-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 173
    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    const/16 v3, 0x3e8

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    goto :goto_0

    .line 188
    :cond_6
    move v0, v7

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 190
    .line 191
    if-eqz v3, :cond_7

    .line 192
    .line 193
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 194
    .line 195
    .line 196
    const/4 v3, 0x0

    .line 197
    iput-object v3, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 198
    .line 199
    :cond_7
    iget-boolean v3, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->j:Z

    .line 200
    .line 201
    iput-boolean v1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->j:Z

    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    int-to-float v4, v4

    .line 212
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    const v9, 0x3ea3d70a    # 0.32f

    .line 217
    .line 218
    .line 219
    mul-float/2addr v4, v9

    .line 220
    cmpl-float v4, v8, v4

    .line 221
    .line 222
    if-gtz v4, :cond_9

    .line 223
    .line 224
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    iget v8, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->f:I

    .line 229
    .line 230
    int-to-float v8, v8

    .line 231
    cmpl-float v4, v4, v8

    .line 232
    .line 233
    if-lez v4, :cond_8

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_8
    move v4, v1

    .line 237
    goto :goto_2

    .line 238
    :cond_9
    :goto_1
    move v4, v5

    .line 239
    :goto_2
    if-eqz v3, :cond_d

    .line 240
    .line 241
    if-eqz v4, :cond_d

    .line 242
    .line 243
    cmpl-float v2, p1, v7

    .line 244
    .line 245
    if-nez v2, :cond_a

    .line 246
    .line 247
    move p1, v0

    .line 248
    :cond_a
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    cmpl-float p1, p1, v7

    .line 253
    .line 254
    if-ltz p1, :cond_b

    .line 255
    .line 256
    move p1, v5

    .line 257
    goto :goto_3

    .line 258
    :cond_b
    const/4 p1, -0x1

    .line 259
    :goto_3
    invoke-virtual {p0}, Lcom/zalexdev/stryker/about/FeatureCardStack;->b()Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-nez v0, :cond_c

    .line 264
    .line 265
    iput-boolean v1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->k:Z

    .line 266
    .line 267
    goto/16 :goto_4

    .line 268
    .line 269
    :cond_c
    iput-boolean v5, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->k:Z

    .line 270
    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 284
    .line 285
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    int-to-float v1, v1

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    int-to-float p1, p1

    .line 295
    mul-float/2addr v1, p1

    .line 296
    const v3, 0x3fa66666    # 1.3f

    .line 297
    .line 298
    .line 299
    mul-float/2addr v1, v3

    .line 300
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    iget v2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->b:F

    .line 309
    .line 310
    add-float/2addr v0, v2

    .line 311
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const/high16 v1, 0x41b00000    # 22.0f

    .line 316
    .line 317
    mul-float/2addr p1, v1

    .line 318
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    const-wide/16 v0, 0x12c

    .line 327
    .line 328
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 333
    .line 334
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    new-instance v0, Landroidx/activity/b;

    .line 342
    .line 343
    const/16 v1, 0xa

    .line 344
    .line 345
    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 353
    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_d
    if-eqz v3, :cond_f

    .line 357
    .line 358
    invoke-virtual {p0}, Lcom/zalexdev/stryker/about/FeatureCardStack;->b()Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    const-wide/16 v0, 0x118

    .line 363
    .line 364
    if-eqz p1, :cond_e

    .line 365
    .line 366
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    .line 383
    .line 384
    const v4, 0x3fcccccd    # 1.6f

    .line 385
    .line 386
    .line 387
    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 395
    .line 396
    .line 397
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-le p1, v5, :cond_f

    .line 402
    .line 403
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    check-cast p1, Landroid/view/View;

    .line 408
    .line 409
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    iget v2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->c:F

    .line 414
    .line 415
    sub-float v2, v6, v2

    .line 416
    .line 417
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    iget v2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->c:F

    .line 422
    .line 423
    sub-float/2addr v6, v2

    .line 424
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    iget v2, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->b:F

    .line 433
    .line 434
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 443
    .line 444
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 452
    .line 453
    .line 454
    :cond_f
    :goto_4
    return v5

    .line 455
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    iput v1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->g:F

    .line 460
    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    iput v1, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->h:F

    .line 466
    .line 467
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    iput v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->i:F

    .line 472
    .line 473
    iget-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 474
    .line 475
    if-nez v0, :cond_11

    .line 476
    .line 477
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    iput-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 482
    .line 483
    goto :goto_5

    .line 484
    :cond_11
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 485
    .line 486
    .line 487
    :goto_5
    iget-object v0, p0, Lcom/zalexdev/stryker/about/FeatureCardStack;->l:Landroid/view/VelocityTracker;

    .line 488
    .line 489
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    check-cast p1, Landroid/view/ViewGroup;

    .line 497
    .line 498
    if-eqz p1, :cond_12

    .line 499
    .line 500
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 501
    .line 502
    .line 503
    :cond_12
    return v5

    .line 504
    :cond_13
    :goto_6
    return v1
.end method
