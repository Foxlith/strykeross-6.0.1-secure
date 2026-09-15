.class public final Landroidx/appcompat/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/appcompat/widget/j;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/appcompat/widget/j;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw5/e;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Landroidx/appcompat/widget/j;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    new-instance p1, Lv1/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Landroidx/appcompat/widget/j;->a:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v0, Lv1/e;

    .line 1
    invoke-virtual {v0}, Lv1/e;->i()Lw5/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v2, Lw5/e;

    invoke-virtual {v2, v0}, Lw5/e;->d(Lw5/i;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No pending post available"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ls3/x;

    iget-object v0, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :try_start_0
    iget-boolean v0, v7, Ls3/b;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, v7, Ls3/x;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v9, Ljava/net/DatagramSocket;

    invoke-direct {v9}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v5, 0x3e8

    :try_start_1
    invoke-virtual {v9, v5}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    iget-object v5, v7, Ls3/x;->g:Ljava/util/Set;

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v6

    const/16 v5, 0x800

    new-array v10, v5, [B

    move v11, v3

    :goto_0
    if-ge v11, v4, :cond_f

    iget-boolean v12, v7, Ls3/b;->c:Z

    if-eqz v12, :cond_f

    .line 4
    iget-object v12, v7, Ls3/x;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v13

    if-gtz v13, :cond_2

    invoke-virtual {v12, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v13, v6

    :cond_2
    const v12, 0x7fffffff

    and-int/2addr v12, v13

    if-nez v11, :cond_3

    move v13, v6

    goto :goto_1

    :cond_3
    move v13, v3

    :goto_1
    if-eqz v13, :cond_4

    sget-object v14, Ls3/x;->j:[Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v9

    goto/16 :goto_a

    :cond_4
    sget-object v14, Ls3/x;->k:[Ljava/lang/String;

    .line 5
    :goto_2
    invoke-static {v12, v13, v14}, Ls3/x;->i(II[Ljava/lang/String;)[B

    move-result-object v13

    array-length v14, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v14, :cond_6

    iget-object v0, v7, Ls3/x;->g:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_3
    :try_start_2
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_5
    :goto_4
    iget-object v0, v7, Ls3/x;->f:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_6
    :try_start_3
    new-instance v14, Ljava/net/DatagramPacket;

    array-length v15, v13

    const/16 v6, 0xa1

    invoke-direct {v14, v13, v15, v0, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v9, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v6, v3

    :goto_5
    if-ge v6, v2, :cond_e

    :try_start_4
    iget-boolean v13, v7, Ls3/b;->c:Z

    if-eqz v13, :cond_e

    new-instance v13, Ljava/net/DatagramPacket;

    invoke-direct {v13, v10, v5}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v9, v13}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v14

    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v15

    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getLength()I

    move-result v13

    invoke-static {v14, v15, v13, v12}, Ls3/x;->k([BIII)Ls3/o;

    move-result-object v13

    if-nez v13, :cond_8

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    iget-object v0, v7, Ls3/x;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ls3/b;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, v13, Ls3/o;->d:Ljava/lang/String;

    const-string v4, ""

    if-nez v2, :cond_9

    move-object v2, v4

    :cond_9
    iget-object v5, v13, Ls3/o;->a:Ljava/lang/String;

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    move-object v4, v5

    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3c

    if-le v5, v6, :cond_b

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    move-object v4, v2

    .line 7
    :goto_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ls3/b;->c(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, v7, Ls3/x;->g:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :catchall_2
    :cond_e
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_f
    iget-object v0, v7, Ls3/x;->g:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    :goto_a
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " probe failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ls3/b;->g(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v5, :cond_5

    iget-object v0, v7, Ls3/x;->g:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :try_start_8
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_4

    :goto_b
    return-void

    :catchall_4
    move-exception v0

    if-eqz v5, :cond_10

    iget-object v2, v7, Ls3/x;->g:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :try_start_9
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    :cond_10
    iget-object v2, v7, Ls3/x;->f:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v0

    :pswitch_1
    const-string v0, "Worker was marked important ("

    iget-object v2, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v2, Lw1/s;

    .line 8
    iget-object v2, v2, Lw1/s;->a:Lx1/k;

    .line 9
    iget-object v2, v2, Lx1/i;->a:Ljava/lang/Object;

    .line 10
    instance-of v2, v2, Lx1/a;

    if-eqz v2, :cond_11

    goto/16 :goto_d

    :cond_11
    :try_start_a
    iget-object v2, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v2, Lx1/k;

    .line 11
    invoke-virtual {v2}, Lx1/i;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lm1/f;

    if-eqz v7, :cond_12

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    sget v2, Lw1/s;->g:I

    iget-object v2, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v2, Lw1/s;

    iget-object v2, v2, Lw1/s;->c:Lv1/p;

    iget-object v2, v2, Lv1/p;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lw1/s;

    iget-object v2, v2, Lw1/s;->a:Lx1/k;

    move-object v3, v0

    check-cast v3, Lw1/s;

    iget-object v3, v3, Lw1/s;->e:Lm1/g;

    move-object v4, v0

    check-cast v4, Lw1/s;

    iget-object v8, v4, Lw1/s;->b:Landroid/content/Context;

    check-cast v0, Lw1/s;

    iget-object v0, v0, Lw1/s;->d:Lm1/m;

    .line 12
    iget-object v0, v0, Lm1/m;->b:Landroidx/work/WorkerParameters;

    .line 13
    iget-object v6, v0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    move-object v0, v3

    check-cast v0, Lw1/t;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v10, Lx1/k;

    .line 16
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v11, Landroidx/core/view/w1;

    const/4 v9, 0x1

    move-object v3, v11

    move-object v4, v0

    move-object v5, v10

    invoke-direct/range {v3 .. v9}, Landroidx/core/view/w1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v0, Lw1/t;->a:Ly1/b;

    invoke-virtual {v0, v11}, Ly1/b;->a(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {v2, v10}, Lx1/k;->l(La2/a;)Z

    goto :goto_d

    :catchall_6
    move-exception v0

    goto :goto_c

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v0, Lw1/s;

    iget-object v0, v0, Lw1/s;->c:Lv1/p;

    iget-object v0, v0, Lv1/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") but did not provide ForegroundInfo"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :goto_c
    iget-object v2, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v2, Lw1/s;

    iget-object v2, v2, Lw1/s;->a:Lx1/k;

    invoke-virtual {v2, v0}, Lx1/k;->k(Ljava/lang/Throwable;)Z

    :goto_d
    return-void

    :pswitch_2
    :try_start_b
    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 19
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    iget-object v0, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v0, Lw1/o;

    iget-object v2, v0, Lw1/o;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iget-object v0, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v0, Lw1/o;

    invoke-virtual {v0}, Lw1/o;->a()V

    monitor-exit v2

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0

    :catchall_8
    move-exception v0

    iget-object v2, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v2, Lw1/o;

    iget-object v2, v2, Lw1/o;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    iget-object v3, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v3, Lw1/o;

    invoke-virtual {v3}, Lw1/o;->a()V

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    throw v0

    :pswitch_3
    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v0, Lu1/c;

    .line 20
    iget-object v0, v0, Lu1/c;->a:Ln1/a0;

    .line 21
    iget-object v0, v0, Ln1/a0;->h:Ln1/p;

    iget-object v2, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 22
    iget-object v3, v0, Ln1/p;->l:Ljava/lang/Object;

    .line 23
    monitor-enter v3

    :try_start_f
    iget-object v4, v0, Ln1/p;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln1/f0;

    if-nez v4, :cond_13

    iget-object v0, v0, Ln1/p;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ln1/f0;

    goto :goto_e

    :catchall_a
    move-exception v0

    goto :goto_10

    :cond_13
    :goto_e
    if-eqz v4, :cond_14

    .line 24
    iget-object v5, v4, Ln1/f0;->d:Lv1/p;

    .line 25
    :cond_14
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-eqz v5, :cond_15

    .line 26
    invoke-virtual {v5}, Lv1/p;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v0, Lu1/c;

    iget-object v2, v0, Lu1/c;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_10
    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v0, Lu1/c;

    iget-object v0, v0, Lu1/c;->f:Ljava/util/HashMap;

    invoke-static {v5}, Lv1/f;->t(Lv1/p;)Lv1/i;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v0, Lu1/c;

    iget-object v0, v0, Lu1/c;->g:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lu1/c;

    iget-object v3, v3, Lu1/c;->h:Lr1/c;

    check-cast v0, Lu1/c;

    iget-object v0, v0, Lu1/c;->g:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Lr1/c;->b(Ljava/util/Collection;)V

    monitor-exit v2

    goto :goto_f

    :catchall_b
    move-exception v0

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    throw v0

    :cond_15
    :goto_f
    return-void

    .line 27
    :goto_10
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    throw v0

    .line 28
    :pswitch_4
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    sget v2, Lo1/a;->d:I

    iget-object v2, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v2, Lv1/p;

    iget-object v2, v2, Lv1/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v0, Lo1/a;

    iget-object v0, v0, Lo1/a;->a:Lo1/b;

    iget-object v2, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v2, Lv1/p;

    filled-new-array {v2}, [Lv1/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo1/b;->f([Lv1/p;)V

    return-void

    :pswitch_5
    iget-object v3, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    :try_start_12
    move-object v0, v3

    check-cast v0, Ln1/f0;

    .line 29
    iget-object v0, v0, Ln1/f0;->q:Lx1/k;

    invoke-virtual {v0}, Lx1/i;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm1/l;

    if-nez v0, :cond_16

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    sget-object v4, Ln1/f0;->s:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    check-cast v6, Ln1/f0;

    iget-object v6, v6, Ln1/f0;->d:Lv1/p;

    iget-object v6, v6, Lv1/p;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " returned a null result. Treating it as a failure."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catchall_c
    move-exception v0

    goto :goto_15

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    goto :goto_12

    :catch_2
    move-exception v0

    goto :goto_13

    :cond_16
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v4

    sget-object v5, Ln1/f0;->s:Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Ln1/f0;

    iget-object v5, v5, Ln1/f0;->d:Lv1/p;

    iget-object v5, v5, Lv1/p;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v3

    check-cast v4, Ln1/f0;

    iput-object v0, v4, Ln1/f0;->g:Lm1/l;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    :goto_11
    check-cast v3, Ln1/f0;

    invoke-virtual {v3}, Ln1/f0;->b()V

    goto :goto_14

    :goto_12
    :try_start_13
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v2

    sget-object v4, Ln1/f0;->s:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed because it threw an exception/error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v0}, Lm1/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :goto_13
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v4

    sget-object v5, Ln1/f0;->s:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " was cancelled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 30
    iget v4, v4, Lm1/n;->a:I

    if-gt v4, v2, :cond_17

    .line 31
    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    :cond_17
    check-cast v3, Ln1/f0;

    .line 32
    invoke-virtual {v3}, Ln1/f0;->b()V

    :goto_14
    return-void

    :goto_15
    check-cast v3, Ln1/f0;

    invoke-virtual {v3}, Ln1/f0;->b()V

    throw v0

    :pswitch_6
    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v0, Ln1/f0;

    .line 33
    iget-object v0, v0, Ln1/f0;->q:Lx1/k;

    .line 34
    iget-object v0, v0, Lx1/i;->a:Ljava/lang/Object;

    .line 35
    instance-of v0, v0, Lx1/a;

    if-eqz v0, :cond_18

    goto :goto_16

    :cond_18
    :try_start_14
    iget-object v0, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v0, La2/a;

    check-cast v0, Lx1/i;

    .line 36
    invoke-virtual {v0}, Lx1/i;->get()Ljava/lang/Object;

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v0

    sget-object v2, Ln1/f0;->s:Ljava/lang/String;

    iget-object v2, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v2, Ln1/f0;

    iget-object v2, v2, Ln1/f0;->d:Lv1/p;

    iget-object v2, v2, Lv1/p;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ln1/f0;

    iget-object v2, v2, Ln1/f0;->q:Lx1/k;

    check-cast v0, Ln1/f0;

    iget-object v0, v0, Ln1/f0;->e:Lm1/m;

    invoke-virtual {v0}, Lm1/m;->e()Lx1/k;

    move-result-object v0

    invoke-virtual {v2, v0}, Lx1/k;->l(La2/a;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    goto :goto_16

    :catchall_d
    move-exception v0

    iget-object v2, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v2, Ln1/f0;

    iget-object v2, v2, Ln1/f0;->q:Lx1/k;

    invoke-virtual {v2, v0}, Lx1/k;->k(Ljava/lang/Throwable;)Z

    :goto_16
    return-void

    :pswitch_7
    :try_start_15
    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/Worker;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    :catchall_e
    move-exception v0

    iget-object v2, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v2, Lx1/k;

    .line 39
    invoke-virtual {v2, v0}, Lx1/k;->k(Ljava/lang/Throwable;)Z

    return-void

    .line 40
    :pswitch_8
    :try_start_16
    sget-object v0, Lv/i;->d:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    iget-object v2, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    if-eqz v0, :cond_19

    :try_start_17
    iget-object v5, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v2, v6, v3

    const-string v2, "AppCompat recreation"

    aput-object v2, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :catchall_f
    move-exception v0

    goto :goto_17

    :catch_3
    move-exception v0

    goto :goto_18

    :cond_19
    sget-object v0, Lv/i;->e:Ljava/lang/reflect/Method;

    iget-object v5, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    goto :goto_19

    :goto_17
    const-string v2, "ActivityRecreator"

    const-string v3, "Exception while invoking performStopActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/RuntimeException;

    if-ne v2, v3, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_19

    :cond_1a
    throw v0

    :cond_1b
    :goto_19
    return-void

    :pswitch_9
    iget-object v0, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object v2, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v2, Lv/h;

    .line 41
    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :pswitch_a
    iget-object v0, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v0, Lv/h;

    iget-object v2, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    .line 42
    iput-object v2, v0, Lv/h;->a:Ljava/lang/Object;

    return-void

    :pswitch_b
    iget-object v0, v1, Landroidx/appcompat/widget/j;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/o;

    .line 43
    iget-object v2, v0, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    if-eqz v2, :cond_1c

    .line 44
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o;->changeMenuMode()V

    .line 45
    :cond_1c
    iget-object v2, v0, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 46
    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/h;

    .line 47
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/a0;->b()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_1a

    .line 48
    :cond_1d
    iget-object v4, v2, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    if-nez v4, :cond_1e

    goto :goto_1b

    :cond_1e
    invoke-virtual {v2, v3, v3, v3, v3}, Landroidx/appcompat/view/menu/a0;->d(IIZZ)V

    :goto_1a
    iget-object v2, v1, Landroidx/appcompat/widget/j;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/h;

    .line 49
    iput-object v2, v0, Landroidx/appcompat/widget/o;->u:Landroidx/appcompat/widget/h;

    :cond_1f
    :goto_1b
    iput-object v5, v0, Landroidx/appcompat/widget/o;->w:Landroidx/appcompat/widget/j;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
