.class public Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$ViewPagerOnPageChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnPageChangeListener"
.end annotation


# instance fields
.field private final mRecyclerTabLayout:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;

.field private mScrollState:I


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$ViewPagerOnPageChangeListener;->mRecyclerTabLayout:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$ViewPagerOnPageChangeListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object p3, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$ViewPagerOnPageChangeListener;->mRecyclerTabLayout:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;->scrollToTab(IFZ)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$ViewPagerOnPageChangeListener;->mScrollState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$ViewPagerOnPageChangeListener;->mRecyclerTabLayout:Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;

    iget v1, v0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;->mIndicatorPosition:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;->scrollToTab(I)V

    :cond_0
    return-void
.end method
