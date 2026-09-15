.class public final Lv/t;
.super Landroid/app/job/JobServiceEngine;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/core/app/JobIntentService;

.field public final b:Ljava/lang/Object;

.field public c:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv/t;->b:Ljava/lang/Object;

    iput-object p1, p0, Lv/t;->a:Landroidx/core/app/JobIntentService;

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lv/t;->c:Landroid/app/job/JobParameters;

    iget-object p1, p0, Lv/t;->a:Landroidx/core/app/JobIntentService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/app/JobIntentService;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lv/t;->a:Landroidx/core/app/JobIntentService;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/core/app/JobIntentService;->c:Lv/o;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lv/t;->b:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    const/4 v0, 0x0

    .line 15
    :try_start_0
    iput-object v0, p0, Lv/t;->c:Landroid/app/job/JobParameters;

    .line 16
    .line 17
    monitor-exit p1

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method
