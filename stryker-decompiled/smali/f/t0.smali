.class public final Lf/t0;
.super Lf/b;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/widget/q4;

.field public final b:Landroid/view/Window$Callback;

.field public final c:Lf/s0;

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroidx/activity/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lf/b0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf/t0;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/activity/d;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, v1}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lf/t0;->h:Landroidx/activity/d;

    .line 18
    .line 19
    new-instance v0, Lf/s0;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lf/s0;-><init>(Lf/t0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroidx/appcompat/widget/q4;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, p1, v2}, Landroidx/appcompat/widget/q4;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object p3, p0, Lf/t0;->b:Landroid/view/Window$Callback;

    .line 39
    .line 40
    iput-object p3, v1, Landroidx/appcompat/widget/q4;->k:Landroid/view/Window$Callback;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/o4;)V

    .line 43
    .line 44
    .line 45
    iget-boolean p1, v1, Landroidx/appcompat/widget/q4;->g:Z

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    iput-object p2, v1, Landroidx/appcompat/widget/q4;->h:Ljava/lang/CharSequence;

    .line 50
    .line 51
    iget p1, v1, Landroidx/appcompat/widget/q4;->b:I

    .line 52
    .line 53
    and-int/lit8 p1, p1, 0x8

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    iget-object p1, v1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-boolean p3, v1, Landroidx/appcompat/widget/q4;->g:Z

    .line 63
    .line 64
    if-eqz p3, :cond_0

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1, p2}, Landroidx/core/view/c1;->p(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    new-instance p1, Lf/s0;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lf/s0;-><init>(Lf/t0;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lf/t0;->c:Lf/s0;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/t0;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lf/t0;->f:Z

    iget-object p1, p0, Lf/t0;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    iget v0, v0, Landroidx/appcompat/widget/q4;->b:I

    .line 4
    .line 5
    return v0
.end method

.method public final e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object v2, p0, Lf/t0;->h:Landroidx/activity/d;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 11
    .line 12
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-static {v0, v2}, Landroidx/core/view/k0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method public final g()V
    .locals 0

    .line 1
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object v1, p0, Lf/t0;->h:Landroidx/activity/d;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/t0;->s()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lf/t0;->k()Z

    :cond_0
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final l(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final m(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    iget v0, p1, Landroidx/appcompat/widget/q4;->b:I

    .line 4
    .line 5
    and-int/lit8 v0, v0, -0x5

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    or-int/2addr v0, v1

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/q4;->a(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    iget v1, v0, Landroidx/appcompat/widget/q4;->b:I

    .line 4
    .line 5
    and-int/lit8 v1, v1, -0x9

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/q4;->a(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final p(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Landroidx/appcompat/widget/q4;->g:Z

    .line 19
    .line 20
    iput-object p1, v0, Landroidx/appcompat/widget/q4;->h:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iget v1, v0, Landroidx/appcompat/widget/q4;->b:I

    .line 23
    .line 24
    and-int/lit8 v1, v1, 0x8

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, v0, Landroidx/appcompat/widget/q4;->g:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0, p1}, Landroidx/core/view/c1;->p(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final q(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/q4;->g:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Landroidx/appcompat/widget/q4;->h:Ljava/lang/CharSequence;

    .line 8
    .line 9
    iget v1, v0, Landroidx/appcompat/widget/q4;->b:I

    .line 10
    .line 11
    and-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, v0, Landroidx/appcompat/widget/q4;->g:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Landroidx/core/view/c1;->p(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final s()Landroid/view/Menu;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf/t0;->e:Z

    .line 2
    .line 3
    iget-object v1, p0, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lv/v;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lv/v;-><init>(Lf/t0;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lf/s0;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lf/s0;-><init>(Lf/t0;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 18
    .line 19
    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/widget/Toolbar;->setMenuCallbacks(Landroidx/appcompat/view/menu/b0;Landroidx/appcompat/view/menu/m;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lf/t0;->e:Z

    .line 24
    .line 25
    :cond_0
    iget-object v0, v1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
