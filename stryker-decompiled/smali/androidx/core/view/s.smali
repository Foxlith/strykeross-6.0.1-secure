.class public final Landroidx/core/view/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/s;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/s;->c:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/core/view/s;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/core/view/s;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/view/s;->a:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Landroidx/core/view/s;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/core/view/r;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v3, v2, Landroidx/core/view/r;->a:Landroidx/lifecycle/o;

    .line 27
    .line 28
    iget-object v4, v2, Landroidx/core/view/r;->b:Landroidx/lifecycle/r;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v2, Landroidx/core/view/r;->b:Landroidx/lifecycle/r;

    .line 34
    .line 35
    :cond_0
    new-instance v2, Landroidx/core/view/p;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Landroidx/core/view/p;-><init>(Landroidx/core/view/s;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Landroidx/core/view/r;

    .line 41
    .line 42
    invoke-direct {v3, p1, v2}, Landroidx/core/view/r;-><init>(Landroidx/lifecycle/o;Landroidx/lifecycle/r;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final b(Landroidx/lifecycle/t;Landroidx/lifecycle/n;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/core/view/s;->c:Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/core/view/r;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v3, v2, Landroidx/core/view/r;->a:Landroidx/lifecycle/o;

    .line 17
    .line 18
    iget-object v4, v2, Landroidx/core/view/r;->b:Landroidx/lifecycle/r;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v2, Landroidx/core/view/r;->b:Landroidx/lifecycle/r;

    .line 24
    .line 25
    :cond_0
    new-instance v2, Landroidx/core/view/q;

    .line 26
    .line 27
    invoke-direct {v2, p0, p2}, Landroidx/core/view/q;-><init>(Landroidx/core/view/s;Landroidx/lifecycle/n;)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Landroidx/core/view/r;

    .line 31
    .line 32
    invoke-direct {p2, p1, v2}, Landroidx/core/view/r;-><init>(Landroidx/lifecycle/o;Landroidx/lifecycle/r;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/view/s;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/view/s;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/core/view/r;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/core/view/r;->a:Landroidx/lifecycle/o;

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/core/view/r;->b:Landroidx/lifecycle/r;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Landroidx/core/view/r;->b:Landroidx/lifecycle/r;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/core/view/s;->a:Ljava/lang/Runnable;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
