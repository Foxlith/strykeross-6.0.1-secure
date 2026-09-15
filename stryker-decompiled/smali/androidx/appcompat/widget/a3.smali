.class public final Landroidx/appcompat/widget/a3;
.super Landroidx/appcompat/widget/i2;
.source "SourceFile"


# instance fields
.field public final m:I

.field public final n:I

.field public p:Landroidx/appcompat/widget/w2;

.field public q:Landroidx/appcompat/view/menu/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/i2;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1}, Landroidx/appcompat/widget/z2;->a(Landroid/content/res/Configuration;)I

    move-result p1

    const/16 v0, 0x15

    const/16 v1, 0x16

    if-ne p2, p1, :cond_0

    iput v0, p0, Landroidx/appcompat/widget/a3;->m:I

    iput v1, p0, Landroidx/appcompat/widget/a3;->n:I

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/appcompat/widget/a3;->m:I

    iput v0, p0, Landroidx/appcompat/widget/a3;->n:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a3;->p:Landroidx/appcompat/widget/w2;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/appcompat/view/menu/l;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    check-cast v0, Landroidx/appcompat/view/menu/l;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0xa

    .line 34
    .line 35
    if-eq v2, v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    float-to-int v2, v2

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    float-to-int v3, v3

    .line 47
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, -0x1

    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    .line 54
    sub-int/2addr v2, v1

    .line 55
    if-ltz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->getCount()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ge v2, v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/l;->b(I)Landroidx/appcompat/view/menu/q;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 69
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/a3;->q:Landroidx/appcompat/view/menu/q;

    .line 70
    .line 71
    if-eq v2, v1, :cond_3

    .line 72
    .line 73
    iget-object v0, v0, Landroidx/appcompat/view/menu/l;->a:Landroidx/appcompat/view/menu/o;

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    iget-object v3, p0, Landroidx/appcompat/widget/a3;->p:Landroidx/appcompat/widget/w2;

    .line 78
    .line 79
    invoke-interface {v3, v0, v2}, Landroidx/appcompat/widget/w2;->c(Landroidx/appcompat/view/menu/o;Landroid/view/MenuItem;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iput-object v1, p0, Landroidx/appcompat/widget/a3;->q:Landroidx/appcompat/view/menu/q;

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    iget-object v2, p0, Landroidx/appcompat/widget/a3;->p:Landroidx/appcompat/widget/w2;

    .line 87
    .line 88
    invoke-interface {v2, v0, v1}, Landroidx/appcompat/widget/w2;->e(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/i2;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    return p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v2, p0, Landroidx/appcompat/widget/a3;->m:I

    .line 11
    .line 12
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/q;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->hasSubMenu()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    return v1

    .line 42
    :cond_1
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget v0, p0, Landroidx/appcompat/widget/a3;->n:I

    .line 45
    .line 46
    if-ne p1, v0, :cond_3

    .line 47
    .line 48
    const/4 p1, -0x1

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :cond_2
    check-cast p1, Landroidx/appcompat/view/menu/l;

    .line 67
    .line 68
    iget-object p1, p1, Landroidx/appcompat/view/menu/l;->a:Landroidx/appcompat/view/menu/o;

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/o;->close(Z)V

    .line 72
    .line 73
    .line 74
    return v1

    .line 75
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    return p1
.end method

.method public setHoverListener(Landroidx/appcompat/widget/w2;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/a3;->p:Landroidx/appcompat/widget/w2;

    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/i2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
