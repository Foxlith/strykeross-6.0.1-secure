.class public abstract Landroidx/appcompat/view/menu/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g0;
.implements Landroidx/appcompat/view/menu/c0;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/graphics/Rect;


# direct methods
.method public static c(Landroidx/appcompat/view/menu/l;Landroid/content/Context;I)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move-object v7, v4

    move-object v8, v7

    :goto_0
    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v6, :cond_0

    move-object v8, v4

    move v6, v9

    :cond_0
    if-nez v7, :cond_1

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0, v0, v8, v7}, Landroidx/appcompat/view/menu/l;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lt v9, p2, :cond_2

    return p2

    :cond_2
    if-le v9, v5, :cond_3

    move v5, v9

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method


# virtual methods
.method public abstract b(Landroidx/appcompat/view/menu/o;)V
.end method

.method public final collapseItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract e(Landroid/view/View;)V
.end method

.method public final expandItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract f(Z)V
.end method

.method public final getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract h(I)V
.end method

.method public abstract i(I)V
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/o;)V
    .locals 0

    return-void
.end method

.method public abstract j(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract k(Z)V
.end method

.method public abstract l(I)V
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/ListAdapter;

    .line 6
    .line 7
    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    move-object p2, p1

    .line 12
    check-cast p2, Landroid/widget/HeaderViewListAdapter;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Landroidx/appcompat/view/menu/l;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p2, p1

    .line 22
    check-cast p2, Landroidx/appcompat/view/menu/l;

    .line 23
    .line 24
    :goto_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/l;->a:Landroidx/appcompat/view/menu/o;

    .line 25
    .line 26
    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/MenuItem;

    .line 31
    .line 32
    instance-of p3, p0, Landroidx/appcompat/view/menu/i;

    .line 33
    .line 34
    xor-int/lit8 p3, p3, 0x1

    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 p3, 0x4

    .line 41
    :goto_1
    invoke-virtual {p2, p1, p0, p3}, Landroidx/appcompat/view/menu/o;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/c0;I)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method
