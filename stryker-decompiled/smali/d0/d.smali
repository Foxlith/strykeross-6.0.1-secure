.class public final Ld0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ld0/c;

.field public c:Z


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld0/d;->a:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld0/d;->a:Z

    iput-boolean v0, p0, Ld0/d;->c:Z

    iget-object v0, p0, Ld0/d;->b:Ld0/c;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Ld0/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Ld0/d;->c:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_4
    iput-boolean v1, p0, Ld0/d;->c:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final b(Ld0/c;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ld0/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_2
    iget-object v0, p0, Ld0/d;->b:Ld0/c;

    .line 11
    .line 12
    if-ne v0, p1, :cond_1

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iput-object p1, p0, Ld0/d;->b:Ld0/c;

    .line 19
    .line 20
    iget-boolean v0, p0, Ld0/d;->a:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-interface {p1}, Ld0/c;->a()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    :try_start_3
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    throw p1
.end method
