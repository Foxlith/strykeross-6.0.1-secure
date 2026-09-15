.class public Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;
.super Lcom/facebook/shimmer/Shimmer$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/shimmer/Shimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaHighlightBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/shimmer/Shimmer$Builder<",
        "Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/facebook/shimmer/Shimmer$Builder;-><init>()V

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/shimmer/Shimmer;->alphaShimmer:Z

    return-void
.end method


# virtual methods
.method public getThis()Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic getThis()Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;->getThis()Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;

    move-result-object v0

    return-object v0
.end method
