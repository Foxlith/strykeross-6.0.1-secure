.class public Lcom/facebook/shimmer/ShimmerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final mContentPaint:Landroid/graphics/Paint;

.field private final mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

.field private mShowShimmer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mContentPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-direct {v0}, Lcom/facebook/shimmer/ShimmerDrawable;-><init>()V

    iput-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShowShimmer:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mContentPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-direct {v0}, Lcom/facebook/shimmer/ShimmerDrawable;-><init>()V

    iput-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShowShimmer:Z

    invoke-direct {p0, p1, p2}, Lcom/facebook/shimmer/ShimmerFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mContentPaint:Landroid/graphics/Paint;

    new-instance p3, Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-direct {p3}, Lcom/facebook/shimmer/ShimmerDrawable;-><init>()V

    iput-object p3, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShowShimmer:Z

    invoke-direct {p0, p1, p2}, Lcom/facebook/shimmer/ShimmerFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mContentPaint:Landroid/graphics/Paint;

    new-instance p3, Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-direct {p3}, Lcom/facebook/shimmer/ShimmerDrawable;-><init>()V

    iput-object p3, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShowShimmer:Z

    invoke-direct {p0, p1, p2}, Lcom/facebook/shimmer/ShimmerFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-nez p2, :cond_0

    new-instance p1, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;

    invoke-direct {p1}, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/shimmer/Shimmer$Builder;->build()Lcom/facebook/shimmer/Shimmer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setShimmer(Lcom/facebook/shimmer/Shimmer;)Lcom/facebook/shimmer/ShimmerFrameLayout;

    return-void

    :cond_0
    sget-object v1, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_colored:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_colored:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;

    invoke-direct {p2}, Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;

    invoke-direct {p2}, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, p1}, Lcom/facebook/shimmer/Shimmer$Builder;->consumeAttributes(Landroid/content/res/TypedArray;)Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/shimmer/Shimmer$Builder;->build()Lcom/facebook/shimmer/Shimmer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setShimmer(Lcom/facebook/shimmer/Shimmer;)Lcom/facebook/shimmer/ShimmerFrameLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShowShimmer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-virtual {v0, p1}, Lcom/facebook/shimmer/ShimmerDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public hideShimmer()V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShowShimmer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShowShimmer:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isShimmerStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerDrawable;->isShimmerStarted()Z

    move-result v0

    return v0
.end method

.method public isShimmerVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShowShimmer:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerDrawable;->maybeStartShimmer()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setShimmer(Lcom/facebook/shimmer/Shimmer;)Lcom/facebook/shimmer/ShimmerFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-virtual {v0, p1}, Lcom/facebook/shimmer/ShimmerDrawable;->setShimmer(Lcom/facebook/shimmer/Shimmer;)V

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/facebook/shimmer/Shimmer;->clipToChildren:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mContentPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public showShimmer(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShowShimmer:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShowShimmer:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->startShimmer()V

    :cond_1
    return-void
.end method

.method public startShimmer()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerDrawable;->startShimmer()V

    return-void
.end method

.method public stopShimmer()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerDrawable;->stopShimmer()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    if-ne p1, v0, :cond_0

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
