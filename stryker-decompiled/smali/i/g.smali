.class public final Li/g;
.super Li/c;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# instance fields
.field public c:Landroid/content/Context;

.field public d:Landroidx/appcompat/widget/ActionBarContextView;

.field public e:Li/b;

.field public f:Ljava/lang/ref/WeakReference;

.field public g:Z

.field public h:Landroidx/appcompat/view/menu/o;


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/g;->g:Z

    iget-object v0, p0, Li/g;->e:Li/b;

    invoke-interface {v0, p0}, Li/b;->c(Li/c;)V

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Li/g;->f:Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, Li/g;->h:Landroidx/appcompat/view/menu/o;

    return-object v0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Li/k;

    iget-object v1, p0, Li/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Li/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Li/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Li/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/g;->e:Li/b;

    iget-object v1, p0, Li/g;->h:Landroidx/appcompat/view/menu/o;

    invoke-interface {v0, p0, v1}, Li/b;->d(Li/c;Landroidx/appcompat/view/menu/o;)Z

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->t:Z

    .line 4
    .line 5
    return v0
.end method

.method public final i(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Li/g;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/g;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/g;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/g;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/g;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Li/c;->b:Z

    .line 2
    .line 3
    iget-object v0, p0, Li/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Li/g;->e:Li/b;

    invoke-interface {p1, p0, p2}, Li/b;->a(Li/c;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/o;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/g;->g()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Li/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroidx/appcompat/widget/o;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/widget/o;->d()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
