.class public final Ln1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;
.implements Lu1/a;


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/PowerManager$WakeLock;

.field public final b:Landroid/content/Context;

.field public final c:Lm1/b;

.field public final d:Ly1/b;

.field public final e:Landroidx/work/impl/WorkDatabase;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/HashSet;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Processor"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln1/p;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm1/b;Ly1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/p;->b:Landroid/content/Context;

    iput-object p2, p0, Ln1/p;->c:Lm1/b;

    iput-object p3, p0, Ln1/p;->d:Ly1/b;

    iput-object p4, p0, Ln1/p;->e:Landroidx/work/impl/WorkDatabase;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln1/p;->g:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln1/p;->f:Ljava/util/HashMap;

    iput-object p5, p0, Ln1/p;->i:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ln1/p;->j:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln1/p;->k:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Ln1/p;->a:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/p;->l:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln1/p;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static c(Ln1/f0;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ln1/f0;->r:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Ln1/f0;->h()Z

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Ln1/f0;->q:Lx1/k;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lx1/i;->cancel(Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Ln1/f0;->e:Lm1/m;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Ln1/f0;->q:Lx1/k;

    .line 19
    .line 20
    iget-object v1, v1, Lx1/i;->a:Ljava/lang/Object;

    .line 21
    .line 22
    instance-of v1, v1, Lx1/a;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Ln1/f0;->e:Lm1/m;

    .line 27
    .line 28
    invoke-virtual {p0}, Lm1/m;->f()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Ln1/f0;->d:Lv1/p;

    .line 33
    .line 34
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    return v0

    .line 52
    :cond_1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return p0
.end method


# virtual methods
.method public final a(Ln1/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln1/p;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln1/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lv1/i;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln1/p;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ln1/p;->g:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v2, p1, Lv1/i;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ln1/f0;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v1, Ln1/f0;->d:Lv1/p;

    .line 17
    .line 18
    invoke-static {v1}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Lv1/i;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Ln1/p;->g:Ljava/util/HashMap;

    .line 29
    .line 30
    iget-object v2, p1, Lv1/i;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_0
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Ln1/p;->k:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ln1/c;

    .line 62
    .line 63
    invoke-interface {v2, p1, p2}, Ln1/c;->b(Lv1/i;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln1/p;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln1/p;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ln1/p;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(Ln1/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln1/p;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln1/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f(Ljava/lang/String;Lm1/f;)V
    .locals 5

    .line 1
    const-string v0, "Moving WorkSpec ("

    .line 2
    .line 3
    iget-object v1, p0, Ln1/p;->l:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object v3, Ln1/p;->m:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ") to the foreground"

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v3, v0}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ln1/p;->g:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ln1/f0;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Ln1/p;->a:Landroid/os/PowerManager$WakeLock;

    .line 43
    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    iget-object v2, p0, Ln1/p;->b:Landroid/content/Context;

    .line 47
    .line 48
    const-string v3, "ProcessorForegroundLck"

    .line 49
    .line 50
    invoke-static {v2, v3}, Lw1/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, p0, Ln1/p;->a:Landroid/os/PowerManager$WakeLock;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    :goto_0
    iget-object v2, p0, Ln1/p;->f:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Ln1/p;->b:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v0, v0, Ln1/f0;->d:Lv1/p;

    .line 70
    .line 71
    invoke-static {v0}, Lv1/f;->t(Lv1/p;)Lv1/i;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p1, v0, p2}, Lu1/c;->e(Landroid/content/Context;Lv1/i;Lm1/f;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, p0, Ln1/p;->b:Landroid/content/Context;

    .line 80
    .line 81
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 82
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    .line 85
    const/16 v2, 0x1a

    .line 86
    .line 87
    if-lt v0, v2, :cond_1

    .line 88
    .line 89
    invoke-static {p2, p1}, Lx/e;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_1
    monitor-exit v1

    .line 97
    return-void

    .line 98
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p1
.end method

.method public final g(Ln1/t;Lv1/t;)Z
    .locals 11

    .line 1
    iget-object p2, p1, Ln1/t;->a:Lv1/i;

    .line 2
    .line 3
    iget-object v0, p2, Lv1/i;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v8, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ln1/p;->e:Landroidx/work/impl/WorkDatabase;

    .line 11
    .line 12
    new-instance v2, Ln1/n;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, p0, v8, v0, v3}, Ln1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ly0/w;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v7, v1

    .line 23
    check-cast v7, Lv1/p;

    .line 24
    .line 25
    if-nez v7, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Ln1/p;->m:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Didn\'t find WorkSpec for id "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v0, v1}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Ln1/p;->d:Ly1/b;

    .line 51
    .line 52
    iget-object p1, p1, Ly1/b;->c:Ly1/a;

    .line 53
    .line 54
    new-instance v0, Ln1/o;

    .line 55
    .line 56
    invoke-direct {v0, p0, p2}, Ln1/o;-><init>(Ln1/p;Lv1/i;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return v3

    .line 63
    :cond_0
    iget-object v9, p0, Ln1/p;->l:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v9

    .line 66
    :try_start_0
    invoke-virtual {p0, v0}, Ln1/p;->d(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Ln1/p;->h:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/util/Set;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ln1/t;

    .line 89
    .line 90
    iget-object v1, v1, Ln1/t;->a:Lv1/i;

    .line 91
    .line 92
    iget v1, v1, Lv1/i;->b:I

    .line 93
    .line 94
    iget v2, p2, Lv1/i;->b:I

    .line 95
    .line 96
    if-ne v1, v2, :cond_1

    .line 97
    .line 98
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p2}, Lv1/i;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_1
    iget-object p1, p0, Ln1/p;->d:Ly1/b;

    .line 116
    .line 117
    iget-object p1, p1, Ly1/b;->c:Ly1/a;

    .line 118
    .line 119
    new-instance v0, Ln1/o;

    .line 120
    .line 121
    invoke-direct {v0, p0, p2}, Ln1/o;-><init>(Ln1/p;Lv1/i;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    monitor-exit v9

    .line 128
    return v3

    .line 129
    :cond_2
    iget v1, v7, Lv1/p;->t:I

    .line 130
    .line 131
    iget v2, p2, Lv1/i;->b:I

    .line 132
    .line 133
    if-eq v1, v2, :cond_3

    .line 134
    .line 135
    iget-object p1, p0, Ln1/p;->d:Ly1/b;

    .line 136
    .line 137
    iget-object p1, p1, Ly1/b;->c:Ly1/a;

    .line 138
    .line 139
    new-instance v0, Ln1/o;

    .line 140
    .line 141
    invoke-direct {v0, p0, p2}, Ln1/o;-><init>(Ln1/p;Lv1/i;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 145
    .line 146
    .line 147
    monitor-exit v9

    .line 148
    return v3

    .line 149
    :cond_3
    new-instance v10, Ln1/e0;

    .line 150
    .line 151
    iget-object v2, p0, Ln1/p;->b:Landroid/content/Context;

    .line 152
    .line 153
    iget-object v3, p0, Ln1/p;->c:Lm1/b;

    .line 154
    .line 155
    iget-object v4, p0, Ln1/p;->d:Ly1/b;

    .line 156
    .line 157
    iget-object v6, p0, Ln1/p;->e:Landroidx/work/impl/WorkDatabase;

    .line 158
    .line 159
    move-object v1, v10

    .line 160
    move-object v5, p0

    .line 161
    invoke-direct/range {v1 .. v8}, Ln1/e0;-><init>(Landroid/content/Context;Lm1/b;Ly1/b;Lu1/a;Landroidx/work/impl/WorkDatabase;Lv1/p;Ljava/util/ArrayList;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Ln1/p;->i:Ljava/util/List;

    .line 165
    .line 166
    iput-object v1, v10, Ln1/e0;->g:Ljava/util/List;

    .line 167
    .line 168
    new-instance v1, Ln1/f0;

    .line 169
    .line 170
    invoke-direct {v1, v10}, Ln1/f0;-><init>(Ln1/e0;)V

    .line 171
    .line 172
    .line 173
    iget-object v8, v1, Ln1/f0;->p:Lx1/k;

    .line 174
    .line 175
    new-instance v10, Le0/a;

    .line 176
    .line 177
    iget-object v4, p1, Ln1/t;->a:Lv1/i;

    .line 178
    .line 179
    const/4 v6, 0x3

    .line 180
    const/4 v7, 0x0

    .line 181
    move-object v2, v10

    .line 182
    move-object v3, p0

    .line 183
    move-object v5, v8

    .line 184
    invoke-direct/range {v2 .. v7}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Ln1/p;->d:Ly1/b;

    .line 188
    .line 189
    iget-object v2, v2, Ly1/b;->c:Ly1/a;

    .line 190
    .line 191
    invoke-virtual {v8, v10, v2}, Lx1/i;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Ln1/p;->g:Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    new-instance v2, Ljava/util/HashSet;

    .line 200
    .line 201
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Ln1/p;->h:Ljava/util/HashMap;

    .line 208
    .line 209
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object p1, p0, Ln1/p;->d:Ly1/b;

    .line 214
    .line 215
    iget-object p1, p1, Ly1/b;->a:Lw1/o;

    .line 216
    .line 217
    invoke-virtual {p1, v1}, Lw1/o;->execute(Ljava/lang/Runnable;)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p2}, Lv1/i;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const/4 p1, 0x1

    .line 231
    return p1

    .line 232
    :goto_1
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    throw p1
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln1/p;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ln1/p;->f:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Ln1/p;->b:Landroid/content/Context;

    .line 15
    .line 16
    sget-object v2, Lu1/c;->j:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Landroid/content/Intent;

    .line 19
    .line 20
    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 21
    .line 22
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "ACTION_STOP_FOREGROUND"

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_1
    iget-object v1, p0, Ln1/p;->b:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    :try_start_2
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Ln1/p;->m:Ljava/lang/String;

    .line 42
    .line 43
    const-string v4, "Unable to stop foreground service"

    .line 44
    .line 45
    invoke-virtual {v2, v3, v4, v1}, Lm1/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v1, p0, Ln1/p;->a:Landroid/os/PowerManager$WakeLock;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Ln1/p;->a:Landroid/os/PowerManager$WakeLock;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_1
    move-exception v1

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    :goto_1
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    throw v1
.end method
