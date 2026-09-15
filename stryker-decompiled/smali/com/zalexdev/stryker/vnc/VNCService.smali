.class public Lcom/zalexdev/stryker/vnc/VNCService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public a:Ljava/util/Timer;

.field public b:Ljava/lang/String;

.field public c:Ll4/l;

.field public d:Lv/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->a:Ljava/util/Timer;

    const-string v0, ""

    iput-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->c:Ll4/l;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->c:Ll4/l;

    const-string v1, "pidof Xvfb"

    invoke-virtual {v0, v1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[0-9 ]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->c:Ll4/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, -0x1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    :try_start_0
    const-string p1, ""

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-lez p1, :cond_2

    .line 28
    .line 29
    const/high16 v1, 0x10000

    .line 30
    .line 31
    if-ge p1, v1, :cond_2

    .line 32
    .line 33
    move v0, p1

    .line 34
    :catch_0
    :cond_2
    if-gtz v0, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCService;->c:Ll4/l;

    .line 38
    .line 39
    iget-object p1, p1, Ll4/l;->c:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {p1}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p1, Lu2/h;->n:Lv1/h;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    invoke-virtual {v1}, Lv1/h;->o()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    invoke-virtual {p1, v0}, Lu2/h;->E(I)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "net0 tcp:127.0.0.1:"

    .line 63
    .line 64
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, "-:"

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v3, "hostfwd_add "

    .line 83
    .line 84
    monitor-enter v1

    .line 85
    :try_start_1
    const-string v4, "human-monitor-command"

    .line 86
    .line 87
    const-string v5, "command-line"

    .line 88
    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v3, Lorg/json/JSONObject;

    .line 102
    .line 103
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    :try_start_2
    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    .line 109
    :catch_1
    :try_start_3
    invoke-virtual {v1, v3, v4}, Lv1/h;->j(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    :cond_5
    monitor-exit v1

    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    monitor-exit v1

    .line 120
    throw p1

    .line 121
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCService;->c:Ll4/l;

    .line 122
    .line 123
    iget-object p1, p1, Ll4/l;->f:Lu3/g;

    .line 124
    .line 125
    const-string v1, "VNC port "

    .line 126
    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    const-string v3, " forwarded into the VM"

    .line 130
    .line 131
    :goto_2
    invoke-static {v1, v0, v3}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_3

    .line 136
    :cond_7
    const-string v3, " could not be forwarded (QMP unavailable)"

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :goto_3
    if-eqz v2, :cond_8

    .line 140
    .line 141
    const/4 v1, 0x2

    .line 142
    goto :goto_4

    .line 143
    :cond_8
    const/4 v1, 0x3

    .line 144
    :goto_4
    invoke-virtual {p1, v1, v0}, Lu3/g;->e(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.zalexdev.stryker.vnc.action.STOP"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.category.DEFAULT"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->c:Ll4/l;

    .line 20
    .line 21
    const-string v1, "vncserver-stop"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->b:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCService;->c:Ll4/l;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v1, -0x1

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    :try_start_0
    const-string v0, ""

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-lez v0, :cond_2

    .line 55
    .line 56
    const/high16 v2, 0x10000

    .line 57
    .line 58
    if-ge v0, v2, :cond_2

    .line 59
    .line 60
    move v1, v0

    .line 61
    :catch_0
    :cond_2
    if-lez v1, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->c:Ll4/l;

    .line 64
    .line 65
    iget-object v0, v0, Ll4/l;->c:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Lu2/h;->E(I)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->a:Ljava/util/Timer;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 1

    new-instance v0, Ll4/l;

    invoke-direct {v0, p0}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->c:Ll4/l;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v0, 0x1a

    .line 8
    .line 9
    if-lt p3, v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lf4/b;->d()Landroid/app/NotificationChannel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Landroid/app/NotificationManager;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/app/NotificationManager;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 27
    .line 28
    const-class v1, Lcom/zalexdev/stryker/MainActivity;

    .line 29
    .line 30
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x1f

    .line 34
    .line 35
    if-lt p3, v1, :cond_1

    .line 36
    .line 37
    const/high16 p3, 0x4000000

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/high16 p3, 0x8000000

    .line 41
    .line 42
    :goto_0
    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v1, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    new-instance v0, Lv/z;

    .line 48
    .line 49
    const-string v1, "VNCChannel"

    .line 50
    .line 51
    invoke-direct {v0, p0, v1}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "VNC Server"

    .line 55
    .line 56
    invoke-static {v1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, v0, Lv/z;->e:Ljava/lang/CharSequence;

    .line 61
    .line 62
    const-string v1, "Running command. Waiting for connection..."

    .line 63
    .line 64
    invoke-static {v1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lv/z;->f:Ljava/lang/CharSequence;

    .line 69
    .line 70
    iget-object v1, v0, Lv/z;->s:Landroid/app/Notification;

    .line 71
    .line 72
    const v2, 0x7f0801db

    .line 73
    .line 74
    .line 75
    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 76
    .line 77
    const/16 v1, 0x8

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lv/z;->e(I)V

    .line 80
    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    invoke-virtual {v0, v1}, Lv/z;->e(I)V

    .line 84
    .line 85
    .line 86
    iput-object p3, v0, Lv/z;->g:Landroid/app/PendingIntent;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCService;->d:Lv/z;

    .line 89
    .line 90
    const/16 p3, 0x21

    .line 91
    .line 92
    invoke-virtual {v0}, Lv/z;->a()Landroid/app/Notification;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, p3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 97
    .line 98
    .line 99
    if-eqz p2, :cond_3

    .line 100
    .line 101
    const-string p3, "com.zalexdev.stryker.vnc.action.START"

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_2

    .line 108
    .line 109
    const-string p2, "com.zalexdev.stryker.vnc.extra.port"

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    iput-object p3, p0, Lcom/zalexdev/stryker/vnc/VNCService;->b:Ljava/lang/String;

    .line 116
    .line 117
    const-string p3, "com.zalexdev.stryker.vnc.extra.resolution"

    .line 118
    .line 119
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p2, Ljava/lang/Thread;

    .line 128
    .line 129
    new-instance v0, Lv3/g;

    .line 130
    .line 131
    const/16 v2, 0x14

    .line 132
    .line 133
    invoke-direct {v0, p0, p3, p1, v2}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 140
    .line 141
    .line 142
    const-wide/16 p1, 0x5

    .line 143
    .line 144
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :goto_1
    new-instance v2, Ljava/util/Timer;

    .line 153
    .line 154
    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object v2, p0, Lcom/zalexdev/stryker/vnc/VNCService;->a:Ljava/util/Timer;

    .line 158
    .line 159
    new-instance v3, Lj2/m;

    .line 160
    .line 161
    const/4 p1, 0x1

    .line 162
    invoke-direct {v3, p0, p1}, Lj2/m;-><init>(Landroid/content/ContextWrapper;I)V

    .line 163
    .line 164
    .line 165
    const-wide/16 v4, 0x0

    .line 166
    .line 167
    const-wide/16 v6, 0x2710

    .line 168
    .line 169
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_2
    const-string p1, "com.zalexdev.stryker.vnc.action.STOP"

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_3

    .line 180
    .line 181
    new-instance p1, Ljava/lang/Thread;

    .line 182
    .line 183
    new-instance p2, Landroidx/activity/b;

    .line 184
    .line 185
    const/16 p3, 0x1c

    .line 186
    .line 187
    invoke-direct {p2, p0, p3}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 188
    .line 189
    .line 190
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 194
    .line 195
    .line 196
    :cond_3
    :goto_2
    return v1
.end method
