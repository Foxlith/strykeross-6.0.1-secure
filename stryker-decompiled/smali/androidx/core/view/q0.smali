.class public abstract Landroidx/core/view/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/WindowInsets;Landroid/view/View;)V
    .locals 1

    .line 1
    const v0, 0x7f0a0620

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;Landroidx/core/view/q2;Landroid/graphics/Rect;)Landroidx/core/view/q2;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/q2;->g()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/q2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-object p1
.end method

.method public static c(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/view/View;II[I[I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/view/View;IIII[I)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public static j(Landroid/view/View;)Landroidx/core/view/q2;
    .locals 7

    .line 1
    sget-boolean v0, Landroidx/core/view/e2;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :try_start_0
    sget-object v2, Landroidx/core/view/e2;->a:Ljava/lang/reflect/Field;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object v2, Landroidx/core/view/e2;->b:Ljava/lang/reflect/Field;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/graphics/Rect;

    .line 33
    .line 34
    sget-object v3, Landroidx/core/view/e2;->c:Ljava/lang/reflect/Field;

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/graphics/Rect;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    new-instance v3, Lf/q0;

    .line 47
    .line 48
    const/16 v4, 0xd

    .line 49
    .line 50
    invoke-direct {v3, v4}, Lf/q0;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    invoke-static {v4, v5, v6, v2}, Lz/f;->b(IIII)Lz/f;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v4, v3, Lf/q0;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Landroidx/core/view/i2;

    .line 68
    .line 69
    invoke-virtual {v4, v2}, Landroidx/core/view/i2;->e(Lz/f;)V

    .line 70
    .line 71
    .line 72
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    invoke-static {v2, v4, v5, v0}, Lz/f;->b(IIII)Lz/f;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v2, v3, Lf/q0;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Landroidx/core/view/i2;

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Landroidx/core/view/i2;->g(Lz/f;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v3, Lf/q0;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Landroidx/core/view/i2;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/core/view/i2;->b()Landroidx/core/view/q2;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v2, v0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Landroidx/core/view/o2;->p(Landroidx/core/view/q2;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    iget-object v2, v0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 109
    .line 110
    invoke-virtual {v2, p0}, Landroidx/core/view/o2;->d(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    move-object v1, v0

    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "Failed to get insets from AttachInfo. "

    .line 119
    .line 120
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v2, "WindowInsetsCompat"

    .line 135
    .line 136
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .line 138
    .line 139
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static k(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result p0

    return p0
.end method

.method public static m(Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result p0

    return p0
.end method

.method public static n(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result p0

    return p0
.end method

.method public static p(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public static q(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static s(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public static t(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static u(Landroid/view/View;Landroidx/core/view/a0;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const v0, 0x7f0a0616

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f0a0620

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    :cond_1
    new-instance v0, Landroidx/core/view/p0;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/p0;-><init>(Landroid/view/View;Landroidx/core/view/a0;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static v(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public static x(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    return-void
.end method

.method public static y(Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public static z(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    return-void
.end method
