.class public final Lf/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/b;


# instance fields
.field public final a:Li/b;

.field public final synthetic b:Lf/h0;


# direct methods
.method public constructor <init>(Lf/h0;Li/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/y;->b:Lf/h0;

    iput-object p2, p0, Lf/y;->a:Li/b;

    return-void
.end method


# virtual methods
.method public final a(Li/c;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/y;->a:Li/b;

    invoke-interface {v0, p1, p2}, Li/b;->a(Li/c;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final b(Li/c;Landroidx/appcompat/view/menu/o;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/y;->a:Li/b;

    invoke-interface {v0, p1, p2}, Li/b;->b(Li/c;Landroidx/appcompat/view/menu/o;)Z

    move-result p1

    return p1
.end method

.method public final c(Li/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/y;->a:Li/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Li/b;->c(Li/c;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lf/y;->b:Lf/h0;

    .line 7
    .line 8
    iget-object v0, p1, Lf/h0;->x:Landroid/widget/PopupWindow;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p1, Lf/h0;->l:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p1, Lf/h0;->y:Lf/v;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p1, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p1, Lf/h0;->z:Landroidx/core/view/p1;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/core/view/p1;->b()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p1, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 35
    .line 36
    invoke-static {v0}, Landroidx/core/view/c1;->a(Landroid/view/View;)Landroidx/core/view/p1;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroidx/core/view/p1;->a(F)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p1, Lf/h0;->z:Landroidx/core/view/p1;

    .line 45
    .line 46
    new-instance v1, Lf/x;

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    invoke-direct {v1, p0, v2}, Lf/x;-><init>(Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/core/view/p1;->d(Landroidx/core/view/q1;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p1, Lf/h0;->n:Lf/r;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v1, p1, Lf/h0;->v:Li/c;

    .line 60
    .line 61
    invoke-interface {v0, v1}, Lf/r;->onSupportActionModeFinished(Li/c;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    const/4 v0, 0x0

    .line 65
    iput-object v0, p1, Lf/h0;->v:Li/c;

    .line 66
    .line 67
    iget-object v0, p1, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 68
    .line 69
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 70
    .line 71
    invoke-static {v0}, Landroidx/core/view/o0;->c(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lf/h0;->H()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final d(Li/c;Landroidx/appcompat/view/menu/o;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/y;->b:Lf/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 4
    .line 5
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/view/o0;->c(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lf/y;->a:Li/b;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Li/b;->d(Li/c;Landroidx/appcompat/view/menu/o;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method
