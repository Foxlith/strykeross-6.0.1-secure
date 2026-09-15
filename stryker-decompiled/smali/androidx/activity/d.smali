.class public final Landroidx/activity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/activity/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/activity/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ly4/i;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/activity/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly0/k;

    .line 4
    .line 5
    new-instance v1, Ly4/i;

    .line 6
    .line 7
    invoke-direct {v1}, Ly4/i;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Ly0/k;->a:Ly0/w;

    .line 11
    .line 12
    new-instance v2, Lc1/a;

    .line 13
    .line 14
    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    .line 15
    .line 16
    invoke-direct {v2, v3}, Lc1/a;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v2, v3}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ly4/i;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    invoke-static {v0, v3}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lv1/f;->c(Ly4/i;)Ly4/i;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, v0, Ly4/i;->a:Ly4/f;

    .line 53
    .line 54
    invoke-virtual {v1}, Ly4/f;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    xor-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/activity/d;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Ly0/k;

    .line 65
    .line 66
    iget-object v1, v1, Ly0/k;->h:Lc1/h;

    .line 67
    .line 68
    const-string v2, "Required value was null."

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Landroidx/activity/d;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ly0/k;

    .line 75
    .line 76
    iget-object v1, v1, Ly0/k;->h:Lc1/h;

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-interface {v1}, Lc1/h;->e()I

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_3
    :goto_1
    return-object v0

    .line 105
    :goto_2
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    :catchall_1
    move-exception v2

    .line 107
    invoke-static {v0, v1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw v2
.end method

.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    iget v0, v1, Landroidx/activity/d;->a:I

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;

    .line 1
    sget v2, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->s:I

    .line 2
    invoke-virtual {v0}, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->readNewLines()V

    .line 3
    invoke-virtual {v0}, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->d()V

    .line 4
    iget-object v0, v0, Lcom/zalexdev/stryker/nuclei/NucleiTerminal;->p:Landroid/os/Handler;

    .line 5
    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 6
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 7
    iget-wide v9, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->M:J

    sub-long/2addr v2, v9

    .line 8
    div-long/2addr v2, v7

    .line 9
    iget-object v4, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->s:Landroid/widget/TextView;

    const-wide/16 v9, 0x3c

    cmp-long v11, v2, v9

    const-string v12, "s"

    if-gez v11, :cond_0

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_0
    div-long v13, v2, v9

    rem-long/2addr v2, v9

    cmp-long v11, v13, v9

    const-string v15, "m"

    if-gez v11, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v5, v2, v5

    if-nez v5, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    div-long v2, v13, v9

    rem-long/2addr v13, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->N:Landroid/os/Handler;

    .line 13
    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_2
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Ls3/u;

    .line 14
    :catch_0
    :goto_3
    iget-boolean v2, v0, Ls3/b;->c:Z

    if-eqz v2, :cond_5

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_0
    iget-object v2, v0, Ls3/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    :try_start_1
    iget-boolean v5, v0, Ls3/u;->l:Z

    if-eqz v5, :cond_4

    invoke-virtual {v0, v2}, Ls3/u;->i(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v2}, Ls3/u;->j(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :catch_2
    :cond_5
    return-void

    :pswitch_3
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Ls3/j;

    .line 16
    sget-object v2, Ls3/j;->h:[B

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x800

    new-array v3, v2, [B

    .line 18
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v3, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    :catch_3
    :catchall_0
    :goto_4
    iget-boolean v5, v0, Ls3/b;->c:Z

    if-eqz v5, :cond_9

    iget-object v5, v0, Ls3/j;->f:Ljava/net/DatagramSocket;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    :try_start_2
    invoke-virtual {v4, v3, v10, v2}, Ljava/net/DatagramPacket;->setData([BII)V

    invoke-virtual {v5, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0, v4}, Ls3/j;->h(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_1
    iget-boolean v6, v0, Ls3/b;->c:Z

    if-nez v6, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    const-wide/16 v5, 0x32

    invoke-static {v5, v6}, Ls3/b;->d(J)V

    goto :goto_4

    :cond_9
    :goto_5
    return-void

    :pswitch_4
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 19
    iget-boolean v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->n:Z

    if-nez v2, :cond_c

    .line 20
    iget-object v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->o:Landroid/animation/Animator;

    if-eqz v2, :cond_a

    .line 21
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_a
    new-array v2, v9, [I

    .line 22
    iget-object v5, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->a:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 23
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Li5/a;->l0(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v9, -0x1

    .line 24
    :cond_b
    iget v5, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->d:I

    mul-int/2addr v9, v5

    aput v9, v2, v10

    const-string v5, "offsetX"

    .line 25
    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 26
    iput-object v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->o:Landroid/animation/Animator;

    .line 27
    new-instance v5, Lt0/a;

    invoke-direct {v5}, Lt0/a;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    iget-object v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->o:Landroid/animation/Animator;

    .line 29
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 30
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->o:Landroid/animation/Animator;

    .line 31
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_c
    return-void

    :pswitch_5
    iget-object v2, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    :try_start_4
    move-object v0, v2

    check-cast v0, Landroidx/work/Worker;

    .line 32
    invoke-virtual {v0}, Landroidx/work/Worker;->g()Lm1/l;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Landroidx/work/Worker;

    iget-object v3, v3, Landroidx/work/Worker;->e:Lx1/k;

    invoke-virtual {v3, v0}, Lx1/k;->j(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    check-cast v2, Landroidx/work/Worker;

    iget-object v2, v2, Landroidx/work/Worker;->e:Lx1/k;

    invoke-virtual {v2, v0}, Lx1/k;->k(Ljava/lang/Throwable;)Z

    :goto_6
    return-void

    :pswitch_6
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager2/adapter/e;

    .line 33
    iput-boolean v10, v0, Landroidx/viewpager2/adapter/e;->g:Z

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/e;->c()V

    return-void

    :pswitch_7
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 34
    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    return-void

    :pswitch_8
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    .line 35
    iget-object v0, v0, Ly0/k;->a:Ly0/w;

    .line 36
    iget-object v0, v0, Ly0/w;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    const-string v0, "readWriteLock.readLock()"

    invoke-static {v2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    invoke-virtual {v0}, Ly0/k;->b()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v0, :cond_d

    :goto_7
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_e

    :cond_d
    :try_start_6
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    .line 40
    iget-object v0, v0, Ly0/k;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    .line 42
    iget-object v0, v0, Ly0/k;->a:Ly0/w;

    .line 43
    invoke-virtual {v0}, Ly0/w;->h()Lc1/e;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lc1/e;->q()Lc1/b;

    move-result-object v0

    invoke-interface {v0}, Lc1/b;->j()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_7

    :cond_f
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    .line 45
    iget-object v0, v0, Ly0/k;->a:Ly0/w;

    .line 46
    invoke-virtual {v0}, Ly0/w;->h()Lc1/e;

    move-result-object v0

    invoke-interface {v0}, Lc1/e;->q()Lc1/b;

    move-result-object v3

    invoke-interface {v3}, Lc1/b;->o()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroidx/activity/d;->a()Ly4/i;

    move-result-object v0

    invoke-interface {v3}, Lc1/b;->n()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-interface {v3}, Lc1/b;->a()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_8
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v2, Ly0/k;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    .line 48
    :try_start_9
    invoke-interface {v3}, Lc1/b;->a()V

    throw v0
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_9
    :try_start_a
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lx4/q;->a:Lx4/q;

    goto :goto_8

    :goto_a
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lx4/q;->a:Lx4/q;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_8

    :goto_b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v9

    if-eqz v2, :cond_11

    iget-object v2, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v2, Ly0/k;

    .line 49
    iget-object v3, v2, Ly0/k;->j:Lk/g;

    .line 50
    monitor-enter v3

    .line 51
    :try_start_b
    iget-object v2, v2, Ly0/k;->j:Lk/g;

    .line 52
    invoke-virtual {v2}, Lk/g;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    move-object v4, v2

    check-cast v4, Lk/e;

    invoke-virtual {v4}, Lk/e;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Lk/e;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly0/j;

    invoke-virtual {v4, v0}, Ly0/j;->a(Ljava/util/Set;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    goto :goto_d

    :cond_10
    monitor-exit v3

    goto :goto_e

    :goto_d
    monitor-exit v3

    throw v0

    :cond_11
    :goto_e
    return-void

    :goto_f
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v2, Ly0/k;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    throw v0

    :pswitch_9
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lw0/m;

    .line 55
    iget-object v3, v0, Lw0/m;->a:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_10

    .line 58
    :cond_12
    iget-object v3, v0, Lw0/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Lw0/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v4}, Lw0/m;->a(Landroidx/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    throw v2

    :pswitch_a
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 59
    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :pswitch_b
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/g0;

    .line 60
    iget v2, v0, Landroidx/lifecycle/g0;->b:I

    if-nez v2, :cond_13

    .line 61
    iput-boolean v9, v0, Landroidx/lifecycle/g0;->c:Z

    iget-object v2, v0, Landroidx/lifecycle/g0;->f:Landroidx/lifecycle/v;

    sget-object v3, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 62
    :cond_13
    iget v2, v0, Landroidx/lifecycle/g0;->a:I

    if-nez v2, :cond_14

    iget-boolean v2, v0, Landroidx/lifecycle/g0;->c:Z

    if-eqz v2, :cond_14

    iget-object v2, v0, Landroidx/lifecycle/g0;->f:Landroidx/lifecycle/v;

    sget-object v3, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iput-boolean v9, v0, Landroidx/lifecycle/g0;->d:Z

    :cond_14
    return-void

    :pswitch_c
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/z;

    .line 63
    iget-object v3, v0, Landroidx/lifecycle/z;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/z;

    iget-object v0, v0, Landroidx/lifecycle/z;->f:Ljava/lang/Object;

    iget-object v2, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/z;

    sget-object v4, Landroidx/lifecycle/z;->k:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/lifecycle/z;->f:Ljava/lang/Object;

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    iget-object v2, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/z;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/z;->e(Ljava/lang/Object;)V

    return-void

    :catchall_6
    move-exception v0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v0

    :pswitch_d
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    .line 64
    invoke-static {v0}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    throw v2

    :pswitch_e
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lp0/f;

    .line 65
    iget-object v2, v0, Lp0/f;->b:Landroidx/customview/widget/h;

    .line 66
    iget v2, v2, Landroidx/customview/widget/h;->o:I

    .line 67
    iget v3, v0, Lp0/f;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_15

    move v3, v9

    goto :goto_11

    :cond_15
    move v3, v10

    :goto_11
    iget-object v5, v0, Lp0/f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v6, 0x5

    if-eqz v3, :cond_17

    invoke-virtual {v5, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v8, v8

    goto :goto_12

    :cond_16
    move v8, v10

    :goto_12
    add-int/2addr v8, v2

    goto :goto_13

    :cond_17
    invoke-virtual {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v2

    :goto_13
    if-eqz v7, :cond_1d

    if-eqz v3, :cond_18

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v2, v8, :cond_19

    :cond_18
    if-nez v3, :cond_1d

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v8, :cond_1d

    :cond_19
    invoke-virtual {v5, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lp0/d;

    iget-object v3, v0, Lp0/f;->b:Landroidx/customview/widget/h;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v3, v7, v8, v11}, Landroidx/customview/widget/h;->t(Landroid/view/View;II)Z

    iput-boolean v9, v2, Lp0/d;->c:Z

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 68
    iget v2, v0, Lp0/f;->a:I

    if-ne v2, v4, :cond_1a

    move v4, v6

    :cond_1a
    iget-object v0, v0, Lp0/f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 69
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 70
    :cond_1b
    iget-boolean v0, v5, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    if-nez v0, :cond_1d

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide v11, v13

    invoke-static/range {v11 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_14
    if-ge v10, v2, :cond_1c

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_1c
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v9, v5, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    :cond_1d
    return-void

    :pswitch_f
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/customview/widget/h;

    .line 72
    invoke-virtual {v0, v10}, Landroidx/customview/widget/h;->q(I)V

    return-void

    :pswitch_10
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lk0/g;

    .line 73
    iget-boolean v2, v0, Lk0/g;->p:Z

    if-nez v2, :cond_1e

    goto/16 :goto_16

    :cond_1e
    iget-boolean v2, v0, Lk0/g;->m:Z

    if-eqz v2, :cond_1f

    iput-boolean v10, v0, Lk0/g;->m:Z

    iget-object v2, v0, Lk0/g;->a:Lk0/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lk0/a;->e:J

    const-wide/16 v7, -0x1

    iput-wide v7, v2, Lk0/a;->g:J

    iput-wide v3, v2, Lk0/a;->f:J

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Lk0/a;->h:F

    .line 75
    :cond_1f
    iget-object v2, v0, Lk0/g;->a:Lk0/a;

    .line 76
    iget-wide v3, v2, Lk0/a;->g:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_20

    .line 77
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-wide v7, v2, Lk0/a;->g:J

    iget v9, v2, Lk0/a;->i:I

    int-to-long v11, v9

    add-long/2addr v7, v11

    cmp-long v3, v3, v7

    if-lez v3, :cond_20

    goto :goto_15

    .line 78
    :cond_20
    invoke-virtual {v0}, Lk0/g;->f()Z

    move-result v3

    if-nez v3, :cond_21

    :goto_15
    iput-boolean v10, v0, Lk0/g;->p:Z

    goto :goto_16

    :cond_21
    iget-boolean v3, v0, Lk0/g;->n:Z

    if-eqz v3, :cond_22

    iput-boolean v10, v0, Lk0/g;->n:Z

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide v11, v13

    invoke-static/range {v11 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v4, v0, Lk0/g;->c:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 80
    :cond_22
    iget-wide v3, v2, Lk0/a;->f:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_23

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk0/a;->a(J)F

    move-result v5

    const/high16 v6, -0x3f800000    # -4.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v5

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    .line 81
    iget-wide v6, v2, Lk0/a;->f:J

    sub-long v6, v3, v6

    iput-wide v3, v2, Lk0/a;->f:J

    long-to-float v3, v6

    mul-float/2addr v3, v5

    iget v2, v2, Lk0/a;->d:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 82
    iget-object v3, v0, Lk0/g;->r:Landroid/widget/ListView;

    .line 83
    invoke-static {v3, v2}, Lk0/h;->b(Landroid/widget/ListView;I)V

    .line 84
    iget-object v0, v0, Lk0/g;->c:Landroid/view/View;

    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 85
    invoke-static {v0, v1}, Landroidx/core/view/k0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_16
    return-void

    .line 86
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lg/c;

    .line 87
    invoke-virtual {v0, v9}, Lg/c;->a(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_12
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lf/t0;

    .line 88
    iget-object v3, v0, Lf/t0;->b:Landroid/view/Window$Callback;

    .line 89
    invoke-virtual {v0}, Lf/t0;->s()Landroid/view/Menu;

    move-result-object v0

    instance-of v4, v0, Landroidx/appcompat/view/menu/o;

    if-eqz v4, :cond_24

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/view/menu/o;

    goto :goto_17

    :cond_24
    move-object v4, v2

    :goto_17
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    :cond_25
    :try_start_e
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-interface {v3, v10, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v3, v10, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_18

    :catchall_7
    move-exception v0

    goto :goto_19

    :cond_26
    :goto_18
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :cond_27
    if-eqz v4, :cond_28

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    :cond_28
    return-void

    :goto_19
    if-eqz v4, :cond_29

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    :cond_29
    throw v0

    :pswitch_13
    :try_start_f
    iget-object v0, v1, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/h;

    .line 90
    invoke-static {v0}, Landroidx/activity/h;->access$001(Landroidx/activity/h;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_1a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can not perform this action after onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :goto_1a
    return-void

    :cond_2a
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
