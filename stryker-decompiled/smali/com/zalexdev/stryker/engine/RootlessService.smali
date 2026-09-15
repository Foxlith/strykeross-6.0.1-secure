.class public Lcom/zalexdev/stryker/engine/RootlessService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zalexdev/stryker/engine/RootlessService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {p0, v0}, Lq1/a;->j(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/app/Notification;
    .locals 2

    .line 1
    new-instance v0, Lv/z;

    .line 2
    .line 3
    const-string v1, "stryker_rootless"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Stryker rootless engine"

    .line 9
    .line 10
    invoke-static {v1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lv/z;->e:Ljava/lang/CharSequence;

    .line 15
    .line 16
    invoke-static {p1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, v0, Lv/z;->f:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iget-object p1, v0, Lv/z;->s:Landroid/app/Notification;

    .line 23
    .line 24
    const v1, 0x7f08009b

    .line 25
    .line 26
    .line 27
    iput v1, p1, Landroid/app/Notification;->icon:I

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-virtual {v0, p1}, Lv/z;->e(I)V

    .line 31
    .line 32
    .line 33
    const/16 p1, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lv/z;->e(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lv/z;->a()Landroid/app/Notification;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x47

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/engine/RootlessService;->a(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lq1/a;->m()Landroid/app/NotificationChannel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-class v1, Landroid/app/NotificationManager;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/app/NotificationManager;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {v1, v0}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const-string v0, "Booting Linux VM\u2026"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/engine/RootlessService;->a(Ljava/lang/String;)Landroid/app/Notification;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/16 v1, 0x47

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lu2/t;->m:Lu2/t;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_1
    iput-boolean v1, v0, Lu2/t;->g:Z

    .line 8
    .line 9
    iget-object v1, v0, Lu2/t;->h:Ljava/lang/Thread;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, v0, Lu2/t;->h:Ljava/lang/Thread;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :catchall_1
    :cond_1
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/Thread;

    .line 35
    .line 36
    new-instance v2, Lu2/f;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v2, v0, v3}, Lu2/f;-><init>(Lu2/h;I)V

    .line 40
    .line 41
    .line 42
    const-string v0, "stryker-vm-service-stop"

    .line 43
    .line 44
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 48
    .line 49
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lu2/t;->a(Landroid/content/Context;)Lu2/t;

    move-result-object p1

    invoke-virtual {p1}, Lu2/t;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Landroidx/activity/b;

    const/16 p3, 0xf

    invoke-direct {p2, p0, p3}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method
