.class public final Ls3/g;
.super Ls3/b;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Ly0/p;Lu3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ls3/b;-><init>(Ly0/p;Lu3/g;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ls3/g;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Ls3/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static h(Ls3/g;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls3/b;->a:Ly0/p;

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    :try_start_0
    iget-object v1, v0, Ly0/p;->a:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0, p1}, Ls3/b;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    iget-object v0, v0, Ly0/p;->k:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v2, v0

    .line 36
    check-cast v2, Ljava/net/NetworkInterface;

    .line 37
    .line 38
    const/16 v3, 0xc8

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    check-cast v0, Ljava/net/NetworkInterface;

    .line 43
    .line 44
    const/16 v2, 0x40

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2, v3}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->isReachable(I)Z

    .line 52
    .line 53
    .line 54
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_1
    if-eqz v0, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    :catchall_0
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls3/b;->c:Z

    :try_start_0
    iget-object v0, p0, Ls3/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Ls3/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "icmp"

    return-object v0
.end method

.method public final i(IILjava/util/concurrent/CountDownLatch;I)Ljava/lang/Thread;
    .locals 3

    .line 1
    const-string v0, "icmp-sweep-"

    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lu1/d;

    invoke-direct {v2, p0, p1, p2, p3}, Lu1/d;-><init>(Ls3/g;IILjava/util/concurrent/CountDownLatch;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setDaemon(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
