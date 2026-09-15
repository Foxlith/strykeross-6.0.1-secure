.class public Landroidx/work/impl/background/systemjob/SystemJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public a:Ln1/a0;

.field public final b:Ljava/util/HashMap;

.field public final c:Lv1/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobService"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    new-instance v0, Lv1/k;

    invoke-direct {v0}, Lv1/k;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lv1/k;

    return-void
.end method

.method public static a(Landroid/app/job/JobParameters;)Lv1/i;
    .locals 3

    .line 1
    const-string v0, "EXTRA_WORK_SPEC_ID"

    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lv1/i;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXTRA_WORK_SPEC_GENERATION"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v0, p0}, Lv1/i;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b(Lv1/i;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lv1/i;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/app/job/JobParameters;

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lv1/k;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lv1/k;->e(Lv1/i;)Ln1/t;

    .line 25
    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ln1/a0;->M(Landroid/content/Context;)Ln1/a0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ln1/a0;

    .line 13
    .line 14
    iget-object v0, v0, Ln1/a0;->h:Ln1/p;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ln1/p;->a(Ln1/c;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-class v1, Landroid/app/Application;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    .line 41
    .line 42
    const-string v2, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer."

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v1, "WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate()."

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ln1/a0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Ln1/a0;->h:Ln1/p;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ln1/p;->e(Ln1/c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ln1/a0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v2

    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->a(Landroid/app/job/JobParameters;)Lv1/i;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    const-string v1, "WorkSpec id not found!"

    invoke-virtual {p1, v0, v1}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object p1

    invoke-virtual {v0}, Lv1/i;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v3

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v2

    invoke-virtual {v0}, Lv1/i;->toString()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v3, Lv1/t;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lv1/t;-><init>(I)V

    invoke-static {p1}, Lq1/d;->b(Landroid/app/job/JobParameters;)[Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lq1/d;->b(Landroid/app/job/JobParameters;)[Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lv1/t;->c:Ljava/lang/Object;

    :cond_3
    invoke-static {p1}, Lq1/d;->a(Landroid/app/job/JobParameters;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lq1/d;->a(Landroid/app/job/JobParameters;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lv1/t;->b:Ljava/lang/Object;

    :cond_4
    const/16 v4, 0x1c

    if-lt v2, v4, :cond_5

    invoke-static {p1}, Lq1/e;->a(Landroid/app/job/JobParameters;)Landroid/net/Network;

    move-result-object p1

    iput-object p1, v3, Lv1/t;->d:Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ln1/a0;

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lv1/k;

    invoke-virtual {v2, v0}, Lv1/k;->f(Lv1/i;)Ln1/t;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ln1/a0;->P(Ln1/t;Lv1/t;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ln1/a0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->a(Landroid/app/job/JobParameters;)Lv1/i;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "WorkSpec id not found!"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v2}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1}, Lv1/i;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    .line 44
    .line 45
    monitor-enter v2

    .line 46
    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lv1/k;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lv1/k;->e(Lv1/i;)Ln1/t;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ln1/a0;

    .line 61
    .line 62
    iget-object v4, v3, Ln1/a0;->f:Ly1/b;

    .line 63
    .line 64
    new-instance v5, Lw1/p;

    .line 65
    .line 66
    invoke-direct {v5, v3, v2, v0}, Lw1/p;-><init>(Ln1/a0;Ln1/t;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ly1/b;->a(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ln1/a0;

    .line 73
    .line 74
    iget-object v0, v0, Ln1/a0;->h:Ln1/p;

    .line 75
    .line 76
    iget-object p1, p1, Lv1/i;->a:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, v0, Ln1/p;->l:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v3

    .line 81
    :try_start_1
    iget-object v0, v0, Ln1/p;->j:Ljava/util/HashSet;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    monitor-exit v3

    .line 88
    xor-int/2addr p1, v1

    .line 89
    return p1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p1

    .line 93
    :catchall_1
    move-exception p1

    .line 94
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    throw p1
.end method
