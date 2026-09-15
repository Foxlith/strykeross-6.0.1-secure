.class public final Lt5/c;
.super Lr5/e;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lr5/k;


# instance fields
.field public final b:Lr5/e;

.field public final c:I

.field public final d:Lt5/d;

.field public final e:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/scheduling/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr5/e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt5/c;->b:Lr5/e;

    .line 5
    .line 6
    iput p2, p0, Lt5/c;->c:I

    .line 7
    .line 8
    instance-of p2, p1, Lr5/k;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    check-cast p1, Lr5/k;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    sget p1, Lr5/j;->a:I

    .line 19
    .line 20
    :cond_1
    new-instance p1, Lt5/d;

    .line 21
    .line 22
    invoke-direct {p1}, Lt5/d;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lt5/c;->d:Lt5/d;

    .line 26
    .line 27
    new-instance p1, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lt5/c;->e:Ljava/lang/Object;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final i(La5/j;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lt5/c;->d:Lt5/d;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lt5/d;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lt5/c;->runningWorkers:I

    .line 7
    .line 8
    iget p2, p0, Lt5/c;->c:I

    .line 9
    .line 10
    if-lt p1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lt5/c;->e:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget p2, p0, Lt5/c;->runningWorkers:I

    .line 17
    .line 18
    iget v0, p0, Lt5/c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-lt p2, v0, :cond_1

    .line 21
    .line 22
    monitor-exit p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :try_start_1
    iget p2, p0, Lt5/c;->runningWorkers:I

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    iput p2, p0, Lt5/c;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    monitor-exit p1

    .line 31
    iget-object p1, p0, Lt5/c;->b:Lr5/e;

    .line 32
    .line 33
    invoke-virtual {p1, p0, p0}, Lr5/e;->i(La5/j;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    monitor-exit p1

    .line 39
    throw p2
.end method

.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    iget-object v2, p0, Lt5/c;->d:Lt5/d;

    invoke-virtual {v2}, Lt5/d;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, La5/k;->a:La5/k;

    invoke-static {v3, v2}, Li5/a;->d0(La5/j;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lt5/c;->b:Lr5/e;

    invoke-virtual {v2}, Lr5/e;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lt5/c;->b:Lr5/e;

    invoke-virtual {v0, p0, p0}, Lr5/e;->i(La5/j;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lt5/c;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, Lt5/c;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lt5/c;->runningWorkers:I

    iget-object v2, p0, Lt5/c;->d:Lt5/d;

    invoke-virtual {v2}, Lt5/d;->c()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    iget v2, p0, Lt5/c;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lt5/c;->runningWorkers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
