.class public final Ll1/j;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll1/j;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateExtraLayoutSpace(Landroidx/recyclerview/widget/l1;[I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll1/j;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOffscreenPageLimit()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/l1;[I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    move-result p1

    mul-int/2addr p1, v1

    const/4 v0, 0x0

    aput p1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Lh0/h;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/w0;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Lh0/h;)V

    iget-object p1, p0, Ll1/j;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final performAccessibilityAction(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll1/j;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/w0;->performAccessibilityAction(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method
