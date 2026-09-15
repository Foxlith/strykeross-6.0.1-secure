.class public final Lp1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/b;
.implements Lw1/v;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lv1/i;

.field public final d:Lp1/j;

.field public final e:Lr1/c;

.field public final f:Ljava/lang/Object;

.field public g:I

.field public final h:Lw1/o;

.field public final i:Ly1/a;

.field public j:Landroid/os/PowerManager$WakeLock;

.field public k:Z

.field public final l:Ln1/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILp1/j;Ln1/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp1/g;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lp1/g;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lp1/g;->d:Lp1/j;

    .line 9
    .line 10
    iget-object p1, p4, Ln1/t;->a:Lv1/i;

    .line 11
    .line 12
    iput-object p1, p0, Lp1/g;->c:Lv1/i;

    .line 13
    .line 14
    iput-object p4, p0, Lp1/g;->l:Ln1/t;

    .line 15
    .line 16
    iget-object p1, p3, Lp1/j;->e:Ln1/a0;

    .line 17
    .line 18
    iget-object p1, p1, Ln1/a0;->l:Lv1/m;

    .line 19
    .line 20
    iget-object p2, p3, Lp1/j;->b:Ly1/b;

    .line 21
    .line 22
    iget-object p3, p2, Ly1/b;->a:Lw1/o;

    .line 23
    .line 24
    iput-object p3, p0, Lp1/g;->h:Lw1/o;

    .line 25
    .line 26
    iget-object p2, p2, Ly1/b;->c:Ly1/a;

    .line 27
    .line 28
    iput-object p2, p0, Lp1/g;->i:Ly1/a;

    .line 29
    .line 30
    new-instance p2, Lr1/c;

    .line 31
    .line 32
    invoke-direct {p2, p1, p0}, Lr1/c;-><init>(Lv1/m;Lr1/b;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lp1/g;->e:Lr1/c;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lp1/g;->k:Z

    .line 39
    .line 40
    iput p1, p0, Lp1/g;->g:I

    .line 41
    .line 42
    new-instance p1, Ljava/lang/Object;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lp1/g;->f:Ljava/lang/Object;

    .line 48
    .line 49
    return-void
.end method

.method public static a(Lp1/g;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lp1/g;->c:Lv1/i;

    .line 2
    .line 3
    iget-object v1, v0, Lv1/i;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p0, Lp1/g;->g:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    iput v2, p0, Lp1/g;->g:I

    .line 11
    .line 12
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/content/Intent;

    .line 20
    .line 21
    iget-object v2, p0, Lp1/g;->a:Landroid/content/Context;

    .line 22
    .line 23
    const-class v3, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    const-string v4, "ACTION_STOP_WORK"

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lp1/c;->d(Landroid/content/Intent;Lv1/i;)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Lb/d;

    .line 37
    .line 38
    iget-object v5, p0, Lp1/g;->d:Lp1/j;

    .line 39
    .line 40
    iget v6, p0, Lp1/g;->b:I

    .line 41
    .line 42
    invoke-direct {v4, v5, v1, v6}, Lb/d;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lp1/g;->i:Ly1/a;

    .line 46
    .line 47
    invoke-virtual {p0, v4}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v5, Lp1/j;->d:Ln1/p;

    .line 51
    .line 52
    iget-object v4, v0, Lv1/i;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ln1/p;->d(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v1, Landroid/content/Intent;

    .line 68
    .line 69
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "ACTION_SCHEDULE_WORK"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0}, Lp1/c;->d(Landroid/content/Intent;Lv1/i;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lb/d;

    .line 81
    .line 82
    invoke-direct {v0, v5, v1, v6}, Lb/d;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp1/g;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp1/g;->e:Lr1/c;

    .line 5
    .line 6
    invoke-virtual {v1}, Lr1/c;->c()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lp1/g;->d:Lp1/j;

    .line 10
    .line 11
    iget-object v1, v1, Lp1/j;->c:Lw1/x;

    .line 12
    .line 13
    iget-object v2, p0, Lp1/g;->c:Lv1/i;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lw1/x;->a(Lv1/i;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lp1/g;->j:Landroid/os/PowerManager$WakeLock;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lp1/g;->j:Landroid/os/PowerManager$WakeLock;

    .line 33
    .line 34
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lp1/g;->c:Lv1/i;

    .line 38
    .line 39
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lp1/g;->j:Landroid/os/PowerManager$WakeLock;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw v1
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    new-instance p1, Lp1/f;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lp1/f;-><init>(Lp1/g;I)V

    iget-object v0, p0, Lp1/g;->h:Lw1/o;

    invoke-virtual {v0, p1}, Lw1/o;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/p;

    invoke-static {v0}, Lv1/f;->t(Lv1/p;)Lv1/i;

    move-result-object v0

    iget-object v1, p0, Lp1/g;->c:Lv1/i;

    invoke-virtual {v0, v1}, Lv1/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lp1/f;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lp1/f;-><init>(Lp1/g;I)V

    iget-object v0, p0, Lp1/g;->h:Lw1/o;

    invoke-virtual {v0, p1}, Lw1/o;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp1/g;->c:Lv1/i;

    .line 2
    .line 3
    iget-object v0, v0, Lv1/i;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, " ("

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Lp1/g;->b:I

    .line 12
    .line 13
    const-string v3, ")"

    .line 14
    .line 15
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lp1/g;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v2, v1}, Lw1/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lp1/g;->j:Landroid/os/PowerManager$WakeLock;

    .line 26
    .line 27
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lp1/g;->j:Landroid/os/PowerManager$WakeLock;

    .line 32
    .line 33
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lp1/g;->j:Landroid/os/PowerManager$WakeLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lp1/g;->d:Lp1/j;

    .line 45
    .line 46
    iget-object v1, v1, Lp1/j;->e:Ln1/a0;

    .line 47
    .line 48
    iget-object v1, v1, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lv1/r;->h(Ljava/lang/String;)Lv1/p;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    new-instance v0, Lp1/f;

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-direct {v0, p0, v1}, Lp1/f;-><init>(Lp1/g;I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lp1/g;->h:Lw1/o;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lw1/o;->execute(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Lv1/p;->c()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iput-boolean v1, p0, Lp1/g;->k:Z

    .line 77
    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lp1/g;->d(Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lp1/g;->e:Lr1/c;

    .line 96
    .line 97
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Lr1/c;->b(Ljava/util/Collection;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method

.method public final f(Z)V
    .locals 7

    .line 1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lp1/g;->c:Lv1/i;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lp1/g;->b()V

    .line 14
    .line 15
    .line 16
    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 17
    .line 18
    iget v2, p0, Lp1/g;->b:I

    .line 19
    .line 20
    iget-object v3, p0, Lp1/g;->d:Lp1/j;

    .line 21
    .line 22
    iget-object v4, p0, Lp1/g;->i:Ly1/a;

    .line 23
    .line 24
    iget-object v5, p0, Lp1/g;->a:Landroid/content/Context;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Landroid/content/Intent;

    .line 29
    .line 30
    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    const-string v6, "ACTION_SCHEDULE_WORK"

    .line 34
    .line 35
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Lp1/c;->d(Landroid/content/Intent;Lv1/i;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lb/d;

    .line 42
    .line 43
    invoke-direct {v1, v3, p1, v2}, Lb/d;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v1}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-boolean p1, p0, Lp1/g;->k:Z

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    new-instance p1, Landroid/content/Intent;

    .line 54
    .line 55
    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    new-instance v0, Lb/d;

    .line 64
    .line 65
    invoke-direct {v0, v3, p1, v2}, Lb/d;-><init>(Ljava/lang/Object;Landroid/content/Intent;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method
