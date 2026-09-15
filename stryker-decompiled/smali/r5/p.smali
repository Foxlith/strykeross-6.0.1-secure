.class public abstract Lr5/p;
.super Lr5/q;
.source "SourceFile"

# interfaces
.implements Lr5/k;


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lr5/p;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_queue"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lr5/p;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr5/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lr5/p;->_queue:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lr5/p;->_delayed:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lr5/p;->_isCompleted:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final i(La5/j;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lr5/p;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .locals 6

    .line 1
    sget-object v0, Lr5/u;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lr5/p;->_isCompleted:I

    .line 9
    .line 10
    :goto_0
    iget-object v2, p0, Lr5/p;->_queue:Ljava/lang/Object;

    .line 11
    .line 12
    sget-object v3, Lr5/r;->a:Lu3/g;

    .line 13
    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    sget-object v4, Lr5/p;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v4, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    instance-of v4, v2, Lt5/f;

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    check-cast v2, Lt5/f;

    .line 37
    .line 38
    invoke-virtual {v2}, Lt5/f;->b()Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    if-ne v2, v3, :cond_4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    new-instance v3, Lt5/f;

    .line 46
    .line 47
    const/16 v4, 0x8

    .line 48
    .line 49
    invoke-direct {v3, v4, v0}, Lt5/f;-><init>(IZ)V

    .line 50
    .line 51
    .line 52
    move-object v4, v2

    .line 53
    check-cast v4, Ljava/lang/Runnable;

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Lt5/f;->a(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    sget-object v4, Lr5/p;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 59
    .line 60
    :cond_5
    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_7

    .line 65
    .line 66
    :goto_1
    invoke-virtual {p0}, Lr5/p;->y()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    const-wide/16 v2, 0x0

    .line 71
    .line 72
    cmp-long v0, v0, v2

    .line 73
    .line 74
    if-gtz v0, :cond_6

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lr5/p;->_delayed:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lr5/o;

    .line 83
    .line 84
    return-void

    .line 85
    :cond_7
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-eq v5, v2, :cond_5

    .line 90
    .line 91
    goto :goto_0
.end method

.method public w(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lr5/p;->_queue:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lr5/p;->_isCompleted:I

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    if-nez v0, :cond_3

    .line 9
    .line 10
    sget-object v1, Lr5/p;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    .line 12
    :cond_1
    const/4 v0, 0x0

    .line 13
    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    instance-of v1, v0, Lt5/f;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_7

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Lt5/f;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lt5/f;->a(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_b

    .line 40
    .line 41
    if-eq v3, v2, :cond_4

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    if-eq v3, v0, :cond_8

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    sget-object v2, Lr5/p;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 48
    .line 49
    invoke-virtual {v1}, Lt5/f;->e()Lt5/f;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_5
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_6

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eq v3, v0, :cond_5

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_7
    sget-object v1, Lr5/r;->a:Lu3/g;

    .line 68
    .line 69
    if-ne v0, v1, :cond_9

    .line 70
    .line 71
    :cond_8
    :goto_1
    sget-object v0, Lr5/i;->f:Lr5/i;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lr5/i;->w(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_9
    new-instance v1, Lt5/f;

    .line 78
    .line 79
    const/16 v3, 0x8

    .line 80
    .line 81
    invoke-direct {v1, v3, v2}, Lt5/f;-><init>(IZ)V

    .line 82
    .line 83
    .line 84
    move-object v2, v0

    .line 85
    check-cast v2, Ljava/lang/Runnable;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lt5/f;->a(Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p1}, Lt5/f;->a(Ljava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    sget-object v2, Lr5/p;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 94
    .line 95
    :cond_a
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_d

    .line 100
    .line 101
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lr5/q;->u()Ljava/lang/Thread;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eq v0, p1, :cond_c

    .line 110
    .line 111
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 112
    .line 113
    .line 114
    :cond_c
    :goto_3
    return-void

    .line 115
    :cond_d
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eq v3, v0, :cond_a

    .line 120
    .line 121
    goto :goto_0
.end method

.method public final x()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lr5/q;->d:Lr0/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v2, v0, Lr0/b;->a:I

    .line 8
    .line 9
    iget v0, v0, Lr0/b;->b:I

    .line 10
    .line 11
    if-ne v2, v0, :cond_3

    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Lr5/p;->_delayed:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lr5/o;

    .line 16
    .line 17
    iget-object v0, p0, Lr5/p;->_queue:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :goto_1
    move v1, v2

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    instance-of v3, v0, Lt5/f;

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    check-cast v0, Lt5/f;

    .line 29
    .line 30
    invoke-virtual {v0}, Lt5/f;->d()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    sget-object v3, Lr5/r;->a:Lu3/g;

    .line 36
    .line 37
    if-ne v0, v3, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    :goto_2
    return v1
.end method

.method public final y()J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lr5/q;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget-object v0, p0, Lr5/p;->_delayed:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lr5/o;

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lr5/p;->_queue:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    instance-of v4, v0, Lt5/f;

    .line 21
    .line 22
    if-eqz v4, :cond_5

    .line 23
    .line 24
    move-object v3, v0

    .line 25
    check-cast v3, Lt5/f;

    .line 26
    .line 27
    invoke-virtual {v3}, Lt5/f;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget-object v5, Lt5/f;->g:Lu3/g;

    .line 32
    .line 33
    if-eq v4, v5, :cond_2

    .line 34
    .line 35
    move-object v3, v4

    .line 36
    check-cast v3, Ljava/lang/Runnable;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    sget-object v4, Lr5/p;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    .line 41
    invoke-virtual {v3}, Lt5/f;->e()Lt5/f;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    :cond_3
    invoke-virtual {v4, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eq v3, v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    sget-object v4, Lr5/r;->a:Lu3/g;

    .line 60
    .line 61
    if-ne v0, v4, :cond_6

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_6
    sget-object v4, Lr5/p;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 65
    .line 66
    :cond_7
    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_10

    .line 71
    .line 72
    move-object v3, v0

    .line 73
    check-cast v3, Ljava/lang/Runnable;

    .line 74
    .line 75
    :goto_1
    if-eqz v3, :cond_8

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 78
    .line 79
    .line 80
    return-wide v1

    .line 81
    :cond_8
    iget-object v0, p0, Lr5/q;->d:Lr0/b;

    .line 82
    .line 83
    const-wide v3, 0x7fffffffffffffffL

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    if-nez v0, :cond_9

    .line 89
    .line 90
    :goto_2
    move-wide v5, v3

    .line 91
    goto :goto_3

    .line 92
    :cond_9
    iget v5, v0, Lr0/b;->a:I

    .line 93
    .line 94
    iget v0, v0, Lr0/b;->b:I

    .line 95
    .line 96
    if-ne v5, v0, :cond_a

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_a
    move-wide v5, v1

    .line 100
    :goto_3
    cmp-long v0, v5, v1

    .line 101
    .line 102
    if-nez v0, :cond_b

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_b
    iget-object v0, p0, Lr5/p;->_queue:Ljava/lang/Object;

    .line 106
    .line 107
    if-nez v0, :cond_c

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_c
    instance-of v5, v0, Lt5/f;

    .line 111
    .line 112
    if-eqz v5, :cond_e

    .line 113
    .line 114
    check-cast v0, Lt5/f;

    .line 115
    .line 116
    invoke-virtual {v0}, Lt5/f;->d()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_d

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_d
    :goto_4
    iget-object v0, p0, Lr5/p;->_delayed:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Lr5/o;

    .line 126
    .line 127
    :goto_5
    move-wide v1, v3

    .line 128
    goto :goto_6

    .line 129
    :cond_e
    sget-object v5, Lr5/r;->a:Lu3/g;

    .line 130
    .line 131
    if-ne v0, v5, :cond_f

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_f
    :goto_6
    return-wide v1

    .line 135
    :cond_10
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    if-eq v5, v0, :cond_7

    .line 140
    .line 141
    goto :goto_0
.end method

.method public final z()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lr5/p;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lr5/p;->_delayed:Ljava/lang/Object;

    return-void
.end method
