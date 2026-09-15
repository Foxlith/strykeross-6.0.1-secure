.class public final Lf/y0;
.super Lf/b;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/f;


# static fields
.field public static final y:Landroid/view/animation/AccelerateInterpolator;

.field public static final z:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Landroidx/appcompat/widget/y1;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public final g:Landroid/view/View;

.field public h:Z

.field public i:Lf/x0;

.field public j:Lf/x0;

.field public k:Li/b;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Li/m;

.field public t:Z

.field public u:Z

.field public final v:Lf/w0;

.field public final w:Lf/w0;

.field public final x:Lf/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lf/y0;->y:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lf/y0;->z:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/y0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lf/y0;->n:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/y0;->o:Z

    iput-boolean v1, p0, Lf/y0;->r:Z

    new-instance v2, Lf/w0;

    invoke-direct {v2, p0, v0}, Lf/w0;-><init>(Lf/y0;I)V

    iput-object v2, p0, Lf/y0;->v:Lf/w0;

    new-instance v0, Lf/w0;

    invoke-direct {v0, p0, v1}, Lf/w0;-><init>(Lf/y0;I)V

    iput-object v0, p0, Lf/y0;->w:Lf/w0;

    new-instance v0, Lf/q0;

    invoke-direct {v0, p0, v1}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lf/y0;->x:Lf/q0;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/y0;->t(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lf/y0;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/y0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lf/y0;->n:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/y0;->o:Z

    iput-boolean v1, p0, Lf/y0;->r:Z

    new-instance v2, Lf/w0;

    invoke-direct {v2, p0, v0}, Lf/w0;-><init>(Lf/y0;I)V

    iput-object v2, p0, Lf/y0;->v:Lf/w0;

    new-instance v0, Lf/w0;

    invoke-direct {v0, p0, v1}, Lf/w0;-><init>(Lf/y0;I)V

    iput-object v0, p0, Lf/y0;->w:Lf/w0;

    new-instance v0, Lf/q0;

    invoke-direct {v0, p0, v1}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lf/y0;->x:Lf/q0;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/y0;->t(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 16
    .line 17
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/y0;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lf/y0;->l:Z

    iget-object p1, p0, Lf/y0;->m:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 4
    .line 5
    iget v0, v0, Landroidx/appcompat/widget/q4;->b:I

    .line 6
    .line 7
    return v0
.end method

.method public final e()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/y0;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lf/y0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04000c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lf/y0;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lf/y0;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/y0;->a:Landroid/content/Context;

    iput-object v0, p0, Lf/y0;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Lf/y0;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/y0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x7f050000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lf/y0;->u(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf/y0;->i:Lf/x0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, v0, Lf/x0;->d:Landroidx/appcompat/view/menu/o;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v2, -0x1

    .line 19
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eq v2, v3, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v3, v1

    .line 32
    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :cond_3
    return v1
.end method

.method public final l(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/y0;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lf/y0;->m(Z)V

    :cond_0
    return-void
.end method

.method public final m(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 8
    .line 9
    check-cast v1, Landroidx/appcompat/widget/q4;

    .line 10
    .line 11
    iget v2, v1, Landroidx/appcompat/widget/q4;->b:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    iput-boolean v3, p0, Lf/y0;->h:Z

    .line 15
    .line 16
    and-int/2addr p1, v0

    .line 17
    and-int/lit8 v0, v2, -0x5

    .line 18
    .line 19
    or-int/2addr p1, v0

    .line 20
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/q4;->a(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 4
    .line 5
    iget v1, v0, Landroidx/appcompat/widget/q4;->b:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, -0x9

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/q4;->a(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/y0;->t:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lf/y0;->s:Li/m;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li/m;->a()V

    :cond_0
    return-void
.end method

.method public final p(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/y0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 8
    .line 9
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Landroidx/appcompat/widget/q4;->g:Z

    .line 13
    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/q4;->h:Ljava/lang/CharSequence;

    .line 15
    .line 16
    iget v1, v0, Landroidx/appcompat/widget/q4;->b:I

    .line 17
    .line 18
    and-int/lit8 v1, v1, 0x8

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, v0, Landroidx/appcompat/widget/q4;->g:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, p1}, Landroidx/core/view/c1;->p(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 4
    .line 5
    iget-boolean v1, v0, Landroidx/appcompat/widget/q4;->g:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iput-object p1, v0, Landroidx/appcompat/widget/q4;->h:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget v1, v0, Landroidx/appcompat/widget/q4;->b:I

    .line 12
    .line 13
    and-int/lit8 v1, v1, 0x8

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, v0, Landroidx/appcompat/widget/q4;->g:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, p1}, Landroidx/core/view/c1;->p(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final r(Lf/y;)Li/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/y0;->i:Lf/x0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lf/x0;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lf/y0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lf/x0;

    .line 20
    .line 21
    iget-object v1, p0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p0, v1, p1}, Lf/x0;-><init>(Lf/y0;Landroid/content/Context;Lf/y;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lf/x0;->d:Landroidx/appcompat/view/menu/o;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object v1, v0, Lf/x0;->e:Li/b;

    .line 36
    .line 37
    invoke-interface {v1, v0, p1}, Li/b;->b(Li/c;Landroidx/appcompat/view/menu/o;)Z

    .line 38
    .line 39
    .line 40
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    .line 42
    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iput-object v0, p0, Lf/y0;->i:Lf/x0;

    .line 47
    .line 48
    invoke-virtual {v0}, Lf/x0;->g()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->c(Li/c;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lf/y0;->s(Z)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_1
    const/4 p1, 0x0

    .line 62
    return-object p1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public final s(Z)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-boolean v1, p0, Lf/y0;->q:Z

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lf/y0;->q:Z

    .line 10
    .line 11
    iget-object v2, p0, Lf/y0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lf/y0;->v(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v1, p0, Lf/y0;->q:Z

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iput-boolean v0, p0, Lf/y0;->q:Z

    .line 27
    .line 28
    iget-object v1, p0, Lf/y0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0, v0}, Lf/y0;->v(Z)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    iget-object v1, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 39
    .line 40
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-static {v1}, Landroidx/core/view/n0;->c(Landroid/view/View;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    const/4 v3, 0x4

    .line 49
    if-eqz v1, :cond_7

    .line 50
    .line 51
    const-wide/16 v4, 0xc8

    .line 52
    .line 53
    const-wide/16 v6, 0x64

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 58
    .line 59
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 60
    .line 61
    iget-object v1, p1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 62
    .line 63
    invoke-static {v1}, Landroidx/core/view/c1;->a(Landroid/view/View;)Landroidx/core/view/p1;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v1, v2}, Landroidx/core/view/p1;->a(F)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v6, v7}, Landroidx/core/view/p1;->c(J)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Li/l;

    .line 75
    .line 76
    invoke-direct {v2, p1, v3}, Li/l;-><init>(Landroidx/appcompat/widget/q4;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroidx/core/view/p1;->d(Landroidx/core/view/q1;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 83
    .line 84
    invoke-virtual {p1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->l(IJ)Landroidx/core/view/p1;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    iget-object p1, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 90
    .line 91
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 92
    .line 93
    iget-object v1, p1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 94
    .line 95
    invoke-static {v1}, Landroidx/core/view/c1;->a(Landroid/view/View;)Landroidx/core/view/p1;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/high16 v3, 0x3f800000    # 1.0f

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Landroidx/core/view/p1;->a(F)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v4, v5}, Landroidx/core/view/p1;->c(J)V

    .line 105
    .line 106
    .line 107
    new-instance v3, Li/l;

    .line 108
    .line 109
    invoke-direct {v3, p1, v0}, Li/l;-><init>(Landroidx/appcompat/widget/q4;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v3}, Landroidx/core/view/p1;->d(Landroidx/core/view/q1;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 116
    .line 117
    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->l(IJ)Landroidx/core/view/p1;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    move-object v8, v1

    .line 122
    move-object v1, p1

    .line 123
    move-object p1, v8

    .line 124
    :goto_1
    new-instance v0, Li/m;

    .line 125
    .line 126
    invoke-direct {v0}, Li/m;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v2, v0, Li/m;->a:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    iget-object v1, v1, Landroidx/core/view/p1;->a:Ljava/lang/ref/WeakReference;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroid/view/View;

    .line 141
    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    .line 149
    .line 150
    .line 151
    move-result-wide v3

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    const-wide/16 v3, 0x0

    .line 154
    .line 155
    :goto_2
    iget-object v1, p1, Landroidx/core/view/p1;->a:Ljava/lang/ref/WeakReference;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Landroid/view/View;

    .line 162
    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 170
    .line 171
    .line 172
    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Li/m;->b()V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    if-eqz p1, :cond_8

    .line 180
    .line 181
    iget-object p1, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 182
    .line 183
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 184
    .line 185
    iget-object p1, p1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 186
    .line 187
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_8
    iget-object p1, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 197
    .line 198
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 199
    .line 200
    iget-object p1, p1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 206
    .line 207
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    :goto_3
    return-void
.end method

.method public final t(Landroid/view/View;)V
    .locals 6

    .line 1
    const v0, 0x7f0a0186

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lf/y0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/f;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const v0, 0x7f0a004a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Landroidx/appcompat/widget/y1;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Landroidx/appcompat/widget/y1;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    if-eqz v1, :cond_8

    .line 34
    .line 35
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/y1;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    iput-object v0, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 42
    .line 43
    const v0, 0x7f0a0054

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 51
    .line 52
    iput-object v0, p0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 53
    .line 54
    const v0, 0x7f0a004c

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    .line 62
    .line 63
    iput-object p1, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 64
    .line 65
    iget-object v0, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    iget-object v1, p0, Lf/y0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 76
    .line 77
    iget-object p1, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lf/y0;->a:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v0, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 86
    .line 87
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 88
    .line 89
    iget v0, v0, Landroidx/appcompat/widget/q4;->b:I

    .line 90
    .line 91
    and-int/lit8 v0, v0, 0x4

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    const/4 v2, 0x1

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    move v0, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move v0, v1

    .line 100
    :goto_1
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iput-boolean v2, p0, Lf/y0;->h:Z

    .line 103
    .line 104
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 109
    .line 110
    const/16 v4, 0xe

    .line 111
    .line 112
    iget-object v0, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/high16 v0, 0x7f050000

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Lf/y0;->u(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lf/y0;->a:Landroid/content/Context;

    .line 131
    .line 132
    sget-object v0, Le/a;->a:[I

    .line 133
    .line 134
    const v3, 0x7f040007

    .line 135
    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p1, v5, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    iget-object v0, p0, Lf/y0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 149
    .line 150
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    .line 151
    .line 152
    if-eqz v3, :cond_4

    .line 153
    .line 154
    iput-boolean v2, p0, Lf/y0;->u:Z

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_5
    :goto_2
    const/16 v0, 0xc

    .line 169
    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    int-to-float v0, v0

    .line 177
    iget-object v1, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 178
    .line 179
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 180
    .line 181
    invoke-static {v1, v0}, Landroidx/core/view/q0;->s(Landroid/view/View;F)V

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    const-class v0, Lf/y0;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const-string v1, " can only be used with a compatible window decor layout"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 207
    .line 208
    if-eqz v0, :cond_9

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    goto :goto_3

    .line 219
    :cond_9
    const-string v0, "null"

    .line 220
    .line 221
    :goto_3
    const-string v1, "Can\'t make a decor toolbar out of "

    .line 222
    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1
.end method

.method public final u(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 5
    .line 6
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/g3;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/g3;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 23
    .line 24
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lf/y0;->e:Landroidx/appcompat/widget/y1;

    .line 35
    .line 36
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lf/y0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final v(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lf/y0;->p:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lf/y0;->q:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    :cond_0
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v3

    .line 14
    :goto_0
    iget-object v1, p0, Lf/y0;->x:Lf/q0;

    .line 15
    .line 16
    iget-object v4, p0, Lf/y0;->g:Landroid/view/View;

    .line 17
    .line 18
    const-wide/16 v5, 0xfa

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const/high16 v8, 0x3f800000    # 1.0f

    .line 22
    .line 23
    if-eqz v0, :cond_e

    .line 24
    .line 25
    iget-boolean v0, p0, Lf/y0;->r:Z

    .line 26
    .line 27
    if-nez v0, :cond_1a

    .line 28
    .line 29
    iput-boolean v2, p0, Lf/y0;->r:Z

    .line 30
    .line 31
    iget-object v0, p0, Lf/y0;->s:Li/m;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Li/m;->a()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lf/y0;->n:I

    .line 44
    .line 45
    iget-object v9, p0, Lf/y0;->w:Lf/w0;

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    if-nez v0, :cond_c

    .line 49
    .line 50
    iget-boolean v0, p0, Lf/y0;->t:Z

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    if-eqz p1, :cond_c

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 57
    .line 58
    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    neg-int v0, v0

    .line 68
    int-to-float v0, v0

    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    filled-new-array {v3, v3}, [I

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v8, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 76
    .line 77
    invoke-virtual {v8, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 78
    .line 79
    .line 80
    aget p1, p1, v2

    .line 81
    .line 82
    int-to-float p1, p1

    .line 83
    sub-float/2addr v0, p1

    .line 84
    :cond_4
    iget-object p1, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Li/m;

    .line 90
    .line 91
    invoke-direct {p1}, Li/m;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 95
    .line 96
    invoke-static {v2}, Landroidx/core/view/c1;->a(Landroid/view/View;)Landroidx/core/view/p1;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2, v10}, Landroidx/core/view/p1;->e(F)V

    .line 101
    .line 102
    .line 103
    iget-object v8, v2, Landroidx/core/view/p1;->a:Ljava/lang/ref/WeakReference;

    .line 104
    .line 105
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    check-cast v8, Landroid/view/View;

    .line 110
    .line 111
    if-eqz v8, :cond_6

    .line 112
    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    new-instance v7, Landroidx/core/view/m1;

    .line 116
    .line 117
    invoke-direct {v7, v1, v8, v3}, Landroidx/core/view/m1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1, v7}, Landroidx/core/view/o1;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 125
    .line 126
    .line 127
    :cond_6
    iget-boolean v1, p1, Li/m;->e:Z

    .line 128
    .line 129
    iget-object v3, p1, Li/m;->a:Ljava/util/ArrayList;

    .line 130
    .line 131
    if-nez v1, :cond_7

    .line 132
    .line 133
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :cond_7
    iget-boolean v1, p0, Lf/y0;->o:Z

    .line 137
    .line 138
    if-eqz v1, :cond_8

    .line 139
    .line 140
    if-eqz v4, :cond_8

    .line 141
    .line 142
    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 143
    .line 144
    .line 145
    invoke-static {v4}, Landroidx/core/view/c1;->a(Landroid/view/View;)Landroidx/core/view/p1;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0, v10}, Landroidx/core/view/p1;->e(F)V

    .line 150
    .line 151
    .line 152
    iget-boolean v1, p1, Li/m;->e:Z

    .line 153
    .line 154
    if-nez v1, :cond_8

    .line 155
    .line 156
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_8
    sget-object v0, Lf/y0;->z:Landroid/view/animation/DecelerateInterpolator;

    .line 160
    .line 161
    iget-boolean v1, p1, Li/m;->e:Z

    .line 162
    .line 163
    if-nez v1, :cond_9

    .line 164
    .line 165
    iput-object v0, p1, Li/m;->c:Landroid/view/animation/Interpolator;

    .line 166
    .line 167
    :cond_9
    if-nez v1, :cond_a

    .line 168
    .line 169
    iput-wide v5, p1, Li/m;->b:J

    .line 170
    .line 171
    :cond_a
    if-nez v1, :cond_b

    .line 172
    .line 173
    iput-object v9, p1, Li/m;->d:Landroidx/core/view/q1;

    .line 174
    .line 175
    :cond_b
    iput-object p1, p0, Lf/y0;->s:Li/m;

    .line 176
    .line 177
    invoke-virtual {p1}, Li/m;->b()V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_c
    iget-object p1, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 182
    .line 183
    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 187
    .line 188
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 189
    .line 190
    .line 191
    iget-boolean p1, p0, Lf/y0;->o:Z

    .line 192
    .line 193
    if-eqz p1, :cond_d

    .line 194
    .line 195
    if-eqz v4, :cond_d

    .line 196
    .line 197
    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 198
    .line 199
    .line 200
    :cond_d
    invoke-virtual {v9}, Lf/w0;->onAnimationEnd()V

    .line 201
    .line 202
    .line 203
    :goto_1
    iget-object p1, p0, Lf/y0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 204
    .line 205
    if-eqz p1, :cond_1a

    .line 206
    .line 207
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 208
    .line 209
    invoke-static {p1}, Landroidx/core/view/o0;->c(Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :cond_e
    iget-boolean v0, p0, Lf/y0;->r:Z

    .line 215
    .line 216
    if-eqz v0, :cond_1a

    .line 217
    .line 218
    iput-boolean v3, p0, Lf/y0;->r:Z

    .line 219
    .line 220
    iget-object v0, p0, Lf/y0;->s:Li/m;

    .line 221
    .line 222
    if-eqz v0, :cond_f

    .line 223
    .line 224
    invoke-virtual {v0}, Li/m;->a()V

    .line 225
    .line 226
    .line 227
    :cond_f
    iget v0, p0, Lf/y0;->n:I

    .line 228
    .line 229
    iget-object v9, p0, Lf/y0;->v:Lf/w0;

    .line 230
    .line 231
    if-nez v0, :cond_19

    .line 232
    .line 233
    iget-boolean v0, p0, Lf/y0;->t:Z

    .line 234
    .line 235
    if-nez v0, :cond_10

    .line 236
    .line 237
    if-eqz p1, :cond_19

    .line 238
    .line 239
    :cond_10
    iget-object v0, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 240
    .line 241
    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 245
    .line 246
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 247
    .line 248
    .line 249
    new-instance v0, Li/m;

    .line 250
    .line 251
    invoke-direct {v0}, Li/m;-><init>()V

    .line 252
    .line 253
    .line 254
    iget-object v8, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 255
    .line 256
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    neg-int v8, v8

    .line 261
    int-to-float v8, v8

    .line 262
    if-eqz p1, :cond_11

    .line 263
    .line 264
    filled-new-array {v3, v3}, [I

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object v10, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 269
    .line 270
    invoke-virtual {v10, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 271
    .line 272
    .line 273
    aget p1, p1, v2

    .line 274
    .line 275
    int-to-float p1, p1

    .line 276
    sub-float/2addr v8, p1

    .line 277
    :cond_11
    iget-object p1, p0, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 278
    .line 279
    invoke-static {p1}, Landroidx/core/view/c1;->a(Landroid/view/View;)Landroidx/core/view/p1;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p1, v8}, Landroidx/core/view/p1;->e(F)V

    .line 284
    .line 285
    .line 286
    iget-object v2, p1, Landroidx/core/view/p1;->a:Ljava/lang/ref/WeakReference;

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Landroid/view/View;

    .line 293
    .line 294
    if-eqz v2, :cond_13

    .line 295
    .line 296
    if-eqz v1, :cond_12

    .line 297
    .line 298
    new-instance v7, Landroidx/core/view/m1;

    .line 299
    .line 300
    invoke-direct {v7, v1, v2, v3}, Landroidx/core/view/m1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 301
    .line 302
    .line 303
    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-static {v1, v7}, Landroidx/core/view/o1;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 308
    .line 309
    .line 310
    :cond_13
    iget-boolean v1, v0, Li/m;->e:Z

    .line 311
    .line 312
    iget-object v2, v0, Li/m;->a:Ljava/util/ArrayList;

    .line 313
    .line 314
    if-nez v1, :cond_14

    .line 315
    .line 316
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    :cond_14
    iget-boolean p1, p0, Lf/y0;->o:Z

    .line 320
    .line 321
    if-eqz p1, :cond_15

    .line 322
    .line 323
    if-eqz v4, :cond_15

    .line 324
    .line 325
    invoke-static {v4}, Landroidx/core/view/c1;->a(Landroid/view/View;)Landroidx/core/view/p1;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p1, v8}, Landroidx/core/view/p1;->e(F)V

    .line 330
    .line 331
    .line 332
    iget-boolean v1, v0, Li/m;->e:Z

    .line 333
    .line 334
    if-nez v1, :cond_15

    .line 335
    .line 336
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    :cond_15
    sget-object p1, Lf/y0;->y:Landroid/view/animation/AccelerateInterpolator;

    .line 340
    .line 341
    iget-boolean v1, v0, Li/m;->e:Z

    .line 342
    .line 343
    if-nez v1, :cond_16

    .line 344
    .line 345
    iput-object p1, v0, Li/m;->c:Landroid/view/animation/Interpolator;

    .line 346
    .line 347
    :cond_16
    if-nez v1, :cond_17

    .line 348
    .line 349
    iput-wide v5, v0, Li/m;->b:J

    .line 350
    .line 351
    :cond_17
    if-nez v1, :cond_18

    .line 352
    .line 353
    iput-object v9, v0, Li/m;->d:Landroidx/core/view/q1;

    .line 354
    .line 355
    :cond_18
    iput-object v0, p0, Lf/y0;->s:Li/m;

    .line 356
    .line 357
    invoke-virtual {v0}, Li/m;->b()V

    .line 358
    .line 359
    .line 360
    goto :goto_2

    .line 361
    :cond_19
    invoke-virtual {v9}, Lf/w0;->onAnimationEnd()V

    .line 362
    .line 363
    .line 364
    :cond_1a
    :goto_2
    return-void
.end method
