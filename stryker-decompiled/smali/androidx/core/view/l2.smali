.class public Landroidx/core/view/l2;
.super Landroidx/core/view/k2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/core/view/q2;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/view/k2;-><init>(Landroidx/core/view/q2;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/q2;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/view/j;->n(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v0}, Landroidx/core/view/q2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public e()Landroidx/core/view/l;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/view/j;->m(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Landroidx/core/view/l;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroidx/core/view/l;-><init>(Landroid/view/DisplayCutout;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/core/view/l2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/core/view/l2;

    iget-object v1, p1, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    iget-object v3, p0, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/core/view/j2;->g:Lz/f;

    iget-object p1, p1, Landroidx/core/view/j2;->g:Lz/f;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
