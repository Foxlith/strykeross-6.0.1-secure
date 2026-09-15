.class public abstract Lcom/facebook/shimmer/Shimmer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/shimmer/Shimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/shimmer/Shimmer$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mShimmer:Lcom/facebook/shimmer/Shimmer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/shimmer/Shimmer;

    invoke-direct {v0}, Lcom/facebook/shimmer/Shimmer;-><init>()V

    iput-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    return-void
.end method

.method private static clamp(FFF)F
    .locals 0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public build()Lcom/facebook/shimmer/Shimmer;
    .locals 1

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    invoke-virtual {v0}, Lcom/facebook/shimmer/Shimmer;->updateColors()V

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    invoke-virtual {v0}, Lcom/facebook/shimmer/Shimmer;->updatePositions()V

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    return-object v0
.end method

.method public consumeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/shimmer/Shimmer$Builder;->consumeAttributes(Landroid/content/res/TypedArray;)Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public consumeAttributes(Landroid/content/res/TypedArray;)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            ")TT;"
        }
    .end annotation

    .line 2
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_clip_to_children:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_clip_to_children:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget-boolean v1, v1, Lcom/facebook/shimmer/Shimmer;->clipToChildren:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setClipToChildren(Z)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_0
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_auto_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_auto_start:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget-boolean v1, v1, Lcom/facebook/shimmer/Shimmer;->autoStart:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setAutoStart(Z)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_1
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_base_alpha:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_base_alpha:I

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setBaseAlpha(F)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_2
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_highlight_alpha:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_highlight_alpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setHighlightAlpha(F)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_3
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_duration:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_duration:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget-wide v1, v1, Lcom/facebook/shimmer/Shimmer;->animationDuration:J

    long-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/shimmer/Shimmer$Builder;->setDuration(J)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_4
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_repeat_count:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_repeat_count:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->repeatCount:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setRepeatCount(I)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_5
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_repeat_delay:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_repeat_delay:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget-wide v1, v1, Lcom/facebook/shimmer/Shimmer;->repeatDelay:J

    long-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/shimmer/Shimmer$Builder;->setRepeatDelay(J)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_6
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_repeat_mode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_repeat_mode:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->repeatMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setRepeatMode(I)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_7
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_direction:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_direction:I

    iget-object v3, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v3, v3, Lcom/facebook/shimmer/Shimmer;->direction:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    invoke-virtual {p0, v1}, Lcom/facebook/shimmer/Shimmer$Builder;->setDirection(I)Lcom/facebook/shimmer/Shimmer$Builder;

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v3}, Lcom/facebook/shimmer/Shimmer$Builder;->setDirection(I)Lcom/facebook/shimmer/Shimmer$Builder;

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v2}, Lcom/facebook/shimmer/Shimmer$Builder;->setDirection(I)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_a
    :goto_0
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_shape:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_shape:I

    iget-object v3, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v3, v3, Lcom/facebook/shimmer/Shimmer;->shape:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eq v0, v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/facebook/shimmer/Shimmer$Builder;->setShape(I)Lcom/facebook/shimmer/Shimmer$Builder;

    goto :goto_1

    :cond_b
    invoke-virtual {p0, v2}, Lcom/facebook/shimmer/Shimmer$Builder;->setShape(I)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_c
    :goto_1
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_dropoff:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_dropoff:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setDropoff(F)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_d
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_fixed_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_fixed_width:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->fixedWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setFixedWidth(I)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_e
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_fixed_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_fixed_height:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->fixedHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setFixedHeight(I)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_f
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_intensity:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_intensity:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->intensity:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setIntensity(F)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_10
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_width_ratio:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_width_ratio:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->widthRatio:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setWidthRatio(F)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_11
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_height_ratio:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_height_ratio:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->heightRatio:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setHeightRatio(F)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_12
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_tilt:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_tilt:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->tilt:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/shimmer/Shimmer$Builder;->setTilt(F)Lcom/facebook/shimmer/Shimmer$Builder;

    :cond_13
    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public copyFrom(Lcom/facebook/shimmer/Shimmer;)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/shimmer/Shimmer;",
            ")TT;"
        }
    .end annotation

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->direction:I

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setDirection(I)Lcom/facebook/shimmer/Shimmer$Builder;

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->shape:I

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setShape(I)Lcom/facebook/shimmer/Shimmer$Builder;

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->fixedWidth:I

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setFixedWidth(I)Lcom/facebook/shimmer/Shimmer$Builder;

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->fixedHeight:I

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setFixedHeight(I)Lcom/facebook/shimmer/Shimmer$Builder;

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->widthRatio:F

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setWidthRatio(F)Lcom/facebook/shimmer/Shimmer$Builder;

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->heightRatio:F

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setHeightRatio(F)Lcom/facebook/shimmer/Shimmer$Builder;

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->intensity:F

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setIntensity(F)Lcom/facebook/shimmer/Shimmer$Builder;

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setDropoff(F)Lcom/facebook/shimmer/Shimmer$Builder;

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->tilt:F

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setTilt(F)Lcom/facebook/shimmer/Shimmer$Builder;

    iget-boolean v0, p1, Lcom/facebook/shimmer/Shimmer;->clipToChildren:Z

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setClipToChildren(Z)Lcom/facebook/shimmer/Shimmer$Builder;

    iget-boolean v0, p1, Lcom/facebook/shimmer/Shimmer;->autoStart:Z

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setAutoStart(Z)Lcom/facebook/shimmer/Shimmer$Builder;

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->repeatCount:I

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setRepeatCount(I)Lcom/facebook/shimmer/Shimmer$Builder;

    iget v0, p1, Lcom/facebook/shimmer/Shimmer;->repeatMode:I

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$Builder;->setRepeatMode(I)Lcom/facebook/shimmer/Shimmer$Builder;

    iget-wide v0, p1, Lcom/facebook/shimmer/Shimmer;->repeatDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/facebook/shimmer/Shimmer$Builder;->setRepeatDelay(J)Lcom/facebook/shimmer/Shimmer$Builder;

    iget-wide v0, p1, Lcom/facebook/shimmer/Shimmer;->animationDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/facebook/shimmer/Shimmer$Builder;->setDuration(J)Lcom/facebook/shimmer/Shimmer$Builder;

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, p1, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    iput v1, v0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    iget p1, p1, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract getThis()Lcom/facebook/shimmer/Shimmer$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setAutoStart(Z)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput-boolean p1, v0, Lcom/facebook/shimmer/Shimmer;->autoStart:Z

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBaseAlpha(F)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lcom/facebook/shimmer/Shimmer$Builder;->clamp(FFF)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    shl-int/lit8 p1, p1, 0x18

    iget v1, v0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr p1, v1

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setClipToChildren(Z)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput-boolean p1, v0, Lcom/facebook/shimmer/Shimmer;->clipToChildren:Z

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDirection(I)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->direction:I

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDropoff(F)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given invalid dropoff value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDuration(J)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    .line 8
    .line 9
    iput-wide p1, v0, Lcom/facebook/shimmer/Shimmer;->animationDuration:J

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Given a negative duration: "

    .line 19
    .line 20
    invoke-static {v1, p1, p2}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public setFixedHeight(I)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    .line 4
    .line 5
    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->fixedHeight:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Given invalid height: "

    .line 15
    .line 16
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public setFixedWidth(I)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    .line 4
    .line 5
    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->fixedWidth:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Given invalid width: "

    .line 15
    .line 16
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public setHeightRatio(F)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->heightRatio:F

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given invalid height ratio: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHighlightAlpha(F)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lcom/facebook/shimmer/Shimmer$Builder;->clamp(FFF)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    shl-int/lit8 p1, p1, 0x18

    iget v1, v0, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr p1, v1

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIntensity(F)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given invalid intensity value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatCount(I)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->repeatCount:I

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatDelay(J)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    .line 8
    .line 9
    iput-wide p1, v0, Lcom/facebook/shimmer/Shimmer;->repeatDelay:J

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Given a negative repeat delay: "

    .line 19
    .line 20
    invoke-static {v1, p1, p2}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public setRepeatMode(I)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->repeatMode:I

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setShape(I)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->shape:I

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTilt(F)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->tilt:F

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWidthRatio(F)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->widthRatio:F

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$Builder;->getThis()Lcom/facebook/shimmer/Shimmer$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given invalid width ratio: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
