.class public final Lkotlinx/coroutines/scheduling/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final k:Lu3/g;


# instance fields
.field private volatile synthetic _isTerminated:I

.field public final a:I

.field public final b:I

.field public final c:J

.field volatile synthetic controlState:J

.field public final d:Ljava/lang/String;

.field public final e:Lkotlinx/coroutines/scheduling/e;

.field public final f:Lkotlinx/coroutines/scheduling/e;

.field public final g:Lt5/i;

.field private volatile synthetic parkedWorkersStack:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu3/g;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lu3/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/b;->k:Lu3/g;

    const-string v0, "parkedWorkersStack"

    const-class v1, Lkotlinx/coroutines/scheduling/b;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/b;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "controlState"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/b;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_isTerminated"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/b;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlinx/coroutines/scheduling/b;->a:I

    .line 5
    .line 6
    iput p2, p0, Lkotlinx/coroutines/scheduling/b;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/b;->c:J

    .line 9
    .line 10
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/b;->d:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p5, 0x1

    .line 13
    if-lt p1, p5, :cond_3

    .line 14
    .line 15
    const-string p5, "Max pool size "

    .line 16
    .line 17
    if-lt p2, p1, :cond_2

    .line 18
    .line 19
    const v0, 0x1ffffe

    .line 20
    .line 21
    .line 22
    if-gt p2, v0, :cond_1

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    cmp-long p2, p3, v0

    .line 27
    .line 28
    if-lez p2, :cond_0

    .line 29
    .line 30
    new-instance p2, Lkotlinx/coroutines/scheduling/e;

    .line 31
    .line 32
    invoke-direct {p2}, Lt5/d;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/b;->e:Lkotlinx/coroutines/scheduling/e;

    .line 36
    .line 37
    new-instance p2, Lkotlinx/coroutines/scheduling/e;

    .line 38
    .line 39
    invoke-direct {p2}, Lt5/d;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/b;->f:Lkotlinx/coroutines/scheduling/e;

    .line 43
    .line 44
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/b;->parkedWorkersStack:J

    .line 45
    .line 46
    new-instance p2, Lt5/i;

    .line 47
    .line 48
    add-int/lit8 p3, p1, 0x1

    .line 49
    .line 50
    invoke-direct {p2, p3}, Lt5/i;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/b;->g:Lt5/i;

    .line 54
    .line 55
    int-to-long p1, p1

    .line 56
    const/16 p3, 0x2a

    .line 57
    .line 58
    shl-long/2addr p1, p3

    .line 59
    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/b;->controlState:J

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lkotlinx/coroutines/scheduling/b;->_isTerminated:I

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p2, "Idle worker keep alive time "

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, " must be positive"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2

    .line 94
    :cond_1
    const-string p1, " should not exceed maximal supported number of threads 2097150"

    .line 95
    .line 96
    invoke-static {p5, p2, p1}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p2

    .line 110
    :cond_2
    const-string p3, " should be greater than or equals to core pool size "

    .line 111
    .line 112
    invoke-static {p5, p2, p3, p1}, Landroid/support/v4/media/session/a;->n(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p2

    .line 126
    :cond_3
    const-string p2, "Core pool size "

    .line 127
    .line 128
    const-string p3, " should be at least 1"

    .line 129
    .line 130
    invoke-static {p2, p1, p3}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p2
.end method


# virtual methods
.method public final close()V
    .locals 9

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_a

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lkotlinx/coroutines/scheduling/a;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    check-cast v0, Lkotlinx/coroutines/scheduling/a;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v3

    .line 26
    :goto_0
    if-nez v0, :cond_3

    .line 27
    .line 28
    :cond_2
    move-object v0, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_3
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/a;->g:Lkotlinx/coroutines/scheduling/b;

    .line 31
    .line 32
    invoke-static {v1, p0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    :goto_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->g:Lt5/i;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/b;->controlState:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .line 43
    const-wide/32 v6, 0x1fffff

    .line 44
    .line 45
    .line 46
    and-long/2addr v4, v6

    .line 47
    long-to-int v4, v4

    .line 48
    monitor-exit v1

    .line 49
    if-gt v2, v4, :cond_9

    .line 50
    .line 51
    move v1, v2

    .line 52
    :goto_2
    add-int/lit8 v5, v1, 0x1

    .line 53
    .line 54
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->g:Lt5/i;

    .line 55
    .line 56
    invoke-virtual {v6, v1}, Lt5/i;->b(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-static {v6}, Li5/a;->m(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    check-cast v6, Lkotlinx/coroutines/scheduling/a;

    .line 64
    .line 65
    if-eq v6, v0, :cond_7

    .line 66
    .line 67
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_4

    .line 72
    .line 73
    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v7, 0x2710

    .line 77
    .line 78
    invoke-virtual {v6, v7, v8}, Ljava/lang/Thread;->join(J)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    iget-object v6, v6, Lkotlinx/coroutines/scheduling/a;->a:Lkotlinx/coroutines/scheduling/l;

    .line 83
    .line 84
    iget-object v7, p0, Lkotlinx/coroutines/scheduling/b;->f:Lkotlinx/coroutines/scheduling/e;

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    sget-object v8, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 90
    .line 91
    invoke-virtual {v8, v6, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Lkotlinx/coroutines/scheduling/h;

    .line 96
    .line 97
    if-nez v8, :cond_5

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    invoke-virtual {v7, v8}, Lt5/d;->a(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :goto_4
    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/l;->c()Lkotlinx/coroutines/scheduling/h;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    if-nez v8, :cond_6

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_6
    invoke-virtual {v7, v8}, Lt5/d;->a(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    :goto_5
    if-ne v1, v4, :cond_8

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_8
    move v1, v5

    .line 118
    goto :goto_2

    .line 119
    :cond_9
    :goto_6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->f:Lkotlinx/coroutines/scheduling/e;

    .line 120
    .line 121
    invoke-virtual {v1}, Lt5/d;->b()V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->e:Lkotlinx/coroutines/scheduling/e;

    .line 125
    .line 126
    invoke-virtual {v1}, Lt5/d;->b()V

    .line 127
    .line 128
    .line 129
    :goto_7
    if-nez v0, :cond_a

    .line 130
    .line 131
    move-object v1, v3

    .line 132
    goto :goto_8

    .line 133
    :cond_a
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/a;->a(Z)Lkotlinx/coroutines/scheduling/h;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :goto_8
    if-nez v1, :cond_c

    .line 138
    .line 139
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->e:Lkotlinx/coroutines/scheduling/e;

    .line 140
    .line 141
    invoke-virtual {v1}, Lt5/d;->d()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Lkotlinx/coroutines/scheduling/h;

    .line 146
    .line 147
    if-nez v1, :cond_c

    .line 148
    .line 149
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->f:Lkotlinx/coroutines/scheduling/e;

    .line 150
    .line 151
    invoke-virtual {v1}, Lt5/d;->d()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Lkotlinx/coroutines/scheduling/h;

    .line 156
    .line 157
    if-nez v1, :cond_c

    .line 158
    .line 159
    if-nez v0, :cond_b

    .line 160
    .line 161
    goto :goto_9

    .line 162
    :cond_b
    const/4 v1, 0x5

    .line 163
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/a;->h(I)Z

    .line 164
    .line 165
    .line 166
    :goto_9
    const-wide/16 v0, 0x0

    .line 167
    .line 168
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/b;->parkedWorkersStack:J

    .line 169
    .line 170
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/b;->controlState:J

    .line 171
    .line 172
    :goto_a
    return-void

    .line 173
    :cond_c
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .line 175
    .line 176
    goto :goto_7

    .line 177
    :catchall_0
    move-exception v1

    .line 178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-interface {v5, v4, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    goto :goto_7

    .line 190
    :catchall_1
    move-exception v0

    .line 191
    monitor-exit v1

    .line 192
    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/j;->f:Landroidx/fragment/app/x0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/scheduling/b;->s(Ljava/lang/Runnable;Landroidx/fragment/app/x0;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final i()I
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->g:Lt5/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/scheduling/b;->_isTerminated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/b;->controlState:J

    .line 12
    .line 13
    const-wide/32 v3, 0x1fffff

    .line 14
    .line 15
    .line 16
    and-long v5, v1, v3

    .line 17
    .line 18
    long-to-int v5, v5

    .line 19
    const-wide v6, 0x3ffffe00000L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v1, v6

    .line 25
    const/16 v6, 0x15

    .line 26
    .line 27
    shr-long/2addr v1, v6

    .line 28
    long-to-int v1, v1

    .line 29
    sub-int v1, v5, v1

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-gez v1, :cond_1

    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_1
    iget v6, p0, Lkotlinx/coroutines/scheduling/b;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    if-lt v1, v6, :cond_2

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return v2

    .line 41
    :cond_2
    :try_start_2
    iget v6, p0, Lkotlinx/coroutines/scheduling/b;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    if-lt v5, v6, :cond_3

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return v2

    .line 47
    :cond_3
    :try_start_3
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/b;->controlState:J

    .line 48
    .line 49
    and-long/2addr v5, v3

    .line 50
    long-to-int v2, v5

    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    if-lez v2, :cond_5

    .line 54
    .line 55
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/b;->g:Lt5/i;

    .line 56
    .line 57
    invoke-virtual {v5, v2}, Lt5/i;->b(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-nez v5, :cond_5

    .line 62
    .line 63
    new-instance v5, Lkotlinx/coroutines/scheduling/a;

    .line 64
    .line 65
    invoke-direct {v5, p0, v2}, Lkotlinx/coroutines/scheduling/a;-><init>(Lkotlinx/coroutines/scheduling/b;I)V

    .line 66
    .line 67
    .line 68
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->g:Lt5/i;

    .line 69
    .line 70
    invoke-virtual {v6, v2, v5}, Lt5/i;->c(ILkotlinx/coroutines/scheduling/a;)V

    .line 71
    .line 72
    .line 73
    sget-object v6, Lkotlinx/coroutines/scheduling/b;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 74
    .line 75
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    and-long/2addr v3, v6

    .line 80
    long-to-int v3, v3

    .line 81
    if-ne v2, v3, :cond_4

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    monitor-exit v0

    .line 89
    return v1

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    :try_start_4
    const-string v1, "Failed requirement."

    .line 93
    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v2

    .line 104
    :cond_5
    const-string v1, "Failed requirement."

    .line 105
    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :goto_0
    monitor-exit v0

    .line 117
    throw v1
.end method

.method public final isTerminated()Z
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/scheduling/b;->_isTerminated:I

    return v0
.end method

.method public final s(Ljava/lang/Runnable;Landroidx/fragment/app/x0;Z)V
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/j;->e:Lkotlinx/coroutines/scheduling/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    instance-of v2, p1, Lkotlinx/coroutines/scheduling/h;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    .line 15
    .line 16
    iput-wide v0, p1, Lkotlinx/coroutines/scheduling/h;->a:J

    .line 17
    .line 18
    iput-object p2, p1, Lkotlinx/coroutines/scheduling/h;->b:Landroidx/fragment/app/x0;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Lkotlinx/coroutines/scheduling/i;

    .line 22
    .line 23
    invoke-direct {v2, p1, v0, v1, p2}, Lkotlinx/coroutines/scheduling/i;-><init>(Ljava/lang/Runnable;JLandroidx/fragment/app/x0;)V

    .line 24
    .line 25
    .line 26
    move-object p1, v2

    .line 27
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    instance-of v0, p2, Lkotlinx/coroutines/scheduling/a;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    check-cast p2, Lkotlinx/coroutines/scheduling/a;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object p2, v1

    .line 40
    :goto_1
    if-nez p2, :cond_3

    .line 41
    .line 42
    :cond_2
    move-object p2, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    iget-object v0, p2, Lkotlinx/coroutines/scheduling/a;->g:Lkotlinx/coroutines/scheduling/b;

    .line 45
    .line 46
    invoke-static {v0, p0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    :goto_2
    const/4 v0, 0x1

    .line 53
    if-nez p2, :cond_4

    .line 54
    .line 55
    :goto_3
    move-object v1, p1

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    iget v2, p2, Lkotlinx/coroutines/scheduling/a;->b:I

    .line 58
    .line 59
    const/4 v3, 0x5

    .line 60
    if-ne v2, v3, :cond_5

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_5
    iget-object v3, p1, Lkotlinx/coroutines/scheduling/h;->b:Landroidx/fragment/app/x0;

    .line 64
    .line 65
    iget v3, v3, Landroidx/fragment/app/x0;->a:I

    .line 66
    .line 67
    if-nez v3, :cond_6

    .line 68
    .line 69
    const/4 v3, 0x2

    .line 70
    if-ne v2, v3, :cond_6

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_6
    iput-boolean v0, p2, Lkotlinx/coroutines/scheduling/a;->f:Z

    .line 74
    .line 75
    iget-object v2, p2, Lkotlinx/coroutines/scheduling/a;->a:Lkotlinx/coroutines/scheduling/l;

    .line 76
    .line 77
    if-eqz p3, :cond_7

    .line 78
    .line 79
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/scheduling/l;->a(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_4

    .line 84
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    sget-object v3, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 88
    .line 89
    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lkotlinx/coroutines/scheduling/h;

    .line 94
    .line 95
    if-nez v3, :cond_8

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_8
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/scheduling/l;->a(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_4
    if-eqz v1, :cond_b

    .line 103
    .line 104
    iget-object v2, v1, Lkotlinx/coroutines/scheduling/h;->b:Landroidx/fragment/app/x0;

    .line 105
    .line 106
    iget v2, v2, Landroidx/fragment/app/x0;->a:I

    .line 107
    .line 108
    if-ne v2, v0, :cond_9

    .line 109
    .line 110
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/b;->f:Lkotlinx/coroutines/scheduling/e;

    .line 111
    .line 112
    :goto_5
    invoke-virtual {v2, v1}, Lt5/d;->a(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    goto :goto_6

    .line 117
    :cond_9
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/b;->e:Lkotlinx/coroutines/scheduling/e;

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :goto_6
    if-eqz v1, :cond_a

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_a
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 124
    .line 125
    iget-object p2, p0, Lkotlinx/coroutines/scheduling/b;->d:Ljava/lang/String;

    .line 126
    .line 127
    const-string p3, " was terminated"

    .line 128
    .line 129
    invoke-static {p3, p2}, Li5/a;->Z0(Ljava/io/Serializable;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_b
    :goto_7
    if-eqz p3, :cond_c

    .line 138
    .line 139
    if-eqz p2, :cond_c

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_c
    const/4 v0, 0x0

    .line 143
    :goto_8
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/h;->b:Landroidx/fragment/app/x0;

    .line 144
    .line 145
    iget p1, p1, Landroidx/fragment/app/x0;->a:I

    .line 146
    .line 147
    if-nez p1, :cond_10

    .line 148
    .line 149
    if-eqz v0, :cond_d

    .line 150
    .line 151
    return-void

    .line 152
    :cond_d
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->w()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_e

    .line 157
    .line 158
    goto :goto_9

    .line 159
    :cond_e
    iget-wide p1, p0, Lkotlinx/coroutines/scheduling/b;->controlState:J

    .line 160
    .line 161
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/b;->v(J)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_f

    .line 166
    .line 167
    goto :goto_9

    .line 168
    :cond_f
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->w()Z

    .line 169
    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_10
    sget-object p1, Lkotlinx/coroutines/scheduling/b;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 173
    .line 174
    const-wide/32 p2, 0x200000

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 178
    .line 179
    .line 180
    move-result-wide p1

    .line 181
    if-eqz v0, :cond_11

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_11
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->w()Z

    .line 185
    .line 186
    .line 187
    move-result p3

    .line 188
    if-eqz p3, :cond_12

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :cond_12
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/b;->v(J)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_13

    .line 196
    .line 197
    goto :goto_9

    .line 198
    :cond_13
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->w()Z

    .line 199
    .line 200
    .line 201
    :goto_9
    return-void
.end method

.method public final t(Lkotlinx/coroutines/scheduling/a;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a;->c()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/scheduling/b;->k:Lu3/g;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/b;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    const-wide/32 v1, 0x200000

    add-long/2addr v1, v4

    const-wide/32 v6, -0x200000

    and-long/2addr v1, v6

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a;->b()I

    move-result v3

    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->g:Lt5/i;

    invoke-virtual {v6, v0}, Lt5/i;->b(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/scheduling/a;->g(Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/scheduling/b;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v3

    or-long/2addr v6, v1

    move-object v2, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->g:Lt5/i;

    .line 7
    .line 8
    invoke-virtual {v1}, Lt5/i;->a()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    move v4, v2

    .line 15
    move v5, v4

    .line 16
    move v6, v5

    .line 17
    move v7, v6

    .line 18
    move v8, v3

    .line 19
    :goto_0
    if-ge v8, v1, :cond_7

    .line 20
    .line 21
    add-int/lit8 v9, v8, 0x1

    .line 22
    .line 23
    iget-object v10, p0, Lkotlinx/coroutines/scheduling/b;->g:Lt5/i;

    .line 24
    .line 25
    invoke-virtual {v10, v8}, Lt5/i;->b(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    check-cast v8, Lkotlinx/coroutines/scheduling/a;

    .line 30
    .line 31
    if-nez v8, :cond_1

    .line 32
    .line 33
    :cond_0
    :goto_1
    move v8, v9

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v10, v8, Lkotlinx/coroutines/scheduling/a;->a:Lkotlinx/coroutines/scheduling/l;

    .line 36
    .line 37
    invoke-virtual {v10}, Lkotlinx/coroutines/scheduling/l;->b()I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    iget v8, v8, Lkotlinx/coroutines/scheduling/a;->b:I

    .line 42
    .line 43
    invoke-static {v8}, Lo/i;->c(I)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_6

    .line 48
    .line 49
    if-eq v8, v3, :cond_5

    .line 50
    .line 51
    const/4 v11, 0x2

    .line 52
    if-eq v8, v11, :cond_4

    .line 53
    .line 54
    const/4 v11, 0x3

    .line 55
    if-eq v8, v11, :cond_3

    .line 56
    .line 57
    const/4 v10, 0x4

    .line 58
    if-eq v8, v10, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 65
    .line 66
    if-lez v10, :cond_0

    .line 67
    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v10, 0x64

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const/16 v10, 0x62

    .line 93
    .line 94
    :goto_2
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const/16 v10, 0x63

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    iget-wide v8, p0, Lkotlinx/coroutines/scheduling/b;->controlState:J

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/b;->d:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const/16 v3, 0x40

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v3, "[Pool Size {core = "

    .line 147
    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v3, p0, Lkotlinx/coroutines/scheduling/b;->a:I

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v3, ", max = "

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v3, p0, Lkotlinx/coroutines/scheduling/b;->b:I

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v3, "}, Worker States {CPU = "

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v2, ", blocking = "

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v2, ", parked = "

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v2, ", dormant = "

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, ", terminated = "

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v2, "}, running workers queues = "

    .line 207
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v0, ", global CPU queue size = "

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->e:Lkotlinx/coroutines/scheduling/e;

    .line 220
    .line 221
    invoke-virtual {v0}, Lt5/d;->c()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v0, ", global blocking queue size = "

    .line 229
    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->f:Lkotlinx/coroutines/scheduling/e;

    .line 234
    .line 235
    invoke-virtual {v0}, Lt5/d;->c()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v0, ", Control State {created workers= "

    .line 243
    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-wide/32 v2, 0x1fffff

    .line 248
    .line 249
    .line 250
    and-long/2addr v2, v8

    .line 251
    long-to-int v0, v2

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v0, ", blocking tasks = "

    .line 256
    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-wide v2, 0x3ffffe00000L

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    and-long/2addr v2, v8

    .line 266
    const/16 v0, 0x15

    .line 267
    .line 268
    shr-long/2addr v2, v0

    .line 269
    long-to-int v0, v2

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v0, ", CPUs acquired = "

    .line 274
    .line 275
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget v0, p0, Lkotlinx/coroutines/scheduling/b;->a:I

    .line 279
    .line 280
    const-wide v2, 0x7ffffc0000000000L

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    and-long/2addr v2, v8

    .line 286
    const/16 v4, 0x2a

    .line 287
    .line 288
    shr-long/2addr v2, v4

    .line 289
    long-to-int v2, v2

    .line 290
    sub-int/2addr v0, v2

    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v0, "}]"

    .line 295
    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    return-object v0
.end method

.method public final u(Lkotlinx/coroutines/scheduling/a;II)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/b;->parkedWorkersStack:J

    .line 2
    .line 3
    const-wide/32 v0, 0x1fffff

    .line 4
    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    long-to-int v0, v0

    .line 8
    const-wide/32 v4, 0x200000

    .line 9
    .line 10
    .line 11
    add-long/2addr v4, v2

    .line 12
    const-wide/32 v6, -0x200000

    .line 13
    .line 14
    .line 15
    and-long/2addr v4, v6

    .line 16
    if-ne v0, p2, :cond_5

    .line 17
    .line 18
    if-nez p3, :cond_4

    .line 19
    .line 20
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a;->c()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_1
    sget-object v1, Lkotlinx/coroutines/scheduling/b;->k:Lu3/g;

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v0, -0x1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    if-nez v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    check-cast v0, Lkotlinx/coroutines/scheduling/a;

    .line 35
    .line 36
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/a;->b()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    move v0, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/a;->c()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    move v0, p3

    .line 50
    :cond_5
    :goto_2
    if-gez v0, :cond_6

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_6
    sget-object v1, Lkotlinx/coroutines/scheduling/b;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 54
    .line 55
    int-to-long v6, v0

    .line 56
    or-long/2addr v4, v6

    .line 57
    move-object v0, v1

    .line 58
    move-object v1, p0

    .line 59
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    return-void
.end method

.method public final v(J)Z
    .locals 3

    .line 1
    const-wide/32 v0, 0x1fffff

    .line 2
    .line 3
    .line 4
    and-long/2addr v0, p1

    .line 5
    long-to-int v0, v0

    .line 6
    const-wide v1, 0x3ffffe00000L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr p1, v1

    .line 12
    const/16 v1, 0x15

    .line 13
    .line 14
    shr-long/2addr p1, v1

    .line 15
    long-to-int p1, p1

    .line 16
    sub-int/2addr v0, p1

    .line 17
    const/4 p1, 0x0

    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    move v0, p1

    .line 21
    :cond_0
    iget p2, p0, Lkotlinx/coroutines/scheduling/b;->a:I

    .line 22
    .line 23
    if-ge v0, p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->i()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    if-le p2, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->i()I

    .line 35
    .line 36
    .line 37
    :cond_1
    if-lez v0, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    return p1
.end method

.method public final w()Z
    .locals 12

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/b;->parkedWorkersStack:J

    .line 2
    .line 3
    const-wide/32 v0, 0x1fffff

    .line 4
    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    long-to-int v0, v0

    .line 8
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->g:Lt5/i;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lt5/i;->b(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v6, v0

    .line 15
    check-cast v6, Lkotlinx/coroutines/scheduling/a;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, -0x1

    .line 19
    if-nez v6, :cond_1

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    goto :goto_3

    .line 23
    :cond_1
    const-wide/32 v0, 0x200000

    .line 24
    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    const-wide/32 v4, -0x200000

    .line 28
    .line 29
    .line 30
    and-long/2addr v0, v4

    .line 31
    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/a;->c()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :goto_1
    sget-object v9, Lkotlinx/coroutines/scheduling/b;->k:Lu3/g;

    .line 36
    .line 37
    if-ne v4, v9, :cond_2

    .line 38
    .line 39
    move v5, v8

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    if-nez v4, :cond_3

    .line 42
    .line 43
    move v5, v7

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    check-cast v4, Lkotlinx/coroutines/scheduling/a;

    .line 46
    .line 47
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/a;->b()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_6

    .line 52
    .line 53
    :goto_2
    if-gez v5, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    sget-object v4, Lkotlinx/coroutines/scheduling/b;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 57
    .line 58
    int-to-long v10, v5

    .line 59
    or-long/2addr v10, v0

    .line 60
    move-object v0, v4

    .line 61
    move-object v1, p0

    .line 62
    move-wide v4, v10

    .line 63
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    invoke-virtual {v6, v9}, Lkotlinx/coroutines/scheduling/a;->g(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_3
    if-nez v6, :cond_5

    .line 73
    .line 74
    return v7

    .line 75
    :cond_5
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 76
    .line 77
    invoke-virtual {v0, v6, v8, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    return v0

    .line 88
    :cond_6
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/a;->c()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    goto :goto_1
.end method
