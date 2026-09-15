.class public abstract Lz/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf/q0;

.field public static final b:Ln/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lz/o;

    .line 10
    .line 11
    invoke-direct {v0, v2}, Lf/q0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    :goto_0
    sput-object v0, Lz/j;->a:Lf/q0;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/16 v1, 0x1c

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    new-instance v0, Lz/n;

    .line 22
    .line 23
    invoke-direct {v0}, Lz/m;-><init>()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x1a

    .line 28
    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    new-instance v0, Lz/m;

    .line 32
    .line 33
    invoke-direct {v0}, Lz/m;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget-object v0, Lz/l;->e:Ljava/lang/reflect/Method;

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    const-string v1, "TypefaceCompatApi24Impl"

    .line 42
    .line 43
    const-string v3, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 44
    .line 45
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_3
    if-eqz v0, :cond_4

    .line 49
    .line 50
    new-instance v0, Lz/l;

    .line 51
    .line 52
    invoke-direct {v0, v2}, Lf/q0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    new-instance v0, Lz/k;

    .line 57
    .line 58
    invoke-direct {v0}, Lz/k;-><init>()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :goto_1
    new-instance v0, Ln/f;

    .line 63
    .line 64
    const/16 v1, 0x10

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ln/f;-><init>(I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lz/j;->b:Ln/f;

    .line 70
    .line 71
    return-void
.end method

.method public static a(Landroid/content/Context;Ly/f;Landroid/content/res/Resources;ILjava/lang/String;IILy/o;Z)Landroid/graphics/Typeface;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p6

    move-object/from16 v2, p7

    instance-of v3, v1, Ly/i;

    const/4 v8, 0x0

    const/4 v9, -0x3

    if-eqz v3, :cond_d

    check-cast v1, Ly/i;

    .line 1
    iget-object v3, v1, Ly/i;->d:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v5, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v3, :cond_1

    invoke-virtual {v3, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v8

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v2, v3, v8}, Ly/o;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_2
    return-object v3

    :cond_3
    const/4 v10, 0x1

    if-eqz p8, :cond_5

    .line 4
    iget v3, v1, Ly/i;->c:I

    if-nez v3, :cond_4

    :goto_2
    move v3, v10

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_4

    goto :goto_2

    :goto_3
    const/4 v5, -0x1

    if-eqz p8, :cond_6

    .line 5
    iget v6, v1, Ly/i;->b:I

    move v11, v6

    goto :goto_4

    :cond_6
    move v11, v5

    .line 6
    :goto_4
    invoke-static {v8}, Ly/o;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v6

    new-instance v12, Lf/q0;

    invoke-direct {v12, v2}, Lf/q0;-><init>(Ly/o;)V

    .line 7
    iget-object v13, v1, Ly/i;->a:Le0/e;

    .line 8
    new-instance v14, Lv1/e;

    .line 9
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v12, v14, Lv1/e;->a:Ljava/lang/Object;

    iput-object v6, v14, Lv1/e;->b:Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 10
    sget-object v1, Le0/i;->a:Ln/f;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v2, v13, Le0/e;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    sget-object v1, Le0/i;->a:Ln/f;

    invoke-virtual {v1, v2}, Ln/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_7

    iget-object v0, v14, Lv1/e;->a:Ljava/lang/Object;

    check-cast v0, Lf/q0;

    iget-object v2, v14, Lv1/e;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    .line 15
    new-instance v3, Le0/a;

    invoke-direct {v3, v14, v0, v1, v4}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    move-object v8, v1

    goto/16 :goto_9

    :cond_7
    if-ne v11, v5, :cond_8

    .line 16
    invoke-static {v2, p0, v13, v7}, Le0/i;->a(Ljava/lang/String;Landroid/content/Context;Le0/e;I)Le0/h;

    move-result-object v0

    invoke-virtual {v14, v0}, Lv1/e;->g(Le0/h;)V

    iget-object v8, v0, Le0/h;->a:Landroid/graphics/Typeface;

    goto/16 :goto_9

    :cond_8
    new-instance v10, Le0/f;

    const/4 v6, 0x0

    move-object v1, v10

    move-object v3, p0

    move-object v4, v13

    move/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Le0/f;-><init>(Ljava/lang/String;Landroid/content/Context;Le0/e;II)V

    :try_start_0
    sget-object v0, Le0/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    invoke-interface {v0, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v1, v11

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 18
    :try_start_2
    check-cast v0, Le0/h;

    invoke-virtual {v14, v0}, Lv1/e;->g(Le0/h;)V

    iget-object v8, v0, Le0/h;->a:Landroid/graphics/Typeface;

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    .line 19
    :catch_2
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_6
    throw v0

    :goto_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    iget-object v0, v14, Lv1/e;->a:Ljava/lang/Object;

    check-cast v0, Lf/q0;

    iget-object v1, v14, Lv1/e;->b:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    .line 20
    new-instance v2, Lb/d;

    invoke-direct {v2, v14, v0, v9}, Lb/d;-><init>(Lv1/e;Lf/q0;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 21
    :cond_9
    sget-object v1, Le0/i;->a:Ln/f;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    iget-object v2, v13, Le0/e;->e:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 25
    sget-object v1, Le0/i;->a:Ln/f;

    invoke-virtual {v1, v9}, Ln/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_a

    iget-object v0, v14, Lv1/e;->a:Ljava/lang/Object;

    check-cast v0, Lf/q0;

    iget-object v2, v14, Lv1/e;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    .line 26
    new-instance v3, Le0/a;

    invoke-direct {v3, v14, v0, v1, v4}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 27
    :cond_a
    new-instance v1, Le0/g;

    invoke-direct {v1, v14, v4}, Le0/g;-><init>(Ljava/lang/Object;I)V

    sget-object v3, Le0/i;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-object v2, Le0/i;->d:Ln/k;

    .line 28
    invoke-virtual {v2, v9, v8}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 29
    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v9, v4}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v11, Le0/f;

    const/4 v6, 0x1

    move-object v1, v11

    move-object v2, v9

    move-object v3, p0

    move-object v4, v13

    move/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Le0/f;-><init>(Ljava/lang/String;Landroid/content/Context;Le0/e;II)V

    sget-object v0, Le0/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Le0/g;

    invoke-direct {v1, v9, v10}, Le0/g;-><init>(Ljava/lang/Object;I)V

    .line 30
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_c

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_8

    :cond_c
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 31
    :goto_8
    new-instance v3, Le0/a;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v11, v1, v4}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_9
    move-object/from16 v4, p2

    goto :goto_c

    .line 32
    :goto_a
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_d
    sget-object v3, Lz/j;->a:Lf/q0;

    .line 33
    check-cast v1, Ly/g;

    move-object/from16 v4, p2

    invoke-virtual {v3, p0, v1, v4, v7}, Lf/q0;->x(Landroid/content/Context;Ly/g;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v2, :cond_f

    if-eqz v0, :cond_e

    invoke-virtual {v2, v0, v8}, Ly/o;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_b

    :cond_e
    invoke-virtual {v2, v9, v8}, Ly/o;->callbackFailAsync(ILandroid/os/Handler;)V

    :cond_f
    :goto_b
    move-object v8, v0

    :goto_c
    if-eqz v8, :cond_10

    sget-object v0, Lz/j;->b:Ln/f;

    invoke-static/range {p2 .. p6}, Lz/j;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ln/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v8
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
