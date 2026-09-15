.class public final Ly0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/String;

.field public final synthetic b:Ly0/p;


# direct methods
.method public constructor <init>(Ly0/p;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly0/m;->b:Ly0/p;

    .line 5
    .line 6
    iput-object p2, p0, Ly0/m;->a:[Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 3

    .line 1
    const-string v0, "tables"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly0/m;->b:Ly0/p;

    .line 7
    .line 8
    iget-object v1, v0, Ly0/p;->i:Ljava/io/Serializable;

    .line 9
    .line 10
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    :try_start_0
    iget-object v1, v0, Ly0/p;->g:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ly0/h;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v0, v0, Ly0/p;->b:I

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 35
    .line 36
    invoke-static {p1, v2}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    check-cast p1, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v1, p1, v0}, Ly0/h;->c([Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    const-string v0, "ROOM"

    .line 47
    .line 48
    const-string v1, "Cannot broadcast invalidation"

    .line 49
    .line 50
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method
