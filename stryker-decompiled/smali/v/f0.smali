.class public final Lv/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/util/HashSet;

.field public static final f:Ljava/lang/Object;

.field public static g:Lv/e0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv/f0;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lv/f0;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv/f0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/f0;->a:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lv/f0;->b:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/app/Notification;)V
    .locals 4

    .line 1
    iget-object v0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-string v2, "android.support.useSideChannel"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lv/b0;

    .line 15
    .line 16
    iget-object v2, p0, Lv/f0;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2, p1, p2}, Lv/b0;-><init>(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lv/f0;->f:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    sget-object p2, Lv/f0;->g:Lv/e0;

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    new-instance p2, Lv/e0;

    .line 33
    .line 34
    iget-object v3, p0, Lv/f0;->a:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {p2, v3}, Lv/e0;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    sput-object p2, Lv/f0;->g:Lv/e0;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    sget-object p2, Lv/f0;->g:Lv/e0;

    .line 49
    .line 50
    iget-object p2, p2, Lv/e0;->b:Landroid/os/Handler;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 58
    .line 59
    .line 60
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object p2, p0, Lv/f0;->b:Landroid/app/NotificationManager;

    .line 62
    .line 63
    invoke-virtual {p2, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1

    .line 69
    :cond_1
    iget-object v0, p0, Lv/f0;->b:Landroid/app/NotificationManager;

    .line 70
    .line 71
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    return-void
.end method
