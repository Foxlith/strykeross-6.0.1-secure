.class public Landroidx/core/view/g2;
.super Landroidx/core/view/i2;
.source "SourceFile"


# instance fields
.field public final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/view/i2;-><init>()V

    invoke-static {}, Landroidx/appcompat/widget/r1;->g()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/g2;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/q2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/core/view/i2;-><init>(Landroidx/core/view/q2;)V

    invoke-virtual {p1}, Landroidx/core/view/q2;->g()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/appcompat/widget/r1;->h(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/r1;->g()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/core/view/g2;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Landroidx/core/view/q2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/i2;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/view/g2;->c:Landroid/view/WindowInsets$Builder;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/appcompat/widget/r1;->i(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v0}, Landroidx/core/view/q2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/core/view/i2;->b:[Lz/f;

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroidx/core/view/o2;->o([Lz/f;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public d(Lz/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/g2;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz/f;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/widget/r1;->C(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public e(Lz/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/g2;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz/f;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/widget/r1;->A(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public f(Lz/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/g2;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz/f;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/widget/r1;->D(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public g(Lz/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/g2;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz/f;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/widget/r1;->x(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public h(Lz/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/g2;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz/f;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/widget/r1;->r(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method
