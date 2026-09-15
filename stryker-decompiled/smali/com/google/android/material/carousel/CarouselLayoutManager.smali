.class public Lcom/google/android/material/carousel/CarouselLayoutManager;
.super Landroidx/recyclerview/widget/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/carousel/Carousel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarouselLayoutManager"


# instance fields
.field private carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

.field private currentFillStartPosition:I

.field private currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

.field private final debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

.field private horizontalScrollOffset:I

.field private isDebuggingEnabled:Z

.field private keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

.field private maxHorizontalScroll:I

.field private minHorizontalScroll:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/w0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    new-instance v1, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-direct {v1}, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    new-instance v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    invoke-direct {v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselStrategy(Lcom/google/android/material/carousel/CarouselStrategy;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/carousel/CarouselLayoutManager;Lcom/google/android/material/carousel/KeylineState;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(Lcom/google/android/material/carousel/KeylineState;I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    return p0
.end method

.method public static synthetic access$300(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentTop()I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentBottom()I

    move-result p0

    return p0
.end method

.method private addAndLayoutView(Landroid/view/View;IF)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/w0;->addView(Landroid/view/View;I)V

    sub-float p2, p3, v0

    float-to-int v3, p2

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentTop()I

    move-result v4

    add-float/2addr p3, v0

    float-to-int v5, p3

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentBottom()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/w0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method private addEnd(II)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    add-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method private addStart(II)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method private addViewsEnd(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;I)V
    .locals 4

    invoke-direct {p0, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)I

    move-result v0

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v1

    if-ge p3, v1, :cond_2

    int-to-float v1, v0

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->makeChildCalculations(Landroidx/recyclerview/widget/e1;FI)Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    move-result-object v1

    iget v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->locOffset:F

    iget-object v3, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(II)I

    move-result v0

    iget v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->locOffset:F

    iget-object v3, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->child:Landroid/view/View;

    const/4 v3, -0x1

    iget v1, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->locOffset:F

    invoke-direct {p0, v2, v3, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addAndLayoutView(Landroid/view/View;IF)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private addViewsStart(Landroidx/recyclerview/widget/e1;I)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)I

    move-result v0

    :goto_0
    if-ltz p2, :cond_2

    int-to-float v1, v0

    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->makeChildCalculations(Landroidx/recyclerview/widget/e1;FI)Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    move-result-object v1

    iget v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->locOffset:F

    iget-object v3, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addStart(II)I

    move-result v0

    iget v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->locOffset:F

    iget-object v3, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->child:Landroid/view/View;

    const/4 v3, 0x0

    iget v1, v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->locOffset:F

    invoke-direct {p0, v2, v3, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addAndLayoutView(Landroid/view/View;IF)V

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private calculateChildOffsetCenterForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F
    .locals 4

    iget-object v0, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->left:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget-object v2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->right:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v3, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-static {v1, v3, v0, v2, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    iget-object v1, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->right:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->left:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/x0;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    int-to-float p1, v1

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    div-float/2addr p1, v1

    iget-object p3, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->right:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, p3, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget p3, p3, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    sub-float/2addr v1, p3

    add-float/2addr v1, p1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    :cond_1
    return v0
.end method

.method private calculateChildStartForFill(I)I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentStart()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v0

    float-to-int v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(II)I

    move-result p1

    return p1
.end method

.method private calculateEndHorizontalScroll(Landroidx/recyclerview/widget/l1;Lcom/google/android/material/carousel/KeylineStateList;)I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineStateList;->getLeftState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineStateList;->getRightState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/l1;->b()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingEnd()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    if-eqz v0, :cond_2

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_2

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_2
    mul-float/2addr p1, p2

    iget p2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentStart()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentEnd()I

    move-result v0

    int-to-float v0, v0

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    sub-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private static calculateShouldHorizontallyScrollBy(IIII)I
    .locals 1

    add-int v0, p1, p0

    if-ge v0, p2, :cond_0

    sub-int/2addr p2, p1

    return p2

    :cond_0
    if-le v0, p3, :cond_1

    sub-int/2addr p3, p1

    return p3

    :cond_1
    return p0
.end method

.method private calculateStartHorizontalScroll(Lcom/google/android/material/carousel/KeylineStateList;)I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getRightState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getLeftState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingStart()I

    move-result v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    mul-int/2addr v2, v0

    int-to-float v0, v2

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v1, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addStart(II)I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentStart()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->removeAndRecycleOutOfBoundsViews(Landroidx/recyclerview/widget/e1;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsStart(Landroidx/recyclerview/widget/e1;I)V

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsEnd(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsStart(Landroidx/recyclerview/widget/e1;I)V

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsEnd(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;I)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->validateChildOrderIfDebugging()V

    return-void
.end method

.method private getDecoratedCenterXWithMargins(Landroid/view/View;)F
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-super {p0, p1, v0}, Landroidx/recyclerview/widget/w0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F
    .locals 3

    iget-object v0, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->left:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-object p2, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->right:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget p2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-static {v1, v2, v0, p2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    return p1
.end method

.method private getParentBottom()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getParentEnd()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getParentStart()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getParentTop()I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method private getScrollOffsetForPosition(Lcom/google/android/material/carousel/KeylineState;I)I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v2

    mul-float/2addr p2, v2

    sub-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p1

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_0
    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr p2, v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p1

    div-float/2addr p1, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method private static getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;FZ)",
            "Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;"
        }
    .end annotation

    const/4 v0, -0x1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v2, -0x800001

    const/4 v3, 0x0

    move v6, v0

    move v7, v6

    move v8, v7

    move v9, v8

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_5

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-eqz p2, :cond_0

    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    goto :goto_1

    :cond_0
    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    :goto_1
    sub-float v11, v10, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v12, v10, p1

    if-gtz v12, :cond_1

    cmpg-float v12, v11, v1

    if-gtz v12, :cond_1

    move v6, v5

    move v1, v11

    :cond_1
    cmpl-float v12, v10, p1

    if-lez v12, :cond_2

    cmpg-float v12, v11, v2

    if-gtz v12, :cond_2

    move v8, v5

    move v2, v11

    :cond_2
    cmpg-float v11, v10, v3

    if-gtz v11, :cond_3

    move v7, v5

    move v3, v10

    :cond_3
    cmpl-float v11, v10, v4

    if-lez v11, :cond_4

    move v9, v5

    move v4, v10

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-ne v6, v0, :cond_6

    move v6, v7

    :cond_6
    if-ne v8, v0, :cond_7

    move v8, v9

    :cond_7
    new-instance p1, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-direct {p1, p2, p0}, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;-><init>(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;)V

    return-object p1
.end method

.method private isLayoutRtl()Z
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

.method private isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result p2

    float-to-int p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addStart(II)I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerWidth()I

    move-result p2

    if-le p1, p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result p2

    float-to-int p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(II)I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerWidth()I

    move-result p2

    if-le p1, p2, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private logChildrenIfDebugging()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CarouselLayoutManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getDecoratedCenterXWithMargins(Landroid/view/View;)F

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeChildCalculations(Landroidx/recyclerview/widget/e1;FI)Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x40000000    # 2.0f

    .line 8
    .line 9
    div-float/2addr v0, v1

    .line 10
    const-wide v1, 0x7fffffffffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v2, p3}, Landroidx/recyclerview/widget/e1;->l(JI)Landroidx/recyclerview/widget/p1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-virtual {p0, p1, p3, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 23
    .line 24
    .line 25
    float-to-int p2, p2

    .line 26
    float-to-int v0, v0

    .line 27
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    int-to-float p2, p2

    .line 38
    invoke-static {v0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildOffsetCenterForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateChildMaskForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    .line 50
    .line 51
    invoke-direct {p2, p1, v0, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;-><init>(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 52
    .line 53
    .line 54
    return-object p2
.end method

.method private offsetChildLeftAndRight(Landroid/view/View;FFLandroid/graphics/Rect;)V
    .locals 2

    float-to-int p2, p2

    float-to-int v0, p3

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildOffsetCenterForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result v1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateChildMaskForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    invoke-super {p0, p1, p4}, Landroidx/recyclerview/widget/w0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    add-float/2addr p2, p3

    sub-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method private removeAndRecycleOutOfBoundsViews(Landroidx/recyclerview/widget/e1;)V
    .locals 4

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getDecoratedCenterXWithMargins(Landroid/view/View;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/e1;)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getDecoratedCenterXWithMargins(Landroid/view/View;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/e1;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minHorizontalScroll:I

    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxHorizontalScroll:I

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateShouldHorizontallyScrollBy(IIII)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateCurrentKeylineStateForScrollOffset()V

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    int-to-float v5, v2

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->offsetChildLeftAndRight(Landroid/view/View;FFLandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V

    return p1

    :cond_2
    :goto_1
    return v1
.end method

.method private updateChildMaskForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V
    .locals 3

    instance-of v0, p1, Lcom/google/android/material/carousel/Maskable;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->left:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget-object p3, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->right:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, p3, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iget p3, p3, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-static {v1, v2, v0, p3, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p2

    check-cast p1, Lcom/google/android/material/carousel/Maskable;

    invoke-interface {p1, p2}, Lcom/google/android/material/carousel/Maskable;->setMaskXPercentage(F)V

    :cond_0
    return-void
.end method

.method private updateCurrentKeylineStateForScrollOffset()V
    .locals 4

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxHorizontalScroll:I

    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minHorizontalScroll:I

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineStateList;->getRightState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineStateList;->getLeftState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    int-to-float v3, v3

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->setKeylines(Ljava/util/List;)V

    return-void
.end method

.method private validateChildOrderIfDebugging()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v4

    if-gt v2, v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->logChildrenIfDebugging()V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Detected invalid child order. Child at index ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] had adapter position ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] and child at index ["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/l1;)I
    .locals 0

    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/l1;)I
    .locals 1

    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxHorizontalScroll:I

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minHorizontalScroll:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/x0;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/x0;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/x0;-><init>(II)V

    return-object v0
.end method

.method public getContainerWidth()I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result v0

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/w0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    float-to-int v0, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 6

    instance-of v0, p1, Lcom/google/android/material/carousel/Maskable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/x0;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/w0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget p2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p3

    goto :goto_0

    :cond_0
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float p3, p3

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getWidthMode()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    float-to-int p3, p3

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result v2

    invoke-static {v1, v3, v5, p3, v2}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

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

    move-result v0

    invoke-static {v1, v2, v4, p2, v0}, Landroidx/recyclerview/widget/w0;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/w0;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/e1;)V

    .line 9
    .line 10
    .line 11
    iput v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v2, v1

    .line 25
    :goto_0
    if-eqz v2, :cond_3

    .line 26
    .line 27
    const-wide v3, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3, v4, v1}, Landroidx/recyclerview/widget/e1;->l(JI)Landroidx/recyclerview/widget/p1;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v3, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p0, v3, v1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    .line 42
    .line 43
    invoke-virtual {v4, p0, v3}, Lcom/google/android/material/carousel/CarouselStrategy;->onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-static {v3}, Lcom/google/android/material/carousel/KeylineState;->reverse(Lcom/google/android/material/carousel/KeylineState;)Lcom/google/android/material/carousel/KeylineState;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :cond_2
    invoke-static {p0, v3}, Lcom/google/android/material/carousel/KeylineStateList;->from(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Lcom/google/android/material/carousel/KeylineStateList;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iput-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 58
    .line 59
    :cond_3
    iget-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 60
    .line 61
    invoke-direct {p0, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateStartHorizontalScroll(Lcom/google/android/material/carousel/KeylineStateList;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 66
    .line 67
    invoke-direct {p0, p2, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateEndHorizontalScroll(Landroidx/recyclerview/widget/l1;Lcom/google/android/material/carousel/KeylineStateList;)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    move v5, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move v5, v3

    .line 76
    :goto_1
    iput v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minHorizontalScroll:I

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    move v4, v3

    .line 81
    :cond_5
    iput v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxHorizontalScroll:I

    .line 82
    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    iput v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    .line 89
    .line 90
    invoke-static {v1, v0, v5, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateShouldHorizontallyScrollBy(IIII)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    add-int/2addr v0, v2

    .line 95
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    .line 96
    .line 97
    :goto_2
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 98
    .line 99
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-static {v0, v1, v2}, Lv1/f;->j(III)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 108
    .line 109
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateCurrentKeylineStateForScrollOffset()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/e1;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->fill(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/l1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->validateChildOrderIfDebugging()V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return p4

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p3

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, p3, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(Lcom/google/android/material/carousel/KeylineState;I)I

    move-result p2

    iget p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    sub-int/2addr p2, p3

    if-nez p5, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return p4
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(Lcom/google/android/material/carousel/KeylineState;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->horizontalScrollOffset:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v1, v0}, Lv1/f;->j(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateCurrentKeylineStateForScrollOffset()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    return-void
.end method

.method public setCarouselStrategy(Lcom/google/android/material/carousel/CarouselStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->requestLayout()V

    return-void
.end method

.method public setDebuggingEnabled(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 1

    iput-boolean p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/s0;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/s0;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;I)V
    .locals 0

    new-instance p2, Lcom/google/android/material/carousel/CarouselLayoutManager$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager$1;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/k1;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/w0;->startSmoothScroll(Landroidx/recyclerview/widget/k1;)V

    return-void
.end method
