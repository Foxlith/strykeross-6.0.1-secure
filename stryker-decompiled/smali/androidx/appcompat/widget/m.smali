.class public Landroidx/appcompat/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/b0;
.implements Landroidx/appcompat/view/menu/m;
.implements Landroidx/appcompat/widget/k1;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/m;->a:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/o;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroidx/appcompat/widget/o;

    .line 5
    .line 6
    iget-object v1, v1, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    move-object v1, v0

    .line 13
    check-cast v1, Landroidx/appcompat/widget/o;

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Landroidx/appcompat/view/menu/i0;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i0;->getItem()Landroid/view/MenuItem;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iput v3, v1, Landroidx/appcompat/widget/o;->z:I

    .line 27
    .line 28
    check-cast v0, Landroidx/appcompat/widget/o;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/view/menu/b0;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/b0;->c(Landroidx/appcompat/view/menu/o;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :cond_1
    return v2
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/appcompat/view/menu/i0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->getRootMenu()Landroidx/appcompat/view/menu/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/o;->close(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/appcompat/widget/o;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/view/menu/b0;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/b0;->onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/m;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->l:Landroidx/appcompat/widget/r;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    check-cast p1, Landroidx/appcompat/widget/j4;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/appcompat/widget/j4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/s;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/core/view/s;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/o4;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroidx/appcompat/widget/o4;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    throw p1

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_0
    return p1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/view/menu/m;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/view/menu/m;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m;->onMenuModeChange(Landroidx/appcompat/view/menu/o;)V

    :cond_0
    return-void
.end method
