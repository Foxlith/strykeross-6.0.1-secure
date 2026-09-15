.class public abstract Landroidx/appcompat/view/menu/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly0/w;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    new-instance p1, Landroidx/lifecycle/m0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;I)V

    .line 2
    new-instance v0, Lw4/f;

    invoke-direct {v0, p1}, Lw4/f;-><init>(Lj5/a;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public static o(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :catch_0
    :cond_2
    return v2
.end method

.method public static r(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final c()Lc1/h;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly0/w;

    .line 4
    .line 5
    invoke-virtual {v0}, Ly0/w;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lw4/b;

    .line 23
    .line 24
    check-cast v0, Lw4/f;

    .line 25
    .line 26
    invoke-virtual {v0}, Lw4/f;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lc1/h;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->m()Lc1/h;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    return-object v0
.end method

.method public abstract d()V
.end method

.method public abstract e(II)Ljava/lang/Object;
.end method

.method public abstract f()Ln/b;
.end method

.method public abstract g()I
.end method

.method public abstract h(Ljava/lang/Object;)I
.end method

.method public abstract i(Ljava/lang/Object;)I
.end method

.method public abstract j(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract k(I)V
.end method

.method public abstract l(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public final m()Lc1/h;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->n()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ly0/w;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "sql"

    .line 13
    .line 14
    invoke-static {v0, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ly0/w;->a()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ly0/w;->b()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ly0/w;->h()Lc1/e;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lc1/e;->q()Lc1/b;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1, v0}, Lc1/b;->f(Ljava/lang/String;)Lc1/h;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public final p(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    instance-of v0, p1, Lb0/b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Lb0/b;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ln/k;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ln/k;

    .line 14
    .line 15
    invoke-direct {v0}, Ln/k;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ln/k;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, p1, v1}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/MenuItem;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Landroidx/appcompat/view/menu/w;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/w;-><init>(Landroid/content/Context;Lb0/b;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Ln/k;

    .line 45
    .line 46
    invoke-virtual {v1, p1, v0}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    return-object v0

    .line 50
    :cond_2
    return-object p1
.end method

.method public final q(Lc1/h;)V
    .locals 1

    .line 1
    const-string v0, "statement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw4/b;

    .line 9
    .line 10
    check-cast v0, Lw4/f;

    .line 11
    .line 12
    invoke-virtual {v0}, Lw4/f;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lc1/h;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final s([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->g()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/view/menu/d;->e(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p2, p1

    if-le p2, v0, :cond_2

    const/4 p2, 0x0

    aput-object p2, p1, v0

    :cond_2
    return-object p1
.end method
