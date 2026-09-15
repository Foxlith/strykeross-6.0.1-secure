.class public final Lo1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/r;
.implements Lr1/b;
.implements Ln1/c;


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln1/a0;

.field public final c:Lr1/c;

.field public final d:Ljava/util/HashSet;

.field public final e:Lo1/a;

.field public f:Z

.field public final g:Ljava/lang/Object;

.field public final h:Lv1/k;

.field public i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo1/b;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm1/b;Lv1/m;Ln1/a0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo1/b;->d:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Lv1/k;

    .line 12
    .line 13
    invoke-direct {v0}, Lv1/k;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lo1/b;->h:Lv1/k;

    .line 17
    .line 18
    iput-object p1, p0, Lo1/b;->a:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p4, p0, Lo1/b;->b:Ln1/a0;

    .line 21
    .line 22
    new-instance p1, Lr1/c;

    .line 23
    .line 24
    invoke-direct {p1, p3, p0}, Lr1/c;-><init>(Lv1/m;Lr1/b;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lo1/b;->c:Lr1/c;

    .line 28
    .line 29
    new-instance p1, Lo1/a;

    .line 30
    .line 31
    iget-object p2, p2, Lm1/b;->e:Lf/q0;

    .line 32
    .line 33
    invoke-direct {p1, p0, p2}, Lo1/a;-><init>(Lo1/b;Lf/q0;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lo1/b;->e:Lo1/a;

    .line 37
    .line 38
    new-instance p1, Ljava/lang/Object;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lo1/b;->g:Ljava/lang/Object;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo1/b;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Lo1/b;->b:Ln1/a0;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v1, Ln1/a0;->d:Lm1/b;

    .line 8
    .line 9
    iget-object v2, p0, Lo1/b;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v2, v0}, Lw1/n;->a(Landroid/content/Context;Lm1/b;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lo1/b;->i:Ljava/lang/Boolean;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lo1/b;->i:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v0, Lo1/b;->j:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "Ignoring schedule request in non-main process"

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-boolean v0, p0, Lo1/b;->f:Z

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, v1, Ln1/a0;->h:Ln1/p;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ln1/p;->a(Ln1/c;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lo1/b;->f:Z

    .line 52
    .line 53
    :cond_2
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lo1/b;->e:Lo1/a;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v2, v0, Lo1/a;->c:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/Runnable;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    iget-object v0, v0, Lo1/a;->b:Lf/q0;

    .line 75
    .line 76
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroid/os/Handler;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v0, p0, Lo1/b;->h:Lv1/k;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lv1/k;->d(Ljava/lang/String;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Ln1/t;

    .line 104
    .line 105
    iget-object v2, v1, Ln1/a0;->f:Ly1/b;

    .line 106
    .line 107
    new-instance v3, Lw1/p;

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    invoke-direct {v3, v1, v0, v4}, Lw1/p;-><init>(Ln1/a0;Ln1/t;Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ly1/b;->a(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    return-void
.end method

.method public final b(Lv1/i;Z)V
    .locals 3

    .line 1
    iget-object p2, p0, Lo1/b;->h:Lv1/k;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lv1/k;->e(Lv1/i;)Ln1/t;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lo1/b;->g:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p2

    .line 9
    :try_start_0
    iget-object v0, p0, Lo1/b;->d:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lv1/p;

    .line 26
    .line 27
    invoke-static {v1}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, p1}, Lv1/i;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lo1/b;->d:Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lo1/b;->c:Lr1/c;

    .line 53
    .line 54
    iget-object v0, p0, Lo1/b;->d:Ljava/util/HashSet;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lr1/c;->b(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    monitor-exit p2

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p1
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lv1/p;

    .line 16
    .line 17
    invoke-static {v0}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lv1/i;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lo1/b;->h:Lv1/k;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lv1/k;->e(Lv1/i;)Ln1/t;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lo1/b;->b:Ln1/a0;

    .line 40
    .line 41
    iget-object v2, v1, Ln1/a0;->f:Ly1/b;

    .line 42
    .line 43
    new-instance v3, Lw1/p;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-direct {v3, v1, v0, v4}, Lw1/p;-><init>(Ln1/a0;Ln1/t;Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ly1/b;->a(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lv1/p;

    .line 18
    .line 19
    invoke-static {v0}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lo1/b;->h:Lv1/k;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lv1/k;->c(Lv1/i;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0}, Lv1/i;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lv1/k;->f(Lv1/i;)Ln1/t;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    iget-object v2, p0, Lo1/b;->b:Ln1/a0;

    .line 47
    .line 48
    invoke-virtual {v2, v0, v1}, Ln1/a0;->P(Ln1/t;Lv1/t;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final varargs f([Lv1/p;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lo1/b;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lo1/b;->b:Ln1/a0;

    .line 6
    .line 7
    iget-object v0, v0, Ln1/a0;->d:Lm1/b;

    .line 8
    .line 9
    iget-object v1, p0, Lo1/b;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lw1/n;->a(Landroid/content/Context;Lm1/b;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lo1/b;->i:Ljava/lang/Boolean;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lo1/b;->i:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v0, Lo1/b;->j:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "Ignoring schedule request in a secondary process"

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-boolean v0, p0, Lo1/b;->f:Z

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lo1/b;->b:Ln1/a0;

    .line 47
    .line 48
    iget-object v0, v0, Ln1/a0;->h:Ln1/p;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ln1/p;->a(Ln1/c;)V

    .line 51
    .line 52
    .line 53
    iput-boolean v1, p0, Lo1/b;->f:Z

    .line 54
    .line 55
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v2, Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 63
    .line 64
    .line 65
    array-length v3, p1

    .line 66
    const/4 v4, 0x0

    .line 67
    :goto_0
    if-ge v4, v3, :cond_a

    .line 68
    .line 69
    aget-object v5, p1, v4

    .line 70
    .line 71
    invoke-static {v5}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    iget-object v7, p0, Lo1/b;->h:Lv1/k;

    .line 76
    .line 77
    invoke-virtual {v7, v6}, Lv1/k;->c(Lv1/i;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_3
    invoke-virtual {v5}, Lv1/p;->a()J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    iget v10, v5, Lv1/p;->b:I

    .line 94
    .line 95
    if-ne v10, v1, :cond_9

    .line 96
    .line 97
    cmp-long v6, v8, v6

    .line 98
    .line 99
    if-gez v6, :cond_5

    .line 100
    .line 101
    iget-object v6, p0, Lo1/b;->e:Lo1/a;

    .line 102
    .line 103
    if-eqz v6, :cond_9

    .line 104
    .line 105
    iget-object v7, v6, Lo1/a;->c:Ljava/util/HashMap;

    .line 106
    .line 107
    iget-object v8, v5, Lv1/p;->a:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    check-cast v8, Ljava/lang/Runnable;

    .line 114
    .line 115
    iget-object v9, v6, Lo1/a;->b:Lf/q0;

    .line 116
    .line 117
    if-eqz v8, :cond_4

    .line 118
    .line 119
    iget-object v10, v9, Lf/q0;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v10, Landroid/os/Handler;

    .line 122
    .line 123
    invoke-virtual {v10, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    new-instance v8, Landroidx/appcompat/widget/j;

    .line 127
    .line 128
    const/4 v10, 0x7

    .line 129
    invoke-direct {v8, v6, v5, v10}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    iget-object v6, v5, Lv1/p;->a:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    .line 139
    .line 140
    move-result-wide v6

    .line 141
    invoke-virtual {v5}, Lv1/p;->a()J

    .line 142
    .line 143
    .line 144
    move-result-wide v10

    .line 145
    sub-long/2addr v10, v6

    .line 146
    iget-object v5, v9, Lf/q0;->b:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v5, Landroid/os/Handler;

    .line 149
    .line 150
    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    invoke-virtual {v5}, Lv1/p;->c()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_8

    .line 159
    .line 160
    iget-object v6, v5, Lv1/p;->j:Lm1/d;

    .line 161
    .line 162
    iget-boolean v7, v6, Lm1/d;->c:Z

    .line 163
    .line 164
    if-eqz v7, :cond_6

    .line 165
    .line 166
    :goto_1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v5}, Lv1/p;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    iget-object v6, v6, Lm1/d;->h:Ljava/util/Set;

    .line 178
    .line 179
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    xor-int/2addr v6, v1

    .line 184
    if-eqz v6, :cond_7

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    iget-object v5, v5, Lv1/p;->a:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_8
    iget-object v6, p0, Lo1/b;->h:Lv1/k;

    .line 197
    .line 198
    invoke-static {v5}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-virtual {v6, v7}, Lv1/k;->c(Lv1/i;)Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-nez v6, :cond_9

    .line 207
    .line 208
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    iget-object v6, p0, Lo1/b;->b:Ln1/a0;

    .line 216
    .line 217
    iget-object v7, p0, Lo1/b;->h:Lv1/k;

    .line 218
    .line 219
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-static {v5}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v7, v5}, Lv1/k;->f(Lv1/i;)Ln1/t;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    const/4 v7, 0x0

    .line 231
    invoke-virtual {v6, v5, v7}, Ln1/a0;->P(Ln1/t;Lv1/t;)V

    .line 232
    .line 233
    .line 234
    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_a
    iget-object p1, p0, Lo1/b;->g:Ljava/lang/Object;

    .line 239
    .line 240
    monitor-enter p1

    .line 241
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-nez v1, :cond_b

    .line 246
    .line 247
    const-string v1, ","

    .line 248
    .line 249
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lo1/b;->d:Ljava/util/HashSet;

    .line 260
    .line 261
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lo1/b;->c:Lr1/c;

    .line 265
    .line 266
    iget-object v1, p0, Lo1/b;->d:Ljava/util/HashSet;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Lr1/c;->b(Ljava/util/Collection;)V

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    goto :goto_4

    .line 274
    :cond_b
    :goto_3
    monitor-exit p1

    .line 275
    return-void

    .line 276
    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    throw v0
.end method
