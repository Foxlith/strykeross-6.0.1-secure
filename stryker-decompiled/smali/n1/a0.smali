.class public final Ln1/a0;
.super Lg/a;
.source "SourceFile"


# static fields
.field public static m:Ln1/a0;

.field public static n:Ln1/a0;

.field public static final o:Ljava/lang/Object;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lm1/b;

.field public final e:Landroidx/work/impl/WorkDatabase;

.field public final f:Ly1/b;

.field public final g:Ljava/util/List;

.field public final h:Ln1/p;

.field public final i:Lw1/i;

.field public j:Z

.field public k:Landroid/content/BroadcastReceiver$PendingResult;

.field public final l:Lv1/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Ln1/a0;->m:Ln1/a0;

    sput-object v0, Ln1/a0;->n:Ln1/a0;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln1/a0;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm1/b;Ly1/b;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 2
    iget-object v4, v8, Ly1/b;->a:Lw1/o;

    const-string v5, "context"

    .line 3
    invoke-static {v3, v5}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "queryExecutor"

    invoke-static {v4, v6}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Ly0/u;

    invoke-direct {v2, v3, v6}, Ly0/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v9, v2, Ly0/u;->j:Z

    goto :goto_0

    :cond_0
    const-string v2, "androidx.work.workdb"

    .line 5
    invoke-static {v2}, Lq5/h;->w1(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v9

    if-eqz v7, :cond_2a

    new-instance v7, Ly0/u;

    invoke-direct {v7, v3, v2}, Ly0/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    new-instance v2, Ln1/v;

    invoke-direct {v2, v3}, Ln1/v;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Ly0/u;->i:Lc1/d;

    move-object v2, v7

    :goto_0
    iput-object v4, v2, Ly0/u;->g:Ljava/util/concurrent/Executor;

    sget-object v4, Ln1/b;->a:Ln1/b;

    iget-object v15, v2, Ly0/u;->d:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v9, [Lz0/a;

    sget-object v7, Ln1/g;->c:Ln1/g;

    const/4 v14, 0x0

    aput-object v7, v4, v14

    .line 8
    invoke-virtual {v2, v4}, Ly0/u;->a([Lz0/a;)V

    new-array v4, v9, [Lz0/a;

    new-instance v7, Ln1/q;

    const/4 v13, 0x2

    const/4 v12, 0x3

    invoke-direct {v7, v3, v13, v12}, Ln1/q;-><init>(Landroid/content/Context;II)V

    aput-object v7, v4, v14

    invoke-virtual {v2, v4}, Ly0/u;->a([Lz0/a;)V

    new-array v4, v9, [Lz0/a;

    sget-object v7, Ln1/h;->c:Ln1/h;

    aput-object v7, v4, v14

    invoke-virtual {v2, v4}, Ly0/u;->a([Lz0/a;)V

    new-array v4, v9, [Lz0/a;

    sget-object v7, Ln1/i;->c:Ln1/i;

    aput-object v7, v4, v14

    invoke-virtual {v2, v4}, Ly0/u;->a([Lz0/a;)V

    new-array v4, v9, [Lz0/a;

    new-instance v7, Ln1/q;

    const/4 v10, 0x5

    const/4 v11, 0x6

    invoke-direct {v7, v3, v10, v11}, Ln1/q;-><init>(Landroid/content/Context;II)V

    aput-object v7, v4, v14

    invoke-virtual {v2, v4}, Ly0/u;->a([Lz0/a;)V

    new-array v4, v9, [Lz0/a;

    sget-object v7, Ln1/j;->c:Ln1/j;

    aput-object v7, v4, v14

    invoke-virtual {v2, v4}, Ly0/u;->a([Lz0/a;)V

    new-array v4, v9, [Lz0/a;

    sget-object v7, Ln1/k;->c:Ln1/k;

    aput-object v7, v4, v14

    invoke-virtual {v2, v4}, Ly0/u;->a([Lz0/a;)V

    new-array v4, v9, [Lz0/a;

    sget-object v7, Ln1/l;->c:Ln1/l;

    aput-object v7, v4, v14

    invoke-virtual {v2, v4}, Ly0/u;->a([Lz0/a;)V

    new-array v4, v9, [Lz0/a;

    new-instance v7, Ln1/q;

    invoke-direct {v7, v3}, Ln1/q;-><init>(Landroid/content/Context;)V

    aput-object v7, v4, v14

    invoke-virtual {v2, v4}, Ly0/u;->a([Lz0/a;)V

    new-array v4, v9, [Lz0/a;

    new-instance v7, Ln1/q;

    const/16 v10, 0xa

    const/16 v11, 0xb

    invoke-direct {v7, v3, v10, v11}, Ln1/q;-><init>(Landroid/content/Context;II)V

    aput-object v7, v4, v14

    invoke-virtual {v2, v4}, Ly0/u;->a([Lz0/a;)V

    new-array v3, v9, [Lz0/a;

    sget-object v4, Ln1/d;->c:Ln1/d;

    aput-object v4, v3, v14

    invoke-virtual {v2, v3}, Ly0/u;->a([Lz0/a;)V

    new-array v3, v9, [Lz0/a;

    sget-object v4, Ln1/e;->c:Ln1/e;

    aput-object v4, v3, v14

    invoke-virtual {v2, v3}, Ly0/u;->a([Lz0/a;)V

    new-array v3, v9, [Lz0/a;

    sget-object v4, Ln1/f;->c:Ln1/f;

    aput-object v4, v3, v14

    invoke-virtual {v2, v3}, Ly0/u;->a([Lz0/a;)V

    iput-boolean v14, v2, Ly0/u;->l:Z

    iput-boolean v9, v2, Ly0/u;->m:Z

    iget-object v3, v2, Ly0/u;->g:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_1

    iget-object v4, v2, Ly0/u;->h:Ljava/util/concurrent/Executor;

    if-nez v4, :cond_1

    sget-object v3, Lj/a;->e:Lf/p0;

    iput-object v3, v2, Ly0/u;->h:Ljava/util/concurrent/Executor;

    :goto_1
    iput-object v3, v2, Ly0/u;->g:Ljava/util/concurrent/Executor;

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, v2, Ly0/u;->h:Ljava/util/concurrent/Executor;

    if-nez v4, :cond_2

    iput-object v3, v2, Ly0/u;->h:Ljava/util/concurrent/Executor;

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    iget-object v3, v2, Ly0/u;->h:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v3, v2, Ly0/u;->q:Ljava/util/HashSet;

    iget-object v4, v2, Ly0/u;->p:Ljava/util/LinkedHashSet;

    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v9

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    .line 10
    invoke-static {v0, v7}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iget-object v3, v2, Ly0/u;->i:Lc1/d;

    if-nez v3, :cond_6

    new-instance v3, Ld1/h;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    :cond_6
    iget-wide v10, v2, Ly0/u;->n:J

    const-wide/16 v16, 0x0

    cmp-long v7, v10, v16

    const-string v25, "Required value was null."

    if-lez v7, :cond_8

    iget-object v0, v2, Ly0/u;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create auto-closing database for an in-memory database."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v7, Ly0/b;

    iget-object v11, v2, Ly0/u;->c:Ljava/lang/String;

    iget-object v10, v2, Ly0/u;->o:Landroidx/lifecycle/a0;

    iget-boolean v6, v2, Ly0/u;->j:Z

    iget v12, v2, Ly0/u;->k:I

    if-eqz v12, :cond_29

    iget-object v13, v2, Ly0/u;->a:Landroid/content/Context;

    .line 12
    invoke-static {v13, v5}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v12, v9, :cond_9

    move/from16 v19, v12

    goto :goto_4

    :cond_9
    const-string v12, "activity"

    invoke-virtual {v13, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const-string v14, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v12, v14}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroid/app/ActivityManager;

    .line 13
    invoke-virtual {v12}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v12

    if-nez v12, :cond_a

    const/16 v19, 0x3

    goto :goto_4

    :cond_a
    const/16 v19, 0x2

    :goto_4
    iget-object v14, v2, Ly0/u;->g:Ljava/util/concurrent/Executor;

    if-eqz v14, :cond_28

    iget-object v12, v2, Ly0/u;->h:Ljava/util/concurrent/Executor;

    if-eqz v12, :cond_27

    iget-boolean v9, v2, Ly0/u;->l:Z

    iget-boolean v1, v2, Ly0/u;->m:Z

    iget-object v8, v2, Ly0/u;->e:Ljava/util/ArrayList;

    iget-object v0, v2, Ly0/u;->f:Ljava/util/ArrayList;

    move-object/from16 v20, v10

    move-object v10, v7

    move-object/from16 v21, v11

    move-object v11, v13

    move-object/from16 v22, v12

    const/4 v13, 0x3

    move-object/from16 v12, v21

    move-object/from16 v26, v5

    move v5, v13

    move-object v13, v3

    move-object/from16 v18, v14

    const/4 v3, 0x0

    move-object/from16 v14, v20

    move/from16 v16, v6

    move/from16 v17, v19

    move-object/from16 v19, v22

    move/from16 v20, v9

    move/from16 v21, v1

    move-object/from16 v22, v4

    move-object/from16 v23, v8

    move-object/from16 v24, v0

    .line 14
    invoke-direct/range {v10 .. v24}, Ly0/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lc1/d;Landroidx/lifecycle/a0;Ljava/util/ArrayList;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-string v0, ".canonicalName"

    const-string v1, "klass"

    iget-object v2, v2, Ly0/u;->b:Ljava/lang/Class;

    .line 15
    invoke-static {v2, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Li5/a;->m(Ljava/lang/Object;)V

    const-string v6, "fullPackage"

    invoke-static {v1, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "this as java.lang.String).substring(startIndex)"

    invoke-static {v4, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    const/16 v6, 0x5f

    const/16 v8, 0x2e

    invoke-static {v4, v8, v6}, Lq5/h;->D1(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_Impl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_c

    move-object v1, v4

    goto :goto_6

    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v8, 0x1

    invoke-static {v1, v8, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v6, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>"

    invoke-static {v1, v6}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    check-cast v0, Ly0/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {v0, v7}, Ly0/w;->e(Ly0/b;)Lc1/e;

    move-result-object v1

    iput-object v1, v0, Ly0/w;->c:Lc1/e;

    invoke-virtual {v0}, Ly0/w;->i()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v6, v0, Ly0/w;->g:Ljava/util/LinkedHashMap;

    iget-object v8, v7, Ly0/b;->o:Ljava/util/List;

    const/4 v9, -0x1

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v9

    if-ltz v10, :cond_f

    :goto_8
    add-int/lit8 v11, v10, -0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v2, v10}, Ljava/util/BitSet;->set(I)V

    move v9, v10

    goto :goto_9

    :cond_d
    if-gez v11, :cond_e

    goto :goto_9

    :cond_e
    move v10, v11

    goto :goto_8

    :cond_f
    :goto_9
    if-ltz v9, :cond_10

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required auto migration spec ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v9

    if-ltz v1, :cond_14

    :goto_a
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_13

    if-gez v4, :cond_12

    goto :goto_b

    :cond_12
    move v1, v4

    goto :goto_a

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_b
    invoke-virtual {v0, v6}, Ly0/w;->g(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz0/a;

    iget v4, v2, Lz0/a;->a:I

    iget-object v6, v7, Ly0/b;->d:Landroidx/lifecycle/a0;

    .line 18
    iget-object v8, v6, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_16

    sget-object v4, Lx4/p;->a:Lx4/p;

    :cond_16
    iget v8, v2, Lz0/a;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_17
    const/4 v4, 0x1

    new-array v8, v4, [Lz0/a;

    aput-object v2, v8, v3

    .line 20
    invoke-virtual {v6, v8}, Landroidx/lifecycle/a0;->a([Lz0/a;)V

    goto :goto_c

    :cond_18
    invoke-virtual {v0}, Ly0/w;->h()Lc1/e;

    move-result-object v1

    const-class v2, Ly0/z;

    invoke-static {v2, v1}, Ly0/w;->p(Ljava/lang/Class;Lc1/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/z;

    invoke-virtual {v0}, Ly0/w;->h()Lc1/e;

    move-result-object v1

    const-class v2, Ly0/a;

    invoke-static {v2, v1}, Ly0/w;->p(Ljava/lang/Class;Lc1/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/a;

    iget-object v14, v0, Ly0/w;->d:Ly0/k;

    iget v1, v7, Ly0/b;->g:I

    if-ne v1, v5, :cond_19

    const/4 v1, 0x1

    goto :goto_d

    :cond_19
    move v1, v3

    :goto_d
    invoke-virtual {v0}, Ly0/w;->h()Lc1/e;

    move-result-object v2

    invoke-interface {v2, v1}, Lc1/e;->setWriteAheadLoggingEnabled(Z)V

    iget-object v1, v7, Ly0/b;->e:Ljava/util/List;

    iput-object v1, v0, Ly0/w;->f:Ljava/util/List;

    iget-object v1, v7, Ly0/b;->h:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Ly0/w;->b:Ljava/util/concurrent/Executor;

    const-string v1, "executor"

    iget-object v2, v7, Ly0/b;->i:Ljava/util/concurrent/Executor;

    .line 21
    invoke-static {v2, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iget-boolean v1, v7, Ly0/b;->f:Z

    .line 22
    iput-boolean v1, v0, Ly0/w;->e:Z

    iget-object v13, v7, Ly0/b;->j:Landroid/content/Intent;

    if-eqz v13, :cond_1c

    iget-object v12, v7, Ly0/b;->b:Ljava/lang/String;

    if-eqz v12, :cond_1b

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v7, Ly0/b;->a:Landroid/content/Context;

    move-object/from16 v1, v26

    .line 23
    invoke-static {v11, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ly0/p;

    iget-object v1, v14, Ly0/k;->a:Ly0/w;

    .line 24
    iget-object v15, v1, Ly0/w;->b:Ljava/util/concurrent/Executor;

    if-eqz v15, :cond_1a

    .line 25
    invoke-direct/range {v10 .. v15}, Ly0/p;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ly0/k;Ljava/util/concurrent/Executor;)V

    goto :goto_e

    :cond_1a
    const-string v0, "internalQueryExecutor"

    .line 26
    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 27
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_e
    invoke-virtual {v0}, Ly0/w;->j()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v7, Ly0/b;->n:Ljava/util/List;

    if-eqz v4, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v9

    if-ltz v10, :cond_20

    :goto_10
    add-int/lit8 v11, v10, -0x1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-virtual {v2, v10}, Ljava/util/BitSet;->set(I)V

    goto :goto_12

    :cond_1e
    if-gez v11, :cond_1f

    goto :goto_11

    :cond_1f
    move v10, v11

    goto :goto_10

    :cond_20
    :goto_11
    move v10, v9

    :goto_12
    if-ltz v10, :cond_21

    iget-object v11, v0, Ly0/w;->j:Ljava/util/LinkedHashMap;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v11, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required type converter ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v9

    if-ltz v1, :cond_25

    :goto_13
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_24

    if-gez v4, :cond_23

    goto :goto_14

    :cond_23
    move v1, v4

    goto :goto_13

    :cond_24
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type converter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_25
    :goto_14
    check-cast v0, Landroidx/work/impl/WorkDatabase;

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lm1/n;

    move-object/from16 v8, p2

    .line 31
    iget v4, v8, Lm1/b;->f:I

    .line 32
    invoke-direct {v2, v4}, Lm1/n;-><init>(I)V

    .line 33
    sget-object v4, Lm1/n;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    sput-object v2, Lm1/n;->c:Lm1/n;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    new-instance v2, Lv1/m;

    const-string v4, "context"

    .line 35
    invoke-static {v1, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v4, Lt1/a;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "context.applicationContext"

    invoke-static {v5, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v9, p3

    invoke-direct {v4, v5, v9, v3}, Lt1/a;-><init>(Landroid/content/Context;Ly1/b;I)V

    new-instance v5, Lt1/a;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-direct {v5, v7, v9, v10}, Lt1/a;-><init>(Landroid/content/Context;Ly1/b;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lt1/j;->a:Ljava/lang/String;

    .line 37
    new-instance v10, Lt1/i;

    invoke-direct {v10, v7, v9}, Lt1/i;-><init>(Landroid/content/Context;Ly1/b;)V

    .line 38
    new-instance v7, Lt1/a;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-direct {v7, v11, v9, v6}, Lt1/a;-><init>(Landroid/content/Context;Ly1/b;I)V

    .line 39
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v4, v2, Lv1/m;->a:Ljava/lang/Object;

    iput-object v5, v2, Lv1/m;->b:Ljava/lang/Object;

    iput-object v10, v2, Lv1/m;->c:Ljava/lang/Object;

    iput-object v7, v2, Lv1/m;->d:Ljava/lang/Object;

    move-object/from16 v10, p0

    iput-object v2, v10, Ln1/a0;->l:Lv1/m;

    new-array v4, v6, [Ln1/r;

    .line 40
    sget v5, Ln1/s;->a:I

    .line 41
    new-instance v5, Lq1/c;

    invoke-direct {v5, v1, v10}, Lq1/c;-><init>(Landroid/content/Context;Ln1/a0;)V

    const-class v6, Landroidx/work/impl/background/systemjob/SystemJobService;

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Lw1/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v5, v4, v3

    .line 42
    new-instance v5, Lo1/b;

    invoke-direct {v5, v1, v8, v2, v10}, Lo1/b;-><init>(Landroid/content/Context;Lm1/b;Lv1/m;Ln1/a0;)V

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 43
    new-instance v11, Ln1/p;

    move-object v2, v11

    move v12, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Ln1/p;-><init>(Landroid/content/Context;Lm1/b;Ly1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v10, Ln1/a0;->c:Landroid/content/Context;

    iput-object v8, v10, Ln1/a0;->d:Lm1/b;

    iput-object v9, v10, Ln1/a0;->f:Ly1/b;

    iput-object v0, v10, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    iput-object v1, v10, Ln1/a0;->g:Ljava/util/List;

    iput-object v11, v10, Ln1/a0;->h:Ln1/p;

    new-instance v1, Lw1/i;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lw1/i;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v1, v10, Ln1/a0;->i:Lw1/i;

    iput-boolean v12, v10, Ln1/a0;->j:Z

    invoke-static {v2}, Ln1/z;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, v10, Ln1/a0;->f:Ly1/b;

    new-instance v1, Lw1/f;

    invoke-direct {v1, v2, v10}, Lw1/f;-><init>(Landroid/content/Context;Ln1/a0;)V

    invoke-virtual {v0, v1}, Ly1/b;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object/from16 v10, p0

    .line 45
    :goto_15
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_15

    :catch_0
    move-object/from16 v10, p0

    goto :goto_16

    :catch_1
    move-object/from16 v10, p0

    goto :goto_17

    :catch_2
    move-object/from16 v10, p0

    goto :goto_18

    .line 46
    :goto_16
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create an instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_17
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot access the constructor "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_18
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find implementation for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    move-object v10, v1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object v10, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    move-object v10, v1

    const/4 v0, 0x0

    .line 48
    throw v0

    :cond_2a
    move-object v10, v1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static M(Landroid/content/Context;)Ln1/a0;
    .locals 2

    .line 1
    sget-object v0, Ln1/a0;->o:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    sget-object v1, Ln1/a0;->m:Ln1/a0;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :goto_0
    monitor-exit v0

    .line 10
    goto :goto_1

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    sget-object v1, Ln1/a0;->n:Ln1/a0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :try_start_2
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :catchall_1
    move-exception p0

    .line 21
    goto :goto_3

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    .line 28
    .line 29
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    throw p0

    .line 35
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36
    throw p0
.end method


# virtual methods
.method public final K(Ljava/util/List;)Lm1/t;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ln1/u;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v0, p0, v1, v2, p1}, Ln1/u;-><init>(Ln1/a0;Ljava/lang/String;ILjava/util/List;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ln1/u;->K()Lm1/t;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "enqueue needs at least one WorkRequest."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final L(Lm1/v;)Lm1/t;
    .locals 10

    .line 1
    const-string v2, "stryker_update_poll"

    .line 2
    .line 3
    const-string v0, "workRequest"

    .line 4
    .line 5
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v7, Ln1/m;

    .line 9
    .line 10
    invoke-direct {v7}, Ln1/m;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v4, Ln1/d0;

    .line 14
    .line 15
    invoke-direct {v4, p1, p0, v7}, Ln1/d0;-><init>(Lm1/x;Ln1/a0;Ln1/m;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Ln1/a0;->f:Ly1/b;

    .line 19
    .line 20
    iget-object v8, v0, Ly1/b;->a:Lw1/o;

    .line 21
    .line 22
    new-instance v9, Ln1/b0;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    move-object v0, v9

    .line 26
    move-object v1, p0

    .line 27
    move-object v3, v7

    .line 28
    move-object v5, p1

    .line 29
    invoke-direct/range {v0 .. v6}, Ln1/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v8, v9}, Lw1/o;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-object v7
.end method

.method public final N()V
    .locals 2

    .line 1
    sget-object v0, Ln1/a0;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ln1/a0;->j:Z

    iget-object v1, p0, Ln1/a0;->k:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Ln1/a0;->k:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final O()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln1/a0;->c:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Lq1/c;->e:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "jobscheduler"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {v0, v1}, Lq1/c;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/app/job/JobInfo;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {v1, v2}, Lq1/c;->b(Landroid/app/job/JobScheduler;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, v0, Lv1/r;->a:Ly0/w;

    .line 58
    .line 59
    invoke-virtual {v1}, Ly0/w;->b()V

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lv1/r;->l:Lv1/q;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1}, Ly0/w;->c()V

    .line 69
    .line 70
    .line 71
    :try_start_0
    invoke-interface {v2}, Lc1/h;->e()I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ly0/w;->k()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Ln1/a0;->d:Lm1/b;

    .line 84
    .line 85
    iget-object v1, p0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 86
    .line 87
    iget-object v2, p0, Ln1/a0;->g:Ljava/util/List;

    .line 88
    .line 89
    invoke-static {v0, v1, v2}, Ln1/s;->a(Lm1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception v3

    .line 94
    invoke-virtual {v1}, Ly0/w;->k()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 98
    .line 99
    .line 100
    throw v3
.end method

.method public final P(Ln1/t;Lv1/t;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln1/a0;->f:Ly1/b;

    new-instance v7, Le0/a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v0, v7}, Ly1/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
