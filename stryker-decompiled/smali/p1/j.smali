.class public final Lp1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ly1/b;

.field public final c:Lw1/x;

.field public final d:Ln1/p;

.field public final e:Ln1/a0;

.field public final f:Lp1/c;

.field public final g:Ljava/util/ArrayList;

.field public h:Landroid/content/Intent;

.field public i:Lp1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemAlarmDispatcher"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp1/j;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lp1/j;->a:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v1, Lv1/k;

    .line 11
    .line 12
    invoke-direct {v1}, Lv1/k;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lp1/c;

    .line 16
    .line 17
    invoke-direct {v2, v0, v1}, Lp1/c;-><init>(Landroid/content/Context;Lv1/k;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lp1/j;->f:Lp1/c;

    .line 21
    .line 22
    invoke-static {p1}, Ln1/a0;->M(Landroid/content/Context;)Ln1/a0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lp1/j;->e:Ln1/a0;

    .line 27
    .line 28
    new-instance v0, Lw1/x;

    .line 29
    .line 30
    iget-object v1, p1, Ln1/a0;->d:Lm1/b;

    .line 31
    .line 32
    iget-object v1, v1, Lm1/b;->e:Lf/q0;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lw1/x;-><init>(Lf/q0;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lp1/j;->c:Lw1/x;

    .line 38
    .line 39
    iget-object v0, p1, Ln1/a0;->h:Ln1/p;

    .line 40
    .line 41
    iput-object v0, p0, Lp1/j;->d:Ln1/p;

    .line 42
    .line 43
    iget-object p1, p1, Ln1/a0;->f:Ly1/b;

    .line 44
    .line 45
    iput-object p1, p0, Lp1/j;->b:Ly1/b;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ln1/p;->a(Ln1/c;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lp1/j;->h:Landroid/content/Intent;

    .line 59
    .line 60
    return-void
.end method

.method public static c()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Needs to be invoked on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;I)V
    .locals 4

    .line 1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lp1/j;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lp1/j;->c()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "Unknown command. Ignoring"

    .line 31
    .line 32
    invoke-virtual {p1, v1, p2}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 45
    .line 46
    invoke-static {}, Lp1/j;->c()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 50
    .line 51
    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v2, p0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroid/content/Intent;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    monitor-exit v1

    .line 85
    goto :goto_1

    .line 86
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p1

    .line 88
    :cond_3
    :goto_1
    const-string v0, "KEY_START_ID"

    .line 89
    .line 90
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 94
    .line 95
    monitor-enter p2

    .line 96
    :try_start_1
    iget-object v0, p0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    xor-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    iget-object v1, p0, Lp1/j;->g:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    if-nez v0, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0}, Lp1/j;->d()V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    :goto_2
    monitor-exit p2

    .line 118
    return-void

    .line 119
    :goto_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    throw p1
.end method

.method public final b(Lv1/i;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lp1/j;->b:Ly1/b;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/b;->c:Ly1/a;

    .line 4
    .line 5
    new-instance v1, Lb/d;

    .line 6
    .line 7
    sget-object v2, Lp1/c;->e:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Landroid/content/Intent;

    .line 10
    .line 11
    const-class v3, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 12
    .line 13
    iget-object v4, p0, Lp1/j;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    const-string v3, "ACTION_EXECUTION_COMPLETED"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string v3, "KEY_NEEDS_RESCHEDULE"

    .line 24
    .line 25
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-static {v2, p1}, Lp1/c;->d(Landroid/content/Intent;Lv1/i;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-direct {v1, p0, v2, p1}, Lb/d;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    invoke-static {}, Lp1/j;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp1/j;->a:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "ProcessCommand"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lw1/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lp1/j;->e:Ln1/a0;

    .line 16
    .line 17
    iget-object v1, v1, Ln1/a0;->f:Ly1/b;

    .line 18
    .line 19
    new-instance v2, Lp1/h;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, p0, v3}, Lp1/h;-><init>(Lp1/j;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ly1/b;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 34
    .line 35
    .line 36
    throw v1
.end method
