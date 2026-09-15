.class public final Landroidx/appcompat/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroidx/appcompat/widget/a0;

.field public c:I

.field public d:Landroidx/appcompat/widget/f4;

.field public e:Landroidx/appcompat/widget/f4;

.field public f:Landroidx/appcompat/widget/f4;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/t;->c:I

    iput-object p1, p0, Landroidx/appcompat/widget/t;->a:Landroid/view/View;

    invoke-static {}, Landroidx/appcompat/widget/a0;->a()Landroidx/appcompat/widget/a0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/t;->b:Landroidx/appcompat/widget/a0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/f4;

    .line 10
    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/f4;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Landroidx/appcompat/widget/f4;

    .line 19
    .line 20
    invoke-direct {v2, v3}, Landroidx/appcompat/widget/f4;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/f4;

    .line 24
    .line 25
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/f4;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    iput-object v4, v2, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    .line 29
    .line 30
    iput-boolean v3, v2, Landroidx/appcompat/widget/f4;->b:Z

    .line 31
    .line 32
    iput-object v4, v2, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 33
    .line 34
    iput-boolean v3, v2, Landroidx/appcompat/widget/f4;->a:Z

    .line 35
    .line 36
    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    invoke-static {v0}, Landroidx/core/view/q0;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iput-boolean v4, v2, Landroidx/appcompat/widget/f4;->b:Z

    .line 46
    .line 47
    iput-object v3, v2, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    .line 48
    .line 49
    :cond_1
    invoke-static {v0}, Landroidx/core/view/q0;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iput-boolean v4, v2, Landroidx/appcompat/widget/f4;->a:Z

    .line 56
    .line 57
    iput-object v3, v2, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 58
    .line 59
    :cond_2
    iget-boolean v3, v2, Landroidx/appcompat/widget/f4;->b:Z

    .line 60
    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    iget-boolean v3, v2, Landroidx/appcompat/widget/f4;->a:Z

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/a0;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;[I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    iget-object v2, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/f4;

    .line 76
    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/a0;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;[I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object v2, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/f4;

    .line 88
    .line 89
    if-eqz v2, :cond_6

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/a0;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;[I)V

    .line 96
    .line 97
    .line 98
    :cond_6
    :goto_0
    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/f4;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/f4;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v4, Le/a;->B:[I

    .line 8
    .line 9
    invoke-static {v1, p1, v4, p2}, Landroidx/appcompat/widget/h4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/h4;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v8, v1, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/appcompat/widget/t;->a:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v6, v1, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 22
    .line 23
    move-object v5, p1

    .line 24
    move v7, p2

    .line 25
    invoke-static/range {v2 .. v7}, Landroidx/core/view/c1;->n(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 v2, -0x1

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Landroidx/appcompat/widget/t;->c:I

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/appcompat/widget/t;->b:Landroidx/appcompat/widget/a0;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iget v3, p0, Landroidx/appcompat/widget/t;->c:I

    .line 49
    .line 50
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    iget-object v4, p1, Landroidx/appcompat/widget/a0;->a:Landroidx/appcompat/widget/d3;

    .line 52
    .line 53
    invoke-virtual {v4, p2, v3}, Landroidx/appcompat/widget/d3;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    .line 56
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :try_start_2
    monitor-exit p1

    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/t;->g(Landroid/content/res/ColorStateList;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception p2

    .line 67
    monitor-exit p1

    .line 68
    throw p2

    .line 69
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 70
    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_1

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/h4;->a(I)Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Landroidx/core/view/q0;->q(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    const/4 p1, 0x2

    .line 84
    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_2

    .line 89
    .line 90
    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const/4 p2, 0x0

    .line 95
    invoke-static {p1, p2}, Landroidx/appcompat/widget/b2;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Landroidx/core/view/q0;->r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/h4;->f()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_1
    invoke-virtual {v1}, Landroidx/appcompat/widget/h4;->f()V

    .line 107
    .line 108
    .line 109
    throw p1
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/t;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/t;->g(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/t;->a()V

    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/t;->c:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/t;->b:Landroidx/appcompat/widget/a0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/t;->a:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/a0;->a:Landroidx/appcompat/widget/d3;

    .line 15
    .line 16
    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/widget/d3;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0

    .line 24
    throw p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/t;->g(Landroid/content/res/ColorStateList;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/appcompat/widget/t;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/f4;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/f4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/f4;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/f4;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/f4;

    iput-object p1, v0, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/f4;->b:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/f4;

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/t;->a()V

    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/f4;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/f4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/f4;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/f4;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/f4;

    iput-object p1, v0, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/f4;->b:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/t;->a()V

    return-void
.end method

.method public final i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/f4;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/f4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/f4;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/f4;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/f4;

    iput-object p1, v0, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/f4;->a:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/t;->a()V

    return-void
.end method
