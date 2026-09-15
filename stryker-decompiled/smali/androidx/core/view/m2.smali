.class public Landroidx/core/view/m2;
.super Landroidx/core/view/l2;
.source "SourceFile"


# instance fields
.field public n:Lz/f;

.field public o:Lz/f;

.field public p:Lz/f;


# direct methods
.method public constructor <init>(Landroidx/core/view/q2;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/view/l2;-><init>(Landroidx/core/view/q2;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/m2;->n:Lz/f;

    iput-object p1, p0, Landroidx/core/view/m2;->o:Lz/f;

    iput-object p1, p0, Landroidx/core/view/m2;->p:Lz/f;

    return-void
.end method


# virtual methods
.method public g()Lz/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/m2;->o:Lz/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/appcompat/widget/r1;->z(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lz/f;->c(Landroid/graphics/Insets;)Lz/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/m2;->o:Lz/f;

    :cond_0
    iget-object v0, p0, Landroidx/core/view/m2;->o:Lz/f;

    return-object v0
.end method

.method public i()Lz/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/m2;->n:Lz/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/appcompat/widget/r1;->d(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lz/f;->c(Landroid/graphics/Insets;)Lz/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/m2;->n:Lz/f;

    :cond_0
    iget-object v0, p0, Landroidx/core/view/m2;->n:Lz/f;

    return-object v0
.end method

.method public k()Lz/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/m2;->p:Lz/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/appcompat/widget/r1;->v(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lz/f;->c(Landroid/graphics/Insets;)Lz/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/m2;->p:Lz/f;

    :cond_0
    iget-object v0, p0, Landroidx/core/view/m2;->p:Lz/f;

    return-object v0
.end method

.method public l(IIII)Landroidx/core/view/q2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/r1;->j(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p2, p1}, Landroidx/core/view/q2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public q(Lz/f;)V
    .locals 0

    .line 1
    return-void
.end method
