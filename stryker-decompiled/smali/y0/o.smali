.class public final Ly0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Ly0/p;


# direct methods
.method public constructor <init>(Ly0/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/o;->a:Ly0/p;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "service"

    .line 7
    .line 8
    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget p1, Ly0/q;->b:I

    .line 12
    .line 13
    const-string p1, "androidx.room.IMultiInstanceInvalidationService"

    .line 14
    .line 15
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    instance-of v0, p1, Ly0/h;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    check-cast p1, Ly0/h;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ly0/g;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p1, Ly0/g;->a:Landroid/os/IBinder;

    .line 34
    .line 35
    :goto_0
    iget-object p2, p0, Ly0/o;->a:Ly0/p;

    .line 36
    .line 37
    iput-object p1, p2, Ly0/p;->g:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object p1, p2, Ly0/p;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    iget-object p2, p2, Ly0/p;->k:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p2, Ljava/lang/Runnable;

    .line 46
    .line 47
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly0/o;->a:Ly0/p;

    .line 7
    .line 8
    iget-object v0, p1, Ly0/p;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iget-object v1, p1, Ly0/p;->l:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Ly0/p;->g:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method
