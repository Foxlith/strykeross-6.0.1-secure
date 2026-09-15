.class public final Ls3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls3/i;


# direct methods
.method public synthetic constructor <init>(Ls3/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ls3/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ls3/h;->b:Ls3/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Ls3/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls3/h;->b:Ls3/i;

    .line 7
    .line 8
    :goto_0
    iget-boolean v1, v0, Ls3/b;->c:Z

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "_services._dns-sd._udp.local."

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Ls3/i;->f:Ljava/util/LinkedHashSet;

    .line 33
    .line 34
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    iget-object v3, v0, Ls3/i;->f:Ljava/util/LinkedHashSet;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-virtual {v0}, Ls3/i;->o()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ls3/i;->n(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catch_0
    move-exception v1

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 57
    :goto_1
    iget-boolean v2, v0, Ls3/b;->c:Z

    .line 58
    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    iget-boolean v2, v0, Ls3/i;->m:Z

    .line 62
    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    iput-boolean v2, v0, Ls3/i;->m:Z

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v3, "send tick failed: "

    .line 71
    .line 72
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ls3/b;->g(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    :goto_2
    iget-boolean v1, v0, Ls3/b;->c:Z

    .line 86
    .line 87
    if-nez v1, :cond_1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_1
    const-wide/16 v1, 0xfa

    .line 91
    .line 92
    invoke-static {v1, v2}, Ls3/b;->d(J)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    :goto_3
    return-void

    .line 97
    :pswitch_0
    iget-object v0, p0, Ls3/h;->b:Ls3/i;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    const/16 v1, 0x1000

    .line 103
    .line 104
    new-array v2, v1, [B

    .line 105
    .line 106
    new-instance v3, Ljava/net/DatagramPacket;

    .line 107
    .line 108
    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 109
    .line 110
    .line 111
    :catch_1
    :goto_4
    iget-boolean v4, v0, Ls3/b;->c:Z

    .line 112
    .line 113
    if-eqz v4, :cond_5

    .line 114
    .line 115
    iget-object v4, v0, Ls3/i;->j:Ljava/net/MulticastSocket;

    .line 116
    .line 117
    if-nez v4, :cond_3

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_3
    const/4 v5, 0x0

    .line 121
    :try_start_5
    invoke-virtual {v3, v2, v5, v1}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ls3/i;->p(Ljava/net/DatagramPacket;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :catch_2
    iget-boolean v4, v0, Ls3/b;->c:Z

    .line 132
    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_4

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_4
    const-wide/16 v4, 0x32

    .line 147
    .line 148
    invoke-static {v4, v5}, Ls3/b;->d(J)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_5
    :goto_5
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
