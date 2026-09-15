.class public abstract Lr5/m;
.super Lkotlinx/coroutines/scheduling/h;
.source "SourceFile"


# instance fields
.field public c:I


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-static {p1, p2}, Lv1/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    if-nez p1, :cond_2

    .line 14
    .line 15
    move-object p1, p2

    .line 16
    :cond_2
    new-instance p2, Li5/b;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Fatal exception in coroutines machinery for "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    move-object p1, p0

    .line 44
    check-cast p1, Lt5/a;

    .line 45
    .line 46
    iget-object p1, p1, Lt5/a;->e:La5/e;

    .line 47
    .line 48
    invoke-interface {p1}, La5/e;->getContext()La5/j;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, p2}, Li5/a;->d0(La5/j;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final run()V
    .locals 11

    .line 1
    sget-object v0, Lw4/h;->a:Lw4/h;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/h;->b:Landroidx/fragment/app/x0;

    .line 4
    .line 5
    :try_start_0
    move-object v2, p0

    .line 6
    check-cast v2, Lt5/a;

    .line 7
    .line 8
    iget-object v3, v2, Lt5/a;->e:La5/e;

    .line 9
    .line 10
    iget-object v2, v2, Lt5/a;->g:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-interface {v3}, La5/e;->getContext()La5/j;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-static {v4, v2}, Lt5/b;->d(La5/j;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v5, Lt5/b;->b:Lu3/g;

    .line 21
    .line 22
    if-eq v2, v5, :cond_2

    .line 23
    .line 24
    instance-of v5, v3, Lc5/d;

    .line 25
    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v5, Lr5/w;->a:Lr5/w;

    .line 30
    .line 31
    invoke-interface {v4, v5}, La5/j;->get(La5/i;)La5/h;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    move-object v5, v3

    .line 38
    check-cast v5, Lc5/d;

    .line 39
    .line 40
    :cond_1
    invoke-interface {v5}, Lc5/d;->getCallerFrame()Lc5/d;

    .line 41
    .line 42
    .line 43
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v3}, La5/e;->getContext()La5/j;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v6, p0

    .line 51
    check-cast v6, Lt5/a;

    .line 52
    .line 53
    iget-object v7, v6, Lt5/a;->f:Ljava/lang/Object;

    .line 54
    .line 55
    sget-object v8, Lt5/b;->a:Lu3/g;

    .line 56
    .line 57
    iput-object v8, v6, Lt5/a;->f:Ljava/lang/Object;

    .line 58
    .line 59
    instance-of v6, v7, Lr5/b;

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    move-object v6, v7

    .line 65
    check-cast v6, Lr5/b;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v6, v8

    .line 69
    :goto_1
    if-nez v6, :cond_4

    .line 70
    .line 71
    move-object v6, v8

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget-object v6, v6, Lr5/b;->a:Ljava/lang/Throwable;

    .line 74
    .line 75
    :goto_2
    if-nez v6, :cond_6

    .line 76
    .line 77
    iget v9, p0, Lr5/m;->c:I

    .line 78
    .line 79
    const/4 v10, 0x1

    .line 80
    if-eq v9, v10, :cond_5

    .line 81
    .line 82
    const/4 v10, 0x2

    .line 83
    if-ne v9, v10, :cond_6

    .line 84
    .line 85
    :cond_5
    sget-object v9, Lr5/f;->b:Lr5/f;

    .line 86
    .line 87
    invoke-interface {v5, v9}, La5/j;->get(La5/i;)La5/h;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v5}, Landroid/support/v4/media/session/a;->A(La5/h;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :catchall_0
    move-exception v3

    .line 96
    goto :goto_6

    .line 97
    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    .line 98
    .line 99
    new-instance v5, Lw4/d;

    .line 100
    .line 101
    invoke-direct {v5, v6}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v3, v5}, La5/e;->resumeWith(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_7
    invoke-interface {v3, v7}, La5/e;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    :goto_4
    :try_start_2
    invoke-static {v4, v2}, Lt5/b;->c(La5/j;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    .line 113
    .line 114
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    new-instance v1, Lw4/d;

    .line 120
    .line 121
    invoke-direct {v1, v0}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    move-object v0, v1

    .line 125
    :goto_5
    invoke-static {v0}, Lw4/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, v8, v0}, Lr5/m;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    goto :goto_9

    .line 133
    :catchall_2
    move-exception v2

    .line 134
    goto :goto_7

    .line 135
    :goto_6
    :try_start_4
    invoke-static {v4, v2}, Lt5/b;->c(La5/j;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 139
    :goto_7
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 140
    .line 141
    .line 142
    goto :goto_8

    .line 143
    :catchall_3
    move-exception v0

    .line 144
    new-instance v1, Lw4/d;

    .line 145
    .line 146
    invoke-direct {v1, v0}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    move-object v0, v1

    .line 150
    :goto_8
    invoke-static {v0}, Lw4/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p0, v2, v0}, Lr5/m;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_9
    return-void
.end method
