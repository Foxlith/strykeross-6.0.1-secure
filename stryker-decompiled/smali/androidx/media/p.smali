.class public abstract Landroidx/media/p;
.super Landroid/service/media/MediaBrowserService;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media/r;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;Landroidx/media/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/media/p;->a:Landroidx/media/r;

    return-void
.end method


# virtual methods
.method public final onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 5

    .line 1
    invoke-static {p3}, La/c;->f(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object p3, p0, Landroidx/media/p;->a:Landroidx/media/r;

    .line 15
    .line 16
    check-cast p3, Landroidx/media/f;

    .line 17
    .line 18
    iget-object v2, p3, Landroidx/media/f;->d:Landroidx/media/MediaBrowserServiceCompat;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const-string v4, "extra_client_version"

    .line 24
    .line 25
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/os/Messenger;

    .line 35
    .line 36
    iget-object v3, v2, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 37
    .line 38
    invoke-direct {v1, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p3, Landroidx/media/f;->c:Landroid/os/Messenger;

    .line 42
    .line 43
    new-instance v1, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v3, "extra_service_version"

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p3, Landroidx/media/f;->c:Landroid/os/Messenger;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v4, "extra_messenger"

    .line 61
    .line 62
    invoke-static {v1, v4, v3}, Lv/l;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 63
    .line 64
    .line 65
    iget-object p3, p3, Landroidx/media/f;->a:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    new-instance p3, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v1, 0x1c

    .line 78
    .line 79
    if-lt p3, v1, :cond_2

    .line 80
    .line 81
    const/4 p3, -0x1

    .line 82
    invoke-static {p1, p3, p2}, Landroidx/core/view/j;->f(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroidx/media/MediaBrowserServiceCompat;->a()Landroidx/lifecycle/k;

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media/p;->a:Landroidx/media/r;

    .line 2
    .line 3
    check-cast p1, Landroidx/media/f;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Landroidx/media/f;->d:Landroidx/media/MediaBrowserServiceCompat;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/media/MediaBrowserServiceCompat;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
