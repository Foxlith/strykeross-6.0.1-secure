.class public final Lw1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Ln1/u;

.field public final b:Ln1/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw1/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ln1/u;Ln1/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/e;->a:Ln1/u;

    iput-object p2, p0, Lw1/e;->b:Ln1/m;

    return-void
.end method

.method public static a(Ln1/u;)Z
    .locals 34

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lw1/e;->c:Ljava/lang/String;

    .line 2
    invoke-static/range {p0 .. p0}, Ln1/u;->M(Ln1/u;)Ljava/util/HashSet;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4
    iget-object v6, v0, Ln1/u;->c:Ln1/a0;

    iget-object v7, v6, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    if-eqz v2, :cond_0

    .line 5
    array-length v9, v2

    if-lez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v3

    :goto_0
    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x6

    if-eqz v9, :cond_6

    array-length v13, v2

    move v14, v3

    move/from16 v16, v14

    move/from16 v17, v16

    const/4 v15, 0x1

    :goto_1
    if-ge v14, v13, :cond_7

    aget-object v3, v2, v14

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    move-result-object v8

    invoke-virtual {v8, v3}, Lv1/r;->h(Ljava/lang/String;)Lv1/p;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Prerequisite "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist; not enqueuing"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_17

    :cond_2
    iget v3, v8, Lv1/p;->b:I

    if-ne v3, v11, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    and-int/2addr v15, v8

    if-ne v3, v10, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    if-ne v3, v12, :cond_5

    const/16 v16, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    :cond_7
    iget-object v1, v0, Ln1/u;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v8, 0x1

    xor-int/2addr v3, v8

    const/4 v8, 0x2

    if-eqz v3, :cond_19

    if-nez v9, :cond_19

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    move-result-object v13

    invoke-virtual {v13, v1}, Lv1/r;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_19

    iget v14, v0, Ln1/u;->e:I

    if-eq v14, v11, :cond_c

    if-ne v14, v10, :cond_8

    goto :goto_7

    :cond_8
    if-ne v14, v8, :cond_a

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv1/o;

    iget v14, v14, Lv1/o;->b:I

    const/4 v12, 0x1

    if-eq v14, v12, :cond_1

    if-ne v14, v8, :cond_9

    goto :goto_2

    :cond_9
    const/4 v12, 0x6

    goto :goto_5

    .line 6
    :cond_a
    new-instance v11, Lw1/c;

    invoke-direct {v11, v6, v1}, Lw1/c;-><init>(Ln1/a0;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v11}, Lw1/d;->run()V

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    move-result-object v11

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv1/o;

    iget-object v13, v13, Lv1/o;->a:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lv1/r;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const/4 v8, 0x1

    const/4 v13, 0x0

    goto/16 :goto_10

    :cond_c
    :goto_7
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->q()Lv1/c;

    move-result-object v9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, Lv1/o;

    iget-object v10, v8, Lv1/o;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v21, v13

    const/4 v13, 0x1

    .line 8
    invoke-static {v13, v11}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    move-result-object v11

    if-nez v10, :cond_d

    invoke-virtual {v11, v13}, Ly0/y;->h(I)V

    goto :goto_9

    :cond_d
    invoke-virtual {v11, v13, v10}, Ly0/y;->d(ILjava/lang/String;)V

    :goto_9
    iget-object v10, v9, Lv1/c;->a:Ljava/lang/Object;

    check-cast v10, Ly0/w;

    invoke-virtual {v10}, Ly0/w;->b()V

    const/4 v13, 0x0

    .line 9
    invoke-virtual {v10, v11, v13}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 10
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v13, 0x0

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v18, :cond_f

    const/16 v18, 0x1

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_e
    const/4 v13, 0x0

    :cond_f
    move/from16 v18, v13

    :goto_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Ly0/y;->u()V

    if-nez v18, :cond_13

    .line 11
    iget v10, v8, Lv1/o;->b:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_10

    const/16 v18, 0x1

    goto :goto_b

    :cond_10
    move/from16 v18, v13

    :goto_b
    and-int v15, v15, v18

    const/4 v11, 0x4

    if-ne v10, v11, :cond_11

    const/16 v17, 0x1

    goto :goto_c

    :cond_11
    const/4 v11, 0x6

    if-ne v10, v11, :cond_12

    const/16 v16, 0x1

    :cond_12
    :goto_c
    iget-object v8, v8, Lv1/o;->a:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v13, v21

    const/4 v8, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x3

    goto :goto_8

    .line 12
    :goto_d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Ly0/y;->u()V

    throw v0

    :cond_14
    move v8, v10

    const/4 v13, 0x0

    if-ne v14, v8, :cond_17

    if-nez v16, :cond_15

    if-eqz v17, :cond_17

    .line 13
    :cond_15
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    move-result-object v8

    invoke-virtual {v8, v1}, Lv1/r;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv1/o;

    iget-object v10, v10, Lv1/o;->a:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lv1/r;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move/from16 v16, v13

    move/from16 v17, v16

    :cond_17
    invoke-interface {v12, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v8, v2

    if-lez v8, :cond_18

    const/4 v9, 0x1

    goto :goto_f

    :cond_18
    move v9, v13

    :goto_f
    move v8, v13

    goto :goto_10

    :cond_19
    const/4 v13, 0x0

    goto :goto_f

    :goto_10
    iget-object v10, v0, Ln1/u;->f:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm1/x;

    .line 14
    iget-object v12, v11, Lm1/x;->b:Lv1/p;

    if-eqz v9, :cond_1c

    if-nez v15, :cond_1c

    const/4 v14, 0x4

    if-eqz v17, :cond_1a

    .line 15
    iput v14, v12, Lv1/p;->b:I

    goto :goto_13

    :cond_1a
    if-eqz v16, :cond_1b

    const/4 v13, 0x6

    :goto_12
    iput v13, v12, Lv1/p;->b:I

    goto :goto_13

    :cond_1b
    const/4 v13, 0x5

    goto :goto_12

    :cond_1c
    const/4 v14, 0x4

    iput-wide v4, v12, Lv1/p;->n:J

    :goto_13
    iget v13, v12, Lv1/p;->b:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1d

    const/4 v8, 0x1

    :cond_1d
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    move-result-object v13

    .line 16
    iget-object v14, v6, Ln1/a0;->g:Ljava/util/List;

    move-wide/from16 v30, v4

    const-string v4, "schedulers"

    .line 17
    invoke-static {v14, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_1f

    .line 18
    iget-object v4, v12, Lv1/p;->j:Lm1/d;

    const-class v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v32, v6

    iget-object v6, v12, Lv1/p;->c:Ljava/lang/String;

    invoke-static {v6, v14}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20

    .line 19
    iget-boolean v14, v4, Lm1/d;->d:Z

    if-nez v14, :cond_1e

    .line 20
    iget-boolean v4, v4, Lm1/d;->e:Z

    if-eqz v4, :cond_20

    :cond_1e
    new-instance v4, Landroidx/lifecycle/a0;

    const/4 v14, 0x2

    invoke-direct {v4, v14}, Landroidx/lifecycle/a0;-><init>(I)V

    .line 21
    iget-object v14, v12, Lv1/p;->e:Lm1/e;

    iget-object v14, v14, Lm1/e;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Landroidx/lifecycle/a0;->b(Ljava/util/HashMap;)V

    iget-object v14, v4, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    move/from16 v33, v8

    const-string v8, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 22
    invoke-interface {v14, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v6, Lm1/e;

    iget-object v4, v4, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    invoke-direct {v6, v4}, Lm1/e;-><init>(Ljava/util/HashMap;)V

    invoke-static {v6}, Lm1/e;->b(Lm1/e;)[B

    .line 24
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const v29, 0xfffeb

    const/16 v22, 0x0

    move-object/from16 v20, v12

    move-object/from16 v24, v6

    invoke-static/range {v20 .. v29}, Lv1/p;->b(Lv1/p;Ljava/lang/String;ILjava/lang/String;Lm1/e;IJII)Lv1/p;

    move-result-object v12

    goto :goto_14

    :cond_1f
    move-object/from16 v32, v6

    :cond_20
    move/from16 v33, v8

    .line 25
    :goto_14
    iget-object v4, v13, Lv1/r;->a:Ly0/w;

    .line 26
    invoke-virtual {v4}, Ly0/w;->b()V

    invoke-virtual {v4}, Ly0/w;->c()V

    :try_start_1
    iget-object v5, v13, Lv1/r;->b:Lv1/b;

    invoke-virtual {v5, v12}, Ly0/d;->u(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ly0/w;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 27
    invoke-virtual {v4}, Ly0/w;->k()V

    if-eqz v9, :cond_21

    .line 28
    array-length v4, v2

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_21

    aget-object v6, v2, v5

    new-instance v8, Lv1/a;

    .line 29
    iget-object v12, v11, Lm1/x;->a:Ljava/util/UUID;

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "id.toString()"

    invoke-static {v12, v13}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {v8, v12, v6}, Lv1/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->q()Lv1/c;

    move-result-object v6

    .line 31
    iget-object v12, v6, Lv1/c;->a:Ljava/lang/Object;

    move-object v13, v12

    check-cast v13, Ly0/w;

    .line 32
    invoke-virtual {v13}, Ly0/w;->b()V

    invoke-virtual {v13}, Ly0/w;->c()V

    :try_start_2
    iget-object v6, v6, Lv1/c;->b:Ljava/lang/Object;

    check-cast v6, Ly0/d;

    invoke-virtual {v6, v8}, Ly0/d;->u(Ljava/lang/Object;)V

    check-cast v12, Ly0/w;

    invoke-virtual {v12}, Ly0/w;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    invoke-virtual {v13}, Ly0/w;->k()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :catchall_1
    move-exception v0

    invoke-virtual {v13}, Ly0/w;->k()V

    .line 34
    throw v0

    .line 35
    :cond_21
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->w()Lv1/t;

    move-result-object v4

    .line 36
    iget-object v5, v11, Lm1/x;->a:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id.toString()"

    invoke-static {v5, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v6, v11, Lm1/x;->c:Ljava/util/Set;

    invoke-virtual {v4, v5, v6}, Lv1/t;->m(Ljava/lang/String;Ljava/util/Set;)V

    if-eqz v3, :cond_22

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->t()Lv1/k;

    move-result-object v4

    new-instance v5, Lv1/j;

    .line 38
    iget-object v6, v11, Lm1/x;->a:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "id.toString()"

    invoke-static {v6, v8}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {v5, v1, v6}, Lv1/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v6, v4, Lv1/k;->a:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Ly0/w;

    .line 41
    invoke-virtual {v8}, Ly0/w;->b()V

    invoke-virtual {v8}, Ly0/w;->c()V

    :try_start_3
    iget-object v4, v4, Lv1/k;->b:Ljava/lang/Object;

    check-cast v4, Ly0/d;

    invoke-virtual {v4, v5}, Ly0/d;->u(Ljava/lang/Object;)V

    check-cast v6, Ly0/w;

    invoke-virtual {v6}, Ly0/w;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 42
    invoke-virtual {v8}, Ly0/w;->k()V

    goto :goto_16

    :catchall_2
    move-exception v0

    invoke-virtual {v8}, Ly0/w;->k()V

    .line 43
    throw v0

    :cond_22
    :goto_16
    move-wide/from16 v4, v30

    move-object/from16 v6, v32

    move/from16 v8, v33

    const/4 v13, 0x0

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    .line 44
    invoke-virtual {v4}, Ly0/w;->k()V

    .line 45
    throw v0

    :cond_23
    move v3, v8

    const/4 v1, 0x1

    .line 46
    :goto_17
    iput-boolean v1, v0, Ln1/u;->i:Z

    return v3
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lw1/e;->b:Ln1/m;

    .line 2
    .line 3
    iget-object v1, p0, Lw1/e;->a:Ln1/u;

    .line 4
    .line 5
    const-string v2, "WorkContinuation has cycles ("

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v3}, Ln1/u;->L(Ln1/u;Ljava/util/HashSet;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    iget-object v2, v1, Ln1/u;->c:Ln1/a0;

    .line 22
    .line 23
    iget-object v2, v2, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 24
    .line 25
    invoke-virtual {v2}, Ly0/w;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-static {v1}, Lw1/e;->a(Ln1/u;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v2}, Ly0/w;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 36
    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    iget-object v2, v1, Ln1/u;->c:Ln1/a0;

    .line 41
    .line 42
    iget-object v2, v2, Ln1/a0;->c:Landroid/content/Context;

    .line 43
    .line 44
    const-class v3, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-static {v2, v3, v4}, Lw1/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v1, Ln1/u;->c:Ln1/a0;

    .line 51
    .line 52
    iget-object v2, v1, Ln1/a0;->d:Lm1/b;

    .line 53
    .line 54
    iget-object v3, v1, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 55
    .line 56
    iget-object v1, v1, Ln1/a0;->g:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {v2, v3, v1}, Ln1/s;->a(Lm1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    sget-object v1, Lm1/t;->a:Lm1/s;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ln1/m;->a(Lv1/f;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catchall_1
    move-exception v1

    .line 71
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ")"

    .line 86
    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :goto_1
    new-instance v2, Lm1/q;

    .line 99
    .line 100
    invoke-direct {v2, v1}, Lm1/q;-><init>(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ln1/m;->a(Lv1/f;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    return-void
.end method
