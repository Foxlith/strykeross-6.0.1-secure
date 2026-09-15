.class public final synthetic Lu3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu3/e;


# direct methods
.method public synthetic constructor <init>(Lu3/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lu3/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lu3/b;->b:Lu3/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lu3/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu3/b;->b:Lu3/e;

    .line 7
    .line 8
    iget-object v1, v0, Lu3/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, v0, Lu3/e;->g:J

    .line 19
    .line 20
    invoke-virtual {v0}, Lu3/e;->j()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lu3/b;->b:Lu3/e;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    const/16 v2, 0x200

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-boolean v2, v0, Lu3/e;->h:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    :try_start_0
    iget-object v2, v0, Lu3/e;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 41
    .line 42
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    .line 44
    const-wide/16 v4, 0x1

    .line 45
    .line 46
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lu3/d;

    .line 51
    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lu3/e;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 59
    .line 60
    const/16 v3, 0x1ff

    .line 61
    .line 62
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lu3/e;->g(Ljava/util/ArrayList;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lu3/e;->f()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v2

    .line 76
    const-string v3, "LogStore"

    .line 77
    .line 78
    const-string v4, "writer flush failed"

    .line 79
    .line 80
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
