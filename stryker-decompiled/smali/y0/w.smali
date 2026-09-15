.class public abstract Ly0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lc1/b;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Lc1/e;

.field public final d:Ly0/k;

.field public e:Z

.field public f:Ljava/util/List;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final i:Ljava/lang/ThreadLocal;

.field public final j:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ly0/w;->d()Ly0/k;

    move-result-object v0

    iput-object v0, p0, Ly0/w;->d:Ly0/k;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ly0/w;->g:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Ly0/w;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ly0/w;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "synchronizedMap(mutableMapOf())"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ly0/w;->j:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static p(Ljava/lang/Class;Lc1/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Ly0/c;

    if-eqz v0, :cond_1

    check-cast p1, Ly0/c;

    invoke-interface {p1}, Ly0/c;->i()Lc1/e;

    move-result-object p1

    invoke-static {p0, p1}, Ly0/w;->p(Ljava/lang/Class;Lc1/e;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ly0/w;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    xor-int/2addr v0, v2

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly0/w;->h()Lc1/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lc1/e;->q()Lc1/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lc1/b;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Ly0/w;->i:Ljava/lang/ThreadLocal;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly0/w;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ly0/w;->a()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/w;->h()Lc1/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lc1/e;->q()Lc1/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Ly0/w;->d:Ly0/k;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ly0/k;->d(Lc1/b;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lc1/b;->l()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Lc1/b;->o()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v0}, Lc1/b;->b()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public abstract d()Ly0/k;
.end method

.method public abstract e(Ly0/b;)Lc1/e;
.end method

.method public final f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly0/w;->k()V

    return-void
.end method

.method public g(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lx4/o;->a:Lx4/o;

    return-object p1
.end method

.method public final h()Lc1/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/w;->c:Lc1/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "internalOpenHelper"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public i()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lx4/q;->a:Lx4/q;

    return-object v0
.end method

.method public j()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lx4/p;->a:Lx4/p;

    return-object v0
.end method

.method public final k()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ly0/w;->h()Lc1/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lc1/e;->q()Lc1/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lc1/b;->a()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ly0/w;->h()Lc1/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lc1/e;->q()Lc1/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lc1/b;->j()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Ly0/w;->d:Ly0/k;

    .line 27
    .line 28
    iget-object v1, v0, Ly0/k;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v1, v0, Ly0/k;->a:Ly0/w;

    .line 39
    .line 40
    iget-object v1, v1, Ly0/w;->b:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    iget-object v0, v0, Ly0/k;->m:Landroidx/activity/d;

    .line 45
    .line 46
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "internalQueryExecutor"

    .line 51
    .line 52
    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    throw v0

    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ly0/w;->a:Lc1/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc1/b;->isOpen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly0/w;->a()V

    invoke-virtual {p0}, Ly0/w;->b()V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ly0/w;->h()Lc1/e;

    move-result-object v0

    invoke-interface {v0}, Lc1/e;->q()Lc1/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc1/b;->g(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly0/w;->h()Lc1/e;

    move-result-object p2

    invoke-interface {p2}, Lc1/e;->q()Lc1/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lc1/b;->k(Lc1/g;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly0/w;->c()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ly0/w;->k()V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p0}, Ly0/w;->k()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly0/w;->h()Lc1/e;

    move-result-object v0

    invoke-interface {v0}, Lc1/e;->q()Lc1/b;

    move-result-object v0

    invoke-interface {v0}, Lc1/b;->n()V

    return-void
.end method
