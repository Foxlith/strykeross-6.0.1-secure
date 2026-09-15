.class public Landroidx/recyclerview/widget/g0;
.super Landroidx/recyclerview/widget/z0;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Landroidx/recyclerview/widget/s1;

.field public c:Landroidx/recyclerview/widget/d0;

.field public d:Landroidx/recyclerview/widget/d0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/recyclerview/widget/s1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/s1;-><init>(Landroidx/recyclerview/widget/g0;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/g0;->b:Landroidx/recyclerview/widget/s1;

    .line 10
    .line 11
    return-void
.end method

.method public static c(Landroid/view/View;Landroidx/recyclerview/widget/e0;)I
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->i()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static d(Landroidx/recyclerview/widget/w0;Landroidx/recyclerview/widget/e0;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->h()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->i()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/e0;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/g0;->b:Landroidx/recyclerview/widget/s1;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/b1;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/z0;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object p1, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/z0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/b1;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/z0;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Landroid/widget/Scroller;

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g0;->h()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "An instance of OnFlingListener already set."

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/w0;Landroid/view/View;)[I
    .locals 4

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g0;->f(Landroidx/recyclerview/widget/w0;)Landroidx/recyclerview/widget/e0;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/recyclerview/widget/g0;->c(Landroid/view/View;Landroidx/recyclerview/widget/e0;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g0;->g(Landroidx/recyclerview/widget/w0;)Landroidx/recyclerview/widget/e0;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/recyclerview/widget/g0;->c(Landroid/view/View;Landroidx/recyclerview/widget/e0;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method public e(Landroidx/recyclerview/widget/w0;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/w0;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g0;->g(Landroidx/recyclerview/widget/w0;)Landroidx/recyclerview/widget/e0;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/g0;->d(Landroidx/recyclerview/widget/w0;Landroidx/recyclerview/widget/e0;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/w0;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g0;->f(Landroidx/recyclerview/widget/w0;)Landroidx/recyclerview/widget/e0;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(Landroidx/recyclerview/widget/w0;)Landroidx/recyclerview/widget/e0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g0;->d:Landroidx/recyclerview/widget/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/d0;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/d0;-><init>(Landroidx/recyclerview/widget/w0;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/recyclerview/widget/g0;->d:Landroidx/recyclerview/widget/d0;

    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/g0;->d:Landroidx/recyclerview/widget/d0;

    .line 18
    .line 19
    return-object p1
.end method

.method public final g(Landroidx/recyclerview/widget/w0;)Landroidx/recyclerview/widget/e0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g0;->c:Landroidx/recyclerview/widget/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/w0;

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/d0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/d0;-><init>(Landroidx/recyclerview/widget/w0;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/recyclerview/widget/g0;->c:Landroidx/recyclerview/widget/d0;

    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/g0;->c:Landroidx/recyclerview/widget/d0;

    .line 18
    .line 19
    return-object p1
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/g0;->e(Landroidx/recyclerview/widget/w0;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/g0;->b(Landroidx/recyclerview/widget/w0;Landroid/view/View;)[I

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    aget v1, v0, v1

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    aget v3, v0, v2

    .line 31
    .line 32
    if-eqz v3, :cond_4

    .line 33
    .line 34
    :cond_3
    iget-object v3, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    aget v0, v0, v2

    .line 37
    .line 38
    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 39
    .line 40
    .line 41
    :cond_4
    :goto_0
    return-void
.end method
