.class public Landroidx/transition/m;
.super Landroidx/fragment/app/n1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static u(Landroidx/transition/u;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/transition/u;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/n1;->h(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/transition/u;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/n1;->h(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/transition/u;->getTargetTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/fragment/app/n1;->h(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    check-cast p2, Landroidx/transition/u;

    invoke-virtual {p2, p1}, Landroidx/transition/u;->addTarget(Landroid/view/View;)Landroidx/transition/u;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/transition/u;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Landroidx/transition/a0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    check-cast p1, Landroidx/transition/a0;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_4

    .line 20
    .line 21
    if-ltz v1, :cond_2

    .line 22
    .line 23
    iget-object v2, p1, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-lt v1, v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v2, p1, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroidx/transition/u;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 42
    :goto_2
    invoke-virtual {p0, v2, p2}, Landroidx/transition/m;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {p1}, Landroidx/transition/m;->u(Landroidx/transition/u;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/transition/u;->getTargets()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Landroidx/fragment/app/n1;->h(Ljava/util/List;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    :goto_3
    if-ge v1, v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Landroidx/transition/u;->addTarget(Landroid/view/View;)Landroidx/transition/u;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/transition/u;

    invoke-static {p1, p2}, Landroidx/transition/x;->a(Landroid/view/ViewGroup;Landroidx/transition/u;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/transition/u;

    return p1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    check-cast p1, Landroidx/transition/u;

    invoke-virtual {p1}, Landroidx/transition/u;->clone()Landroidx/transition/u;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/transition/u;

    check-cast p2, Landroidx/transition/u;

    check-cast p3, Landroidx/transition/u;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroidx/transition/a0;

    invoke-direct {v0}, Landroidx/transition/a0;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/transition/a0;->e(Landroidx/transition/u;)V

    invoke-virtual {v0, p2}, Landroidx/transition/a0;->e(Landroidx/transition/u;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/transition/a0;->i(I)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    new-instance p2, Landroidx/transition/a0;

    invoke-direct {p2}, Landroidx/transition/a0;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p2, p1}, Landroidx/transition/a0;->e(Landroidx/transition/u;)V

    :cond_3
    invoke-virtual {p2, p3}, Landroidx/transition/a0;->e(Landroidx/transition/u;)V

    return-object p2

    :cond_4
    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroidx/transition/a0;

    invoke-direct {v0}, Landroidx/transition/a0;-><init>()V

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/transition/u;

    invoke-virtual {v0, p1}, Landroidx/transition/a0;->e(Landroidx/transition/u;)V

    :cond_0
    if-eqz p2, :cond_1

    check-cast p2, Landroidx/transition/u;

    invoke-virtual {v0, p2}, Landroidx/transition/a0;->e(Landroidx/transition/u;)V

    :cond_1
    if-eqz p3, :cond_2

    check-cast p3, Landroidx/transition/u;

    invoke-virtual {v0, p3}, Landroidx/transition/a0;->e(Landroidx/transition/u;)V

    :cond_2
    return-object v0
.end method

.method public final l(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/transition/u;

    new-instance v0, Landroidx/transition/k;

    invoke-direct {v0, p2, p3}, Landroidx/transition/k;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/transition/u;->addListener(Landroidx/transition/t;)Landroidx/transition/u;

    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    move-object v0, p1

    check-cast v0, Landroidx/transition/u;

    new-instance v9, Landroidx/transition/l;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Landroidx/transition/l;-><init>(Landroidx/transition/m;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Landroidx/transition/u;->addListener(Landroidx/transition/t;)Landroidx/transition/u;

    return-void
.end method

.method public final n(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    check-cast p2, Landroidx/transition/u;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, p1}, Landroidx/fragment/app/n1;->g(Landroid/graphics/Rect;Landroid/view/View;)V

    new-instance p1, Landroidx/transition/j;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/transition/j;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p2, p1}, Landroidx/transition/u;->setEpicenterCallback(Landroidx/transition/s;)V

    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    check-cast p1, Landroidx/transition/u;

    new-instance v0, Landroidx/transition/j;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Landroidx/transition/j;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p1, v0}, Landroidx/transition/u;->setEpicenterCallback(Landroidx/transition/s;)V

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/transition/a0;

    invoke-virtual {p1}, Landroidx/transition/u;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/n1;->d(Landroid/view/View;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p3}, Landroidx/transition/m;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/transition/a0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/transition/u;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Landroidx/transition/u;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/m;->v(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroidx/transition/a0;

    invoke-direct {v0}, Landroidx/transition/a0;-><init>()V

    check-cast p1, Landroidx/transition/u;

    invoke-virtual {v0, p1}, Landroidx/transition/a0;->e(Landroidx/transition/u;)V

    return-object v0
.end method

.method public final v(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/transition/u;

    .line 2
    .line 3
    instance-of v0, p1, Landroidx/transition/a0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p1, Landroidx/transition/a0;

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_5

    .line 17
    .line 18
    if-ltz v1, :cond_1

    .line 19
    .line 20
    iget-object v2, p1, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-lt v1, v2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v2, p1, Landroidx/transition/a0;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/transition/u;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 39
    :goto_2
    invoke-virtual {p0, v2, p2, p3}, Landroidx/transition/m;->v(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p1}, Landroidx/transition/m;->u(Landroidx/transition/u;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/transition/u;->getTargets()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ne v2, v3, :cond_5

    .line 64
    .line 65
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    if-nez p3, :cond_3

    .line 72
    .line 73
    move v0, v1

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    :goto_3
    if-ge v1, v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroidx/transition/u;->addTarget(Landroid/view/View;)Landroidx/transition/u;

    .line 88
    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    add-int/lit8 p3, p3, -0x1

    .line 98
    .line 99
    :goto_4
    if-ltz p3, :cond_5

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/view/View;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroidx/transition/u;->removeTarget(Landroid/view/View;)Landroidx/transition/u;

    .line 108
    .line 109
    .line 110
    add-int/lit8 p3, p3, -0x1

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    return-void
.end method
