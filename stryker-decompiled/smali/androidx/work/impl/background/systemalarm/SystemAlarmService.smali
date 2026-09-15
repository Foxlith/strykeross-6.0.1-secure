.class public Landroidx/work/impl/background/systemalarm/SystemAlarmService;
.super Landroidx/lifecycle/LifecycleService;
.source "SourceFile"

# interfaces
.implements Lp1/i;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public b:Lp1/j;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmService"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Z

    .line 3
    .line 4
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lw1/q;->a:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lw1/r;->a:Lw1/r;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    sget-object v3, Lw1/r;->b:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit v2

    .line 27
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/os/PowerManager$WakeLock;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ne v3, v0, :cond_0

    .line 66
    .line 67
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sget-object v4, Lw1/q;->a:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v6, "WakeLock held for "

    .line 76
    .line 77
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v3, v4, v2}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    monitor-exit v2

    .line 97
    throw v0
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp1/j;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lp1/j;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Lp1/j;

    .line 10
    .line 11
    iget-object v1, v0, Lp1/j;->i:Lp1/i;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lp1/j;->j:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "A completion listener for SystemAlarmDispatcher already exists."

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput-object p0, v0, Lp1/j;->i:Lp1/i;

    .line 28
    .line 29
    :goto_0
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Z

    .line 31
    .line 32
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Lp1/j;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
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
    iget-object v1, v0, Lp1/j;->d:Ln1/p;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ln1/p;->e(Ln1/c;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Lp1/j;->i:Lp1/i;

    .line 26
    .line 27
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/LifecycleService;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Z

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    sget-object v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->d:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "Re-initializing SystemAlarmDispatcher after a request to shut-down."

    .line 15
    .line 16
    invoke-virtual {p2, v0, v1}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Lp1/j;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v0, p2, Lp1/j;->d:Ln1/p;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ln1/p;->e(Ln1/c;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p2, Lp1/j;->i:Lp1/i;

    .line 38
    .line 39
    new-instance p2, Lp1/j;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Lp1/j;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Lp1/j;

    .line 45
    .line 46
    iget-object v0, p2, Lp1/j;->i:Lp1/i;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    sget-object v0, Lp1/j;->j:Ljava/lang/String;

    .line 55
    .line 56
    const-string v1, "A completion listener for SystemAlarmDispatcher already exists."

    .line 57
    .line 58
    invoke-virtual {p2, v0, v1}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iput-object p0, p2, Lp1/j;->i:Lp1/i;

    .line 63
    .line 64
    :goto_0
    const/4 p2, 0x0

    .line 65
    iput-boolean p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Z

    .line 66
    .line 67
    :cond_1
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Lp1/j;

    .line 70
    .line 71
    invoke-virtual {p2, p1, p3}, Lp1/j;->a(Landroid/content/Intent;I)V

    .line 72
    .line 73
    .line 74
    :cond_2
    const/4 p1, 0x3

    .line 75
    return p1
.end method
