.class public abstract Landroidx/fragment/app/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static d(Landroid/view/View;Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-ne v3, p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    invoke-static {p0}, Landroidx/core/view/q0;->k(Landroid/view/View;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_2
    move p0, v0

    .line 31
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ge p0, v2, :cond_7

    .line 36
    .line 37
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/view/View;

    .line 42
    .line 43
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 44
    .line 45
    if-eqz v3, :cond_6

    .line 46
    .line 47
    check-cast v2, Landroid/view/ViewGroup;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    move v4, v1

    .line 54
    :goto_2
    if-ge v4, v3, :cond_6

    .line 55
    .line 56
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    move v6, v1

    .line 61
    :goto_3
    if-ge v6, v0, :cond_4

    .line 62
    .line 63
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    if-ne v7, v5, :cond_3

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    invoke-static {v5}, Landroidx/core/view/q0;->k(Landroid/view/View;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    add-int/lit8 p0, p0, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_7
    return-void
.end method

.method public static g(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/n0;->b(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    check-cast v1, Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    neg-int v2, v2

    .line 64
    int-to-float v2, v2

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    neg-int v3, v3

    .line 70
    int-to-float v3, v3

    .line 71
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    int-to-float v2, v2

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    int-to-float v3, v3

    .line 91
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x2

    .line 100
    new-array v1, v1, [I

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    aget p1, v1, p1

    .line 111
    .line 112
    int-to-float p1, p1

    .line 113
    const/4 v2, 0x1

    .line 114
    aget v1, v1, v2

    .line 115
    .line 116
    int-to-float v1, v1

    .line 117
    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 118
    .line 119
    .line 120
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 121
    .line 122
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 127
    .line 128
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 139
    .line 140
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public static h(Ljava/util/List;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static k(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/view/View;

    .line 18
    .line 19
    sget-object v4, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    invoke-static {v3}, Landroidx/core/view/q0;->k(Landroid/view/View;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {v3, v4}, Landroidx/core/view/q0;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-object v0
.end method

.method public static q(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ln/b;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    move v2, v0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/view/View;

    .line 19
    .line 20
    sget-object v4, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 21
    .line 22
    invoke-static {v3}, Landroidx/core/view/q0;->k(Landroid/view/View;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const/4 v6, 0x0

    .line 33
    invoke-static {v3, v6}, Landroidx/core/view/q0;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, v4, v6}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    move v6, v0

    .line 43
    :goto_1
    if-ge v6, v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroid/view/View;

    .line 60
    .line 61
    invoke-static {v3, v4}, Landroidx/core/view/q0;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    new-instance p4, Landroidx/fragment/app/m1;

    .line 72
    .line 73
    move-object v0, p4

    .line 74
    move-object v2, p2

    .line 75
    move-object v3, p3

    .line 76
    move-object v4, p1

    .line 77
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/m1;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0, p4}, Landroidx/core/view/d0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/util/ArrayList;)V
.end method

.method public abstract c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
.end method

.method public abstract e(Ljava/lang/Object;)Z
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract l(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end method

.method public abstract m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end method

.method public abstract n(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public abstract o(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public p(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public abstract r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end method

.method public abstract s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end method

.method public abstract t(Ljava/lang/Object;)Ljava/lang/Object;
.end method
