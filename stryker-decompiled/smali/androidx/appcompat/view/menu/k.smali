.class public final Landroidx/appcompat/view/menu/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/c0;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Landroidx/appcompat/view/menu/o;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:Landroidx/appcompat/view/menu/b0;

.field public f:Landroidx/appcompat/view/menu/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->b:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final collapseItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final expandItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/o;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->a:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->b:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/k;->c:Landroidx/appcompat/view/menu/o;

    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->e:Landroidx/appcompat/view/menu/b0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/b0;->onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V

    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->c:Landroidx/appcompat/view/menu/o;

    iget-object p2, p0, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/j;->b(I)Landroidx/appcompat/view/menu/q;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/o;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/c0;I)Z

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v0, "android:menu:list"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Landroidx/appcompat/view/menu/k;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string v2, "android:menu:list"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/i0;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/p;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Landroidx/appcompat/view/menu/p;->a:Landroidx/appcompat/view/menu/o;

    .line 15
    .line 16
    new-instance v1, Lf/m;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Lf/m;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroidx/appcompat/view/menu/k;

    .line 26
    .line 27
    invoke-virtual {v1}, Lf/m;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/k;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, v0, Landroidx/appcompat/view/menu/p;->c:Landroidx/appcompat/view/menu/k;

    .line 35
    .line 36
    iput-object v0, v2, Landroidx/appcompat/view/menu/k;->e:Landroidx/appcompat/view/menu/b0;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/o;->addMenuPresenter(Landroidx/appcompat/view/menu/c0;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Landroidx/appcompat/view/menu/p;->c:Landroidx/appcompat/view/menu/k;

    .line 42
    .line 43
    iget-object v3, v2, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    new-instance v3, Landroidx/appcompat/view/menu/j;

    .line 48
    .line 49
    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/j;-><init>(Landroidx/appcompat/view/menu/k;)V

    .line 50
    .line 51
    .line 52
    iput-object v3, v2, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    .line 53
    .line 54
    :cond_1
    iget-object v2, v2, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    .line 55
    .line 56
    invoke-virtual {v1, v2, v0}, Lf/m;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->getHeaderView()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lf/m;->setCustomTitle(Landroid/view/View;)Lf/m;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lf/m;->setIcon(Landroid/graphics/drawable/Drawable;)Lf/m;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {v1, v0}, Lf/m;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lf/m;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lf/m;->create()Lf/n;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iput-object v1, v0, Landroidx/appcompat/view/menu/p;->b:Lf/n;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Landroidx/appcompat/view/menu/p;->b:Lf/n;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/16 v2, 0x3eb

    .line 106
    .line 107
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 108
    .line 109
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 110
    .line 111
    const/high16 v3, 0x20000

    .line 112
    .line 113
    or-int/2addr v2, v3

    .line 114
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    .line 116
    iget-object v0, v0, Landroidx/appcompat/view/menu/p;->b:Lf/n;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->e:Landroidx/appcompat/view/menu/b0;

    .line 122
    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/b0;->c(Landroidx/appcompat/view/menu/o;)Z

    .line 126
    .line 127
    .line 128
    :cond_3
    const/4 p1, 0x1

    .line 129
    return p1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->e:Landroidx/appcompat/view/menu/b0;

    return-void
.end method

.method public final updateMenuView(Z)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
