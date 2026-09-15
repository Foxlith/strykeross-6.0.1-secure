.class public final synthetic Ls3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls3/t;

.field public final synthetic c:Ls3/q;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(ILs3/q;Ls3/t;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ls3/s;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Ls3/s;->b:Ls3/t;

    .line 7
    .line 8
    iput-object p2, p0, Ls3/s;->c:Ls3/q;

    .line 9
    .line 10
    iput-object p4, p0, Ls3/s;->d:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Ls3/s;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ls3/s;->b:Ls3/t;

    .line 9
    .line 10
    iget-object v3, p0, Ls3/s;->c:Ls3/q;

    .line 11
    .line 12
    iget-object v4, p0, Ls3/s;->d:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v5, v3, Ls3/q;->u:Ljava/util/List;

    .line 18
    .line 19
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v7, v3, Ls3/q;->u:Ljava/util/List;

    .line 23
    .line 24
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_4

    .line 37
    .line 38
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Ls3/n;

    .line 43
    .line 44
    iget-object v7, v0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_4

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    if-lt v2, v1, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object v7, v6, Ls3/n;->c:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v7, v3, Ls3/q;->a:Ljava/lang/String;

    .line 76
    .line 77
    iget v8, v6, Ls3/n;->a:I

    .line 78
    .line 79
    invoke-static {v7, v8}, Ls3/v;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    if-eqz v7, :cond_3

    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-nez v8, :cond_3

    .line 90
    .line 91
    iput-object v7, v6, Ls3/n;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    :goto_2
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Ls3/s;->b:Ls3/t;

    .line 105
    .line 106
    iget-object v3, p0, Ls3/s;->c:Ls3/q;

    .line 107
    .line 108
    iget-object v4, p0, Ls3/s;->d:Ljava/util/concurrent/CountDownLatch;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    :try_start_5
    iget-object v0, v0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_9

    .line 120
    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_5
    iget-object v0, v3, Ls3/q;->a:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v0}, Ls3/f;->f(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-lez v0, :cond_9

    .line 139
    .line 140
    iput v0, v3, Ls3/q;->m:I

    .line 141
    .line 142
    if-gtz v0, :cond_6

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    sget-object v5, Ls3/f;->a:[I

    .line 146
    .line 147
    move v6, v2

    .line 148
    :goto_3
    if-ge v6, v1, :cond_8

    .line 149
    .line 150
    aget v7, v5, v6

    .line 151
    .line 152
    if-gt v0, v7, :cond_7

    .line 153
    .line 154
    sub-int v2, v7, v0

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_8
    :goto_4
    iput v2, v3, Ls3/q;->n:I

    .line 161
    .line 162
    const-string v0, "icmp"

    .line 163
    .line 164
    invoke-virtual {v3, v0}, Ls3/q;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 165
    .line 166
    .line 167
    :catchall_2
    :cond_9
    :goto_5
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
