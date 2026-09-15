.class public final Landroidx/appcompat/widget/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Landroid/graphics/PorterDuff$Mode;

.field public static g:Landroidx/appcompat/widget/d3;

.field public static final h:Landroidx/appcompat/widget/c3;


# instance fields
.field public a:Ljava/util/WeakHashMap;

.field public final b:Ljava/util/WeakHashMap;

.field public c:Landroid/util/TypedValue;

.field public d:Z

.field public e:Landroidx/appcompat/widget/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    sput-object v0, Landroidx/appcompat/widget/d3;->f:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/c3;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-direct {v0, v1}, Ln/f;-><init>(I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/appcompat/widget/d3;->h:Landroidx/appcompat/widget/c3;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/d3;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized c()Landroidx/appcompat/widget/d3;
    .locals 2

    .line 1
    const-class v0, Landroidx/appcompat/widget/d3;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/d3;->g:Landroidx/appcompat/widget/d3;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/d3;

    invoke-direct {v1}, Landroidx/appcompat/widget/d3;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/d3;->g:Landroidx/appcompat/widget/d3;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Landroidx/appcompat/widget/d3;->g:Landroidx/appcompat/widget/d3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    .line 1
    const-class v0, Landroidx/appcompat/widget/d3;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/d3;->h:Landroidx/appcompat/widget/c3;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 v2, 0x1f

    .line 10
    .line 11
    add-int v3, v2, p0

    .line 12
    .line 13
    mul-int/2addr v3, v2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v3

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ln/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    add-int/2addr p0, v3

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0, v2}, Ln/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v0

    .line 55
    return-object v2

    .line 56
    :goto_1
    monitor-exit v0

    .line 57
    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/d3;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/e;

    if-nez v0, :cond_0

    new-instance v0, Ln/e;

    invoke-direct {v0}, Ln/e;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/widget/d3;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, p3}, Ln/e;->f(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d3;->c:Landroid/util/TypedValue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/d3;->c:Landroid/util/TypedValue;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/d3;->c:Landroid/util/TypedValue;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 20
    .line 21
    .line 22
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 23
    .line 24
    int-to-long v3, v1

    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    shl-long/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 29
    .line 30
    int-to-long v5, v1

    .line 31
    or-long/2addr v3, v5

    .line 32
    invoke-virtual {p0, p1, v3, v4}, Landroidx/appcompat/widget/d3;->d(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/d3;->e:Landroidx/appcompat/widget/z;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const v1, 0x7f080038

    .line 46
    .line 47
    .line 48
    if-ne p2, v1, :cond_3

    .line 49
    .line 50
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 51
    .line 52
    const/4 p2, 0x2

    .line 53
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    const v1, 0x7f080037

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/d3;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v6, 0x0

    .line 63
    aput-object v1, p2, v6

    .line 64
    .line 65
    const v1, 0x7f080039

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/d3;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    aput-object v1, p2, v2

    .line 73
    .line 74
    invoke-direct {v5, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const v1, 0x7f08005b

    .line 79
    .line 80
    .line 81
    if-ne p2, v1, :cond_4

    .line 82
    .line 83
    const p2, 0x7f07003b

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/z;->c(Landroidx/appcompat/widget/d3;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const v1, 0x7f08005a

    .line 92
    .line 93
    .line 94
    if-ne p2, v1, :cond_5

    .line 95
    .line 96
    const p2, 0x7f07003c

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    const v1, 0x7f08005c

    .line 101
    .line 102
    .line 103
    if-ne p2, v1, :cond_6

    .line 104
    .line 105
    const p2, 0x7f07003d

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    :goto_1
    if-eqz v5, :cond_7

    .line 110
    .line 111
    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 112
    .line 113
    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1, v3, v4, v5}, Landroidx/appcompat/widget/d3;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    return-object v5
.end method

.method public final declared-synchronized d(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/d3;->b:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ln/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object v1

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1, p2, p3}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-object p1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Ln/e;->g(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_2
    monitor-exit p0

    .line 47
    return-object v1

    .line 48
    :goto_0
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public final declared-synchronized e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/d3;->f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/d3;->d:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/d3;->d:Z

    .line 9
    .line 10
    const v0, 0x7f080076

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/d3;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_b

    .line 18
    .line 19
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/p;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "android.graphics.drawable.VectorDrawable"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_b

    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/d3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-static {p1, p2}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    if-eqz v0, :cond_9

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/d3;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x0

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    sget-object p1, Landroidx/appcompat/widget/b2;->a:[I

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0, v1}, La0/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Landroidx/appcompat/widget/d3;->e:Landroidx/appcompat/widget/z;

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const p1, 0x7f080069

    .line 75
    .line 76
    .line 77
    if-ne p2, p1, :cond_4

    .line 78
    .line 79
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 80
    .line 81
    :cond_4
    :goto_1
    if-eqz v2, :cond_9

    .line 82
    .line 83
    invoke-static {v0, v2}, La0/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/widget/d3;->e:Landroidx/appcompat/widget/z;

    .line 89
    .line 90
    if-eqz v1, :cond_8

    .line 91
    .line 92
    const v1, 0x7f080064

    .line 93
    .line 94
    .line 95
    const v3, 0x102000d

    .line 96
    .line 97
    .line 98
    const v4, 0x102000f

    .line 99
    .line 100
    .line 101
    const/high16 v5, 0x1020000

    .line 102
    .line 103
    const v6, 0x7f0400f6

    .line 104
    .line 105
    .line 106
    const v7, 0x7f0400f8

    .line 107
    .line 108
    .line 109
    if-ne p2, v1, :cond_6

    .line 110
    .line 111
    move-object p2, v0

    .line 112
    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 113
    .line 114
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-static {p1, v7}, Landroidx/appcompat/widget/d4;->c(Landroid/content/Context;I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    sget-object v2, Landroidx/appcompat/widget/a0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 123
    .line 124
    invoke-static {p3, v1, v2}, Landroidx/appcompat/widget/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-static {p1, v7}, Landroidx/appcompat/widget/d4;->c(Landroid/content/Context;I)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-static {p3, v1, v2}, Landroidx/appcompat/widget/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {p1, v6}, Landroidx/appcompat/widget/d4;->c(Landroid/content/Context;I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    :goto_2
    invoke-static {p2, p1, v2}, Landroidx/appcompat/widget/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    const v1, 0x7f08005b

    .line 151
    .line 152
    .line 153
    if-eq p2, v1, :cond_7

    .line 154
    .line 155
    const v1, 0x7f08005a

    .line 156
    .line 157
    .line 158
    if-eq p2, v1, :cond_7

    .line 159
    .line 160
    const v1, 0x7f08005c

    .line 161
    .line 162
    .line 163
    if-ne p2, v1, :cond_8

    .line 164
    .line 165
    :cond_7
    move-object p2, v0

    .line 166
    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 167
    .line 168
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    invoke-static {p1, v7}, Landroidx/appcompat/widget/d4;->b(Landroid/content/Context;I)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    sget-object v2, Landroidx/appcompat/widget/a0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 177
    .line 178
    invoke-static {p3, v1, v2}, Landroidx/appcompat/widget/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-static {p1, v6}, Landroidx/appcompat/widget/d4;->c(Landroid/content/Context;I)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-static {p3, v1, v2}, Landroidx/appcompat/widget/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-static {p1, v6}, Landroidx/appcompat/widget/d4;->c(Landroid/content/Context;I)I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    goto :goto_2

    .line 201
    :cond_8
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/d3;->i(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-nez p1, :cond_9

    .line 206
    .line 207
    if-eqz p3, :cond_9

    .line 208
    .line 209
    move-object v0, v2

    .line 210
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 211
    .line 212
    invoke-static {v0}, Landroidx/appcompat/widget/b2;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :catchall_0
    move-exception p1

    .line 217
    goto :goto_5

    .line 218
    :cond_a
    :goto_4
    monitor-exit p0

    .line 219
    return-object v0

    .line 220
    :cond_b
    const/4 p1, 0x0

    .line 221
    :try_start_1
    iput-boolean p1, p0, Landroidx/appcompat/widget/d3;->d:Z

    .line 222
    .line 223
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    .line 226
    .line 227
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_5
    monitor-exit p0

    .line 232
    throw p1
.end method

.method public final declared-synchronized h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/d3;->a:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ln/l;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p2, v1}, Ln/l;->c(ILjava/lang/Integer;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    if-nez v0, :cond_5

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/appcompat/widget/d3;->e:Landroidx/appcompat/widget/z;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/z;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_1
    if-eqz v1, :cond_4

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/appcompat/widget/d3;->a:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Landroidx/appcompat/widget/d3;->a:Ljava/util/WeakHashMap;

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/d3;->a:Ljava/util/WeakHashMap;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ln/l;

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    new-instance v0, Ln/l;

    .line 58
    .line 59
    invoke-direct {v0}, Ln/l;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Landroidx/appcompat/widget/d3;->a:Ljava/util/WeakHashMap;

    .line 63
    .line 64
    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {v0, p2, v1}, Ln/l;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :cond_4
    move-object v0, v1

    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    :goto_2
    monitor-exit p0

    .line 75
    return-object v0

    .line 76
    :goto_3
    monitor-exit p0

    .line 77
    throw p1
.end method

.method public final i(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d3;->e:Landroidx/appcompat/widget/z;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    sget-object v2, Landroidx/appcompat/widget/a0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/appcompat/widget/z;->a:[I

    .line 9
    .line 10
    invoke-static {p2, v3}, Landroidx/appcompat/widget/z;->a(I[I)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, -0x1

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const p2, 0x7f0400f8

    .line 19
    .line 20
    .line 21
    :goto_0
    move v3, v4

    .line 22
    :goto_1
    move v0, v5

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    iget-object v3, v0, Landroidx/appcompat/widget/z;->c:[I

    .line 25
    .line 26
    invoke-static {p2, v3}, Landroidx/appcompat/widget/z;->a(I[I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    const p2, 0x7f0400f6

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, v0, Landroidx/appcompat/widget/z;->d:[I

    .line 37
    .line 38
    invoke-static {p2, v0}, Landroidx/appcompat/widget/z;->a(I[I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const v3, 0x1010031

    .line 43
    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 48
    .line 49
    :goto_2
    move p2, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const v0, 0x7f08004d

    .line 52
    .line 53
    .line 54
    if-ne p2, v0, :cond_3

    .line 55
    .line 56
    const p2, 0x42233333    # 40.8f

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const v0, 0x1010030

    .line 64
    .line 65
    .line 66
    move v3, v4

    .line 67
    move v6, v0

    .line 68
    move v0, p2

    .line 69
    move p2, v6

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const v0, 0x7f08003b

    .line 72
    .line 73
    .line 74
    if-ne p2, v0, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    move p2, v1

    .line 78
    move v3, p2

    .line 79
    goto :goto_1

    .line 80
    :goto_3
    if-eqz v3, :cond_6

    .line 81
    .line 82
    sget-object v1, Landroidx/appcompat/widget/b2;->a:[I

    .line 83
    .line 84
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-static {p1, p2}, Landroidx/appcompat/widget/d4;->c(Landroid/content/Context;I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p1, v2}, Landroidx/appcompat/widget/a0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 97
    .line 98
    .line 99
    if-eq v0, v5, :cond_5

    .line 100
    .line 101
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 102
    .line 103
    .line 104
    :cond_5
    move v1, v4

    .line 105
    :cond_6
    return v1
.end method
