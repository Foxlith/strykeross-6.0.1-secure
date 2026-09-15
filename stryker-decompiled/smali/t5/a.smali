.class public final Lt5/a;
.super Lr5/m;
.source "SourceFile"

# interfaces
.implements Lc5/d;
.implements La5/e;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;

.field public final d:Lr5/e;

.field public final e:La5/e;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, Lt5/a;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lr5/e;La5/e;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sget-object v2, Lkotlinx/coroutines/scheduling/j;->f:Landroidx/fragment/app/x0;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(JLandroidx/fragment/app/x0;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lr5/m;->c:I

    .line 10
    .line 11
    iput-object p1, p0, Lt5/a;->d:Lr5/e;

    .line 12
    .line 13
    iput-object p2, p0, Lt5/a;->e:La5/e;

    .line 14
    .line 15
    sget-object p1, Lt5/b;->a:Lu3/g;

    .line 16
    .line 17
    iput-object p1, p0, Lt5/a;->f:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {p2}, La5/e;->getContext()La5/j;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget-object v0, Lt5/k;->b:Lt5/k;

    .line 29
    .line 30
    invoke-interface {p1, p2, v0}, La5/j;->fold(Ljava/lang/Object;Lj5/p;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lt5/a;->g:Ljava/lang/Object;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lt5/a;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lc5/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lt5/a;->e:La5/e;

    instance-of v1, v0, Lc5/d;

    if-eqz v1, :cond_0

    check-cast v0, Lc5/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getContext()La5/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lt5/a;->e:La5/e;

    invoke-interface {v0}, La5/e;->getContext()La5/j;

    move-result-object v0

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lt5/a;->e:La5/e;

    .line 4
    .line 5
    invoke-interface {v0}, La5/e;->getContext()La5/j;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static/range {p1 .. p1}, Lw4/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move-object/from16 v4, p1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v4, Lr5/b;

    .line 19
    .line 20
    invoke-direct {v4, v3}, Lr5/b;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v3, v1, Lt5/a;->d:Lr5/e;

    .line 24
    .line 25
    invoke-virtual {v3}, Lr5/e;->s()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x0

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iput-object v4, v1, Lt5/a;->f:Ljava/lang/Object;

    .line 33
    .line 34
    iput v6, v1, Lr5/m;->c:I

    .line 35
    .line 36
    invoke-virtual {v3, v2, v1}, Lr5/e;->i(La5/j;Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    sget-object v2, Lr5/u;->a:Ljava/lang/ThreadLocal;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lr5/q;

    .line 48
    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    new-instance v3, Lr5/a;

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-direct {v3, v5}, Lr5/a;-><init>(Ljava/lang/Thread;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-wide v7, v3, Lr5/q;->b:J

    .line 64
    .line 65
    const-wide v9, 0x100000000L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    cmp-long v2, v7, v9

    .line 71
    .line 72
    if-ltz v2, :cond_4

    .line 73
    .line 74
    iput-object v4, v1, Lt5/a;->f:Ljava/lang/Object;

    .line 75
    .line 76
    iput v6, v1, Lr5/m;->c:I

    .line 77
    .line 78
    iget-object v0, v3, Lr5/q;->d:Lr0/b;

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    new-instance v0, Lr0/b;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    const/16 v2, 0x10

    .line 88
    .line 89
    new-array v2, v2, [Ljava/lang/Object;

    .line 90
    .line 91
    iput-object v2, v0, Lr0/b;->c:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v0, v3, Lr5/q;->d:Lr0/b;

    .line 94
    .line 95
    :cond_3
    iget-object v2, v0, Lr0/b;->c:Ljava/lang/Object;

    .line 96
    .line 97
    move-object v7, v2

    .line 98
    check-cast v7, [Ljava/lang/Object;

    .line 99
    .line 100
    iget v2, v0, Lr0/b;->b:I

    .line 101
    .line 102
    aput-object v1, v7, v2

    .line 103
    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    array-length v3, v7

    .line 107
    add-int/lit8 v3, v3, -0x1

    .line 108
    .line 109
    and-int/2addr v2, v3

    .line 110
    iput v2, v0, Lr0/b;->b:I

    .line 111
    .line 112
    iget v10, v0, Lr0/b;->a:I

    .line 113
    .line 114
    if-ne v2, v10, :cond_6

    .line 115
    .line 116
    array-length v2, v7

    .line 117
    shl-int/lit8 v3, v2, 0x1

    .line 118
    .line 119
    new-array v3, v3, [Ljava/lang/Object;

    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    const/4 v11, 0x0

    .line 123
    const/16 v12, 0xa

    .line 124
    .line 125
    move-object v8, v3

    .line 126
    invoke-static/range {v7 .. v12}, Lg5/i;->e0([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 127
    .line 128
    .line 129
    iget-object v4, v0, Lr0/b;->c:Ljava/lang/Object;

    .line 130
    .line 131
    move-object v11, v4

    .line 132
    check-cast v11, [Ljava/lang/Object;

    .line 133
    .line 134
    array-length v4, v11

    .line 135
    iget v15, v0, Lr0/b;->a:I

    .line 136
    .line 137
    sub-int v13, v4, v15

    .line 138
    .line 139
    const/4 v14, 0x0

    .line 140
    const/16 v16, 0x4

    .line 141
    .line 142
    move-object v12, v3

    .line 143
    invoke-static/range {v11 .. v16}, Lg5/i;->e0([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 144
    .line 145
    .line 146
    iput-object v3, v0, Lr0/b;->c:Ljava/lang/Object;

    .line 147
    .line 148
    iput v6, v0, Lr0/b;->a:I

    .line 149
    .line 150
    iput v2, v0, Lr0/b;->b:I

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_4
    add-long/2addr v9, v7

    .line 154
    iput-wide v9, v3, Lr5/q;->b:J

    .line 155
    .line 156
    :try_start_0
    invoke-interface {v0}, La5/e;->getContext()La5/j;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iget-object v4, v1, Lt5/a;->g:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-static {v2, v4}, Lt5/b;->d(La5/j;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    move-object/from16 v5, p1

    .line 167
    .line 168
    :try_start_1
    invoke-interface {v0, v5}, La5/e;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    .line 170
    .line 171
    :try_start_2
    invoke-static {v2, v4}, Lt5/b;->c(La5/j;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    invoke-virtual {v3}, Lr5/q;->v()Z

    .line 175
    .line 176
    .line 177
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    if-nez v0, :cond_5

    .line 179
    .line 180
    :goto_1
    invoke-virtual {v3}, Lr5/q;->t()V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    goto :goto_2

    .line 186
    :catchall_1
    move-exception v0

    .line 187
    move-object v5, v0

    .line 188
    :try_start_3
    invoke-static {v2, v4}, Lt5/b;->c(La5/j;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    :goto_2
    const/4 v2, 0x0

    .line 193
    :try_start_4
    invoke-virtual {v1, v0, v2}, Lr5/m;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_6
    :goto_3
    return-void

    .line 198
    :catchall_2
    move-exception v0

    .line 199
    move-object v2, v0

    .line 200
    invoke-virtual {v3}, Lr5/q;->t()V

    .line 201
    .line 202
    .line 203
    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DispatchedContinuation["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lt5/a;->d:Lr5/e;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lt5/a;->e:La5/e;

    .line 19
    .line 20
    instance-of v2, v1, Lt5/a;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    const/16 v2, 0x40

    .line 30
    .line 31
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v3

    .line 59
    new-instance v4, Lw4/d;

    .line 60
    .line 61
    invoke-direct {v4, v3}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    move-object v3, v4

    .line 65
    :goto_0
    invoke-static {v3}, Lw4/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-nez v4, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    :goto_1
    move-object v1, v3

    .line 107
    check-cast v1, Ljava/lang/String;

    .line 108
    .line 109
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/16 v1, 0x5d

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method
