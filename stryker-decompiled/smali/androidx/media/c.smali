.class public final Landroidx/media/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/fragment/app/n;

.field public final c:Ljava/util/HashMap;

.field public final synthetic d:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroidx/fragment/app/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media/c;->d:Landroidx/media/MediaBrowserServiceCompat;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media/c;->c:Ljava/util/HashMap;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/media/c;->a:Ljava/lang/String;

    .line 14
    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v0, 0x1c

    .line 18
    .line 19
    if-lt p1, v0, :cond_0

    .line 20
    .line 21
    invoke-static {p2, p3, p4}, Landroidx/core/view/j;->f(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object p5, p0, Landroidx/media/c;->b:Landroidx/fragment/app/n;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Landroidx/media/c;->d:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/o;

    new-instance v1, Landroidx/media/b;

    invoke-direct {v1, p0}, Landroidx/media/b;-><init>(Landroidx/media/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
