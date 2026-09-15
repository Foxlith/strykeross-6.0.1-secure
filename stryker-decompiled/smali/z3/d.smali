.class public final Lz3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lu3/g;

.field public c:Lg3/b;

.field public d:Ljava/lang/String;

.field public final e:Lz3/g;

.field public final f:Lz3/g;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public final k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu3/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lu3/g;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz3/d;->b:Lu3/g;

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    iput-object v1, p0, Lz3/d;->d:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lz3/d;->g:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lz3/d;->h:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lz3/d;->i:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lz3/d;->j:Z

    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lz3/d;->k:Ljava/util/ArrayList;

    .line 30
    .line 31
    iput-object p1, p0, Lz3/d;->a:Landroid/content/Context;

    .line 32
    .line 33
    new-instance v2, Ll4/l;

    .line 34
    .line 35
    invoke-direct {v2, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lz3/g;

    .line 39
    .line 40
    const-string v3, "console"

    .line 41
    .line 42
    invoke-direct {p1, v2, v3}, Lz3/g;-><init>(Ll4/l;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lz3/d;->e:Lz3/g;

    .line 46
    .line 47
    new-instance v3, Lz3/g;

    .line 48
    .line 49
    const-string v4, "shell"

    .line 50
    .line 51
    invoke-direct {v3, v2, v4}, Lz3/g;-><init>(Ll4/l;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v3, p0, Lz3/d;->f:Lz3/g;

    .line 55
    .line 56
    new-instance v2, Lz3/b;

    .line 57
    .line 58
    invoke-direct {v2, p0, v1}, Lz3/b;-><init>(Lz3/d;I)V

    .line 59
    .line 60
    .line 61
    monitor-enter p1

    .line 62
    :try_start_0
    iput-object v2, p1, Lz3/g;->m:Lz3/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    .line 64
    monitor-exit p1

    .line 65
    new-instance p1, Lz3/b;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-direct {p1, p0, v1}, Lz3/b;-><init>(Lz3/d;I)V

    .line 69
    .line 70
    .line 71
    monitor-enter v3

    .line 72
    :try_start_1
    iput-object p1, v3, Lz3/g;->m:Lz3/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    monitor-exit v3

    .line 75
    invoke-virtual {p0}, Lz3/d;->c()V

    .line 76
    .line 77
    .line 78
    const-string p1, "MetasploitUtils initialized"

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    invoke-virtual {v0, v1, p1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Ljava/lang/Thread;

    .line 85
    .line 86
    new-instance v0, Lz3/a;

    .line 87
    .line 88
    invoke-direct {v0, p0, v1}, Lz3/a;-><init>(Lz3/d;I)V

    .line 89
    .line 90
    .line 91
    const-string v1, "msf-console-init"

    .line 92
    .line 93
    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    monitor-exit v3

    .line 102
    throw p1

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    monitor-exit p1

    .line 105
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lz3/d;->e:Lz3/g;

    invoke-virtual {v0}, Lz3/g;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lz3/g;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lz3/g;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lz3/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz3/a;-><init>(Lz3/d;I)V

    const-string v2, "msf-killjobs"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lz3/d;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lz3/d;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lz3/d;->e:Lz3/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lz3/g;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lz3/d;->i:Z

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lz3/d;->f:Lz3/g;

    .line 24
    .line 25
    invoke-virtual {v0}, Lz3/g;->e()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-boolean v0, p0, Lz3/d;->j:Z

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    :cond_2
    const-string v0, "Metasploit Framework is ready"

    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0, v0, v1}, Lz3/d;->d(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    const-string v0, "Failed to launch Metasploit"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    :goto_1
    const-string v0, "Launching Metasploit Framework..."

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :goto_2
    return-void
.end method

.method public final d(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    new-instance v0, Lv/z;

    .line 2
    .line 3
    iget-object v1, p0, Lz3/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "MetasploitInitializer"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lv/z;->s:Landroid/app/Notification;

    .line 11
    .line 12
    const v3, 0x7f0801b4

    .line 13
    .line 14
    .line 15
    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 16
    .line 17
    const-string v2, "Metasploit"

    .line 18
    .line 19
    invoke-static {v2}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, v0, Lv/z;->e:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-static {p1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, v0, Lv/z;->f:Ljava/lang/CharSequence;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput p1, v0, Lv/z;->i:I

    .line 33
    .line 34
    const/16 v2, 0x10

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lv/z;->e(I)V

    .line 37
    .line 38
    .line 39
    const/16 v2, 0x8

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lv/z;->e(I)V

    .line 42
    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-virtual {v0, p1, p1, p2}, Lv/z;->f(IIZ)V

    .line 48
    .line 49
    .line 50
    :cond_0
    const-string p1, "notification"

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/app/NotificationManager;

    .line 57
    .line 58
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v1, 0x1a

    .line 61
    .line 62
    if-lt p2, v1, :cond_1

    .line 63
    .line 64
    invoke-static {}, Lq1/a;->p()Landroid/app/NotificationChannel;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p1, p2}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v0}, Lv/z;->a()Landroid/app/Notification;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const/16 v0, 0x14d

    .line 76
    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lz3/d;->f:Lz3/g;

    invoke-virtual {v0}, Lz3/g;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lz3/d;->c:Lg3/b;

    if-eqz v1, :cond_0

    const-string v2, "Shell is not alive. Restarting, please wait!.."

    invoke-virtual {v1, v2}, Lg3/b;->i(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lz3/g;->a()Z

    :cond_1
    invoke-virtual {v0}, Lz3/g;->f()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lz3/g;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    return-void
.end method
