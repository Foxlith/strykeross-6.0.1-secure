.class public final Lokhttp3/internal/concurrent/TaskLoggerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lokhttp3/internal/concurrent/TaskLoggerKt;->log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    return-void
.end method

.method public static final formatDuration(J)Ljava/lang/String;
    .locals 12

    .line 1
    const-wide/32 v0, -0x3b9328e0

    .line 2
    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    const-string v1, " s "

    .line 7
    .line 8
    const v2, 0x3b9aca00

    .line 9
    .line 10
    .line 11
    const v3, 0x1dcd6500

    .line 12
    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    int-to-long v3, v3

    .line 22
    sub-long/2addr p0, v3

    .line 23
    int-to-long v2, v2

    .line 24
    div-long/2addr p0, v2

    .line 25
    :goto_0
    invoke-static {v0, p0, p1, v1}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_3

    .line 30
    :cond_0
    const-wide/32 v4, -0xf404c

    .line 31
    .line 32
    .line 33
    cmp-long v0, p0, v4

    .line 34
    .line 35
    const-string v4, " ms"

    .line 36
    .line 37
    const v5, 0xf4240

    .line 38
    .line 39
    .line 40
    const v6, 0x7a120

    .line 41
    .line 42
    .line 43
    if-gtz v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    int-to-long v1, v6

    .line 51
    sub-long/2addr p0, v1

    .line 52
    :goto_1
    int-to-long v1, v5

    .line 53
    div-long/2addr p0, v1

    .line 54
    invoke-static {v0, p0, p1, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_3

    .line 59
    :cond_1
    const-wide/16 v7, 0x0

    .line 60
    .line 61
    cmp-long v0, p0, v7

    .line 62
    .line 63
    const-string v7, " \u00b5s"

    .line 64
    .line 65
    const/16 v8, 0x3e8

    .line 66
    .line 67
    const/16 v9, 0x1f4

    .line 68
    .line 69
    if-gtz v0, :cond_2

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    int-to-long v1, v9

    .line 77
    sub-long/2addr p0, v1

    .line 78
    :goto_2
    int-to-long v1, v8

    .line 79
    div-long/2addr p0, v1

    .line 80
    invoke-static {v0, p0, p1, v7}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    const-wide/32 v10, 0xf404c

    .line 86
    .line 87
    .line 88
    cmp-long v0, p0, v10

    .line 89
    .line 90
    if-gez v0, :cond_3

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    int-to-long v1, v9

    .line 98
    add-long/2addr p0, v1

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const-wide/32 v7, 0x3b9328e0

    .line 101
    .line 102
    .line 103
    cmp-long v0, p0, v7

    .line 104
    .line 105
    if-gez v0, :cond_4

    .line 106
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    int-to-long v1, v6

    .line 113
    add-long/2addr p0, v1

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    int-to-long v3, v3

    .line 121
    add-long/2addr p0, v3

    .line 122
    int-to-long v2, v2

    .line 123
    div-long/2addr p0, v2

    .line 124
    goto :goto_0

    .line 125
    :goto_3
    const/4 p1, 0x1

    .line 126
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const-string p1, "%6s"

    .line 135
    .line 136
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const-string p1, "format(format, *args)"

    .line 141
    .line 142
    invoke-static {p0, p1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-object p0
.end method

.method private static final log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lokhttp3/internal/concurrent/TaskRunner;->Companion:Lokhttp3/internal/concurrent/TaskRunner$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner$Companion;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskQueue;->getName$okhttp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%-22s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(format, *args)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/internal/concurrent/Task;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public static final logElapsed(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Lj5/a;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/internal/concurrent/Task;",
            "Lokhttp3/internal/concurrent/TaskQueue;",
            "Lj5/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "task"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/internal/concurrent/TaskRunner;->Companion:Lokhttp3/internal/concurrent/TaskRunner$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner$Companion;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v1

    const-string v3, "starting"

    invoke-static {p0, p1, v3}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    :try_start_0
    invoke-interface {p2}, Lj5/a;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finished run in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed a run in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    :cond_2
    throw p2
.end method

.method public static final taskLog(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Lj5/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/concurrent/Task;",
            "Lokhttp3/internal/concurrent/TaskQueue;",
            "Lj5/a;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "task"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageBlock"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/internal/concurrent/TaskRunner;->Companion:Lokhttp3/internal/concurrent/TaskRunner$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner$Companion;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lj5/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
