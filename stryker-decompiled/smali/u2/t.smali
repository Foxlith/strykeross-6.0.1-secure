.class public final Lu2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile m:Lu2/t;


# instance fields
.field public final a:Lu2/r;

.field public final b:[F

.field public final c:[I

.field public final d:[J

.field public e:I

.field public f:I

.field public volatile g:Z

.field public volatile h:Ljava/lang/Thread;

.field public volatile i:F

.field public volatile j:I

.field public volatile k:Z

.field public volatile l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4380

    new-array v1, v0, [F

    iput-object v1, p0, Lu2/t;->b:[F

    new-array v1, v0, [I

    iput-object v1, p0, Lu2/t;->c:[I

    new-array v0, v0, [J

    iput-object v0, p0, Lu2/t;->d:[J

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lu2/t;->i:F

    const/4 v0, -0x1

    iput v0, p0, Lu2/t;->j:I

    new-instance v0, Lu2/r;

    invoke-direct {v0, p1}, Lu2/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu2/t;->a:Lu2/r;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lu2/t;
    .locals 2

    .line 1
    sget-object v0, Lu2/t;->m:Lu2/t;

    if-nez v0, :cond_1

    const-class v0, Lu2/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu2/t;->m:Lu2/t;

    if-nez v1, :cond_0

    new-instance v1, Lu2/t;

    invoke-direct {v1, p0}, Lu2/t;-><init>(Landroid/content/Context;)V

    sput-object v1, Lu2/t;->m:Lu2/t;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lu2/t;->m:Lu2/t;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b(Lu2/q;)V
    .locals 6

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lu2/q;->d:F

    iget-wide v1, p1, Lu2/q;->e:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    long-to-int v1, v1

    :goto_0
    iget-object v2, p0, Lu2/t;->b:[F

    iget v3, p0, Lu2/t;->e:I

    aput v0, v2, v3

    iget-object v2, p0, Lu2/t;->c:[I

    aput v1, v2, v3

    iget-object v2, p0, Lu2/t;->d:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    iget v2, p0, Lu2/t;->e:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x4380

    rem-int/2addr v2, v3

    iput v2, p0, Lu2/t;->e:I

    iget v2, p0, Lu2/t;->f:I

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lu2/t;->f:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iput v0, p0, Lu2/t;->i:F

    iput v1, p0, Lu2/t;->j:I

    iget-boolean v0, p1, Lu2/q;->b:Z

    iput-boolean v0, p0, Lu2/t;->k:Z

    iget-boolean p1, p1, Lu2/q;->c:Z

    iput-boolean p1, p0, Lu2/t;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(I)Lu2/s;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    monitor-enter p0

    const/16 v0, 0x8

    move/from16 v2, p1

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    :try_start_0
    new-array v3, v0, [F

    new-array v4, v0, [F

    new-array v2, v0, [I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_1

    const/high16 v7, -0x40800000    # -1.0f

    aput v7, v3, v6

    aput v7, v4, v6

    const/4 v7, -0x1

    aput v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    iget v6, v1, Lu2/t;->f:I

    if-nez v6, :cond_2

    new-instance v0, Lu2/s;

    iget v5, v1, Lu2/t;->i:F

    iget v6, v1, Lu2/t;->j:I

    iget-boolean v7, v1, Lu2/t;->k:Z

    iget-boolean v8, v1, Lu2/t;->l:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lu2/s;-><init>([F[FFIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget v7, v1, Lu2/t;->e:I

    sub-int v6, v7, v6

    add-int/lit16 v6, v6, 0x4380

    rem-int/lit16 v6, v6, 0x4380

    iget-object v8, v1, Lu2/t;->d:[J

    aget-wide v9, v8, v6

    add-int/lit16 v7, v7, 0x437f

    rem-int/lit16 v7, v7, 0x4380

    aget-wide v7, v8, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    iget v13, v1, Lu2/t;->f:I

    if-ge v11, v13, :cond_4

    add-int v13, v6, v11

    rem-int/lit16 v13, v13, 0x4380

    iget-object v14, v1, Lu2/t;->c:[I

    aget v13, v14, v13

    if-le v13, v12, :cond_3

    move v12, v13

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    if-lez v12, :cond_5

    goto :goto_3

    :cond_5
    const/4 v12, 0x1

    :goto_3
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v0, :cond_d

    int-to-long v13, v11

    iget v5, v1, Lu2/t;->f:I

    move-wide/from16 v17, v7

    int-to-long v7, v5

    mul-long/2addr v13, v7

    move-wide/from16 v19, v9

    int-to-long v9, v0

    div-long/2addr v13, v9

    long-to-int v13, v13

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v22, v2

    move-object/from16 v21, v3

    int-to-long v2, v14

    mul-long/2addr v2, v7

    div-long/2addr v2, v9

    long-to-int v2, v2

    if-gt v2, v13, :cond_6

    add-int/lit8 v2, v13, 0x1

    :cond_6
    if-le v2, v5, :cond_7

    goto :goto_5

    :cond_7
    move v5, v2

    :goto_5
    const/4 v2, 0x0

    move v7, v2

    const/4 v3, 0x0

    const/4 v8, 0x0

    const-wide/16 v15, 0x0

    :goto_6
    if-ge v13, v5, :cond_a

    add-int v9, v6, v13

    rem-int/lit16 v9, v9, 0x4380

    iget-object v10, v1, Lu2/t;->b:[F

    aget v10, v10, v9

    cmpl-float v23, v10, v2

    if-ltz v23, :cond_8

    add-float/2addr v7, v10

    add-int/lit8 v3, v3, 0x1

    :cond_8
    iget-object v10, v1, Lu2/t;->c:[I

    aget v9, v10, v9

    if-ltz v9, :cond_9

    int-to-long v9, v9

    add-long/2addr v15, v9

    add-int/lit8 v8, v8, 0x1

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_a
    if-lez v3, :cond_b

    int-to-float v2, v3

    div-float/2addr v7, v2

    aput v7, v21, v11

    :cond_b
    if-lez v8, :cond_c

    int-to-long v2, v8

    div-long v2, v15, v2

    long-to-int v2, v2

    aput v2, v22, v11

    int-to-float v2, v2

    int-to-float v3, v12

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v4, v11

    :cond_c
    move v11, v14

    move-wide/from16 v7, v17

    move-wide/from16 v9, v19

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    goto :goto_4

    :cond_d
    move-object/from16 v21, v3

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    new-instance v0, Lu2/s;

    sub-long v7, v17, v19

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    iget v5, v1, Lu2/t;->i:F

    iget v6, v1, Lu2/t;->j:I

    iget-boolean v7, v1, Lu2/t;->k:Z

    iget-boolean v8, v1, Lu2/t;->l:Z

    move-object v2, v0

    move-object/from16 v3, v21

    invoke-direct/range {v2 .. v8}, Lu2/s;-><init>([F[FFIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_7
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lu2/t;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu2/t;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu2/t;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lu2/t;->g:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroidx/activity/b;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    const-string v3, "vm-stats-collector"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iput-object v1, p0, Lu2/t;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
