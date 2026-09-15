.class public final Landroidx/recyclerview/widget/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:I

.field public d:I

.field public final e:I

.field public final synthetic f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/a2;->b:I

    iput p1, p0, Landroidx/recyclerview/widget/a2;->c:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/a2;->d:I

    iput p2, p0, Landroidx/recyclerview/widget/a2;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/recyclerview/widget/x1;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Landroidx/recyclerview/widget/a2;->c:I

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/a2;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/a2;->c:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/a2;->d:I

    return-void
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/a2;->e(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/a2;->e(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/a2;->e(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/a2;->e(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final e(II)I
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e0;->h()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/recyclerview/widget/e0;->f()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, -0x1

    .line 16
    const/4 v4, 0x1

    .line 17
    if-le p2, p1, :cond_0

    .line 18
    .line 19
    move v5, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v5, v3

    .line 22
    :goto_0
    if-eq p1, p2, :cond_5

    .line 23
    .line 24
    iget-object v6, p0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Landroid/view/View;

    .line 31
    .line 32
    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 33
    .line 34
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 39
    .line 40
    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const/4 v9, 0x0

    .line 45
    if-gt v7, v2, :cond_1

    .line 46
    .line 47
    move v10, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v10, v9

    .line 50
    :goto_1
    if-lt v8, v1, :cond_2

    .line 51
    .line 52
    move v9, v4

    .line 53
    :cond_2
    if-eqz v10, :cond_4

    .line 54
    .line 55
    if-eqz v9, :cond_4

    .line 56
    .line 57
    if-lt v7, v1, :cond_3

    .line 58
    .line 59
    if-le v8, v2, :cond_4

    .line 60
    .line 61
    :cond_3
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    add-int/2addr p1, v5

    .line 67
    goto :goto_0

    .line 68
    :cond_5
    :goto_2
    return v3
.end method

.method public final f(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/a2;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a2;->a()V

    iget p1, p0, Landroidx/recyclerview/widget/a2;->c:I

    return p1
.end method

.method public final g(II)Landroid/view/View;
    .locals 6

    .line 1
    const/4 v0, -0x1

    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, p0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-boolean v5, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v5

    if-le v5, p1, :cond_5

    :cond_0
    iget-boolean v5, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v5

    if-lt v5, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-boolean v4, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_5

    :cond_3
    iget-boolean v4, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-nez v4, :cond_4

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v4

    if-gt v4, p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 p2, p2, -0x1

    move-object v3, v0

    goto :goto_1

    :cond_5
    :goto_2
    return-object v3
.end method

.method public final h(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/a2;->b:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return p1

    .line 17
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/a2;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/recyclerview/widget/x1;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 33
    .line 34
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/e0;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Landroidx/recyclerview/widget/a2;->b:I

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget p1, p0, Landroidx/recyclerview/widget/a2;->b:I

    .line 46
    .line 47
    return p1
.end method
