.class public abstract Landroidx/core/app/JobIntentService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final f:Ljava/util/HashMap;


# instance fields
.field public a:Lv/t;

.field public b:Lv/u;

.field public c:Lv/o;

.field public d:Z

.field public final e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->f:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->c:Lv/o;

    if-nez v0, :cond_1

    new-instance v0, Lv/o;

    invoke-direct {v0, p0}, Lv/o;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->c:Lv/o;

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->b:Lv/u;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lv/u;->b()V

    :cond_0
    iget-object p1, p0, Landroidx/core/app/JobIntentService;->c:Lv/o;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public abstract b()V
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->c:Lv/o;

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/core/app/JobIntentService;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->b:Lv/u;

    invoke-virtual {v1}, Lv/u;->a()V

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/core/app/JobIntentService;->a:Lv/t;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lq1/a;->f(Lv/t;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public final onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0x1a

    .line 8
    .line 9
    if-lt v0, v2, :cond_0

    .line 10
    .line 11
    new-instance v0, Lv/t;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lv/t;-><init>(Landroidx/core/app/JobIntentService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->a:Lv/t;

    .line 17
    .line 18
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->b:Lv/u;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->a:Lv/t;

    .line 22
    .line 23
    new-instance v1, Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    sget-object v3, Landroidx/core/app/JobIntentService;->f:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lv/u;

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    if-ge v0, v2, :cond_1

    .line 43
    .line 44
    new-instance v4, Lv/p;

    .line 45
    .line 46
    invoke-direct {v4, p0, v1}, Lv/p;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string v1, "Can\'t be here without a job id"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_2
    :goto_0
    iput-object v4, p0, Landroidx/core/app/JobIntentService;->b:Lv/u;

    .line 62
    .line 63
    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/core/app/JobIntentService;->d:Z

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->b:Lv/u;

    invoke-virtual {v1}, Lv/u;->a()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    iget-object p2, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/core/app/JobIntentService;->b:Lv/u;

    invoke-virtual {p2}, Lv/u;->c()V

    iget-object p2, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    new-instance v1, Lv/q;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p1, p3}, Lv/q;-><init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/core/app/JobIntentService;->a(Z)V

    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method
