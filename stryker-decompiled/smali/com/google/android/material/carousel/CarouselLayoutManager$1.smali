.class Lcom/google/android/material/carousel/CarouselLayoutManager$1;
.super Landroidx/recyclerview/widget/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/carousel/CarouselLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method public constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/b0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 2

    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$100(Lcom/google/android/material/carousel/CarouselLayoutManager;Lcom/google/android/material/carousel/KeylineState;I)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$200(Lcom/google/android/material/carousel/CarouselLayoutManager;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$100(Lcom/google/android/material/carousel/CarouselLayoutManager;Lcom/google/android/material/carousel/KeylineState;I)I

    move-result p1

    int-to-float p1, p1

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$200(Lcom/google/android/material/carousel/CarouselLayoutManager;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
