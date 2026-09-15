.class public final synthetic Lu2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lu2/e;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    iget v0, p0, Lu2/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->j:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Thread;

    .line 11
    .line 12
    const-string v2, "nuclei-scan-worker"

    .line 13
    .line 14
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->E:I

    .line 22
    .line 23
    new-instance v0, Ljava/lang/Thread;

    .line 24
    .line 25
    const-string v1, "logs-io"

    .line 26
    .line 27
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_1
    sget-object v0, Lu3/e;->j:Ljava/util/regex/Pattern;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/Thread;

    .line 37
    .line 38
    const-string v1, "log-broadcast"

    .line 39
    .line 40
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    .line 48
    .line 49
    const-string v1, "ssdp-fetch"

    .line 50
    .line 51
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_3
    sget v0, Lcom/zalexdev/stryker/install/InstallService;->i:I

    .line 59
    .line 60
    new-instance v0, Ljava/lang/Thread;

    .line 61
    .line 62
    const-string v2, "stryker-install-worker"

    .line 63
    .line 64
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :pswitch_4
    sget-object v0, Lw2/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/Thread;

    .line 74
    .line 75
    const-string v1, "geomac-hook"

    .line 76
    .line 77
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_5
    new-instance v0, Ljava/lang/Thread;

    .line 85
    .line 86
    const-string v1, "stryker-qemu"

    .line 87
    .line 88
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
