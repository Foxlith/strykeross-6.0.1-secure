.class public abstract Landroidx/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Landroidx/media/g;

.field public final b:Ln/b;

.field public final c:Landroidx/media/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln/b;

    .line 5
    .line 6
    invoke-direct {v0}, Ln/k;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 10
    .line 11
    new-instance v0, Landroidx/media/o;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/media/o;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/lifecycle/k;
.end method

.method public abstract b()V
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->a:Landroidx/media/g;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media/f;->b:Landroidx/media/p;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
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
    const/16 v1, 0x1c

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/media/i;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroidx/media/h;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->a:Landroidx/media/g;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/16 v1, 0x1a

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Landroidx/media/h;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Landroidx/media/h;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Landroidx/media/g;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Landroidx/media/g;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->a:Landroidx/media/g;

    .line 35
    .line 36
    invoke-interface {v0}, Landroidx/media/d;->a()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
