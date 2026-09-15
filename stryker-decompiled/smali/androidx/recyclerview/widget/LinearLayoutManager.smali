.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/w0;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/j1;


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Landroidx/recyclerview/widget/x;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroidx/recyclerview/widget/y;

.field private mLayoutState:Landroidx/recyclerview/widget/z;

.field mOrientation:I

.field mOrientationHelper:Landroidx/recyclerview/widget/e0;

.field mPendingSavedState:Landroidx/recyclerview/widget/a0;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReusableIntPair:[I

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/w0;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    new-instance v0, Landroidx/recyclerview/widget/x;

    invoke-direct {v0}, Landroidx/recyclerview/widget/x;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    new-instance v0, Landroidx/recyclerview/widget/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/y;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/w0;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    new-instance v0, Landroidx/recyclerview/widget/x;

    invoke-direct {v0}, Landroidx/recyclerview/widget/x;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    new-instance v0, Landroidx/recyclerview/widget/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/y;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/w0;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/v0;

    move-result-object p1

    iget p2, p1, Landroidx/recyclerview/widget/v0;->a:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-boolean p2, p1, Landroidx/recyclerview/widget/v0;->c:Z

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    iget-boolean p1, p1, Landroidx/recyclerview/widget/v0;->d:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/w0;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public calculateExtraLayoutSpace(Landroidx/recyclerview/widget/l1;[I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    iget v0, v0, Landroidx/recyclerview/widget/z;->f:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, p1

    move p1, v2

    :goto_0
    aput p1, p2, v2

    const/4 p1, 0x1

    aput v0, p2, p1

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/u0;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->o(IIZLandroidx/recyclerview/widget/l1;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/u0;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/u0;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v3, v0, Landroidx/recyclerview/widget/a0;->a:I

    .line 8
    .line 9
    if-ltz v3, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/recyclerview/widget/a0;->c:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n()V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 18
    .line 19
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 20
    .line 21
    if-ne v3, v1, :cond_2

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    add-int/lit8 v3, p1, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v3, v2

    .line 29
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/4 v1, 0x1

    .line 33
    :goto_1
    move v0, v2

    .line 34
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 35
    .line 36
    if-ge v0, v4, :cond_4

    .line 37
    .line 38
    if-ltz v3, :cond_4

    .line 39
    .line 40
    if-ge v3, p1, :cond_4

    .line 41
    .line 42
    move-object v4, p2

    .line 43
    check-cast v4, Landroidx/recyclerview/widget/s;

    .line 44
    .line 45
    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/s;->a(II)V

    .line 46
    .line 47
    .line 48
    add-int/2addr v3, v1

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    return-void
.end method

.method public collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/u0;)V
    .locals 1

    iget v0, p2, Landroidx/recyclerview/widget/z;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/l1;->b()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Landroidx/recyclerview/widget/z;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    check-cast p3, Landroidx/recyclerview/widget/s;

    invoke-virtual {p3, v0, p1}, Landroidx/recyclerview/widget/s;->a(II)V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/l1;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/l1;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/l1;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/l1;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/l1;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/l1;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public createLayoutState()Landroidx/recyclerview/widget/z;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/z;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroidx/recyclerview/widget/z;->a:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroidx/recyclerview/widget/z;->h:I

    .line 11
    .line 12
    iput v1, v0, Landroidx/recyclerview/widget/z;->i:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Landroidx/recyclerview/widget/z;->k:Ljava/util/List;

    .line 16
    .line 17
    return-object v0
.end method

.method public final d(Landroidx/recyclerview/widget/l1;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/k;->c(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/e0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/w0;Z)I

    move-result p1

    return p1
.end method

.method public final e(Landroidx/recyclerview/widget/l1;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroidx/lifecycle/k;->d(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/e0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/w0;ZZ)I

    move-result p1

    return p1
.end method

.method public ensureLayoutState()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->createLayoutState()Landroidx/recyclerview/widget/z;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    :cond_0
    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/l1;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/k;->e(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/e0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/w0;Z)I

    move-result p1

    return p1
.end method

.method public fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I
    .locals 7

    .line 1
    iget v0, p2, Landroidx/recyclerview/widget/z;->c:I

    .line 2
    .line 3
    iget v1, p2, Landroidx/recyclerview/widget/z;->g:I

    .line 4
    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    iput v1, p2, Landroidx/recyclerview/widget/z;->g:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->l(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v1, p2, Landroidx/recyclerview/widget/z;->c:I

    .line 18
    .line 19
    iget v3, p2, Landroidx/recyclerview/widget/z;->h:I

    .line 20
    .line 21
    add-int/2addr v1, v3

    .line 22
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/y;

    .line 23
    .line 24
    :cond_2
    iget-boolean v4, p2, Landroidx/recyclerview/widget/z;->l:Z

    .line 25
    .line 26
    if-nez v4, :cond_3

    .line 27
    .line 28
    if-lez v1, :cond_9

    .line 29
    .line 30
    :cond_3
    iget v4, p2, Landroidx/recyclerview/widget/z;->d:I

    .line 31
    .line 32
    if-ltz v4, :cond_9

    .line 33
    .line 34
    invoke-virtual {p3}, Landroidx/recyclerview/widget/l1;->b()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-ge v4, v5, :cond_9

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    iput v4, v3, Landroidx/recyclerview/widget/y;->a:I

    .line 42
    .line 43
    iput-boolean v4, v3, Landroidx/recyclerview/widget/y;->b:Z

    .line 44
    .line 45
    iput-boolean v4, v3, Landroidx/recyclerview/widget/y;->c:Z

    .line 46
    .line 47
    iput-boolean v4, v3, Landroidx/recyclerview/widget/y;->d:Z

    .line 48
    .line 49
    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutChunk(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/y;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v4, v3, Landroidx/recyclerview/widget/y;->b:Z

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    iget v4, p2, Landroidx/recyclerview/widget/z;->b:I

    .line 58
    .line 59
    iget v5, v3, Landroidx/recyclerview/widget/y;->a:I

    .line 60
    .line 61
    iget v6, p2, Landroidx/recyclerview/widget/z;->f:I

    .line 62
    .line 63
    mul-int/2addr v6, v5

    .line 64
    add-int/2addr v6, v4

    .line 65
    iput v6, p2, Landroidx/recyclerview/widget/z;->b:I

    .line 66
    .line 67
    iget-boolean v4, v3, Landroidx/recyclerview/widget/y;->c:Z

    .line 68
    .line 69
    if-eqz v4, :cond_5

    .line 70
    .line 71
    iget-object v4, p2, Landroidx/recyclerview/widget/z;->k:Ljava/util/List;

    .line 72
    .line 73
    if-nez v4, :cond_5

    .line 74
    .line 75
    iget-boolean v4, p3, Landroidx/recyclerview/widget/l1;->g:Z

    .line 76
    .line 77
    if-nez v4, :cond_6

    .line 78
    .line 79
    :cond_5
    iget v4, p2, Landroidx/recyclerview/widget/z;->c:I

    .line 80
    .line 81
    sub-int/2addr v4, v5

    .line 82
    iput v4, p2, Landroidx/recyclerview/widget/z;->c:I

    .line 83
    .line 84
    sub-int/2addr v1, v5

    .line 85
    :cond_6
    iget v4, p2, Landroidx/recyclerview/widget/z;->g:I

    .line 86
    .line 87
    if-eq v4, v2, :cond_8

    .line 88
    .line 89
    add-int/2addr v4, v5

    .line 90
    iput v4, p2, Landroidx/recyclerview/widget/z;->g:I

    .line 91
    .line 92
    iget v5, p2, Landroidx/recyclerview/widget/z;->c:I

    .line 93
    .line 94
    if-gez v5, :cond_7

    .line 95
    .line 96
    add-int/2addr v4, v5

    .line 97
    iput v4, p2, Landroidx/recyclerview/widget/z;->g:I

    .line 98
    .line 99
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->l(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;)V

    .line 100
    .line 101
    .line 102
    :cond_8
    if-eqz p4, :cond_2

    .line 103
    .line 104
    iget-boolean v4, v3, Landroidx/recyclerview/widget/y;->d:Z

    .line 105
    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    :cond_9
    :goto_0
    iget p1, p2, Landroidx/recyclerview/widget/z;->c:I

    .line 109
    .line 110
    sub-int/2addr v0, p1

    .line 111
    return v0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v1

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_0
    return v3
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_0
    return v3
.end method

.method public findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_3

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_1
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/w0;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/d2;

    :goto_2
    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/recyclerview/widget/d2;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/w0;->mVerticalBoundCheck:Landroidx/recyclerview/widget/d2;

    goto :goto_2

    :goto_3
    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez p4, :cond_2

    iget-object p4, p0, Landroidx/recyclerview/widget/w0;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/d2;

    :goto_2
    invoke-virtual {p4, p1, p2, p3, v0}, Landroidx/recyclerview/widget/d2;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_2
    iget-object p4, p0, Landroidx/recyclerview/widget/w0;->mVerticalBoundCheck:Landroidx/recyclerview/widget/d2;

    goto :goto_2

    :goto_3
    return-object p1
.end method

.method public findReferenceChild(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;ZZ)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v1, v3

    .line 19
    const/4 v4, -0x1

    .line 20
    move v5, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v4, v1

    .line 23
    move v1, v2

    .line 24
    move v5, v3

    .line 25
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 30
    .line 31
    invoke-virtual {v7}, Landroidx/recyclerview/widget/e0;->h()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 36
    .line 37
    invoke-virtual {v8}, Landroidx/recyclerview/widget/e0;->f()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/4 v9, 0x0

    .line 42
    move-object v10, v9

    .line 43
    move-object v11, v10

    .line 44
    :goto_1
    if-eq v1, v4, :cond_a

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    iget-object v14, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 55
    .line 56
    invoke-virtual {v14, v12}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    iget-object v15, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 61
    .line 62
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    if-ltz v13, :cond_9

    .line 67
    .line 68
    if-ge v13, v6, :cond_9

    .line 69
    .line 70
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    check-cast v13, Landroidx/recyclerview/widget/x0;

    .line 75
    .line 76
    iget-object v13, v13, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 77
    .line 78
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    if-eqz v13, :cond_1

    .line 83
    .line 84
    if-nez v11, :cond_9

    .line 85
    .line 86
    move-object v11, v12

    .line 87
    goto :goto_7

    .line 88
    :cond_1
    if-gt v15, v7, :cond_2

    .line 89
    .line 90
    if-ge v14, v7, :cond_2

    .line 91
    .line 92
    move v13, v3

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move v13, v2

    .line 95
    :goto_2
    if-lt v14, v8, :cond_3

    .line 96
    .line 97
    if-le v15, v8, :cond_3

    .line 98
    .line 99
    move v14, v3

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    move v14, v2

    .line 102
    :goto_3
    if-nez v13, :cond_5

    .line 103
    .line 104
    if-eqz v14, :cond_4

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_4
    return-object v12

    .line 108
    :cond_5
    :goto_4
    if-eqz p3, :cond_7

    .line 109
    .line 110
    if-eqz v14, :cond_6

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_6
    if-nez v9, :cond_9

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_7
    if-eqz v13, :cond_8

    .line 117
    .line 118
    :goto_5
    move-object v10, v12

    .line 119
    goto :goto_7

    .line 120
    :cond_8
    if-nez v9, :cond_9

    .line 121
    .line 122
    :goto_6
    move-object v9, v12

    .line 123
    :cond_9
    :goto_7
    add-int/2addr v1, v5

    .line 124
    goto :goto_1

    .line 125
    :cond_a
    if-eqz v9, :cond_b

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_b
    if-eqz v10, :cond_c

    .line 129
    .line 130
    move-object v9, v10

    .line 131
    goto :goto_8

    .line 132
    :cond_c
    move-object v9, v11

    .line 133
    :goto_8
    return-object v9
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/w0;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final g(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/e0;->f()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/e0;->m(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/x0;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    new-instance v0, Landroidx/recyclerview/widget/x0;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/x0;-><init>(II)V

    return-object v0
.end method

.method public getExtraLayoutSpace(Landroidx/recyclerview/widget/l1;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget p1, p1, Landroidx/recyclerview/widget/l1;->a:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->i()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method public final h(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/e0;->h()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/e0;->m(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final i()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRTL()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public final j()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;)V
    .locals 5

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/z;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-boolean v0, p2, Landroidx/recyclerview/widget/z;->l:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_9

    .line 10
    .line 11
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/z;->g:I

    .line 12
    .line 13
    iget v1, p2, Landroidx/recyclerview/widget/z;->i:I

    .line 14
    .line 15
    iget p2, p2, Landroidx/recyclerview/widget/z;->f:I

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-ne p2, v2, :cond_7

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_9

    .line 28
    .line 29
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 30
    .line 31
    check-cast v2, Landroidx/recyclerview/widget/d0;

    .line 32
    .line 33
    iget v4, v2, Landroidx/recyclerview/widget/d0;->d:I

    .line 34
    .line 35
    iget-object v2, v2, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 36
    .line 37
    packed-switch v4, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/w0;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_0

    .line 45
    :pswitch_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/w0;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_0
    sub-int/2addr v2, v0

    .line 50
    add-int/2addr v2, v1

    .line 51
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    move v0, v3

    .line 56
    :goto_1
    if-ge v0, p2, :cond_e

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-lt v4, v2, :cond_3

    .line 69
    .line 70
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 71
    .line 72
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/e0;->l(Landroid/view/View;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-ge v1, v2, :cond_2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->m(Landroidx/recyclerview/widget/e1;II)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_9

    .line 86
    .line 87
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 88
    .line 89
    move v0, p2

    .line 90
    :goto_3
    if-ltz v0, :cond_e

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 97
    .line 98
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-lt v3, v2, :cond_6

    .line 103
    .line 104
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 105
    .line 106
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/e0;->l(Landroid/view/View;)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-ge v1, v2, :cond_5

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    :goto_4
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->m(Landroidx/recyclerview/widget/e1;II)V

    .line 117
    .line 118
    .line 119
    goto :goto_9

    .line 120
    :cond_7
    if-gez v0, :cond_8

    .line 121
    .line 122
    goto :goto_9

    .line 123
    :cond_8
    sub-int/2addr v0, v1

    .line 124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 129
    .line 130
    if-eqz v1, :cond_b

    .line 131
    .line 132
    add-int/lit8 p2, p2, -0x1

    .line 133
    .line 134
    move v1, p2

    .line 135
    :goto_5
    if-ltz v1, :cond_e

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 142
    .line 143
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-gt v3, v0, :cond_a

    .line 148
    .line 149
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 150
    .line 151
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/e0;->k(Landroid/view/View;)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-le v2, v0, :cond_9

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_a
    :goto_6
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->m(Landroidx/recyclerview/widget/e1;II)V

    .line 162
    .line 163
    .line 164
    goto :goto_9

    .line 165
    :cond_b
    move v1, v3

    .line 166
    :goto_7
    if-ge v1, p2, :cond_e

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 173
    .line 174
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-gt v4, v0, :cond_d

    .line 179
    .line 180
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 181
    .line 182
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/e0;->k(Landroid/view/View;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-le v2, v0, :cond_c

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_d
    :goto_8
    invoke-virtual {p0, p1, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->m(Landroidx/recyclerview/widget/e1;II)V

    .line 193
    .line 194
    .line 195
    :cond_e
    :goto_9
    return-void

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public layoutChunk(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/y;)V
    .locals 7

    .line 1
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/e1;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput-boolean p2, p4, Landroidx/recyclerview/widget/y;->b:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v6, v0

    .line 16
    check-cast v6, Landroidx/recyclerview/widget/x0;

    .line 17
    .line 18
    iget-object v0, p3, Landroidx/recyclerview/widget/z;->k:Ljava/util/List;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 25
    .line 26
    iget v3, p3, Landroidx/recyclerview/widget/z;->f:I

    .line 27
    .line 28
    if-ne v3, v1, :cond_1

    .line 29
    .line 30
    move v3, p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v3, v2

    .line 33
    :goto_0
    if-ne v0, v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->addView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/w0;->addView(Landroid/view/View;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 44
    .line 45
    iget v3, p3, Landroidx/recyclerview/widget/z;->f:I

    .line 46
    .line 47
    if-ne v3, v1, :cond_4

    .line 48
    .line 49
    move v3, p2

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move v3, v2

    .line 52
    :goto_1
    if-ne v0, v3, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->addDisappearingView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_5
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/w0;->addDisappearingView(Landroid/view/View;I)V

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Landroidx/recyclerview/widget/w0;->measureChildWithMargins(Landroid/view/View;II)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p4, Landroidx/recyclerview/widget/y;->a:I

    .line 71
    .line 72
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 73
    .line 74
    if-ne v0, p2, :cond_8

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    sub-int/2addr v0, v2

    .line 91
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/e0;->d(Landroid/view/View;)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    sub-int v2, v0, v2

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e0;->d(Landroid/view/View;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    add-int/2addr v0, v2

    .line 111
    :goto_3
    iget v3, p3, Landroidx/recyclerview/widget/z;->f:I

    .line 112
    .line 113
    iget p3, p3, Landroidx/recyclerview/widget/z;->b:I

    .line 114
    .line 115
    if-ne v3, v1, :cond_7

    .line 116
    .line 117
    iget v1, p4, Landroidx/recyclerview/widget/y;->a:I

    .line 118
    .line 119
    sub-int v1, p3, v1

    .line 120
    .line 121
    move v5, p3

    .line 122
    move v4, v0

    .line 123
    move v3, v1

    .line 124
    goto :goto_4

    .line 125
    :cond_7
    iget v1, p4, Landroidx/recyclerview/widget/y;->a:I

    .line 126
    .line 127
    add-int/2addr v1, p3

    .line 128
    move v3, p3

    .line 129
    move v4, v0

    .line 130
    move v5, v1

    .line 131
    goto :goto_4

    .line 132
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 137
    .line 138
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/e0;->d(Landroid/view/View;)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    add-int/2addr v2, v0

    .line 143
    iget v3, p3, Landroidx/recyclerview/widget/z;->f:I

    .line 144
    .line 145
    iget p3, p3, Landroidx/recyclerview/widget/z;->b:I

    .line 146
    .line 147
    if-ne v3, v1, :cond_9

    .line 148
    .line 149
    iget v1, p4, Landroidx/recyclerview/widget/y;->a:I

    .line 150
    .line 151
    sub-int v1, p3, v1

    .line 152
    .line 153
    move v4, p3

    .line 154
    move v3, v0

    .line 155
    move v5, v2

    .line 156
    move v2, v1

    .line 157
    goto :goto_4

    .line 158
    :cond_9
    iget v1, p4, Landroidx/recyclerview/widget/y;->a:I

    .line 159
    .line 160
    add-int/2addr v1, p3

    .line 161
    move v3, v0

    .line 162
    move v4, v1

    .line 163
    move v5, v2

    .line 164
    move v2, p3

    .line 165
    :goto_4
    move-object v0, p0

    .line 166
    move-object v1, p1

    .line 167
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/w0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 168
    .line 169
    .line 170
    iget-object p3, v6, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 171
    .line 172
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    if-nez p3, :cond_a

    .line 177
    .line 178
    iget-object p3, v6, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 179
    .line 180
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    if-eqz p3, :cond_b

    .line 185
    .line 186
    :cond_a
    iput-boolean p2, p4, Landroidx/recyclerview/widget/y;->c:Z

    .line 187
    .line 188
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iput-boolean p1, p4, Landroidx/recyclerview/widget/y;->d:Z

    .line 193
    .line 194
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/e1;II)V
    .locals 0

    .line 1
    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/e1;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/e1;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_2

    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    goto :goto_0

    :goto_2
    return-void
.end method

.method public final o(IIZLandroidx/recyclerview/widget/l1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iput-boolean v1, v0, Landroidx/recyclerview/widget/z;->l:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 10
    .line 11
    iput p1, v0, Landroidx/recyclerview/widget/z;->f:I

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aput v1, v0, v1

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    aput v1, v0, v2

    .line 20
    .line 21
    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/l1;[I)V

    .line 22
    .line 23
    .line 24
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 25
    .line 26
    aget p4, p4, v1

    .line 27
    .line 28
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 33
    .line 34
    aget v0, v0, v2

    .line 35
    .line 36
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne p1, v2, :cond_0

    .line 41
    .line 42
    move v1, v2

    .line 43
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    move v3, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v3, p4

    .line 50
    :goto_0
    iput v3, p1, Landroidx/recyclerview/widget/z;->h:I

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move p4, v0

    .line 56
    :goto_1
    iput p4, p1, Landroidx/recyclerview/widget/z;->i:I

    .line 57
    .line 58
    const/4 p4, -0x1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 62
    .line 63
    check-cast v0, Landroidx/recyclerview/widget/d0;

    .line 64
    .line 65
    iget v1, v0, Landroidx/recyclerview/widget/d0;->d:I

    .line 66
    .line 67
    iget-object v0, v0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 68
    .line 69
    packed-switch v1, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto :goto_2

    .line 77
    :pswitch_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_2
    add-int/2addr v0, v3

    .line 82
    iput v0, p1, Landroidx/recyclerview/widget/z;->h:I

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 89
    .line 90
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    move v2, p4

    .line 95
    :cond_3
    iput v2, v0, Landroidx/recyclerview/widget/z;->e:I

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 98
    .line 99
    .line 100
    move-result p4

    .line 101
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 102
    .line 103
    iget v2, v1, Landroidx/recyclerview/widget/z;->e:I

    .line 104
    .line 105
    add-int/2addr p4, v2

    .line 106
    iput p4, v0, Landroidx/recyclerview/widget/z;->d:I

    .line 107
    .line 108
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 109
    .line 110
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 111
    .line 112
    .line 113
    move-result p4

    .line 114
    iput p4, v1, Landroidx/recyclerview/widget/z;->b:I

    .line 115
    .line 116
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 117
    .line 118
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 123
    .line 124
    invoke-virtual {p4}, Landroidx/recyclerview/widget/e0;->f()I

    .line 125
    .line 126
    .line 127
    move-result p4

    .line 128
    sub-int/2addr p1, p4

    .line 129
    goto :goto_4

    .line 130
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 135
    .line 136
    iget v1, v0, Landroidx/recyclerview/widget/z;->h:I

    .line 137
    .line 138
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 139
    .line 140
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->h()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    add-int/2addr v3, v1

    .line 145
    iput v3, v0, Landroidx/recyclerview/widget/z;->h:I

    .line 146
    .line 147
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 148
    .line 149
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 150
    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    move v2, p4

    .line 155
    :goto_3
    iput v2, v0, Landroidx/recyclerview/widget/z;->e:I

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 158
    .line 159
    .line 160
    move-result p4

    .line 161
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 162
    .line 163
    iget v2, v1, Landroidx/recyclerview/widget/z;->e:I

    .line 164
    .line 165
    add-int/2addr p4, v2

    .line 166
    iput p4, v0, Landroidx/recyclerview/widget/z;->d:I

    .line 167
    .line 168
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 169
    .line 170
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 171
    .line 172
    .line 173
    move-result p4

    .line 174
    iput p4, v1, Landroidx/recyclerview/widget/z;->b:I

    .line 175
    .line 176
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 177
    .line 178
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    neg-int p1, p1

    .line 183
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 184
    .line 185
    invoke-virtual {p4}, Landroidx/recyclerview/widget/e0;->h()I

    .line 186
    .line 187
    .line 188
    move-result p4

    .line 189
    add-int/2addr p1, p4

    .line 190
    :goto_4
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 191
    .line 192
    iput p2, p4, Landroidx/recyclerview/widget/z;->c:I

    .line 193
    .line 194
    if-eqz p3, :cond_6

    .line 195
    .line 196
    sub-int/2addr p2, p1

    .line 197
    iput p2, p4, Landroidx/recyclerview/widget/z;->c:I

    .line 198
    .line 199
    :cond_6
    iput p1, p4, Landroidx/recyclerview/widget/z;->g:I

    .line 200
    .line 201
    return-void

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnchorReady(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/x;I)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/e1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/w0;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/e1;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/w0;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/e1;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p2, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/recyclerview/widget/e1;->g()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/high16 p2, -0x80000000

    .line 17
    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->i()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    const v2, 0x3eaaaaab

    .line 32
    .line 33
    .line 34
    mul-float/2addr v1, v2

    .line 35
    float-to-int v1, v1

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->o(IIZLandroidx/recyclerview/widget/l1;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 41
    .line 42
    iput p2, v1, Landroidx/recyclerview/widget/z;->g:I

    .line 43
    .line 44
    iput-boolean v2, v1, Landroidx/recyclerview/widget/z;->a:Z

    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-virtual {p0, p3, v1, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I

    .line 48
    .line 49
    .line 50
    const/4 p3, -0x1

    .line 51
    if-ne p1, p3, :cond_3

    .line 52
    .line 53
    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 54
    .line 55
    if-eqz p4, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 58
    .line 59
    .line 60
    move-result p4

    .line 61
    sub-int/2addr p4, p2

    .line 62
    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 77
    .line 78
    if-eqz p4, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    sub-int/2addr p4, p2

    .line 94
    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    :goto_0
    if-ne p1, p3, :cond_5

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-eqz p3, :cond_7

    .line 114
    .line 115
    if-nez p2, :cond_6

    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_6
    return-object p1

    .line 119
    :cond_7
    return-object p2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/w0;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/e1;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget v0, v0, Landroidx/recyclerview/widget/a0;->a:I

    .line 25
    .line 26
    if-ltz v0, :cond_2

    .line 27
    .line 28
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iput-boolean v2, v0, Landroidx/recyclerview/widget/z;->a:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getFocusedChild()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    .line 46
    .line 47
    iget-boolean v4, v3, Landroidx/recyclerview/widget/x;->e:Z

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    const/high16 v6, -0x80000000

    .line 51
    .line 52
    if-eqz v4, :cond_5

    .line 53
    .line 54
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 55
    .line 56
    if-ne v4, v1, :cond_5

    .line 57
    .line 58
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    if-eqz v0, :cond_20

    .line 64
    .line 65
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/recyclerview/widget/e0;->f()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ge v3, v4, :cond_4

    .line 78
    .line 79
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 86
    .line 87
    invoke-virtual {v4}, Landroidx/recyclerview/widget/e0;->h()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-gt v3, v4, :cond_20

    .line 92
    .line 93
    :cond_4
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v3, v4, v0}, Landroidx/recyclerview/widget/x;->c(ILandroid/view/View;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_f

    .line 103
    .line 104
    :cond_5
    :goto_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->d()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    .line 108
    .line 109
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 110
    .line 111
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 112
    .line 113
    xor-int/2addr v3, v4

    .line 114
    iput-boolean v3, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 115
    .line 116
    iget-boolean v3, p2, Landroidx/recyclerview/widget/l1;->g:Z

    .line 117
    .line 118
    if-nez v3, :cond_15

    .line 119
    .line 120
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 121
    .line 122
    if-ne v3, v1, :cond_6

    .line 123
    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    :cond_6
    if-ltz v3, :cond_14

    .line 127
    .line 128
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-lt v3, v4, :cond_7

    .line 133
    .line 134
    goto/16 :goto_8

    .line 135
    .line 136
    :cond_7
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 137
    .line 138
    iput v3, v0, Landroidx/recyclerview/widget/x;->b:I

    .line 139
    .line 140
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 141
    .line 142
    if-eqz v4, :cond_9

    .line 143
    .line 144
    iget v7, v4, Landroidx/recyclerview/widget/a0;->a:I

    .line 145
    .line 146
    if-ltz v7, :cond_9

    .line 147
    .line 148
    iget-boolean v3, v4, Landroidx/recyclerview/widget/a0;->c:Z

    .line 149
    .line 150
    iput-boolean v3, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 151
    .line 152
    if-eqz v3, :cond_8

    .line 153
    .line 154
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 155
    .line 156
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->f()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 161
    .line 162
    iget v4, v4, Landroidx/recyclerview/widget/a0;->b:I

    .line 163
    .line 164
    :goto_1
    sub-int/2addr v3, v4

    .line 165
    :goto_2
    iput v3, v0, Landroidx/recyclerview/widget/x;->c:I

    .line 166
    .line 167
    goto/16 :goto_e

    .line 168
    .line 169
    :cond_8
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 170
    .line 171
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->h()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 176
    .line 177
    iget v4, v4, Landroidx/recyclerview/widget/a0;->b:I

    .line 178
    .line 179
    :goto_3
    add-int/2addr v3, v4

    .line 180
    goto :goto_2

    .line 181
    :cond_9
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 182
    .line 183
    if-ne v4, v6, :cond_12

    .line 184
    .line 185
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-eqz v3, :cond_e

    .line 190
    .line 191
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 192
    .line 193
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 198
    .line 199
    invoke-virtual {v7}, Landroidx/recyclerview/widget/e0;->i()I

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-le v4, v7, :cond_a

    .line 204
    .line 205
    goto/16 :goto_7

    .line 206
    .line 207
    :cond_a
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 208
    .line 209
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 214
    .line 215
    invoke-virtual {v7}, Landroidx/recyclerview/widget/e0;->h()I

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    sub-int/2addr v4, v7

    .line 220
    if-gez v4, :cond_b

    .line 221
    .line 222
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 223
    .line 224
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->h()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    iput v3, v0, Landroidx/recyclerview/widget/x;->c:I

    .line 229
    .line 230
    iput-boolean v2, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 231
    .line 232
    goto/16 :goto_e

    .line 233
    .line 234
    :cond_b
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 235
    .line 236
    invoke-virtual {v4}, Landroidx/recyclerview/widget/e0;->f()I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 241
    .line 242
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    sub-int/2addr v4, v7

    .line 247
    if-gez v4, :cond_c

    .line 248
    .line 249
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 250
    .line 251
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->f()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    iput v3, v0, Landroidx/recyclerview/widget/x;->c:I

    .line 256
    .line 257
    iput-boolean v5, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 258
    .line 259
    goto/16 :goto_e

    .line 260
    .line 261
    :cond_c
    iget-boolean v4, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 262
    .line 263
    if-eqz v4, :cond_d

    .line 264
    .line 265
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 266
    .line 267
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 272
    .line 273
    invoke-virtual {v4}, Landroidx/recyclerview/widget/e0;->j()I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    add-int/2addr v4, v3

    .line 278
    goto :goto_4

    .line 279
    :cond_d
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 280
    .line 281
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    :goto_4
    iput v4, v0, Landroidx/recyclerview/widget/x;->c:I

    .line 286
    .line 287
    goto/16 :goto_e

    .line 288
    .line 289
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-lez v3, :cond_11

    .line 294
    .line 295
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 304
    .line 305
    if-ge v4, v3, :cond_f

    .line 306
    .line 307
    move v3, v5

    .line 308
    goto :goto_5

    .line 309
    :cond_f
    move v3, v2

    .line 310
    :goto_5
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 311
    .line 312
    if-ne v3, v4, :cond_10

    .line 313
    .line 314
    move v3, v5

    .line 315
    goto :goto_6

    .line 316
    :cond_10
    move v3, v2

    .line 317
    :goto_6
    iput-boolean v3, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 318
    .line 319
    :cond_11
    :goto_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->a()V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_e

    .line 323
    .line 324
    :cond_12
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 325
    .line 326
    iput-boolean v3, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 327
    .line 328
    if-eqz v3, :cond_13

    .line 329
    .line 330
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 331
    .line 332
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->f()I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 337
    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :cond_13
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 341
    .line 342
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->h()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 347
    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    :cond_14
    :goto_8
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 351
    .line 352
    iput v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 353
    .line 354
    :cond_15
    :goto_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-nez v3, :cond_16

    .line 359
    .line 360
    goto/16 :goto_c

    .line 361
    .line 362
    :cond_16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getFocusedChild()Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    if-eqz v3, :cond_17

    .line 367
    .line 368
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    check-cast v4, Landroidx/recyclerview/widget/x0;

    .line 373
    .line 374
    iget-object v7, v4, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 375
    .line 376
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 377
    .line 378
    .line 379
    move-result v7

    .line 380
    if-nez v7, :cond_17

    .line 381
    .line 382
    iget-object v7, v4, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 383
    .line 384
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-ltz v7, :cond_17

    .line 389
    .line 390
    iget-object v4, v4, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 391
    .line 392
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    if-ge v4, v7, :cond_17

    .line 401
    .line 402
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    invoke-virtual {v0, v4, v3}, Landroidx/recyclerview/widget/x;->c(ILandroid/view/View;)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_e

    .line 410
    .line 411
    :cond_17
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 412
    .line 413
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 414
    .line 415
    if-eq v3, v4, :cond_18

    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_18
    iget-boolean v3, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 419
    .line 420
    invoke-virtual {p0, p1, p2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChild(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;ZZ)Landroid/view/View;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    if-eqz v3, :cond_1d

    .line 425
    .line 426
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    invoke-virtual {v0, v4, v3}, Landroidx/recyclerview/widget/x;->b(ILandroid/view/View;)V

    .line 431
    .line 432
    .line 433
    iget-boolean v4, p2, Landroidx/recyclerview/widget/l1;->g:Z

    .line 434
    .line 435
    if-nez v4, :cond_1f

    .line 436
    .line 437
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-eqz v4, :cond_1f

    .line 442
    .line 443
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 444
    .line 445
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 450
    .line 451
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 456
    .line 457
    invoke-virtual {v7}, Landroidx/recyclerview/widget/e0;->h()I

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    iget-object v8, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 462
    .line 463
    invoke-virtual {v8}, Landroidx/recyclerview/widget/e0;->f()I

    .line 464
    .line 465
    .line 466
    move-result v8

    .line 467
    if-gt v3, v7, :cond_19

    .line 468
    .line 469
    if-ge v4, v7, :cond_19

    .line 470
    .line 471
    move v9, v5

    .line 472
    goto :goto_a

    .line 473
    :cond_19
    move v9, v2

    .line 474
    :goto_a
    if-lt v4, v8, :cond_1a

    .line 475
    .line 476
    if-le v3, v8, :cond_1a

    .line 477
    .line 478
    move v3, v5

    .line 479
    goto :goto_b

    .line 480
    :cond_1a
    move v3, v2

    .line 481
    :goto_b
    if-nez v9, :cond_1b

    .line 482
    .line 483
    if-eqz v3, :cond_1f

    .line 484
    .line 485
    :cond_1b
    iget-boolean v3, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 486
    .line 487
    if-eqz v3, :cond_1c

    .line 488
    .line 489
    move v7, v8

    .line 490
    :cond_1c
    iput v7, v0, Landroidx/recyclerview/widget/x;->c:I

    .line 491
    .line 492
    goto :goto_e

    .line 493
    :cond_1d
    :goto_c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->a()V

    .line 494
    .line 495
    .line 496
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 497
    .line 498
    if-eqz v3, :cond_1e

    .line 499
    .line 500
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    sub-int/2addr v3, v5

    .line 505
    goto :goto_d

    .line 506
    :cond_1e
    move v3, v2

    .line 507
    :goto_d
    iput v3, v0, Landroidx/recyclerview/widget/x;->b:I

    .line 508
    .line 509
    :cond_1f
    :goto_e
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    .line 510
    .line 511
    iput-boolean v5, v0, Landroidx/recyclerview/widget/x;->e:Z

    .line 512
    .line 513
    :cond_20
    :goto_f
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 514
    .line 515
    iget v3, v0, Landroidx/recyclerview/widget/z;->j:I

    .line 516
    .line 517
    if-ltz v3, :cond_21

    .line 518
    .line 519
    move v3, v5

    .line 520
    goto :goto_10

    .line 521
    :cond_21
    move v3, v1

    .line 522
    :goto_10
    iput v3, v0, Landroidx/recyclerview/widget/z;->f:I

    .line 523
    .line 524
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 525
    .line 526
    aput v2, v0, v2

    .line 527
    .line 528
    aput v2, v0, v5

    .line 529
    .line 530
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/l1;[I)V

    .line 531
    .line 532
    .line 533
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 534
    .line 535
    aget v0, v0, v2

    .line 536
    .line 537
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 542
    .line 543
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e0;->h()I

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    add-int/2addr v3, v0

    .line 548
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 549
    .line 550
    aget v0, v0, v5

    .line 551
    .line 552
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 557
    .line 558
    check-cast v4, Landroidx/recyclerview/widget/d0;

    .line 559
    .line 560
    iget v7, v4, Landroidx/recyclerview/widget/d0;->d:I

    .line 561
    .line 562
    iget-object v4, v4, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 563
    .line 564
    packed-switch v7, :pswitch_data_0

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    goto :goto_11

    .line 572
    :pswitch_0
    invoke-virtual {v4}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    :goto_11
    add-int/2addr v4, v0

    .line 577
    iget-boolean v0, p2, Landroidx/recyclerview/widget/l1;->g:Z

    .line 578
    .line 579
    if-eqz v0, :cond_24

    .line 580
    .line 581
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 582
    .line 583
    if-eq v0, v1, :cond_24

    .line 584
    .line 585
    iget v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 586
    .line 587
    if-eq v7, v6, :cond_24

    .line 588
    .line 589
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    if-eqz v0, :cond_24

    .line 594
    .line 595
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 596
    .line 597
    if-eqz v6, :cond_22

    .line 598
    .line 599
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 600
    .line 601
    invoke-virtual {v6}, Landroidx/recyclerview/widget/e0;->f()I

    .line 602
    .line 603
    .line 604
    move-result v6

    .line 605
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 606
    .line 607
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    sub-int/2addr v6, v0

    .line 612
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 613
    .line 614
    :goto_12
    sub-int/2addr v6, v0

    .line 615
    goto :goto_13

    .line 616
    :cond_22
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 617
    .line 618
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 623
    .line 624
    invoke-virtual {v6}, Landroidx/recyclerview/widget/e0;->h()I

    .line 625
    .line 626
    .line 627
    move-result v6

    .line 628
    sub-int/2addr v0, v6

    .line 629
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 630
    .line 631
    goto :goto_12

    .line 632
    :goto_13
    if-lez v6, :cond_23

    .line 633
    .line 634
    add-int/2addr v3, v6

    .line 635
    goto :goto_14

    .line 636
    :cond_23
    sub-int/2addr v4, v6

    .line 637
    :cond_24
    :goto_14
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    .line 638
    .line 639
    iget-boolean v6, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 640
    .line 641
    if-eqz v6, :cond_26

    .line 642
    .line 643
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 644
    .line 645
    if-eqz v6, :cond_27

    .line 646
    .line 647
    :cond_25
    move v1, v5

    .line 648
    goto :goto_15

    .line 649
    :cond_26
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 650
    .line 651
    if-eqz v6, :cond_25

    .line 652
    .line 653
    :cond_27
    :goto_15
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/x;I)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/e1;)V

    .line 657
    .line 658
    .line 659
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 660
    .line 661
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    iput-boolean v1, v0, Landroidx/recyclerview/widget/z;->l:Z

    .line 666
    .line 667
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 668
    .line 669
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 673
    .line 674
    iput v2, v0, Landroidx/recyclerview/widget/z;->i:I

    .line 675
    .line 676
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    .line 677
    .line 678
    iget-boolean v1, v0, Landroidx/recyclerview/widget/x;->d:Z

    .line 679
    .line 680
    if-eqz v1, :cond_29

    .line 681
    .line 682
    iget v1, v0, Landroidx/recyclerview/widget/x;->b:I

    .line 683
    .line 684
    iget v0, v0, Landroidx/recyclerview/widget/x;->c:I

    .line 685
    .line 686
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(II)V

    .line 687
    .line 688
    .line 689
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 690
    .line 691
    iput v3, v0, Landroidx/recyclerview/widget/z;->h:I

    .line 692
    .line 693
    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I

    .line 694
    .line 695
    .line 696
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 697
    .line 698
    iget v1, v0, Landroidx/recyclerview/widget/z;->b:I

    .line 699
    .line 700
    iget v3, v0, Landroidx/recyclerview/widget/z;->d:I

    .line 701
    .line 702
    iget v0, v0, Landroidx/recyclerview/widget/z;->c:I

    .line 703
    .line 704
    if-lez v0, :cond_28

    .line 705
    .line 706
    add-int/2addr v4, v0

    .line 707
    :cond_28
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    .line 708
    .line 709
    iget v6, v0, Landroidx/recyclerview/widget/x;->b:I

    .line 710
    .line 711
    iget v0, v0, Landroidx/recyclerview/widget/x;->c:I

    .line 712
    .line 713
    invoke-virtual {p0, v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p(II)V

    .line 714
    .line 715
    .line 716
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 717
    .line 718
    iput v4, v0, Landroidx/recyclerview/widget/z;->h:I

    .line 719
    .line 720
    iget v4, v0, Landroidx/recyclerview/widget/z;->d:I

    .line 721
    .line 722
    iget v6, v0, Landroidx/recyclerview/widget/z;->e:I

    .line 723
    .line 724
    add-int/2addr v4, v6

    .line 725
    iput v4, v0, Landroidx/recyclerview/widget/z;->d:I

    .line 726
    .line 727
    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I

    .line 728
    .line 729
    .line 730
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 731
    .line 732
    iget v4, v0, Landroidx/recyclerview/widget/z;->b:I

    .line 733
    .line 734
    iget v0, v0, Landroidx/recyclerview/widget/z;->c:I

    .line 735
    .line 736
    if-lez v0, :cond_2c

    .line 737
    .line 738
    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(II)V

    .line 739
    .line 740
    .line 741
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 742
    .line 743
    iput v0, v1, Landroidx/recyclerview/widget/z;->h:I

    .line 744
    .line 745
    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I

    .line 746
    .line 747
    .line 748
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 749
    .line 750
    iget v1, v0, Landroidx/recyclerview/widget/z;->b:I

    .line 751
    .line 752
    goto :goto_16

    .line 753
    :cond_29
    iget v1, v0, Landroidx/recyclerview/widget/x;->b:I

    .line 754
    .line 755
    iget v0, v0, Landroidx/recyclerview/widget/x;->c:I

    .line 756
    .line 757
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p(II)V

    .line 758
    .line 759
    .line 760
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 761
    .line 762
    iput v4, v0, Landroidx/recyclerview/widget/z;->h:I

    .line 763
    .line 764
    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I

    .line 765
    .line 766
    .line 767
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 768
    .line 769
    iget v4, v0, Landroidx/recyclerview/widget/z;->b:I

    .line 770
    .line 771
    iget v1, v0, Landroidx/recyclerview/widget/z;->d:I

    .line 772
    .line 773
    iget v0, v0, Landroidx/recyclerview/widget/z;->c:I

    .line 774
    .line 775
    if-lez v0, :cond_2a

    .line 776
    .line 777
    add-int/2addr v3, v0

    .line 778
    :cond_2a
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    .line 779
    .line 780
    iget v6, v0, Landroidx/recyclerview/widget/x;->b:I

    .line 781
    .line 782
    iget v0, v0, Landroidx/recyclerview/widget/x;->c:I

    .line 783
    .line 784
    invoke-virtual {p0, v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(II)V

    .line 785
    .line 786
    .line 787
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 788
    .line 789
    iput v3, v0, Landroidx/recyclerview/widget/z;->h:I

    .line 790
    .line 791
    iget v3, v0, Landroidx/recyclerview/widget/z;->d:I

    .line 792
    .line 793
    iget v6, v0, Landroidx/recyclerview/widget/z;->e:I

    .line 794
    .line 795
    add-int/2addr v3, v6

    .line 796
    iput v3, v0, Landroidx/recyclerview/widget/z;->d:I

    .line 797
    .line 798
    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I

    .line 799
    .line 800
    .line 801
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 802
    .line 803
    iget v3, v0, Landroidx/recyclerview/widget/z;->b:I

    .line 804
    .line 805
    iget v0, v0, Landroidx/recyclerview/widget/z;->c:I

    .line 806
    .line 807
    if-lez v0, :cond_2b

    .line 808
    .line 809
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->p(II)V

    .line 810
    .line 811
    .line 812
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 813
    .line 814
    iput v0, v1, Landroidx/recyclerview/widget/z;->h:I

    .line 815
    .line 816
    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I

    .line 817
    .line 818
    .line 819
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 820
    .line 821
    iget v4, v0, Landroidx/recyclerview/widget/z;->b:I

    .line 822
    .line 823
    :cond_2b
    move v1, v3

    .line 824
    :cond_2c
    :goto_16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 825
    .line 826
    .line 827
    move-result v0

    .line 828
    if-lez v0, :cond_2e

    .line 829
    .line 830
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 831
    .line 832
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 833
    .line 834
    xor-int/2addr v0, v3

    .line 835
    if-eqz v0, :cond_2d

    .line 836
    .line 837
    invoke-virtual {p0, v4, p1, p2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->g(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)I

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    add-int/2addr v1, v0

    .line 842
    add-int/2addr v4, v0

    .line 843
    invoke-virtual {p0, v1, p1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->h(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)I

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    :goto_17
    add-int/2addr v1, v0

    .line 848
    add-int/2addr v4, v0

    .line 849
    goto :goto_18

    .line 850
    :cond_2d
    invoke-virtual {p0, v1, p1, p2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->h(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)I

    .line 851
    .line 852
    .line 853
    move-result v0

    .line 854
    add-int/2addr v1, v0

    .line 855
    add-int/2addr v4, v0

    .line 856
    invoke-virtual {p0, v4, p1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->g(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Z)I

    .line 857
    .line 858
    .line 859
    move-result v0

    .line 860
    goto :goto_17

    .line 861
    :cond_2e
    :goto_18
    iget-boolean v0, p2, Landroidx/recyclerview/widget/l1;->k:Z

    .line 862
    .line 863
    if-eqz v0, :cond_36

    .line 864
    .line 865
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 866
    .line 867
    .line 868
    move-result v0

    .line 869
    if-eqz v0, :cond_36

    .line 870
    .line 871
    iget-boolean v0, p2, Landroidx/recyclerview/widget/l1;->g:Z

    .line 872
    .line 873
    if-nez v0, :cond_36

    .line 874
    .line 875
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    .line 876
    .line 877
    .line 878
    move-result v0

    .line 879
    if-nez v0, :cond_2f

    .line 880
    .line 881
    goto/16 :goto_1c

    .line 882
    .line 883
    :cond_2f
    iget-object v0, p1, Landroidx/recyclerview/widget/e1;->d:Ljava/util/List;

    .line 884
    .line 885
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 890
    .line 891
    .line 892
    move-result-object v6

    .line 893
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 894
    .line 895
    .line 896
    move-result v6

    .line 897
    move v7, v2

    .line 898
    move v8, v7

    .line 899
    move v9, v8

    .line 900
    :goto_19
    if-ge v7, v3, :cond_33

    .line 901
    .line 902
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v10

    .line 906
    check-cast v10, Landroidx/recyclerview/widget/p1;

    .line 907
    .line 908
    invoke-virtual {v10}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 909
    .line 910
    .line 911
    move-result v11

    .line 912
    if-eqz v11, :cond_30

    .line 913
    .line 914
    goto :goto_1b

    .line 915
    :cond_30
    invoke-virtual {v10}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 916
    .line 917
    .line 918
    move-result v11

    .line 919
    if-ge v11, v6, :cond_31

    .line 920
    .line 921
    move v11, v5

    .line 922
    goto :goto_1a

    .line 923
    :cond_31
    move v11, v2

    .line 924
    :goto_1a
    iget-boolean v12, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 925
    .line 926
    if-eq v11, v12, :cond_32

    .line 927
    .line 928
    iget-object v11, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 929
    .line 930
    iget-object v10, v10, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 931
    .line 932
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    .line 933
    .line 934
    .line 935
    move-result v10

    .line 936
    add-int/2addr v8, v10

    .line 937
    goto :goto_1b

    .line 938
    :cond_32
    iget-object v11, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 939
    .line 940
    iget-object v10, v10, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 941
    .line 942
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    .line 943
    .line 944
    .line 945
    move-result v10

    .line 946
    add-int/2addr v9, v10

    .line 947
    :goto_1b
    add-int/lit8 v7, v7, 0x1

    .line 948
    .line 949
    goto :goto_19

    .line 950
    :cond_33
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 951
    .line 952
    iput-object v0, v3, Landroidx/recyclerview/widget/z;->k:Ljava/util/List;

    .line 953
    .line 954
    const/4 v0, 0x0

    .line 955
    if-lez v8, :cond_34

    .line 956
    .line 957
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()Landroid/view/View;

    .line 958
    .line 959
    .line 960
    move-result-object v3

    .line 961
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 962
    .line 963
    .line 964
    move-result v3

    .line 965
    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(II)V

    .line 966
    .line 967
    .line 968
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 969
    .line 970
    iput v8, v1, Landroidx/recyclerview/widget/z;->h:I

    .line 971
    .line 972
    iput v2, v1, Landroidx/recyclerview/widget/z;->c:I

    .line 973
    .line 974
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/z;->a(Landroid/view/View;)V

    .line 975
    .line 976
    .line 977
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 978
    .line 979
    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I

    .line 980
    .line 981
    .line 982
    :cond_34
    if-lez v9, :cond_35

    .line 983
    .line 984
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()Landroid/view/View;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 989
    .line 990
    .line 991
    move-result v1

    .line 992
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->p(II)V

    .line 993
    .line 994
    .line 995
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 996
    .line 997
    iput v9, v1, Landroidx/recyclerview/widget/z;->h:I

    .line 998
    .line 999
    iput v2, v1, Landroidx/recyclerview/widget/z;->c:I

    .line 1000
    .line 1001
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/z;->a(Landroid/view/View;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 1005
    .line 1006
    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I

    .line 1007
    .line 1008
    .line 1009
    :cond_35
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    .line 1010
    .line 1011
    iput-object v0, p1, Landroidx/recyclerview/widget/z;->k:Ljava/util/List;

    .line 1012
    .line 1013
    :cond_36
    :goto_1c
    iget-boolean p1, p2, Landroidx/recyclerview/widget/l1;->g:Z

    .line 1014
    .line 1015
    if-nez p1, :cond_37

    .line 1016
    .line 1017
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 1018
    .line 1019
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->i()I

    .line 1020
    .line 1021
    .line 1022
    move-result p2

    .line 1023
    iput p2, p1, Landroidx/recyclerview/widget/e0;->b:I

    .line 1024
    .line 1025
    goto :goto_1d

    .line 1026
    :cond_37
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    .line 1027
    .line 1028
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x;->d()V

    .line 1029
    .line 1030
    .line 1031
    :goto_1d
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 1032
    .line 1033
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 1034
    .line 1035
    return-void

    .line 1036
    nop

    .line 1037
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/l1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/x;->d()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroidx/recyclerview/widget/a0;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 8
    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iput v1, p1, Landroidx/recyclerview/widget/a0;->a:I

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/recyclerview/widget/a0;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, v0, Landroidx/recyclerview/widget/a0;->a:I

    .line 11
    .line 12
    iput v2, v1, Landroidx/recyclerview/widget/a0;->a:I

    .line 13
    .line 14
    iget v2, v0, Landroidx/recyclerview/widget/a0;->b:I

    .line 15
    .line 16
    iput v2, v1, Landroidx/recyclerview/widget/a0;->b:I

    .line 17
    .line 18
    iget-boolean v0, v0, Landroidx/recyclerview/widget/a0;->c:Z

    .line 19
    .line 20
    iput-boolean v0, v1, Landroidx/recyclerview/widget/a0;->c:Z

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/a0;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 38
    .line 39
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 40
    .line 41
    xor-int/2addr v1, v2

    .line 42
    iput-boolean v1, v0, Landroidx/recyclerview/widget/a0;->c:Z

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroidx/recyclerview/widget/e0;->f()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sub-int/2addr v2, v3

    .line 63
    iput v2, v0, Landroidx/recyclerview/widget/a0;->b:I

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iput v1, v0, Landroidx/recyclerview/widget/a0;->a:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iput v2, v0, Landroidx/recyclerview/widget/a0;->a:I

    .line 81
    .line 82
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/recyclerview/widget/e0;->h()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    sub-int/2addr v1, v2

    .line 95
    iput v1, v0, Landroidx/recyclerview/widget/a0;->b:I

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const/4 v1, -0x1

    .line 99
    iput v1, v0, Landroidx/recyclerview/widget/a0;->a:I

    .line 100
    .line 101
    :goto_0
    return-object v0
.end method

.method public final p(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->f()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/z;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Landroidx/recyclerview/widget/z;->e:I

    iput p1, v0, Landroidx/recyclerview/widget/z;->d:I

    iput v2, v0, Landroidx/recyclerview/widget/z;->f:I

    iput p2, v0, Landroidx/recyclerview/widget/z;->b:I

    const/high16 p1, -0x80000000

    iput p1, v0, Landroidx/recyclerview/widget/z;->g:I

    return-void
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 3

    const-string p3, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p3, p4, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    if-ne p3, v1, :cond_1

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/e0;->f()I

    move-result p3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->f()I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    :goto_1
    invoke-virtual {p0, p4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    :cond_2
    if-ne p3, v0, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result p1

    goto :goto_1

    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_2
    return-void
.end method

.method public final q(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroidx/recyclerview/widget/z;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    iput p1, v0, Landroidx/recyclerview/widget/z;->d:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, v0, Landroidx/recyclerview/widget/z;->e:I

    iput v1, v0, Landroidx/recyclerview/widget/z;->f:I

    iput p2, v0, Landroidx/recyclerview/widget/z;->b:I

    const/high16 p1, -0x80000000

    iput p1, v0, Landroidx/recyclerview/widget/z;->g:I

    return-void
.end method

.method public resolveIsInfinite()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/e0;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 10
    .line 11
    check-cast v0, Landroidx/recyclerview/widget/d0;

    .line 12
    .line 13
    iget v1, v0, Landroidx/recyclerview/widget/d0;->d:I

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_1
    return v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/z;->a:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->o(IIZLandroidx/recyclerview/widget/l1;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    iget v4, v2, Landroidx/recyclerview/widget/z;->g:I

    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/l1;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_2

    return v1

    :cond_2
    if-le v3, p2, :cond_3

    mul-int p1, v0, p2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/e0;->m(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/z;

    iput p1, p2, Landroidx/recyclerview/widget/z;->j:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 2
    .line 3
    const/high16 p1, -0x80000000

    .line 4
    .line 5
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p1, Landroidx/recyclerview/widget/a0;->a:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p2, -0x1

    .line 10
    iput p2, p1, Landroidx/recyclerview/widget/a0;->a:I

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    return p1
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "invalid orientation:"

    .line 10
    .line 11
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 24
    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_2
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/e0;->a(Landroidx/recyclerview/widget/w0;I)Landroidx/recyclerview/widget/d0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/x;

    .line 38
    .line 39
    iput-object v0, v1, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/d0;

    .line 40
    .line 41
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    return-void
.end method

.method public shouldMeasureTwice()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeightMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    new-instance p2, Landroidx/recyclerview/widget/b0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/b0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/k1;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/w0;->startSmoothScroll(Landroidx/recyclerview/widget/k1;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/a0;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validateChildOrder()V
    .locals 10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result v3

    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const-string v5, "detected invalid location"

    const-string v6, "detected invalid position. loc invalid? "

    if-eqz v4, :cond_4

    move v4, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_8

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result v7

    if-ge v8, v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->k()V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ge v7, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-gt v7, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->k()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v4, v1

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_8

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/e0;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result v7

    if-ge v8, v2, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->k()V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ge v7, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    if-lt v7, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->k()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method
