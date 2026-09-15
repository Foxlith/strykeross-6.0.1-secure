.class public abstract Landroidx/recyclerview/widget/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLayoutManager:Landroidx/recyclerview/widget/w0;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclingAction:Landroidx/recyclerview/widget/i1;

.field private mRunning:Z

.field private mStarted:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/k1;->mTargetPosition:I

    .line 6
    .line 7
    new-instance v1, Landroidx/recyclerview/widget/i1;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput v0, v1, Landroidx/recyclerview/widget/i1;->d:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, v1, Landroidx/recyclerview/widget/i1;->f:Z

    .line 16
    .line 17
    iput v0, v1, Landroidx/recyclerview/widget/i1;->g:I

    .line 18
    .line 19
    iput v0, v1, Landroidx/recyclerview/widget/i1;->a:I

    .line 20
    .line 21
    iput v0, v1, Landroidx/recyclerview/widget/i1;->b:I

    .line 22
    .line 23
    const/high16 v0, -0x80000000

    .line 24
    .line 25
    iput v0, v1, Landroidx/recyclerview/widget/i1;->c:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, v1, Landroidx/recyclerview/widget/i1;->e:Landroid/view/animation/Interpolator;

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/recyclerview/widget/k1;->mRecyclingAction:Landroidx/recyclerview/widget/i1;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k1;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/j1;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/j1;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/j1;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Landroidx/recyclerview/widget/j1;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/w0;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/w0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k1;->mLayoutManager:Landroidx/recyclerview/widget/w0;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/k1;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/k1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k1;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k1;->mRunning:Z

    return v0
.end method

.method public normalize(Landroid/graphics/PointF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public onAnimation(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/k1;->mTargetPosition:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k1;->stop()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/k1;->mPendingInitialRun:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/recyclerview/widget/k1;->mTargetView:Landroid/view/View;

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/k1;->mLayoutManager:Landroidx/recyclerview/widget/w0;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iget v1, p0, Landroidx/recyclerview/widget/k1;->mTargetPosition:I

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/k1;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    cmpl-float v5, v3, v4

    .line 38
    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    iget v5, v1, Landroid/graphics/PointF;->y:F

    .line 42
    .line 43
    cmpl-float v4, v5, v4

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    float-to-int v3, v3

    .line 52
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    float-to-int v1, v1

    .line 59
    invoke-virtual {v0, v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Landroidx/recyclerview/widget/k1;->mPendingInitialRun:Z

    .line 64
    .line 65
    iget-object v3, p0, Landroidx/recyclerview/widget/k1;->mTargetView:Landroid/view/View;

    .line 66
    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/k1;->getChildPosition(Landroid/view/View;)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    iget v4, p0, Landroidx/recyclerview/widget/k1;->mTargetPosition:I

    .line 74
    .line 75
    if-ne v3, v4, :cond_4

    .line 76
    .line 77
    iget-object v2, p0, Landroidx/recyclerview/widget/k1;->mTargetView:Landroid/view/View;

    .line 78
    .line 79
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 80
    .line 81
    iget-object v4, p0, Landroidx/recyclerview/widget/k1;->mRecyclingAction:Landroidx/recyclerview/widget/i1;

    .line 82
    .line 83
    invoke-virtual {p0, v2, v3, v4}, Landroidx/recyclerview/widget/k1;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/i1;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Landroidx/recyclerview/widget/k1;->mRecyclingAction:Landroidx/recyclerview/widget/i1;

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/i1;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k1;->stop()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    const-string v3, "RecyclerView"

    .line 96
    .line 97
    const-string v4, "Passed over target position while smooth scrolling."

    .line 98
    .line 99
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iput-object v2, p0, Landroidx/recyclerview/widget/k1;->mTargetView:Landroid/view/View;

    .line 103
    .line 104
    :cond_5
    :goto_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/k1;->mRunning:Z

    .line 105
    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 109
    .line 110
    iget-object v3, p0, Landroidx/recyclerview/widget/k1;->mRecyclingAction:Landroidx/recyclerview/widget/i1;

    .line 111
    .line 112
    invoke-virtual {p0, p1, p2, v2, v3}, Landroidx/recyclerview/widget/k1;->onSeekTargetStep(IILandroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/i1;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Landroidx/recyclerview/widget/k1;->mRecyclingAction:Landroidx/recyclerview/widget/i1;

    .line 116
    .line 117
    iget p2, p1, Landroidx/recyclerview/widget/i1;->d:I

    .line 118
    .line 119
    const/4 v2, 0x1

    .line 120
    if-ltz p2, :cond_6

    .line 121
    .line 122
    move v1, v2

    .line 123
    :cond_6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/i1;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 124
    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    iget-boolean p1, p0, Landroidx/recyclerview/widget/k1;->mRunning:Z

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    iput-boolean v2, p0, Landroidx/recyclerview/widget/k1;->mPendingInitialRun:Z

    .line 133
    .line 134
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/o1;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroidx/recyclerview/widget/o1;->b()V

    .line 137
    .line 138
    .line 139
    :cond_7
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k1;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k1;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroidx/recyclerview/widget/k1;->mTargetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public abstract onSeekTargetStep(IILandroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/i1;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/i1;)V
.end method

.method public setTargetPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/k1;->mTargetPosition:I

    return-void
.end method

.method public start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/w0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/o1;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/o1;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/recyclerview/widget/k1;->mStarted:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "An instance of "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " was started more than once. Each instance of"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "RecyclerView"

    .line 61
    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/k1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    iput-object p2, p0, Landroidx/recyclerview/widget/k1;->mLayoutManager:Landroidx/recyclerview/widget/w0;

    .line 68
    .line 69
    iget p2, p0, Landroidx/recyclerview/widget/k1;->mTargetPosition:I

    .line 70
    .line 71
    const/4 v0, -0x1

    .line 72
    if-eq p2, v0, :cond_1

    .line 73
    .line 74
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 75
    .line 76
    iput p2, p1, Landroidx/recyclerview/widget/l1;->a:I

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Landroidx/recyclerview/widget/k1;->mRunning:Z

    .line 80
    .line 81
    iput-boolean p1, p0, Landroidx/recyclerview/widget/k1;->mPendingInitialRun:Z

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k1;->getTargetPosition()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/k1;->findViewByPosition(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iput-object p2, p0, Landroidx/recyclerview/widget/k1;->mTargetView:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k1;->onStart()V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Landroidx/recyclerview/widget/k1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .line 98
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/o1;

    .line 99
    .line 100
    invoke-virtual {p2}, Landroidx/recyclerview/widget/o1;->b()V

    .line 101
    .line 102
    .line 103
    iput-boolean p1, p0, Landroidx/recyclerview/widget/k1;->mStarted:Z

    .line 104
    .line 105
    return-void

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string p2, "Invalid target position"

    .line 109
    .line 110
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1
.end method

.method public final stop()V
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k1;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/k1;->mRunning:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k1;->onStop()V

    iget-object v1, p0, Landroidx/recyclerview/widget/k1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/l1;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/k1;->mTargetView:Landroid/view/View;

    iput v2, p0, Landroidx/recyclerview/widget/k1;->mTargetPosition:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/k1;->mPendingInitialRun:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/k1;->mLayoutManager:Landroidx/recyclerview/widget/w0;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/w0;->onSmoothScrollerStopped(Landroidx/recyclerview/widget/k1;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/k1;->mLayoutManager:Landroidx/recyclerview/widget/w0;

    iput-object v1, p0, Landroidx/recyclerview/widget/k1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
