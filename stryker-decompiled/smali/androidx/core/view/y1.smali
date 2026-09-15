.class public final Landroidx/core/view/y1;
.super Landroidx/core/view/c2;
.source "SourceFile"


# direct methods
.method public static e(Landroid/view/View;Landroidx/core/view/d2;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/y1;->j(Landroid/view/View;)Landroidx/core/view/u1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/core/view/u1;->onEnd(Landroidx/core/view/d2;)V

    invoke-virtual {v0}, Landroidx/core/view/u1;->getDispatchMode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/view/y1;->e(Landroid/view/View;Landroidx/core/view/d2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static f(Landroid/view/View;Landroidx/core/view/d2;Landroid/view/WindowInsets;Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/y1;->j(Landroid/view/View;)Landroidx/core/view/u1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object p2, v0, Landroidx/core/view/u1;->mDispachedInsets:Landroid/view/WindowInsets;

    if-nez p3, :cond_1

    invoke-virtual {v0, p1}, Landroidx/core/view/u1;->onPrepare(Landroidx/core/view/d2;)V

    invoke-virtual {v0}, Landroidx/core/view/u1;->getDispatchMode()I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v1

    :cond_1
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/y1;->f(Landroid/view/View;Landroidx/core/view/d2;Landroid/view/WindowInsets;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static g(Landroid/view/View;Landroidx/core/view/q2;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/y1;->j(Landroid/view/View;)Landroidx/core/view/u1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/u1;->onProgress(Landroidx/core/view/q2;Ljava/util/List;)Landroidx/core/view/q2;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/core/view/u1;->getDispatchMode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroidx/core/view/y1;->g(Landroid/view/View;Landroidx/core/view/q2;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static h(Landroid/view/View;Landroidx/core/view/d2;Landroidx/core/view/t1;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/y1;->j(Landroid/view/View;)Landroidx/core/view/u1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/u1;->onStart(Landroidx/core/view/d2;Landroidx/core/view/t1;)Landroidx/core/view/t1;

    invoke-virtual {v0}, Landroidx/core/view/u1;->getDispatchMode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroidx/core/view/y1;->h(Landroid/view/View;Landroidx/core/view/d2;Landroidx/core/view/t1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    const v0, 0x7f0a0616

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/view/View;)Landroidx/core/view/u1;
    .locals 1

    .line 1
    const v0, 0x7f0a0620

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/core/view/x1;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/view/x1;

    iget-object p0, p0, Landroidx/core/view/x1;->a:Landroidx/core/view/u1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
