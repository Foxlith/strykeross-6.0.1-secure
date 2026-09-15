.class public final Landroidx/core/view/w2;
.super Ld/d;
.source "SourceFile"


# instance fields
.field public final e:Landroid/view/WindowInsetsController;

.field public f:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ld/d;-><init>(I)V

    iput-object p1, p0, Landroidx/core/view/w2;->e:Landroid/view/WindowInsetsController;

    return-void
.end method


# virtual methods
.method public final i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/w2;->e:Landroid/view/WindowInsetsController;

    invoke-static {v0, p1}, Landroidx/core/view/z1;->r(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/w2;->e:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/z1;->d(Landroid/view/WindowInsetsController;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final p(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/w2;->f:Landroid/view/Window;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/w2;->e:Landroid/view/WindowInsetsController;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    or-int/lit8 v0, v0, 0x10

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {v1}, Landroidx/core/view/z1;->v(Landroid/view/WindowInsetsController;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    and-int/lit8 v0, v0, -0x11

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-static {v1}, Landroidx/core/view/z1;->x(Landroid/view/WindowInsetsController;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final q(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/w2;->f:Landroid/view/Window;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/w2;->e:Landroid/view/WindowInsetsController;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    or-int/lit16 v0, v0, 0x2000

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {v1}, Landroidx/core/view/z1;->z(Landroid/view/WindowInsetsController;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    and-int/lit16 v0, v0, -0x2001

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-static {v1}, Landroidx/core/view/v2;->o(Landroid/view/WindowInsetsController;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/w2;->e:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/v2;->s(Landroid/view/WindowInsetsController;)V

    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/w2;->f:Landroid/view/Window;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    :cond_0
    iget-object v0, p0, Landroidx/core/view/w2;->e:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/z1;->q(Landroid/view/WindowInsetsController;)V

    return-void
.end method
