.class public final Lu2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile p:Lu2/h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public volatile c:Ljava/lang/Process;

.field public volatile d:Ljava/lang/Process;

.field public volatile e:Z

.field public volatile f:J

.field public volatile g:Ljava/io/File;

.field public volatile h:Z

.field public final i:Ljava/lang/Object;

.field public volatile j:Ljava/lang/String;

.field public volatile k:Ljava/lang/String;

.field public volatile l:Z

.field public volatile m:Z

.field public volatile n:Lv1/h;

.field public volatile o:Lu2/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu2/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu2/e;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lu2/h;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu2/h;->i:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lu2/h;->j:Ljava/lang/String;

    iput-object v0, p0, Lu2/h;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/h;->l:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lu2/h;->a:Landroid/content/Context;

    return-void
.end method

.method public static F(Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "hs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/File;

    const-string v1, "captured"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/File;

    const-string v1, "reports"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static c(I)Z
    .locals 9

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    add-long/2addr v2, v0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "iw dev 2>/dev/null | awk \'$1==\"Interface\"{print $2}\'"

    .line 17
    .line 18
    invoke-static {v1}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v4, 0x1

    .line 63
    invoke-static {p0, v4}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/4 v6, 0x0

    .line 68
    if-lt v1, v5, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    cmp-long v1, v7, v2

    .line 76
    .line 77
    if-ltz v1, :cond_5

    .line 78
    .line 79
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v0, "USB adapter: DRIVER MISSING \u2014 the dongle is attached to the VM but \'iw dev\' shows no interface after "

    .line 88
    .line 89
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-wide/16 v0, 0xa

    .line 93
    .line 94
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, "s. Install the driver or firmware for this chipset from the Terminal, then retry."

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return v6

    .line 110
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-ge v1, p0, :cond_4

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "USB adapters: only "

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, " of "

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p0, " bound a driver \u2014 guest exposes "

    .line 139
    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p0, ". The missing one needs its driver/firmware installed from the Terminal."

    .line 147
    .line 148
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    :goto_3
    invoke-static {p0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v1, "USB adapter: driver OK \u2014 guest exposes "

    .line 162
    .line 163
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    goto :goto_3

    .line 174
    :goto_4
    return v4

    .line 175
    :cond_5
    const-wide/16 v0, 0x1f4

    .line 176
    .line 177
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :catch_0
    return v6
.end method

.method public static g(Ljava/lang/Process;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "destroyForcibly"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :goto_0
    return-void
.end method

.method public static k(Landroid/content/Context;)Lu2/h;
    .locals 2

    .line 1
    sget-object v0, Lu2/h;->p:Lu2/h;

    if-nez v0, :cond_1

    const-class v0, Lu2/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu2/h;->p:Lu2/h;

    if-nez v1, :cond_0

    new-instance v1, Lu2/h;

    invoke-direct {v1, p0}, Lu2/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lu2/h;->p:Lu2/h;

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
    sget-object p0, Lu2/h;->p:Lu2/h;

    return-object p0
.end method

.method public static l(Ljava/lang/Process;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public static w()V
    .locals 4

    .line 1
    const-string v0, "(systemctl restart stryker-agent.service >/dev/null 2>&1 || (pkill -f stryker-agentd >/dev/null 2>&1; setsid /usr/local/sbin/stryker-agentd >/dev/null 2>&1 &)) &"

    invoke-static {v0}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    const-string v1, "ss -ltn 2>/dev/null | grep -q \':1052\' && echo __UP__ || echo __NO__"

    invoke-static {v1}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__UP__"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_1
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_2
    const-string v0, "RootlessEngine"

    const-string v1, "guest agent restarted but port 1052 never came up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lu2/h;->o()Z

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x5dc

    if-eqz v0, :cond_1

    invoke-static {v2}, Lu2/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lu2/h;->f:J

    invoke-virtual {p0}, Lu2/h;->r()V

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    invoke-static {v2}, Lu2/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lu2/h;->f:J

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final B(J)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu2/h;->m:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lu2/h;->D()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lu2/h;->p(J)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/io/File;

    .line 11
    .line 12
    iget-object p2, p0, Lu2/h;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p2}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "qmp.sock"

    .line 19
    .line 20
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :catchall_0
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 33
    .line 34
    invoke-static {p2}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "serial.sock"

    .line 39
    .line 40
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    .line 52
    :catchall_1
    :cond_1
    new-instance p1, Ljava/io/File;

    .line 53
    .line 54
    invoke-static {p2}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string v0, "term.sock"

    .line 59
    .line 60
    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    .line 71
    .line 72
    :catchall_2
    :cond_2
    iget-object p1, p0, Lu2/h;->d:Ljava/lang/Process;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-static {p1}, Lu2/h;->l(Ljava/lang/Process;)Z

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final C(I)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    iget-object v2, p0, Lu2/h;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v2}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "serial.log"

    .line 15
    .line 16
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    cmp-long v3, v3, v5

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 36
    .line 37
    invoke-static {v2}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "boot.log"

    .line 42
    .line 43
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    new-instance v2, Ljava/util/ArrayDeque;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 56
    .line 57
    .line 58
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 59
    .line 60
    new-instance v4, Ljava/io/InputStreamReader;

    .line 61
    .line 62
    new-instance v5, Ljava/io/FileInputStream;

    .line 63
    .line 64
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-le v1, p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_1
    move-exception v1

    .line 103
    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 107
    :catch_0
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    return-object v0
.end method

.method public final D()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu2/h;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lu2/h;->k:Ljava/lang/String;

    iget-object v0, p0, Lu2/h;->o:Lu2/l;

    iget-object v1, p0, Lu2/h;->n:Lv1/h;

    const/4 v2, 0x0

    iput-object v2, p0, Lu2/h;->o:Lu2/l;

    iput-object v2, p0, Lu2/h;->n:Lv1/h;

    iget-object v3, p0, Lu2/h;->c:Ljava/lang/Process;

    iput-object v2, p0, Lu2/h;->c:Ljava/lang/Process;

    if-eqz v3, :cond_0

    iput-object v3, p0, Lu2/h;->d:Ljava/lang/Process;

    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Landroidx/emoji2/text/m;

    const/16 v5, 0xc

    invoke-direct {v4, v0, v1, v3, v5}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v0, "stryker-qemu-stop"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final E(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu2/h;->n:Lv1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lv1/h;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "net0 tcp:127.0.0.1:"

    .line 13
    .line 14
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "hostfwd_remove "

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    const-string v2, "human-monitor-command"

    .line 22
    .line 23
    const-string v3, "command-line"

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v1, Lorg/json/JSONObject;

    .line 38
    .line 39
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :try_start_2
    invoke-virtual {v0, v1, v2}, Lv1/h;->j(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lu2/g;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "RootlessEngine"

    .line 2
    .line 3
    const-wide/16 v1, 0x2ee0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lu2/h;->p(J)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    iget-object v2, p0, Lu2/h;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v2}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v4, "qmp.sock"

    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :catchall_0
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 31
    .line 32
    invoke-static {v2}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "serial.sock"

    .line 37
    .line 38
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 39
    .line 40
    .line 41
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    .line 49
    .line 50
    :catchall_1
    :cond_1
    :try_start_4
    new-instance v1, Ljava/io/File;

    .line 51
    .line 52
    invoke-static {v2}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "term.sock"

    .line 57
    .line 58
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 59
    .line 60
    .line 61
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 68
    .line 69
    .line 70
    :catchall_2
    :cond_2
    const/4 v1, 0x0

    .line 71
    const/4 v2, 0x1

    .line 72
    :try_start_6
    iget-object v3, p0, Lu2/h;->a:Landroid/content/Context;

    .line 73
    .line 74
    invoke-static {v3}, Li5/a;->y0(Landroid/content/Context;)Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 79
    .line 80
    .line 81
    :catch_0
    :try_start_7
    invoke-virtual {p0}, Lu2/h;->b()V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lu2/h;->a:Landroid/content/Context;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    :try_start_8
    new-instance v5, Ll4/l;

    .line 88
    .line 89
    invoke-direct {v5, v3}, Ll4/l;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_3
    move-object v5, v4

    .line 94
    :goto_0
    :try_start_9
    invoke-static {v3, v5}, Li5/a;->H(Landroid/content/Context;Ll4/l;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lu2/h;->e()Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v6, "QEMU: "

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_3

    .line 125
    .line 126
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const/16 v8, 0x20

    .line 136
    .line 137
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    new-instance v5, Ljava/lang/ProcessBuilder;

    .line 160
    .line 161
    invoke-direct {v5, v3}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, p0, Lu2/h;->a:Landroid/content/Context;

    .line 165
    .line 166
    invoke-static {v3}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v5, v3}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const-string v6, "LD_LIBRARY_PATH"

    .line 178
    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    iget-object v8, p0, Lu2/h;->a:Landroid/content/Context;

    .line 185
    .line 186
    invoke-static {v8}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v8, ":/system/lib64:/vendor/lib64"

    .line 198
    .line 199
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iput-object v3, p0, Lu2/h;->c:Ljava/lang/Process;

    .line 217
    .line 218
    iput-boolean v1, p0, Lu2/h;->e:Z

    .line 219
    .line 220
    new-instance v5, Ljava/lang/Thread;

    .line 221
    .line 222
    new-instance v6, Landroidx/emoji2/text/m;

    .line 223
    .line 224
    const/16 v7, 0xd

    .line 225
    .line 226
    invoke-direct {v6, p0, v3, p1, v7}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 227
    .line 228
    .line 229
    const-string v7, "stryker-qemu-log"

    .line 230
    .line 231
    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 238
    .line 239
    .line 240
    move-result-wide v5

    .line 241
    const-wide/32 v7, 0x249f0

    .line 242
    .line 243
    .line 244
    add-long/2addr v5, v7

    .line 245
    :catch_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 246
    .line 247
    .line 248
    move-result-wide v7

    .line 249
    cmp-long v7, v7, v5

    .line 250
    .line 251
    if-gez v7, :cond_d

    .line 252
    .line 253
    iget-boolean v7, p0, Lu2/h;->m:Z

    .line 254
    .line 255
    if-eqz v7, :cond_4

    .line 256
    .line 257
    const-string p1, "stopped"

    .line 258
    .line 259
    return-object p1

    .line 260
    :catch_2
    move-exception p1

    .line 261
    goto/16 :goto_6

    .line 262
    .line 263
    :cond_4
    invoke-static {v3}, Lu2/h;->l(Ljava/lang/Process;)Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-nez v7, :cond_5

    .line 268
    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v1, "QEMU exited during boot (code "

    .line 275
    .line 276
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 277
    .line 278
    .line 279
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    .line 280
    .line 281
    .line 282
    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 283
    goto :goto_3

    .line 284
    :catch_3
    const/4 v1, -0x1

    .line 285
    :goto_3
    :try_start_b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v1, "): "

    .line 289
    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lu2/h;->q()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    return-object p1

    .line 305
    :cond_5
    const/16 v7, 0x5dc

    .line 306
    .line 307
    invoke-static {v7}, Lu2/c;->c(I)Z

    .line 308
    .line 309
    .line 310
    move-result v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 311
    if-eqz v7, :cond_a

    .line 312
    .line 313
    :try_start_c
    const-string v7, "printf \'__STRYKER_ID__%s@%s\\n\' \"$(id -un 2>/dev/null)\" \"$(hostname 2>/dev/null)\""

    .line 314
    .line 315
    invoke-static {v7}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    if-eqz v8, :cond_a

    .line 328
    .line 329
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    check-cast v8, Ljava/lang/String;

    .line 334
    .line 335
    if-nez v8, :cond_7

    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_7
    const-string v9, "__STRYKER_ID__"

    .line 339
    .line 340
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    move-result v9

    .line 344
    if-gez v9, :cond_8

    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_8
    add-int/lit8 v9, v9, 0xe

    .line 348
    .line 349
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    const/4 v10, 0x5

    .line 362
    if-le v9, v10, :cond_6

    .line 363
    .line 364
    const-string v9, "root@"

    .line 365
    .line 366
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result v9

    .line 370
    if-eqz v9, :cond_6

    .line 371
    .line 372
    iput-object v8, p0, Lu2/h;->k:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 373
    .line 374
    :try_start_d
    invoke-virtual {p0}, Lu2/h;->r()V

    .line 375
    .line 376
    .line 377
    if-eqz p1, :cond_9

    .line 378
    .line 379
    invoke-interface {p1}, Lu2/g;->t()V

    .line 380
    .line 381
    .line 382
    :cond_9
    return-object v4

    .line 383
    :catchall_4
    :cond_a
    if-nez v1, :cond_c

    .line 384
    .line 385
    const/16 v7, 0x78

    .line 386
    .line 387
    invoke-virtual {p0, v7}, Lu2/h;->C(I)Ljava/util/ArrayList;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    invoke-static {v7}, Li5/a;->z(Ljava/util/ArrayList;)I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    const/4 v8, 0x4

    .line 396
    if-lt v7, v8, :cond_c

    .line 397
    .line 398
    const-string v1, "Guest is up but the agent is not answering \u2014 starting it"

    .line 399
    .line 400
    if-eqz p1, :cond_b

    .line 401
    .line 402
    invoke-interface {p1, v1}, Lu2/g;->r(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :cond_b
    invoke-virtual {p0}, Lu2/h;->d()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 406
    .line 407
    .line 408
    move v1, v2

    .line 409
    :cond_c
    const-wide/16 v7, 0x3e8

    .line 410
    .line 411
    :try_start_e
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 412
    .line 413
    .line 414
    goto/16 :goto_2

    .line 415
    .line 416
    :cond_d
    :try_start_f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    const-string v2, "Boot timed out after 150s"

    .line 422
    .line 423
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    if-eqz v1, :cond_e

    .line 427
    .line 428
    const-string v1, " \u2014 the guest booted but stryker-agentd never came up"

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_e
    const-string v1, ""

    .line 432
    .line 433
    :goto_5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 440
    return-object p1

    .line 441
    :goto_6
    const-string v1, "start failed"

    .line 442
    .line 443
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    if-nez v0, :cond_f

    .line 451
    .line 452
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    goto :goto_7

    .line 457
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    :goto_7
    return-object p1
.end method

.method public final b()V
    .locals 11

    .line 1
    iget-object v0, p0, Lu2/h;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "VM disk grew "

    .line 4
    .line 5
    :try_start_0
    invoke-static {v0}, Li5/a;->O0(Landroid/content/Context;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {v0}, Li5/a;->x(Landroid/content/Context;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    cmp-long v5, v3, v5

    .line 23
    .line 24
    if-gtz v5, :cond_1

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    invoke-static {v0}, Li5/a;->x(Landroid/content/Context;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    invoke-static {v0}, Li5/a;->S(Landroid/content/Context;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    const-wide v7, 0x10000000000L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    const-wide v9, 0x80000000L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    add-long/2addr v3, v9

    .line 55
    cmp-long v3, v5, v3

    .line 56
    .line 57
    if-ltz v3, :cond_3

    .line 58
    .line 59
    invoke-static {v0}, Li5/a;->x(Landroid/content/Context;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    invoke-static {v0}, Li5/a;->S(Landroid/content/Context;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    new-instance v7, Ljava/io/RandomAccessFile;

    .line 80
    .line 81
    const-string v8, "rw"

    .line 82
    .line 83
    invoke-direct {v7, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    :try_start_1
    invoke-virtual {v7, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .line 95
    .line 96
    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    cmp-long v2, v7, v3

    .line 104
    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    new-instance v2, Ll4/l;

    .line 109
    .line 110
    invoke-direct {v2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "rootless_disk_resize_pending"

    .line 114
    .line 115
    const/4 v7, 0x1

    .line 116
    invoke-virtual {v2, v0, v7}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-wide/32 v1, 0x40000000

    .line 125
    .line 126
    .line 127
    div-long/2addr v5, v1

    .line 128
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v5, " GB -> "

    .line 132
    .line 133
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    div-long/2addr v3, v1

    .line 137
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, " GB to match free storage"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    goto :goto_2

    .line 155
    :catchall_1
    move-exception v0

    .line 156
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :catchall_2
    move-exception v1

    .line 161
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    :cond_3
    :goto_1
    return-void

    .line 166
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v2, "autoGrowDisk: "

    .line 169
    .line 170
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v1, "RootlessEngine"

    .line 185
    .line 186
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lu2/h;->a:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-static {v0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "serial.sock"

    .line 10
    .line 11
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string v1, "guest agent unreachable \u2014 bootstrapping it over the serial console"

    .line 31
    .line 32
    invoke-static {v1}, Lu2/c;->b(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Lu2/h;->h:Z

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lu2/h;->g:Ljava/io/File;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    :try_start_0
    iget-object v1, p0, Lu2/h;->g:Ljava/io/File;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lu2/h;->x(Ljava/io/File;)Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v4, "staging guest core for console bootstrap failed: "

    .line 55
    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v3, "RootlessEngine"

    .line 71
    .line 72
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    const-string v3, "tar xf /sdcard/Stryker/.stryker-guest-core.tar -C / 2>&1; chmod 0755 /usr/local/sbin/stryker-ptyd /usr/local/sbin/stryker-agentd 2>/dev/null; echo __AGENT_BYTES__$(wc -c < /usr/local/sbin/stryker-agentd 2>/dev/null || echo 0); if [ -s /usr/local/sbin/stryker-agentd ] && [ -x /usr/local/sbin/stryker-agentd ] && [ -f /CORE/PixieWps/pixie.py ]; then echo __DEPLOYED__; else echo __FAIL__; fi; "

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    :cond_2
    const-string v3, "command -v socat >/dev/null 2>&1 || (export DEBIAN_FRONTEND=noninteractive; apt-get install -y --no-install-recommends socat >/dev/null 2>&1); (systemctl restart stryker-agent.service >/dev/null 2>&1 || (pkill -f stryker-agentd >/dev/null 2>&1; setsid /usr/local/sbin/stryker-agentd >/dev/null 2>&1 &)); sleep 3; ss -ltn 2>/dev/null | grep -q \':1050\' && echo __AGENT_UP__ || echo __AGENT_DOWN__"

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const v3, 0x2bf20

    .line 97
    .line 98
    .line 99
    invoke-static {v3, v1, v0}, Li5/a;->R0(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v3, 0x0

    .line 108
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_4

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v4, :cond_3

    .line 121
    .line 122
    const-string v5, "__AGENT_UP__"

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_3

    .line 129
    .line 130
    const/4 v3, 0x1

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    if-eqz v2, :cond_5

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 135
    .line 136
    .line 137
    :cond_5
    if-eqz v3, :cond_6

    .line 138
    .line 139
    const-string v0, "guest agent started from the console"

    .line 140
    .line 141
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_6
    const-string v1, "printf \'agentd_bytes=%s socat=%s\\n\' \"$(wc -c < /usr/local/sbin/stryker-agentd 2>/dev/null || echo missing)\" \"$(command -v socat >/dev/null 2>&1 && echo yes || echo NO)\""

    .line 146
    .line 147
    const/16 v2, 0x4e20

    .line 148
    .line 149
    invoke-static {v2, v1, v0}, Li5/a;->R0(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Ljava/lang/String;

    .line 168
    .line 169
    if-eqz v1, :cond_7

    .line 170
    .line 171
    const-string v2, "agentd_bytes="

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, "console bootstrap failed \u2014 guest reports "

    .line 182
    .line 183
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v1}, Lu2/c;->b(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_8
    return-void
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "writeback"

    .line 4
    .line 5
    const-string v2, "threads"

    .line 6
    .line 7
    const-string v3, "max,sve=off,pmu=off,pauth=off"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x4

    .line 12
    const/16 v7, 0x1000

    .line 13
    .line 14
    :try_start_0
    new-instance v9, Ll4/l;

    .line 15
    .line 16
    iget-object v10, v0, Lu2/h;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v9, v10}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v9}, Li5/a;->D(Ll4/l;)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    iget-object v10, v0, Lu2/h;->a:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v10, v9}, Li5/a;->E(Landroid/content/Context;Ll4/l;)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const-string v10, "rootless_usb_off"

    .line 32
    .line 33
    invoke-virtual {v9, v10}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 37
    xor-int/2addr v10, v4

    .line 38
    :try_start_1
    invoke-static {v9}, Li5/a;->T0(Ll4/l;)Z

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    if-nez v11, :cond_0

    .line 43
    .line 44
    const-string v11, "rootless_no_share"

    .line 45
    .line 46
    invoke-virtual {v9, v11}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 50
    if-nez v11, :cond_0

    .line 51
    .line 52
    move v11, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v11, v5

    .line 55
    :goto_0
    :try_start_2
    invoke-static {v9}, Li5/a;->T0(Ll4/l;)Z

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    if-nez v12, :cond_1

    .line 60
    .line 61
    const-string v12, "rootless_no_rng"

    .line 62
    .line 63
    invoke-virtual {v9, v12}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 67
    if-nez v12, :cond_1

    .line 68
    .line 69
    move v12, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v12, v5

    .line 72
    :goto_1
    :try_start_3
    iget-object v13, v9, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 73
    .line 74
    if-eqz v13, :cond_2

    .line 75
    .line 76
    const-string v14, "rootless_mttcg"

    .line 77
    .line 78
    invoke-interface {v13, v14}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    if-eqz v13, :cond_2

    .line 83
    .line 84
    invoke-virtual {v9, v14}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move v13, v4

    .line 90
    :goto_2
    :try_start_4
    invoke-static {v9}, Li5/a;->h(Ll4/l;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v9}, Li5/a;->T0(Ll4/l;)Z

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    if-eqz v14, :cond_3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    const-string v14, "rootless_aio"

    .line 102
    .line 103
    invoke-virtual {v9, v14}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    const-string v15, "io_uring"

    .line 108
    .line 109
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    if-nez v14, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    iget-object v14, v9, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 117
    .line 118
    const-string v8, "rootless_io_uring_ok"

    .line 119
    .line 120
    invoke-interface {v14, v8, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-lez v8, :cond_5

    .line 125
    .line 126
    move-object v2, v15

    .line 127
    :cond_5
    :goto_3
    iget-object v8, v9, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 128
    .line 129
    const-string v14, "rootless_tcg_tbsize"

    .line 130
    .line 131
    invoke-interface {v8, v14, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 132
    .line 133
    .line 134
    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    if-lez v8, :cond_6

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_6
    const/16 v8, 0x800

    .line 139
    .line 140
    if-lt v7, v8, :cond_7

    .line 141
    .line 142
    const/16 v8, 0x200

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_7
    const/16 v8, 0x100

    .line 146
    .line 147
    :goto_4
    :try_start_5
    invoke-static {v9}, Li5/a;->w(Ll4/l;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v9}, Li5/a;->T0(Ll4/l;)Z

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    if-nez v14, :cond_8

    .line 156
    .line 157
    const-string v14, "rootless_no_iothread"

    .line 158
    .line 159
    invoke-virtual {v9, v14}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    if-nez v14, :cond_8

    .line 164
    .line 165
    move v14, v4

    .line 166
    goto :goto_5

    .line 167
    :cond_8
    move v14, v5

    .line 168
    :goto_5
    :try_start_6
    invoke-static {v9}, Li5/a;->T0(Ll4/l;)Z

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    if-nez v15, :cond_9

    .line 173
    .line 174
    const-string v15, "rootless_no_fastboot"

    .line 175
    .line 176
    invoke-virtual {v9, v15}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 180
    if-nez v9, :cond_9

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_9
    move v9, v5

    .line 184
    goto :goto_b

    .line 185
    :catchall_0
    move v14, v4

    .line 186
    goto :goto_a

    .line 187
    :catchall_1
    move v14, v4

    .line 188
    :goto_6
    const/16 v8, 0x200

    .line 189
    .line 190
    goto :goto_a

    .line 191
    :catchall_2
    move v13, v4

    .line 192
    :goto_7
    move v14, v13

    .line 193
    goto :goto_6

    .line 194
    :catchall_3
    move v12, v4

    .line 195
    :goto_8
    move v13, v12

    .line 196
    goto :goto_7

    .line 197
    :catchall_4
    move v11, v4

    .line 198
    :goto_9
    move v12, v11

    .line 199
    goto :goto_8

    .line 200
    :catchall_5
    move v10, v4

    .line 201
    move v11, v10

    .line 202
    goto :goto_9

    .line 203
    :catchall_6
    :goto_a
    move v9, v4

    .line 204
    :goto_b
    iget-object v15, v0, Lu2/h;->a:Landroid/content/Context;

    .line 205
    .line 206
    invoke-static {v15}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    new-instance v15, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v4, v0, Lu2/h;->a:Landroid/content/Context;

    .line 219
    .line 220
    invoke-static {v4}, Li5/a;->y0(Landroid/content/Context;)Ljava/io/File;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    const-string v4, "-nodefaults"

    .line 232
    .line 233
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    const-string v4, "-M"

    .line 237
    .line 238
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    const-string v4, "virt,gic-version=3"

    .line 242
    .line 243
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    new-instance v4, Ljava/io/File;

    .line 247
    .line 248
    const-string v5, "/dev/kvm"

    .line 249
    .line 250
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    move/from16 v16, v11

    .line 258
    .line 259
    const-string v11, "-accel"

    .line 260
    .line 261
    move/from16 v17, v12

    .line 262
    .line 263
    const-string v12, "-cpu"

    .line 264
    .line 265
    if-eqz v5, :cond_a

    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_a

    .line 272
    .line 273
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    const-string v3, "host"

    .line 277
    .line 278
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    const-string v3, "kvm"

    .line 285
    .line 286
    :goto_c
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    goto :goto_e

    .line 290
    :cond_a
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v4, "tcg,thread="

    .line 302
    .line 303
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    if-eqz v13, :cond_b

    .line 307
    .line 308
    const-string v4, "multi"

    .line 309
    .line 310
    goto :goto_d

    .line 311
    :cond_b
    const-string v4, "single"

    .line 312
    .line 313
    :goto_d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v4, ",tb-size="

    .line 317
    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    goto :goto_c

    .line 329
    :goto_e
    const-string v3, "-smp"

    .line 330
    .line 331
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v4, ",sockets=1,cores="

    .line 343
    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v4, ",threads=1"

    .line 351
    .line 352
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    const-string v3, "-m"

    .line 363
    .line 364
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    const-string v3, "-kernel"

    .line 375
    .line 376
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    iget-object v3, v0, Lu2/h;->a:Landroid/content/Context;

    .line 380
    .line 381
    new-instance v4, Ljava/io/File;

    .line 382
    .line 383
    invoke-static {v3}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    const-string v5, "Image"

    .line 388
    .line 389
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    const-string v3, "-initrd"

    .line 400
    .line 401
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    iget-object v3, v0, Lu2/h;->a:Landroid/content/Context;

    .line 405
    .line 406
    invoke-static {v3}, Li5/a;->g0(Landroid/content/Context;)Ljava/io/File;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    const-string v3, "-append"

    .line 418
    .line 419
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    const-string v4, "root=/dev/vda rw rootwait rootflags=noatime console=ttyAMA0 loglevel=4 net.ifnames=0 mitigations=off stryker.rootless=1"

    .line 425
    .line 426
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    if-eqz v9, :cond_c

    .line 430
    .line 431
    const-string v4, " init_on_alloc=0 init_on_free=0 audit=0 nokaslr rcupdate.rcu_expedited=1 rcupdate.rcu_normal_after_boot=1 cryptomgr.notests random.trust_bootloader=on"

    .line 432
    .line 433
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    const-string v3, "-drive"

    .line 444
    .line 445
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    const-string v4, "file="

    .line 451
    .line 452
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object v4, v0, Lu2/h;->a:Landroid/content/Context;

    .line 456
    .line 457
    invoke-static {v4}, Li5/a;->O0(Landroid/content/Context;)Ljava/io/File;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v4, ",if=none,id=drive0,format=raw,cache="

    .line 469
    .line 470
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v1, ",aio="

    .line 477
    .line 478
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v1, ",discard=unmap,detect-zeroes=unmap"

    .line 485
    .line 486
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    const-string v1, "-device"

    .line 497
    .line 498
    if-eqz v14, :cond_d

    .line 499
    .line 500
    const-string v2, "-object"

    .line 501
    .line 502
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    const-string v2, "iothread,id=io0"

    .line 506
    .line 507
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    const-string v2, "virtio-blk-pci,drive=drive0,iothread=io0"

    .line 514
    .line 515
    :goto_f
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    goto :goto_10

    .line 519
    :cond_d
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    const-string v2, "virtio-blk-pci,drive=drive0"

    .line 523
    .line 524
    goto :goto_f

    .line 525
    :goto_10
    const-string v2, "-netdev"

    .line 526
    .line 527
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    const-string v2, "user,id=net0,ipv6=off,hostfwd=tcp:127.0.0.1:1050-:1050,hostfwd=tcp:127.0.0.1:1051-:1051,hostfwd=tcp:127.0.0.1:1052-:1052,hostfwd=tcp:127.0.0.1:2222-:22"

    .line 531
    .line 532
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    const-string v2, "virtio-net-pci,netdev=net0,romfile="

    .line 539
    .line 540
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    if-eqz v10, :cond_e

    .line 544
    .line 545
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    const-string v2, "qemu-xhci,id=usbhc0,p2=8,p3=8"

    .line 549
    .line 550
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    :cond_e
    if-eqz v17, :cond_f

    .line 554
    .line 555
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    const-string v2, "virtio-rng-pci"

    .line 559
    .line 560
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    :cond_f
    const/4 v2, 0x0

    .line 564
    iput-object v2, v0, Lu2/h;->g:Ljava/io/File;

    .line 565
    .line 566
    const/4 v2, 0x0

    .line 567
    iput-boolean v2, v0, Lu2/h;->h:Z

    .line 568
    .line 569
    if-eqz v16, :cond_11

    .line 570
    .line 571
    invoke-virtual/range {p0 .. p0}, Lu2/h;->u()Ljava/io/File;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    if-eqz v2, :cond_10

    .line 576
    .line 577
    iput-object v2, v0, Lu2/h;->g:Ljava/io/File;

    .line 578
    .line 579
    const/4 v3, 0x1

    .line 580
    iput-boolean v3, v0, Lu2/h;->h:Z

    .line 581
    .line 582
    const-string v3, "-fsdev"

    .line 583
    .line 584
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    const-string v4, "local,id=fsdev0,security_model=none,path="

    .line 590
    .line 591
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    const-string v2, "virtio-9p-pci,fsdev=fsdev0,mount_tag=strykershare"

    .line 612
    .line 613
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    goto :goto_11

    .line 617
    :cond_10
    const-string v2, "RootlessEngine"

    .line 618
    .line 619
    const-string v3, "9p share dir unavailable \u2014 booting without /sdcard share"

    .line 620
    .line 621
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    :cond_11
    :goto_11
    iget-boolean v2, v0, Lu2/h;->h:Z

    .line 625
    .line 626
    if-nez v2, :cond_12

    .line 627
    .line 628
    const-string v2, "VM is booting WITHOUT the /sdcard capture share \u2014 handshakes and reports written inside the guest will not be visible to the app"

    .line 629
    .line 630
    invoke-static {v2}, Lu2/c;->b(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    :cond_12
    const-string v2, "-chardev"

    .line 634
    .line 635
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    .line 639
    .line 640
    const-string v4, "socket,id=serial0,path="

    .line 641
    .line 642
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    iget-object v4, v0, Lu2/h;->a:Landroid/content/Context;

    .line 646
    .line 647
    new-instance v5, Ljava/io/File;

    .line 648
    .line 649
    invoke-static {v4}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    const-string v6, "serial.sock"

    .line 654
    .line 655
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    const-string v4, ",server=on,wait=off,logfile="

    .line 666
    .line 667
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    iget-object v4, v0, Lu2/h;->a:Landroid/content/Context;

    .line 671
    .line 672
    new-instance v5, Ljava/io/File;

    .line 673
    .line 674
    invoke-static {v4}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    const-string v6, "serial.log"

    .line 679
    .line 680
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v3

    .line 694
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    const-string v3, "-serial"

    .line 698
    .line 699
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    const-string v3, "chardev:serial0"

    .line 703
    .line 704
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    const-string v3, "virtio-serial-pci"

    .line 711
    .line 712
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    const-string v3, "socket,id=term0,path="

    .line 721
    .line 722
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    iget-object v3, v0, Lu2/h;->a:Landroid/content/Context;

    .line 726
    .line 727
    new-instance v4, Ljava/io/File;

    .line 728
    .line 729
    invoke-static {v3}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    const-string v5, "term.sock"

    .line 734
    .line 735
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    const-string v3, ",server=on,wait=off"

    .line 746
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    const-string v1, "virtconsole,chardev=term0,name=org.stryker.term"

    .line 761
    .line 762
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    const-string v1, "-display"

    .line 766
    .line 767
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    const-string v1, "none"

    .line 771
    .line 772
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    const-string v1, "-qmp"

    .line 776
    .line 777
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    const-string v2, "unix:"

    .line 783
    .line 784
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    iget-object v2, v0, Lu2/h;->a:Landroid/content/Context;

    .line 788
    .line 789
    new-instance v3, Ljava/io/File;

    .line 790
    .line 791
    invoke-static {v2}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    const-string v4, "qmp.sock"

    .line 796
    .line 797
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    const-string v2, ",server,nowait"

    .line 808
    .line 809
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    return-object v15
.end method

.method public final f()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lu2/h;->v()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lu2/h;->x(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const-string v2, "tar xf /sdcard/Stryker/.stryker-guest-core.tar -C / 2>&1; chmod 0755 /usr/local/sbin/stryker-ptyd /usr/local/sbin/stryker-agentd 2>/dev/null; echo __AGENT_BYTES__$(wc -c < /usr/local/sbin/stryker-agentd 2>/dev/null || echo 0); if [ -s /usr/local/sbin/stryker-agentd ] && [ -x /usr/local/sbin/stryker-agentd ] && [ -f /CORE/PixieWps/pixie.py ]; then echo __DEPLOYED__; else echo __FAIL__; fi"

    invoke-static {v2}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "__AGENT_BYTES__"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "guest core deployed, agent is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lu2/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "__DEPLOYED__"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {}, Lu2/h;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return v2

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deployGuestCore failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RootlessEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final declared-synchronized h()Z
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lu2/h;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu2/h;->y(Lu2/g;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "[ -f /CORE/PixieWps/pixie.py ] && cat /CORE/.version 2>/dev/null || echo __NO__"

    invoke-static {v0}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "6"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lu2/h;->f()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final i()V
    .locals 6

    .line 1
    const-string v0, "[ -f /lib/firmware/ath9k_htc/htc_9271-1.4.0.fw ] && echo __FW_OK__ || echo __FW_MISSING__"

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const-string v3, "__FW_OK__"

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v1, "guest is missing /lib/firmware/ath9k_htc/htc_9271-1.4.0.fw \u2014 installing firmware-ath9k-htc (ath9k_htc dongles fail with \"Target is unresponsive\" without it)"

    .line 35
    .line 36
    invoke-static {v1}, Lu2/c;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "export DEBIAN_FRONTEND=noninteractive; apt-get install -y --no-install-recommends firmware-ath9k-htc wireless-regdb >/dev/null 2>&1; true"

    .line 40
    .line 41
    invoke-static {v1}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    const-string v0, "ath9k_htc firmware installed \u2014 replug the dongle to retry"

    .line 73
    .line 74
    :goto_0
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const-string v0, "could not install firmware-ath9k-htc (no network in the VM?)"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    :goto_1
    :try_start_2
    const-string v0, "mkdir -p /etc/modules-load.d; { echo loop; echo squashfs; echo overlay; } > /etc/modules-load.d/stryker.conf 2>/dev/null; true"

    .line 82
    .line 83
    invoke-static {v0}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    const-string v0, "[ -d \"/lib/modules/$(uname -r)/kernel\" ] && echo __HAS_MODULES__ || echo __NO_MODULES__"

    .line 87
    .line 88
    invoke-static {v0}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, "__HAS_MODULES__"

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    const-string v0, "modprobe loop >/dev/null 2>&1; modprobe squashfs >/dev/null 2>&1; modprobe overlay >/dev/null 2>&1; true"

    .line 123
    .line 124
    invoke-static {v0}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catchall_1
    move-exception v0

    .line 129
    goto/16 :goto_8

    .line 130
    .line 131
    :cond_5
    iget-object v0, p0, Lu2/h;->a:Landroid/content/Context;

    .line 132
    .line 133
    invoke-static {v0}, Li5/a;->g0(Landroid/content/Context;)Ljava/io/File;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lu2/h;->v()Ljava/io/File;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_a

    .line 146
    .line 147
    if-nez v1, :cond_6

    .line 148
    .line 149
    goto/16 :goto_7

    .line 150
    .line 151
    :cond_6
    new-instance v2, Ljava/io/File;

    .line 152
    .line 153
    const-string v3, ".initrd.img"

    .line 154
    .line 155
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v1, "guest has no /lib/modules \u2014 unpacking kernel modules from the initrd"

    .line 159
    .line 160
    invoke-static {v1}, Lu2/c;->b(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Ljava/io/FileInputStream;

    .line 164
    .line 165
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    .line 167
    .line 168
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    .line 169
    .line 170
    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 171
    .line 172
    .line 173
    const/high16 v3, 0x10000

    .line 174
    .line 175
    :try_start_4
    new-array v3, v3, [B

    .line 176
    .line 177
    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    const/4 v5, -0x1

    .line 182
    if-eq v4, v5, :cond_7

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    invoke-virtual {v0, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catchall_2
    move-exception v2

    .line 190
    goto :goto_3

    .line 191
    :cond_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 192
    .line 193
    .line 194
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 195
    .line 196
    .line 197
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 198
    .line 199
    .line 200
    const-string v0, "command -v cpio >/dev/null 2>&1 || (export DEBIAN_FRONTEND=noninteractive; apt-get install -y --no-install-recommends cpio >/dev/null 2>&1); rm -rf /tmp/stryker-ird; mkdir -p /tmp/stryker-ird; cd /tmp/stryker-ird; (cpio -idm < /sdcard/Stryker/.initrd.img || busybox cpio -idm < /sdcard/Stryker/.initrd.img) >/dev/null 2>&1; if [ -d /tmp/stryker-ird/lib/modules ]; then mkdir -p /lib/modules; cp -a /tmp/stryker-ird/lib/modules/. /lib/modules/; depmod -a >/dev/null 2>&1; echo __MODULES_DEPLOYED__; fi; rm -rf /tmp/stryker-ird"

    .line 201
    .line 202
    invoke-static {v0}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 206
    .line 207
    .line 208
    const-string v0, "modprobe loop >/dev/null 2>&1; modprobe squashfs >/dev/null 2>&1; losetup -f >/dev/null 2>&1 && echo __LOOP_OK__ || echo __LOOP_NO__"

    .line 209
    .line 210
    invoke-static {v0}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_9

    .line 223
    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Ljava/lang/String;

    .line 229
    .line 230
    if-eqz v1, :cond_8

    .line 231
    .line 232
    const-string v2, "__LOOP_OK__"

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_8

    .line 239
    .line 240
    const-string v0, "loop devices are available in the guest"

    .line 241
    .line 242
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :cond_9
    const-string v0, "loop still unavailable after loading modules"

    .line 247
    .line 248
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 249
    .line 250
    .line 251
    goto :goto_9

    .line 252
    :catchall_3
    move-exception v0

    .line 253
    goto :goto_5

    .line 254
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :catchall_4
    move-exception v0

    .line 259
    :try_start_8
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    :goto_4
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 263
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :catchall_5
    move-exception v1

    .line 268
    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    :goto_6
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 272
    :cond_a
    :goto_7
    return-void

    .line 273
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v2, "ensureKernelModules: "

    .line 276
    .line 277
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const-string v1, "RootlessEngine"

    .line 292
    .line 293
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    :goto_9
    return-void
.end method

.method public final declared-synchronized j()Z
    .locals 4

    .line 1
    const-string v0, "USB adapters: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lu2/h;->n()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lu2/h;->y(Lu2/g;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lu2/h;->o:Lu2/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    iget-object v1, p0, Lu2/h;->o:Lu2/l;

    invoke-virtual {v1}, Lu2/l;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lu2/h;->o:Lu2/l;

    invoke-virtual {v3}, Lu2/l;->b()I

    move-result v3

    if-gtz v3, :cond_2

    const-string v0, "USB adapter: no adapter could be passed into the VM"

    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " passed into the VM"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {v3}, Lu2/h;->c(I)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lu2/h;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Li5/a;->y0(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    invoke-static {v0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "Image"

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Li5/a;->g0(Landroid/content/Context;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    new-instance v1, Ljava/io/File;

    .line 41
    .line 42
    invoke-static {v0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "libslirp.so"

    .line 47
    .line 48
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-static {v0}, Li5/a;->O0(Landroid/content/Context;)Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0
.end method

.method public final n()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu2/h;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lu2/h;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    invoke-static {v0}, Lu2/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu2/h;->f:J

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu2/h;->c:Ljava/lang/Process;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lu2/h;->l(Ljava/lang/Process;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final p(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu2/h;->c:Ljava/lang/Process;

    .line 2
    .line 3
    iget-object v1, p0, Lu2/h;->d:Ljava/lang/Process;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lu2/h;->l(Ljava/lang/Process;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    :cond_0
    iput-object v2, p0, Lu2/h;->d:Ljava/lang/Process;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lu2/h;->D()V

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    add-long/2addr v0, p1

    .line 29
    :catch_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    cmp-long p1, p1, v0

    .line 34
    .line 35
    if-gez p1, :cond_5

    .line 36
    .line 37
    iget-object p1, p0, Lu2/h;->d:Ljava/lang/Process;

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-static {p1}, Lu2/h;->l(Ljava/lang/Process;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const-wide/16 p1, 0xc8

    .line 49
    .line 50
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    :goto_1
    iput-object v2, p0, Lu2/h;->d:Ljava/lang/Process;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_5
    iget-object p1, p0, Lu2/h;->d:Ljava/lang/Process;

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    invoke-static {p1}, Lu2/h;->l(Ljava/lang/Process;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_6

    .line 66
    .line 67
    invoke-static {p1}, Lu2/h;->g(Ljava/lang/Process;)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v0, 0x258

    .line 71
    .line 72
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    :catch_1
    :cond_6
    if-eqz p1, :cond_7

    .line 76
    .line 77
    invoke-static {p1}, Lu2/h;->l(Ljava/lang/Process;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_8

    .line 82
    .line 83
    :cond_7
    iput-object v2, p0, Lu2/h;->d:Ljava/lang/Process;

    .line 84
    .line 85
    :cond_8
    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 5

    .line 1
    const/16 v0, 0x28

    :try_start_0
    invoke-virtual {p0, v0}, Lu2/h;->C(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "qemu-system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "failed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "not supported"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "invalid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa0

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v2

    :catchall_0
    :cond_4
    const-string v0, "see the boot log"

    return-object v0
.end method

.method public final r()V
    .locals 5

    .line 1
    iget-object v0, p0, Lu2/h;->i:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    iput-wide v1, p0, Lu2/h;->f:J

    .line 9
    .line 10
    iget-boolean v1, p0, Lu2/h;->e:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lu2/h;->e:Z

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const-string v0, "RootlessEngine"

    .line 23
    .line 24
    :try_start_1
    new-instance v1, Lv1/h;

    .line 25
    .line 26
    iget-object v2, p0, Lu2/h;->a:Landroid/content/Context;

    .line 27
    .line 28
    new-instance v3, Ljava/io/File;

    .line 29
    .line 30
    invoke-static {v2}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "qmp.sock"

    .line 35
    .line 36
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, v2}, Lv1/h;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lu2/h;->n:Lv1/h;

    .line 47
    .line 48
    iget-object v1, p0, Lu2/h;->n:Lv1/h;

    .line 49
    .line 50
    invoke-virtual {v1}, Lv1/h;->g()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    new-instance v1, Lu2/l;

    .line 57
    .line 58
    iget-object v2, p0, Lu2/h;->a:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v3, p0, Lu2/h;->n:Lv1/h;

    .line 61
    .line 62
    invoke-direct {v1, v2, v3}, Lu2/l;-><init>(Landroid/content/Context;Lv1/h;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lu2/h;->o:Lu2/l;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string v1, "QMP connect failed \u2014 USB passthrough unavailable"

    .line 71
    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "control connect failed: "

    .line 79
    .line 80
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :goto_1
    iget-object v0, p0, Lu2/h;->b:Ljava/util/concurrent/ExecutorService;

    .line 98
    .line 99
    new-instance v1, Lu2/f;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-direct {v1, p0, v2}, Lu2/f;-><init>(Lu2/h;I)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw v1
.end method

.method public final s()V
    .locals 20

    .line 1
    const-string v0, "rootless_disk_resize_pending"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v2, v1, Lu2/h;->a:Landroid/content/Context;

    .line 6
    .line 7
    const-string v3, "VM image claims "

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Ll4/l;

    .line 10
    .line 11
    invoke-direct {v4, v2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4, v0}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {v2}, Li5/a;->x(Landroid/content/Context;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    invoke-static {v2}, Li5/a;->S(Landroid/content/Context;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v7

    .line 29
    const-wide v9, 0x80000000L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    add-long/2addr v9, v7

    .line 35
    cmp-long v2, v5, v9

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    if-lez v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4, v0, v9}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-wide/32 v2, 0x40000000

    .line 49
    .line 50
    .line 51
    div-long/2addr v5, v2

    .line 52
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, " GB but only "

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    div-long/2addr v7, v2

    .line 61
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, " GB fits on this device \u2014 skipping the filesystem expansion. Pick a size that fits under Settings if you need a bigger disk."

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :cond_1
    const-string v2, "expanding VM disk filesystem (resize2fs /dev/vda)\u2026"

    .line 81
    .line 82
    invoke-static {v2}, Lu2/c;->b(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "command -v resize2fs >/dev/null 2>&1 && echo __HAS_RESIZE2FS__ || echo __NO_RESIZE2FS__; echo __BEFORE__; df -k / | tail -n 1; resize2fs /dev/vda 2>&1 || resize2fs -f /dev/vda 2>&1; echo __AFTER__; df -k / | tail -n 1; echo __RESIZE_DONE__"

    .line 86
    .line 87
    invoke-static {v2}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    move v3, v9

    .line 96
    move v12, v3

    .line 97
    move v13, v12

    .line 98
    move v14, v13

    .line 99
    const-wide/16 v7, -0x1

    .line 100
    .line 101
    const-wide/16 v10, -0x1

    .line 102
    .line 103
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    const-wide/16 v16, 0x0

    .line 108
    .line 109
    const/4 v5, 0x1

    .line 110
    if-eqz v15, :cond_e

    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Ljava/lang/String;

    .line 117
    .line 118
    if-nez v6, :cond_2

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    const-string v15, "__HAS_RESIZE2FS__"

    .line 122
    .line 123
    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    if-eqz v15, :cond_3

    .line 128
    .line 129
    move v12, v5

    .line 130
    :cond_3
    const-string v15, "__NO_RESIZE2FS__"

    .line 131
    .line 132
    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    if-eqz v15, :cond_4

    .line 137
    .line 138
    move v12, v9

    .line 139
    :cond_4
    const-string v15, "__RESIZE_DONE__"

    .line 140
    .line 141
    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    if-eqz v15, :cond_5

    .line 146
    .line 147
    move v13, v5

    .line 148
    :cond_5
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 149
    .line 150
    invoke-virtual {v6, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    const-string v9, "nothing to do"

    .line 155
    .line 156
    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_6

    .line 161
    .line 162
    move v3, v5

    .line 163
    :cond_6
    const-string v9, "__BEFORE__"

    .line 164
    .line 165
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-eqz v9, :cond_8

    .line 170
    .line 171
    move v14, v5

    .line 172
    :cond_7
    :goto_1
    const/4 v9, 0x0

    .line 173
    goto :goto_0

    .line 174
    :cond_8
    const-string v9, "__AFTER__"

    .line 175
    .line 176
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const/4 v15, 0x2

    .line 181
    if-eqz v9, :cond_9

    .line 182
    .line 183
    move v14, v15

    .line 184
    goto :goto_1

    .line 185
    :cond_9
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    const-string v9, "\\s+"

    .line 190
    .line 191
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    array-length v9, v6

    .line 196
    if-ge v9, v15, :cond_b

    .line 197
    .line 198
    :catch_0
    :catchall_1
    :cond_a
    const-wide/16 v18, -0x1

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_b
    array-length v9, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    if-ge v5, v9, :cond_a

    .line 203
    .line 204
    :try_start_2
    aget-object v6, v6, v5

    .line 205
    .line 206
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v18
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    :goto_2
    cmp-long v6, v18, v16

    .line 211
    .line 212
    if-gtz v6, :cond_c

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_c
    if-ne v14, v5, :cond_d

    .line 216
    .line 217
    cmp-long v5, v7, v16

    .line 218
    .line 219
    if-gez v5, :cond_d

    .line 220
    .line 221
    move-wide/from16 v7, v18

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_d
    if-ne v14, v15, :cond_7

    .line 225
    .line 226
    cmp-long v5, v10, v16

    .line 227
    .line 228
    if-gez v5, :cond_7

    .line 229
    .line 230
    move-wide/from16 v10, v18

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_e
    cmp-long v2, v7, v16

    .line 234
    .line 235
    if-lez v2, :cond_f

    .line 236
    .line 237
    cmp-long v2, v10, v7

    .line 238
    .line 239
    if-lez v2, :cond_f

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_f
    const/4 v5, 0x0

    .line 243
    :goto_3
    if-nez v5, :cond_10

    .line 244
    .line 245
    if-eqz v3, :cond_11

    .line 246
    .line 247
    :cond_10
    const/4 v2, 0x0

    .line 248
    goto :goto_5

    .line 249
    :cond_11
    if-nez v12, :cond_12

    .line 250
    .line 251
    :try_start_3
    const-string v0, "disk grown, but resize2fs is missing in the guest \u2014 run \'apt-get install -y e2fsprogs\' in the terminal, the grow retries on the next boot"

    .line 252
    .line 253
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v2, "resize2fs did not expand the filesystem"

    .line 263
    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    if-eqz v13, :cond_13

    .line 268
    .line 269
    const-string v2, ""

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_13
    const-string v2, " (command did not finish)"

    .line 273
    .line 274
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v2, " \u2014 retrying on the next boot"

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    goto :goto_8

    .line 290
    :goto_5
    invoke-virtual {v4, v0, v2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 291
    .line 292
    .line 293
    if-eqz v5, :cond_14

    .line 294
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v2, "VM disk filesystem expanded to "

    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-wide/16 v2, 0x400

    .line 306
    .line 307
    div-long/2addr v10, v2

    .line 308
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v2, " MB"

    .line 312
    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    goto :goto_6

    .line 321
    :cond_14
    const-string v0, "VM disk filesystem already fills the image"

    .line 322
    .line 323
    :goto_6
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v3, "maybeResizeFilesystem: "

    .line 330
    .line 331
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const-string v2, "RootlessEngine"

    .line 346
    .line 347
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    :goto_8
    return-void
.end method

.method public final t(Ljava/lang/String;)Lu2/b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu2/h;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lu2/h;->y(Lu2/g;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object v0, Lu2/c;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "-"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lu2/c;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Lu2/c;->a(Ljava/lang/String;Ljava/lang/String;)Lu2/b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public final u()Ljava/io/File;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const-string v2, "Stryker"

    .line 6
    .line 7
    iget-object v3, p0, Lu2/h;->a:Landroid/content/Context;

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Landroidx/core/view/v2;->q()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-static {v0}, Lu2/h;->F(Ljava/io/File;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :catchall_0
    :cond_2
    const/4 v0, 0x0

    .line 58
    invoke-virtual {v3, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    new-instance v3, Ljava/io/File;

    .line 65
    .line 66
    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    :cond_3
    invoke-static {v3}, Lu2/h;->F(Ljava/io/File;)V

    .line 82
    .line 83
    .line 84
    return-object v3

    .line 85
    :cond_4
    return-object v0
.end method

.method public final v()Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu2/h;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lu2/h;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu2/h;->g:Ljava/io/File;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lu2/h;->u()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final x(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, ".stryker-guest-core.tar"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lu2/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "rootless/stryker-guest-core.tar"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v2, 0x10000

    :try_start_1
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    throw v0
.end method

.method public final declared-synchronized y(Lu2/g;)Z
    .locals 7

    .line 1
    const-string v0, "VM boot failed ("

    .line 2
    .line 3
    const-string v1, "Boot failed ("

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lu2/h;->n()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lu2/g;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    :goto_0
    monitor-exit p0

    .line 23
    return v3

    .line 24
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lu2/h;->o()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v2, :cond_6

    .line 30
    .line 31
    iget-boolean v2, p0, Lu2/h;->e:Z

    .line 32
    .line 33
    if-eqz v2, :cond_6

    .line 34
    .line 35
    move v0, v4

    .line 36
    :goto_1
    const/4 v1, 0x5

    .line 37
    if-ge v0, v1, :cond_4

    .line 38
    .line 39
    const/16 v1, 0x7d0

    .line 40
    .line 41
    invoke-static {v1}, Lu2/c;->c(I)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Lu2/g;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_2
    monitor-exit p0

    .line 53
    return v3

    .line 54
    :cond_3
    const-wide/16 v1, 0x3e8

    .line 55
    .line 56
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    :cond_4
    :try_start_3
    const-string v0, "VM is running but the guest command server stopped responding"

    .line 63
    .line 64
    iput-object v0, p0, Lu2/h;->j:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lu2/h;->j:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, " \u2014 not rebooting; restart the VM from the dashboard if it persists"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lu2/h;->j:Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {p1, v0}, Lu2/g;->v(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .line 94
    .line 95
    :cond_5
    monitor-exit p0

    .line 96
    return v4

    .line 97
    :cond_6
    :try_start_4
    invoke-virtual {p0}, Lu2/h;->m()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_8

    .line 102
    .line 103
    const-string v0, "Rootless artifacts not installed"

    .line 104
    .line 105
    iput-object v0, p0, Lu2/h;->j:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    iget-object v0, p0, Lu2/h;->j:Ljava/lang/String;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Lu2/g;->v(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    .line 113
    .line 114
    :cond_7
    monitor-exit p0

    .line 115
    return v4

    .line 116
    :cond_8
    :try_start_5
    iput-boolean v4, p0, Lu2/h;->m:Z

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lu2/h;->a(Lu2/g;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-nez v2, :cond_9

    .line 123
    .line 124
    const-string p1, ""

    .line 125
    .line 126
    iput-object p1, p0, Lu2/h;->j:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    .line 128
    monitor-exit p0

    .line 129
    return v3

    .line 130
    :cond_9
    :try_start_6
    new-instance v5, Ll4/l;

    .line 131
    .line 132
    iget-object v6, p0, Lu2/h;->a:Landroid/content/Context;

    .line 133
    .line 134
    invoke-direct {v5, v6}, Ll4/l;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catchall_1
    const/4 v5, 0x0

    .line 139
    :goto_2
    :try_start_7
    iget-boolean v6, p0, Lu2/h;->l:Z

    .line 140
    .line 141
    if-eqz v6, :cond_d

    .line 142
    .line 143
    if-eqz v5, :cond_d

    .line 144
    .line 145
    invoke-static {v5}, Li5/a;->T0(Ll4/l;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_d

    .line 150
    .line 151
    iput-object v2, p0, Lu2/h;->j:Ljava/lang/String;

    .line 152
    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, ") \u2014 retrying with a safe profile"

    .line 162
    .line 163
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz p1, :cond_a

    .line 171
    .line 172
    invoke-interface {p1, v1}, Lu2/g;->r(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v0, "), falling back to the safe profile (aio=threads, cache=writeback, no 9p share, no virtio-rng, no USB HC)"

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Lu2/c;->b(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v0, "rootless_safe_boot"

    .line 196
    .line 197
    invoke-virtual {v5, v0, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 198
    .line 199
    .line 200
    const-wide/16 v0, 0x2ee0

    .line 201
    .line 202
    invoke-virtual {p0, v0, v1}, Lu2/h;->p(J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p1}, Lu2/h;->a(Lu2/g;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-nez v0, :cond_b

    .line 210
    .line 211
    const-string p1, ""

    .line 212
    .line 213
    iput-object p1, p0, Lu2/h;->j:Ljava/lang/String;

    .line 214
    .line 215
    const-string p1, "rootless_safe_boot"

    .line 216
    .line 217
    invoke-virtual {v5, p1, v4}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 218
    .line 219
    .line 220
    const-string p1, "VM booted with the safe profile. The 9p capture share is off for this session \u2014 restart the VM to retry the normal profile."

    .line 221
    .line 222
    invoke-static {p1}, Lu2/c;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 223
    .line 224
    .line 225
    monitor-exit p0

    .line 226
    return v3

    .line 227
    :cond_b
    :try_start_8
    const-string v1, "rootless_safe_boot"

    .line 228
    .line 229
    invoke-virtual {v5, v1, v4}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 230
    .line 231
    .line 232
    iput-object v0, p0, Lu2/h;->j:Ljava/lang/String;

    .line 233
    .line 234
    if-eqz p1, :cond_c

    .line 235
    .line 236
    invoke-interface {p1, v0}, Lu2/g;->v(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 237
    .line 238
    .line 239
    :cond_c
    monitor-exit p0

    .line 240
    return v4

    .line 241
    :cond_d
    :try_start_9
    iput-object v2, p0, Lu2/h;->j:Ljava/lang/String;

    .line 242
    .line 243
    if-eqz p1, :cond_e

    .line 244
    .line 245
    invoke-interface {p1, v2}, Lu2/g;->v(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 246
    .line 247
    .line 248
    :cond_e
    monitor-exit p0

    .line 249
    return v4

    .line 250
    :goto_3
    monitor-exit p0

    .line 251
    throw p1
.end method

.method public final z()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lu2/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lu2/h;->e:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lu2/h;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 v1, 0x3

    :cond_2
    return v1
.end method
