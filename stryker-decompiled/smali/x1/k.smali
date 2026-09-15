.class public final Lx1/k;
.super Lx1/i;
.source "SourceFile"


# virtual methods
.method public final j(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lx1/i;->g:Ljava/lang/Object;

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lx1/i;->f:Lg/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, p1}, Lg/a;->e(Lx1/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Lx1/i;->c(Lx1/i;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final k(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    new-instance v0, Lx1/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1}, Lx1/c;-><init>(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lx1/i;->f:Lg/a;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, p0, v1, v0}, Lg/a;->e(Lx1/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {p0}, Lx1/i;->c(Lx1/i;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public final l(La2/a;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx1/i;->a:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Lx1/i;

    .line 11
    .line 12
    invoke-virtual {v0}, Lx1/i;->isDone()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lx1/i;->f(La2/a;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lx1/i;->f:Lg/a;

    .line 25
    .line 26
    invoke-virtual {v0, p0, v4, p1}, Lg/a;->e(Lx1/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-static {p0}, Lx1/i;->c(Lx1/i;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    move v1, v3

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    new-instance v2, Lx1/f;

    .line 38
    .line 39
    invoke-direct {v2, p0, p1}, Lx1/f;-><init>(Lx1/i;La2/a;)V

    .line 40
    .line 41
    .line 42
    sget-object v5, Lx1/i;->f:Lg/a;

    .line 43
    .line 44
    invoke-virtual {v5, p0, v4, v2}, Lg/a;->e(Lx1/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    :try_start_0
    sget-object p1, Lx1/j;->a:Lx1/j;

    .line 51
    .line 52
    invoke-virtual {v0, v2, p1}, Lx1/i;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    :try_start_1
    new-instance v0, Lx1/c;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Lx1/c;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_1
    sget-object v0, Lx1/c;->b:Lx1/c;

    .line 64
    .line 65
    :goto_1
    sget-object p1, Lx1/i;->f:Lg/a;

    .line 66
    .line 67
    invoke-virtual {p1, p0, v2, v0}, Lg/a;->e(Lx1/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lx1/i;->a:Ljava/lang/Object;

    .line 72
    .line 73
    :cond_2
    instance-of v2, v0, Lx1/a;

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    check-cast v0, Lx1/a;

    .line 78
    .line 79
    iget-boolean v0, v0, Lx1/a;->a:Z

    .line 80
    .line 81
    check-cast p1, Lx1/i;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lx1/i;->cancel(Z)Z

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_2
    return v1
.end method
