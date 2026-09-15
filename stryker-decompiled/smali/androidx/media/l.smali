.class public final Landroidx/media/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/n;

.field public final synthetic c:Landroidx/fragment/app/n;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/media/l;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media/l;->c:Landroidx/fragment/app/n;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/media/l;->b:Landroidx/fragment/app/n;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media/l;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/media/l;->c:Landroidx/fragment/app/n;

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/media/l;->b:Landroidx/fragment/app/n;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, v2, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroidx/media/MediaBrowserServiceCompat;

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/media/c;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :pswitch_0
    invoke-virtual {v3}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, v2, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroidx/media/MediaBrowserServiceCompat;

    .line 40
    .line 41
    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/media/c;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v2, v0, Landroidx/media/c;->b:Landroidx/fragment/app/n;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
