.class public Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;
.super Lcom/facebook/shimmer/Shimmer$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/shimmer/Shimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorHighlightBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/shimmer/Shimmer$Builder<",
        "Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/facebook/shimmer/Shimmer$Builder;-><init>()V

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/shimmer/Shimmer;->alphaShimmer:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic consumeAttributes(Landroid/content/res/TypedArray;)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;->consumeAttributes(Landroid/content/res/TypedArray;)Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;

    move-result-object p1

    return-object p1
.end method

.method public consumeAttributes(Landroid/content/res/TypedArray;)Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/facebook/shimmer/Shimmer$Builder;->consumeAttributes(Landroid/content/res/TypedArray;)Lcom/facebook/shimmer/Shimmer$Builder;

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_base_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_base_color:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;->setBaseColor(I)Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;

    :cond_0
    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_highlight_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout_shimmer_highlight_color:I

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v1, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;->setHighlightColor(I)Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;->getThis()Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getThis()Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;->getThis()Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getThis()Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;
    .locals 0

    .line 2
    return-object p0
.end method

.method public setBaseColor(I)Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;
    .locals 3

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v1, v0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const v2, 0xffffff

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;->getThis()Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHighlightColor(I)Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;
    .locals 1

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iput p1, v0, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;->getThis()Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;

    move-result-object p1

    return-object p1
.end method
