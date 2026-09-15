.class public final Landroidx/appcompat/view/menu/s;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public c:Lf/q0;


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public final d(Lf/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/s;->c:Lf/q0;

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->a:Landroid/view/ActionProvider;

    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/s;->c:Lf/q0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lf/q0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Landroidx/appcompat/view/menu/q;

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/o;->onItemVisibleChanged(Landroidx/appcompat/view/menu/q;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
