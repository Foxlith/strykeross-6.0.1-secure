.class public final Lf/x0;
.super Li/c;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroidx/appcompat/view/menu/o;

.field public e:Li/b;

.field public f:Ljava/lang/ref/WeakReference;

.field public final synthetic g:Lf/y0;


# direct methods
.method public constructor <init>(Lf/y0;Landroid/content/Context;Lf/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/x0;->g:Lf/y0;

    iput-object p2, p0, Lf/x0;->c:Landroid/content/Context;

    iput-object p3, p0, Lf/x0;->e:Li/b;

    new-instance p1, Landroidx/appcompat/view/menu/o;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/o;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/o;

    move-result-object p1

    iput-object p1, p0, Lf/x0;->d:Landroidx/appcompat/view/menu/o;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/o;->setCallback(Landroidx/appcompat/view/menu/m;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    .line 2
    .line 3
    iget-object v1, v0, Lf/y0;->i:Lf/x0;

    .line 4
    .line 5
    if-eq v1, p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lf/y0;->p:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iput-object p0, v0, Lf/y0;->j:Lf/x0;

    .line 13
    .line 14
    iget-object v1, p0, Lf/x0;->e:Li/b;

    .line 15
    .line 16
    iput-object v1, v0, Lf/y0;->k:Li/b;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lf/x0;->e:Li/b;

    .line 20
    .line 21
    invoke-interface {v1, p0}, Li/b;->c(Li/c;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lf/x0;->e:Li/b;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2}, Lf/y0;->s(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 32
    .line 33
    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 34
    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v2, v0, Lf/y0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 41
    .line 42
    iget-boolean v3, v0, Lf/y0;->u:Z

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 45
    .line 46
    .line 47
    iput-object v1, v0, Lf/y0;->i:Lf/x0;

    .line 48
    .line 49
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x0;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Landroidx/appcompat/view/menu/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x0;->d:Landroidx/appcompat/view/menu/o;

    return-object v0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Li/k;

    iget-object v1, p0, Lf/x0;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Li/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    iget-object v0, v0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    iget-object v0, v0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    iget-object v0, v0, Lf/y0;->i:Lf/x0;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf/x0;->d:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v1, p0, Lf/x0;->e:Li/b;

    invoke-interface {v1, p0, v0}, Li/b;->d(Li/c;Landroidx/appcompat/view/menu/o;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    throw v1
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    .line 2
    .line 3
    iget-object v0, v0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->t:Z

    .line 6
    .line 7
    return v0
.end method

.method public final i(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    iget-object v0, v0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/x0;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    iget-object v0, v0, Lf/y0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/x0;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    iget-object v0, v0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    iget-object v0, v0, Lf/y0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/x0;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    iget-object v0, v0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Li/c;->b:Z

    .line 2
    .line 3
    iget-object v0, p0, Lf/x0;->g:Lf/y0;

    .line 4
    .line 5
    iget-object v0, v0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lf/x0;->e:Li/b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Li/b;->a(Li/c;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/o;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/x0;->e:Li/b;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lf/x0;->g()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lf/x0;->g:Lf/y0;

    .line 10
    .line 11
    iget-object p1, p1, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroidx/appcompat/widget/o;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/appcompat/widget/o;->d()Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
