.class public Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;
.super Landroidx/recyclerview/widget/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecyclerOnScrollListener"
.end annotation


# instance fields
.field public mDx:I

.field protected mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected mRecyclerTabLayout:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mRecyclerTabLayout:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;

    iput-object p2, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mDx:I

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->selectCenterTabForRightScroll()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->selectCenterTabForLeftScroll()V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mDx:I

    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mDx:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mDx:I

    return-void
.end method

.method public selectCenterTabForLeftScroll()V
    .locals 4

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mRecyclerTabLayout:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    iget-object v3, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-gt v3, v2, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mRecyclerTabLayout:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public selectCenterTabForRightScroll()V
    .locals 5

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mRecyclerTabLayout:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-gt v0, v1, :cond_1

    iget-object v3, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v4

    if-lt v3, v2, :cond_0

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$RecyclerOnScrollListener;->mRecyclerTabLayout:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
