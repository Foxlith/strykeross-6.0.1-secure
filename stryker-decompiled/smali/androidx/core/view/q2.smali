.class public final Landroidx/core/view/q2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/core/view/q2;


# instance fields
.field public final a:Landroidx/core/view/o2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/core/view/n2;->q:Landroidx/core/view/q2;

    :goto_0
    sput-object v0, Landroidx/core/view/q2;->b:Landroidx/core/view/q2;

    goto :goto_1

    :cond_0
    sget-object v0, Landroidx/core/view/o2;->b:Landroidx/core/view/q2;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/o2;

    invoke-direct {v0, p0}, Landroidx/core/view/o2;-><init>(Landroidx/core/view/q2;)V

    iput-object v0, p0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/n2;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/n2;-><init>(Landroidx/core/view/q2;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/view/m2;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/m2;-><init>(Landroidx/core/view/q2;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidx/core/view/l2;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/l2;-><init>(Landroidx/core/view/q2;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/core/view/k2;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/k2;-><init>(Landroidx/core/view/q2;Landroid/view/WindowInsets;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static e(Lz/f;IIII)Lz/f;
    .locals 5

    .line 1
    iget v0, p0, Lz/f;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lz/f;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lz/f;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lz/f;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lz/f;->b(IIII)Lz/f;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/q2;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/core/view/q2;-><init>(Landroid/view/WindowInsets;)V

    .line 7
    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/core/view/n0;->b(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-static {p0}, Landroidx/core/view/r0;->a(Landroid/view/View;)Landroidx/core/view/q2;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, v0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/core/view/o2;->p(Landroidx/core/view/q2;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v1, p0}, Landroidx/core/view/o2;->d(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    invoke-virtual {v0}, Landroidx/core/view/o2;->j()Lz/f;

    move-result-object v0

    iget v0, v0, Lz/f;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    invoke-virtual {v0}, Landroidx/core/view/o2;->j()Lz/f;

    move-result-object v0

    iget v0, v0, Lz/f;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    invoke-virtual {v0}, Landroidx/core/view/o2;->j()Lz/f;

    move-result-object v0

    iget v0, v0, Lz/f;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    invoke-virtual {v0}, Landroidx/core/view/o2;->j()Lz/f;

    move-result-object v0

    iget v0, v0, Lz/f;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/core/view/q2;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Landroidx/core/view/q2;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lg0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final f(IIII)Landroidx/core/view/q2;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/core/view/h2;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/core/view/h2;-><init>(Landroidx/core/view/q2;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v1, 0x1d

    .line 14
    .line 15
    if-lt v0, v1, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroidx/core/view/g2;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/core/view/g2;-><init>(Landroidx/core/view/q2;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Landroidx/core/view/f2;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Landroidx/core/view/f2;-><init>(Landroidx/core/view/q2;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-static {p1, p2, p3, p4}, Lz/f;->b(IIII)Lz/f;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroidx/core/view/i2;->g(Lz/f;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/core/view/i2;->b()Landroidx/core/view/q2;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public final g()Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    instance-of v1, v0, Landroidx/core/view/j2;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/core/view/j2;

    iget-object v0, v0, Landroidx/core/view/j2;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/view/o2;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
