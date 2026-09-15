.class public final Lv/o;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/core/app/JobIntentService;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/o;->a:Landroidx/core/app/JobIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    :goto_0
    iget-object p1, p0, Lv/o;->a:Landroidx/core/app/JobIntentService;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/core/app/JobIntentService;->a:Lv/t;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v2, v0, Lv/t;->b:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-object p1, v0, Lv/t;->c:Landroid/app/job/JobParameters;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    monitor-exit v2

    .line 18
    goto :goto_2

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {p1}, Lq1/a;->d(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-static {p1}, Lq1/a;->e(Landroid/app/job/JobWorkItem;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, v0, Lv/t;->a:Landroidx/core/app/JobIntentService;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lv/s;

    .line 42
    .line 43
    invoke-direct {v2, v0, p1}, Lv/s;-><init>(Lv/t;Landroid/app/job/JobWorkItem;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1

    .line 49
    :cond_1
    iget-object v0, p1, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_2
    iget-object v2, p1, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-lez v2, :cond_2

    .line 59
    .line 60
    iget-object p1, p1, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    move-object v2, p1

    .line 68
    check-cast v2, Lv/r;

    .line 69
    .line 70
    monitor-exit v0

    .line 71
    goto :goto_3

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    goto :goto_4

    .line 74
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    :cond_3
    :goto_2
    move-object v2, v1

    .line 76
    :goto_3
    if-eqz v2, :cond_4

    .line 77
    .line 78
    iget-object p1, p0, Lv/o;->a:Landroidx/core/app/JobIntentService;

    .line 79
    .line 80
    invoke-interface {v2}, Lv/r;->getIntent()Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->b()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v2}, Lv/r;->a()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    return-object v1

    .line 91
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    throw p1
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lv/o;->a:Landroidx/core/app/JobIntentService;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lv/o;->a:Landroidx/core/app/JobIntentService;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
