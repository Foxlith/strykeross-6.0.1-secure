.class public final Ls3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile A:I

.field public volatile B:I

.field public volatile C:I

.field public volatile D:I

.field public volatile E:I

.field public volatile F:J

.field public volatile G:Ljava/lang/Thread;

.field public final a:Landroid/content/Context;

.field public final b:Ll4/l;

.field public final c:Lg3/b;

.field public final d:Lu3/g;

.field public final e:Lv1/t;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/LinkedHashMap;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/concurrent/ConcurrentHashMap;

.field public final n:Ljava/util/concurrent/ConcurrentHashMap;

.field public final o:Ljava/util/Set;

.field public final p:Ljava/util/Set;

.field public final q:Ljava/util/concurrent/ConcurrentHashMap;

.field public final r:Ljava/lang/Object;

.field public final s:Ljava/lang/Object;

.field public t:Ly0/p;

.field public u:Ls3/g;

.field public v:Ls3/j;

.field public w:Ls3/i;

.field public x:Ls3/z;

.field public y:Ls3/x;

.field public z:Ls3/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll4/l;Lg3/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv1/t;

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Lv1/t;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ls3/t;->e:Lv1/t;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Ls3/t;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Ls3/t;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Ls3/t;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Ls3/t;->j:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Ls3/t;->k:Ljava/util/ArrayList;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Ls3/t;->l:Ljava/util/ArrayList;

    .line 62
    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Ls3/t;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Ls3/t;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Ls3/t;->o:Ljava/util/Set;

    .line 87
    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Ls3/t;->p:Ljava/util/Set;

    .line 98
    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Ls3/t;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    .line 106
    new-instance v0, Ljava/lang/Object;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Ls3/t;->r:Ljava/lang/Object;

    .line 112
    .line 113
    new-instance v0, Ljava/lang/Object;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Ls3/t;->s:Ljava/lang/Object;

    .line 119
    .line 120
    const/4 v0, -0x1

    .line 121
    iput v0, p0, Ls3/t;->E:I

    .line 122
    .line 123
    if-nez p1, :cond_0

    .line 124
    .line 125
    const/4 p1, 0x0

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :goto_0
    iput-object p1, p0, Ls3/t;->a:Landroid/content/Context;

    .line 132
    .line 133
    iput-object p2, p0, Ls3/t;->b:Ll4/l;

    .line 134
    .line 135
    iput-object p3, p0, Ls3/t;->c:Lg3/b;

    .line 136
    .line 137
    if-eqz p2, :cond_1

    .line 138
    .line 139
    iget-object p1, p2, Ll4/l;->f:Lu3/g;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_1
    new-instance p1, Lu3/g;

    .line 143
    .line 144
    invoke-direct {p1}, Lu3/g;-><init>()V

    .line 145
    .line 146
    .line 147
    :goto_1
    iput-object p1, p0, Ls3/t;->d:Lu3/g;

    .line 148
    .line 149
    return-void
.end method

.method public static a(Ljava/util/LinkedHashSet;Ls3/b;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object p1, p1, Ls3/b;->d:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method

.method public static b(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/CountDownLatch;J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x7d0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :try_start_5
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catchall_3
    :goto_1
    return-void

    :goto_2
    :try_start_6
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :try_start_7
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :catchall_5
    :goto_3
    throw p1
.end method

.method public static h(Ljava/lang/Thread;J)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public static m(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public static w(Ls3/b;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ls3/b;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static y(Ls3/q;)Lcom/zalexdev/stryker/custom/Device;
    .locals 8

    new-instance v0, Lcom/zalexdev/stryker/custom/Device;

    invoke-direct {v0}, Lcom/zalexdev/stryker/custom/Device;-><init>()V

    iget-object v1, p0, Ls3/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Device;->setIp(Ljava/lang/String;)V

    invoke-virtual {p0}, Ls3/q;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ls3/q;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Device;->setMac(Ljava/lang/String;)V

    iget-object v1, p0, Ls3/q;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    iget-object v1, p0, Ls3/q;->f:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Device;->setVendor(Ljava/lang/String;)V

    iget-object v1, p0, Ls3/q;->h:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_2

    :cond_2
    iget-object v1, p0, Ls3/q;->h:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Ls3/q;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v1, p0, Ls3/q;->g:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_3

    :cond_3
    const/16 v2, 0x2e

    .line 1
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2
    :cond_4
    :goto_3
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Device;->setSubname(Ljava/lang/String;)V

    invoke-static {p0}, Li5/a;->c1(Ls3/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Ls3/q;->k:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_4

    :cond_5
    iget-object v1, p0, Ls3/q;->k:Ljava/lang/String;

    :goto_4
    iget-object v4, p0, Ls3/q;->j:Ljava/lang/String;

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    iget-object v2, p0, Ls3/q;->j:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    const-string v4, "Router"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "Access point"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "Switch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_b

    :cond_7
    const-string v4, "Printer"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v1, 0x7f080194

    goto/16 :goto_c

    :cond_8
    const-string v4, "IP camera"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const v1, 0x7f080175

    goto/16 :goto_c

    :cond_9
    const-string v4, "NAS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "Server"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_a

    :cond_a
    const-string v4, "Smart device"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const v1, 0x7f0800e9

    goto/16 :goto_c

    :cond_b
    const-string v4, "Smart TV"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f0800c6

    if-nez v4, :cond_12

    const-string v4, "Media player"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "Speaker"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "Game console"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_7

    :cond_c
    const-string v4, "windows"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const v1, 0x7f0801e3

    goto/16 :goto_c

    :cond_d
    const-string v4, "ios"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "mac"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "apple"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "tvos"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "ipados"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "watchos"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_9

    :cond_e
    const-string v4, "android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const v6, 0x7f08011b

    if-eqz v4, :cond_10

    :cond_f
    :goto_6
    move v1, v6

    goto :goto_c

    :cond_10
    const-string v4, "Phone"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "Tablet"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "This device"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_6

    :cond_11
    const-string v1, "linux"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "unix"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "openwrt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_8

    :cond_12
    :goto_7
    move v1, v5

    goto :goto_c

    :cond_13
    :goto_8
    const v1, 0x7f080123

    goto :goto_c

    :cond_14
    :goto_9
    const v1, 0x7f080081

    goto :goto_c

    :cond_15
    :goto_a
    const v1, 0x7f0801b9

    goto :goto_c

    :cond_16
    :goto_b
    const v1, 0x7f0801a3

    .line 4
    :goto_c
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Device;->setImage(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ls3/q;->u:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Ls3/q;->u:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v2, Le0/b;

    const/16 v5, 0x8

    invoke-direct {v2, v5}, Le0/b;-><init>(I)V

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls3/n;

    new-instance v5, Lcom/zalexdev/stryker/custom/Port;

    iget v6, v4, Ls3/n;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Ls3/n;->b:Ljava/lang/String;

    iget-object v4, v4, Ls3/n;->c:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v4}, Lcom/zalexdev/stryker/custom/Port;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Device;->setPorts(Ljava/util/ArrayList;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Host "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ls3/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is up"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Detected by: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ls3/q;->t:Ljava/util/Set;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ls3/q;->d()Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "MAC Address: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ls3/q;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ls3/q;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v2, p0, Ls3/q;->f:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Ls3/q;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Vendor: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ls3/q;->f:Ljava/lang/String;

    .line 6
    invoke-static {v2, v4, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7
    :cond_19
    iget-object v2, p0, Ls3/q;->g:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Ls3/q;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Reverse DNS: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ls3/q;->g:Ljava/lang/String;

    .line 8
    invoke-static {v2, v4, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9
    :cond_1a
    iget-object v2, p0, Ls3/q;->h:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Ls3/q;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Name: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ls3/q;->h:Ljava/lang/String;

    .line 10
    invoke-static {v2, v4, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    :cond_1b
    iget-object v2, p0, Ls3/q;->i:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Ls3/q;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Model: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ls3/q;->i:Ljava/lang/String;

    .line 12
    invoke-static {v2, v4, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 13
    :cond_1c
    iget-object v2, p0, Ls3/q;->k:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Ls3/q;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ls3/q;->k:Ljava/lang/String;

    .line 14
    invoke-static {v2, v4, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    :cond_1d
    iget-object v2, p0, Ls3/q;->j:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Ls3/q;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Running: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ls3/q;->j:Ljava/lang/String;

    .line 16
    invoke-static {v2, v4, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 17
    :cond_1e
    iget v2, p0, Ls3/q;->m:I

    if-lez v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "TTL: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Ls3/q;->m:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (about "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ls3/q;->n:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hops)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v2, p0, Ls3/q;->o:Ls3/m;

    if-eqz v2, :cond_24

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NetBIOS: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Ls3/m;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Ls3/m;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, ""

    goto :goto_e

    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " workgroup="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Ls3/m;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Ls3/m;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, ""

    goto :goto_f

    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " user="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Ls3/m;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Ls3/m;->e:Z

    if-eqz v5, :cond_22

    const-string v5, " file-server"

    goto :goto_10

    :cond_22
    const-string v5, ""

    :goto_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Ls3/m;->f:Z

    if-eqz v2, :cond_23

    const-string v2, " domain-controller"

    goto :goto_11

    :cond_23
    const-string v2, ""

    .line 18
    :goto_11
    invoke-static {v4, v2, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 19
    :cond_24
    iget-object v2, p0, Ls3/q;->p:Ls3/k;

    if-eqz v2, :cond_28

    iget-object v4, v2, Ls3/k;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bonjour: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Ls3/k;->a:Ljava/lang/String;

    .line 20
    invoke-static {v4, v5, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 21
    :cond_25
    iget-object v4, v2, Ls3/k;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bonjour model: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Ls3/k;->b:Ljava/lang/String;

    .line 22
    invoke-static {v4, v5, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 23
    :cond_26
    iget-object v4, v2, Ls3/k;->c:Ljava/util/Set;

    monitor-enter v4

    :try_start_1
    iget-object v2, v2, Ls3/k;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_0
    move-exception p0

    goto :goto_13

    :cond_27
    monitor-exit v4

    goto :goto_14

    :goto_13
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_28
    :goto_14
    iget-object v2, p0, Ls3/q;->q:Ls3/p;

    if-eqz v2, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPnP: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Ls3/p;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Ls3/p;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Ls3/p;->d:Ljava/lang/String;

    .line 24
    invoke-static {v4, v5, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 25
    iget-object v4, v2, Ls3/p;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPnP type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Ls3/p;->c:Ljava/lang/String;

    .line 26
    invoke-static {v4, v5, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    :cond_29
    iget-object v4, v2, Ls3/p;->h:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPnP serial: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Ls3/p;->h:Ljava/lang/String;

    .line 28
    invoke-static {v4, v5, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 29
    :cond_2a
    iget-object v4, v2, Ls3/p;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPnP location: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Ls3/p;->a:Ljava/lang/String;

    .line 30
    invoke-static {v4, v2, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 31
    :cond_2b
    iget-object v2, p0, Ls3/q;->r:Ls3/o;

    if-eqz v2, :cond_2e

    iget-object v4, v2, Ls3/o;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SNMP sysDescr: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Ls3/o;->a:Ljava/lang/String;

    .line 32
    invoke-static {v4, v5, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    :cond_2c
    iget-object v4, v2, Ls3/o;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SNMP sysName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Ls3/o;->d:Ljava/lang/String;

    .line 34
    invoke-static {v4, v5, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 35
    :cond_2d
    iget-object v4, v2, Ls3/o;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SNMP sysLocation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Ls3/o;->e:Ljava/lang/String;

    .line 36
    invoke-static {v4, v2, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    :cond_2e
    iget-object v2, p0, Ls3/q;->s:Ls3/l;

    if-eqz v2, :cond_2f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cast: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Ls3/l;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Ls3/l;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Ls3/l;->d:Ljava/lang/String;

    .line 38
    invoke-static {v4, v2, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    :cond_2f
    iget-object v4, p0, Ls3/q;->u:Ljava/util/List;

    monitor-enter v4

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Ls3/q;->u:Ljava/util/List;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance p0, Le0/b;

    const/16 v4, 0x9

    invoke-direct {p0, v4}, Le0/b;-><init>(I)V

    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls3/n;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Ls3/n;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/tcp open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Ls3/n;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Ls3/n;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_30

    const-string v2, ""

    goto :goto_16

    :cond_30
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Ls3/n;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    :goto_16
    invoke-static {v4, v2, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_15

    .line 41
    :cond_31
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/Device;->setNmapoutput(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/custom/Device;->setShim(Z)V

    return-object v0

    :catchall_1
    move-exception p0

    .line 42
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 43
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method


# virtual methods
.method public final c()V
    .locals 13

    .line 1
    iget-object v0, p0, Ls3/t;->t:Ly0/p;

    .line 2
    .line 3
    iget-object v0, v0, Ly0/p;->j:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lf/u0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lf/u0;->e()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Lf/u0;->a(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x2

    .line 42
    mul-int/2addr v0, v1

    .line 43
    iput v0, p0, Ls3/t;->B:I

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    mul-int/lit8 v0, v0, 0x10

    .line 50
    .line 51
    iput v0, p0, Ls3/t;->D:I

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    const-wide/32 v6, 0x9c40

    .line 58
    .line 59
    .line 60
    add-long/2addr v4, v6

    .line 61
    new-instance v0, Ljava/lang/Thread;

    .line 62
    .line 63
    new-instance v6, Lw2/h;

    .line 64
    .line 65
    const/16 v7, 0x12

    .line 66
    .line 67
    invoke-direct {v6, p0, v2, v7}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    const-string v7, "stryker-lan-tcp"

    .line 71
    .line 72
    invoke-direct {v0, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    move v8, v3

    .line 84
    :goto_1
    if-ge v8, v1, :cond_8

    .line 85
    .line 86
    iget-object v9, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-nez v9, :cond_8

    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v9

    .line 98
    cmp-long v9, v9, v4

    .line 99
    .line 100
    if-ltz v9, :cond_2

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v10, "Discovery round "

    .line 107
    .line 108
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v10, v8, 0x1

    .line 112
    .line 113
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v11, "/2"

    .line 117
    .line 118
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {p0, v9}, Ls3/t;->j(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    if-eqz v7, :cond_3

    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-nez v9, :cond_4

    .line 135
    .line 136
    :cond_3
    new-instance v7, Ljava/lang/Thread;

    .line 137
    .line 138
    new-instance v9, Ls3/r;

    .line 139
    .line 140
    invoke-direct {v9, p0, v6}, Ls3/r;-><init>(Ls3/t;I)V

    .line 141
    .line 142
    .line 143
    const-string v11, "stryker-lan-icmp-"

    .line 144
    .line 145
    invoke-static {v11, v8}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-direct {v7, v9, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 156
    .line 157
    .line 158
    :cond_4
    move v8, v3

    .line 159
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-ge v8, v9, :cond_7

    .line 164
    .line 165
    iget-object v9, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    .line 167
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-nez v9, :cond_7

    .line 172
    .line 173
    iget-object v9, p0, Ls3/t;->v:Ls3/j;

    .line 174
    .line 175
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    check-cast v11, Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v9, v11}, Ls3/j;->i(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget v9, p0, Ls3/t;->A:I

    .line 185
    .line 186
    add-int/2addr v9, v6

    .line 187
    iput v9, p0, Ls3/t;->A:I

    .line 188
    .line 189
    const-wide/16 v11, 0xa

    .line 190
    .line 191
    invoke-static {v11, v12}, Ls3/t;->m(J)V

    .line 192
    .line 193
    .line 194
    add-int/lit8 v8, v8, 0x1

    .line 195
    .line 196
    rem-int/lit16 v9, v8, 0x100

    .line 197
    .line 198
    if-nez v9, :cond_6

    .line 199
    .line 200
    const-wide/16 v11, 0x32

    .line 201
    .line 202
    invoke-static {v11, v12}, Ls3/t;->m(J)V

    .line 203
    .line 204
    .line 205
    :cond_6
    rem-int/lit16 v9, v8, 0x80

    .line 206
    .line 207
    if-nez v9, :cond_5

    .line 208
    .line 209
    invoke-virtual {p0}, Ls3/t;->k()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Ls3/t;->o()V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 216
    .line 217
    .line 218
    move-result-wide v11

    .line 219
    cmp-long v9, v11, v4

    .line 220
    .line 221
    if-ltz v9, :cond_5

    .line 222
    .line 223
    :cond_7
    const-wide/16 v8, 0x1f40

    .line 224
    .line 225
    invoke-static {v7, v8, v9}, Ls3/t;->h(Ljava/lang/Thread;J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Ls3/t;->k()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Ls3/t;->o()V

    .line 232
    .line 233
    .line 234
    move v8, v10

    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_8
    :goto_2
    const-wide/16 v1, 0x7d0

    .line 238
    .line 239
    if-eqz v7, :cond_9

    .line 240
    .line 241
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-eqz v3, :cond_9

    .line 246
    .line 247
    iget-object v3, p0, Ls3/t;->u:Ls3/g;

    .line 248
    .line 249
    invoke-static {v3}, Ls3/t;->w(Ls3/b;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v7, v1, v2}, Ls3/t;->h(Ljava/lang/Thread;J)V

    .line 253
    .line 254
    .line 255
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 256
    .line 257
    .line 258
    move-result-wide v6

    .line 259
    sub-long/2addr v4, v6

    .line 260
    cmp-long v3, v4, v1

    .line 261
    .line 262
    if-gez v3, :cond_a

    .line 263
    .line 264
    move-wide v4, v1

    .line 265
    :cond_a
    invoke-static {v0, v4, v5}, Ls3/t;->h(Ljava/lang/Thread;J)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_b

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 275
    .line 276
    .line 277
    invoke-static {v0, v1, v2}, Ls3/t;->h(Ljava/lang/Thread;J)V

    .line 278
    .line 279
    .line 280
    :cond_b
    invoke-virtual {p0}, Ls3/t;->k()V

    .line 281
    .line 282
    .line 283
    return-void
.end method

.method public final d(Ls3/q;)V
    .locals 9

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, "Found "

    .line 4
    .line 5
    invoke-static {p1}, Ls3/t;->y(Ls3/q;)Lcom/zalexdev/stryker/custom/Device;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, "|"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getVendor()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getOs()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->portsArrayToString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Device;->getImage()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget-object v4, p0, Ls3/t;->r:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v4

    .line 90
    :try_start_0
    iget-object v5, p0, Ls3/t;->l:Ljava/util/ArrayList;

    .line 91
    .line 92
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    iget-object v6, p0, Ls3/t;->k:Ljava/util/ArrayList;

    .line 94
    .line 95
    iget-object v7, p1, Ls3/q;->a:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-gez v6, :cond_0

    .line 102
    .line 103
    iget-object v6, p0, Ls3/t;->k:Ljava/util/ArrayList;

    .line 104
    .line 105
    iget-object v7, p1, Ls3/q;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iget-object v6, p0, Ls3/t;->l:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iget-object v6, p0, Ls3/t;->l:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    const/4 v7, 0x1

    .line 122
    sub-int/2addr v6, v7

    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    goto/16 :goto_4

    .line 126
    .line 127
    :cond_0
    iget-object v7, p0, Ls3/t;->l:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-lt v6, v7, :cond_1

    .line 134
    .line 135
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    return-void

    .line 138
    :catchall_1
    move-exception p1

    .line 139
    goto/16 :goto_5

    .line 140
    .line 141
    :cond_1
    :try_start_3
    iget-object v7, p0, Ls3/t;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    .line 143
    iget-object v8, p1, Ls3/q;->a:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_2

    .line 154
    .line 155
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 157
    return-void

    .line 158
    :cond_2
    :try_start_5
    iget-object v7, p0, Ls3/t;->l:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v7, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const/4 v7, 0x0

    .line 164
    :goto_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    :try_start_6
    iget-object v5, p0, Ls3/t;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    .line 167
    iget-object v8, p1, Ls3/q;->a:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v5, v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    if-eqz v7, :cond_4

    .line 173
    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p1, Ls3/q;->a:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, " "

    .line 185
    .line 186
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-static {p1}, Li5/a;->c1(Ls3/q;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ls3/q;->d()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_3

    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p1, Ls3/q;->d:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    goto :goto_1

    .line 217
    :cond_3
    const-string v0, ""

    .line 218
    .line 219
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v0, " via "

    .line 223
    .line 224
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object p1, p1, Ls3/q;->t:Ljava/util/Set;

    .line 228
    .line 229
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p0, p1}, Ls3/t;->j(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_4
    iget-object p1, p0, Ls3/t;->c:Lg3/b;

    .line 240
    .line 241
    if-eqz p1, :cond_9

    .line 242
    .line 243
    invoke-virtual {p0}, Ls3/t;->i()Z

    .line 244
    .line 245
    .line 246
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 247
    if-nez v0, :cond_5

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_5
    if-eqz v7, :cond_7

    .line 251
    .line 252
    :try_start_7
    iget-object v0, p1, Lg3/b;->b:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v0, Lr3/v;

    .line 255
    .line 256
    iget-boolean v0, v0, Lr3/v;->g:Z

    .line 257
    .line 258
    if-eqz v0, :cond_6

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_6
    sget-object v0, Lr3/v;->j:Landroid/app/Activity;

    .line 262
    .line 263
    new-instance v1, Lw2/h;

    .line 264
    .line 265
    const/16 v3, 0x15

    .line 266
    .line 267
    invoke-direct {v1, p1, v2, v3}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_7
    iget-object v0, p1, Lg3/b;->b:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v0, Lr3/v;

    .line 277
    .line 278
    iget-boolean v0, v0, Lr3/v;->g:Z

    .line 279
    .line 280
    if-eqz v0, :cond_8

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_8
    sget-object v0, Lr3/v;->j:Landroid/app/Activity;

    .line 284
    .line 285
    new-instance v1, Lcom/stryker/terminal/component/session/b;

    .line 286
    .line 287
    const/4 v3, 0x4

    .line 288
    invoke-direct {v1, p1, v2, v6, v3}, Lcom/stryker/terminal/component/session/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 292
    .line 293
    .line 294
    :catchall_2
    :goto_2
    :try_start_8
    monitor-exit v4

    .line 295
    return-void

    .line 296
    :cond_9
    :goto_3
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 297
    return-void

    .line 298
    :goto_4
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 299
    :try_start_a
    throw p1

    .line 300
    :goto_5
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 301
    throw p1
.end method

.method public final e(Ls3/q;)V
    .locals 6

    .line 1
    const-string v0, "netbios"

    .line 2
    .line 3
    const-string v1, "arp"

    .line 4
    .line 5
    const-string v2, "self"

    .line 6
    .line 7
    :try_start_0
    iget-object v3, p0, Ls3/t;->t:Ly0/p;

    .line 8
    .line 9
    iget-object v4, p1, Ls3/q;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, v3, Ly0/p;->a:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    move v3, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iput-boolean v5, p1, Ls3/q;->b:Z

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ls3/q;->b(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Ls3/t;->t:Ly0/p;

    .line 33
    .line 34
    iget-object v3, v3, Ly0/p;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v3, v2}, Ls3/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v2, p0, Ls3/t;->t:Ly0/p;

    .line 42
    .line 43
    iget-object v2, v2, Ly0/p;->d:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v3, v2

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p1, Ls3/q;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iput-boolean v5, p1, Ls3/q;->c:Z

    .line 61
    .line 62
    const-string v2, "gateway"

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ls3/q;->b(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v2, p0, Ls3/t;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    iget-object v3, p1, Ls3/q;->a:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1, v2, v1}, Ls3/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ls3/q;->b(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v1, p0, Ls3/t;->u:Ls3/g;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-object v1, v1, Ls3/b;->d:Ljava/util/Set;

    .line 90
    .line 91
    iget-object v2, p1, Ls3/q;->a:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    const-string v1, "icmp"

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ls3/q;->b(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v1, p0, Ls3/t;->o:Ljava/util/Set;

    .line 105
    .line 106
    iget-object v2, p1, Ls3/q;->a:Ljava/lang/String;

    .line 107
    .line 108
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    const-string v1, "tcp"

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Ls3/q;->b(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-object v1, p0, Ls3/t;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    .line 121
    iget-object v2, p1, Ls3/q;->a:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/util/Set;

    .line 128
    .line 129
    if-eqz v1, :cond_7

    .line 130
    .line 131
    new-instance v2, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_7

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    const-string v4, "unknown"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    :try_start_1
    sget-object v5, Ls3/f;->b:Ljava/util/Map;

    .line 163
    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .line 174
    if-nez v2, :cond_6

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    move-object v4, v2

    .line 178
    :catchall_0
    :goto_2
    :try_start_2
    invoke-virtual {p1, v3, v4}, Ls3/q;->a(ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_7
    iget-object v1, p0, Ls3/t;->v:Ls3/j;

    .line 183
    .line 184
    if-eqz v1, :cond_8

    .line 185
    .line 186
    iget-object v1, v1, Ls3/j;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 187
    .line 188
    iget-object v2, p1, Ls3/q;->a:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ls3/m;

    .line 195
    .line 196
    if-eqz v1, :cond_8

    .line 197
    .line 198
    iput-object v1, p1, Ls3/q;->o:Ls3/m;

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ls3/q;->b(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v2, v1, Ls3/m;->d:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p1, v2, v0}, Ls3/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p1, Ls3/q;->h:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_8

    .line 215
    .line 216
    iget-object v0, v1, Ls3/m;->a:Ljava/lang/String;

    .line 217
    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    iput-object v0, p1, Ls3/q;->h:Ljava/lang/String;

    .line 221
    .line 222
    :cond_8
    iget-object v0, p0, Ls3/t;->w:Ls3/i;

    .line 223
    .line 224
    if-eqz v0, :cond_9

    .line 225
    .line 226
    iget-object v0, v0, Ls3/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 227
    .line 228
    iget-object v1, p1, Ls3/q;->a:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Ls3/k;

    .line 235
    .line 236
    if-eqz v0, :cond_9

    .line 237
    .line 238
    iput-object v0, p1, Ls3/q;->p:Ls3/k;

    .line 239
    .line 240
    const-string v0, "mdns"

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Ls3/q;->b(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :cond_9
    iget-object v0, p0, Ls3/t;->x:Ls3/z;

    .line 246
    .line 247
    if-eqz v0, :cond_a

    .line 248
    .line 249
    iget-object v0, v0, Ls3/z;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 250
    .line 251
    iget-object v1, p1, Ls3/q;->a:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Ls3/p;

    .line 258
    .line 259
    if-eqz v0, :cond_a

    .line 260
    .line 261
    iput-object v0, p1, Ls3/q;->q:Ls3/p;

    .line 262
    .line 263
    const-string v0, "ssdp"

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Ls3/q;->b(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :cond_a
    iget-object v0, p0, Ls3/t;->y:Ls3/x;

    .line 269
    .line 270
    if-eqz v0, :cond_b

    .line 271
    .line 272
    iget-object v0, v0, Ls3/x;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 273
    .line 274
    iget-object v1, p1, Ls3/q;->a:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Ls3/o;

    .line 281
    .line 282
    if-eqz v0, :cond_b

    .line 283
    .line 284
    iput-object v0, p1, Ls3/q;->r:Ls3/o;

    .line 285
    .line 286
    const-string v0, "snmp"

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Ls3/q;->b(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :cond_b
    iget-object v0, p0, Ls3/t;->z:Ls3/u;

    .line 292
    .line 293
    if-eqz v0, :cond_c

    .line 294
    .line 295
    iget-object v0, v0, Ls3/u;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 296
    .line 297
    iget-object v1, p1, Ls3/q;->a:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    check-cast v0, Ljava/lang/String;

    .line 304
    .line 305
    if-eqz v0, :cond_c

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-nez v1, :cond_c

    .line 312
    .line 313
    iput-object v0, p1, Ls3/q;->g:Ljava/lang/String;

    .line 314
    .line 315
    const-string v0, "rdns"

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Ls3/q;->b(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :cond_c
    iget-boolean v0, p1, Ls3/q;->c:Z

    .line 321
    .line 322
    if-eqz v0, :cond_d

    .line 323
    .line 324
    invoke-virtual {p1}, Ls3/q;->d()Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_d

    .line 329
    .line 330
    iget-object v0, p0, Ls3/t;->t:Ly0/p;

    .line 331
    .line 332
    iget-object v0, v0, Ly0/p;->h:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v0, Ljava/lang/String;

    .line 335
    .line 336
    const-string v1, "bssid"

    .line 337
    .line 338
    invoke-virtual {p1, v0, v1}, Ls3/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :cond_d
    iget-object v0, p0, Ls3/t;->b:Ll4/l;

    .line 342
    .line 343
    invoke-static {v0, p1}, Li5/a;->r(Ll4/l;Ls3/q;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 344
    .line 345
    .line 346
    :catch_0
    return-void
.end method

.method public final f()V
    .locals 15

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x9c40

    .line 6
    .line 7
    .line 8
    add-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Ls3/t;->F:J

    .line 10
    .line 11
    const/16 v0, 0x5c

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ls3/t;->p(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ls3/t;->q()V

    .line 17
    .line 18
    .line 19
    const-string v0, "cast"

    .line 20
    .line 21
    iget-object v1, p0, Ls3/t;->w:Ls3/i;

    .line 22
    .line 23
    const-wide/16 v2, 0x7530

    .line 24
    .line 25
    const-wide/16 v4, 0x2ee0

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    if-eqz v1, :cond_9

    .line 30
    .line 31
    iget-object v1, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0, v4, v5, v2, v3}, Ls3/t;->t(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    cmp-long v1, v8, v6

    .line 46
    .line 47
    if-gtz v1, :cond_1

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v8, p0, Ls3/t;->w:Ls3/i;

    .line 57
    .line 58
    invoke-virtual {v8}, Ls3/i;->q()Ljava/util/LinkedHashSet;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_3

    .line 71
    .line 72
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    check-cast v9, Ljava/lang/String;

    .line 77
    .line 78
    iget-object v10, p0, Ls3/t;->t:Ly0/p;

    .line 79
    .line 80
    invoke-virtual {v10, v9}, Ly0/p;->c(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_2

    .line 85
    .line 86
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p0}, Ls3/t;->s()Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_6

    .line 103
    .line 104
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Ls3/q;

    .line 109
    .line 110
    const/16 v10, 0x1f48

    .line 111
    .line 112
    invoke-virtual {v9, v10}, Ls3/q;->e(I)Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-nez v10, :cond_5

    .line 117
    .line 118
    const/16 v10, 0x1f49

    .line 119
    .line 120
    invoke-virtual {v9, v10}, Ls3/q;->e(I)Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-eqz v10, :cond_4

    .line 125
    .line 126
    :cond_5
    iget-object v9, v9, Ls3/q;->a:Ljava/lang/String;

    .line 127
    .line 128
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-eqz v8, :cond_7

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    invoke-static {v1}, Li5/a;->x0(Ljava/util/LinkedHashSet;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_9

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    check-cast v8, Ljava/util/Map$Entry;

    .line 162
    .line 163
    iget-object v9, p0, Ls3/t;->t:Ly0/p;

    .line 164
    .line 165
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    check-cast v10, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v9, v10}, Ly0/p;->c(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    if-nez v9, :cond_8

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    check-cast v9, Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p0, v9}, Ls3/t;->l(Ljava/lang/String;)Ls3/q;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    check-cast v10, Ls3/l;

    .line 193
    .line 194
    iput-object v10, v9, Ls3/q;->s:Ls3/l;

    .line 195
    .line 196
    invoke-virtual {v9, v0}, Ls3/q;->b(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    check-cast v8, Ls3/l;

    .line 204
    .line 205
    iget-object v8, v8, Ls3/l;->c:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v9, v8, v0}, Ls3/q;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :catch_0
    :cond_9
    :goto_3
    const/16 v0, 0x5e

    .line 212
    .line 213
    invoke-virtual {p0, v0}, Ls3/t;->p(I)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_a

    .line 223
    .line 224
    goto/16 :goto_6

    .line 225
    .line 226
    :cond_a
    const-wide/16 v0, 0x55f0

    .line 227
    .line 228
    invoke-virtual {p0, v4, v5, v0, v1}, Ls3/t;->t(JJ)J

    .line 229
    .line 230
    .line 231
    move-result-wide v0

    .line 232
    cmp-long v8, v0, v6

    .line 233
    .line 234
    if-gtz v8, :cond_b

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Ls3/t;->s()Ljava/util/ArrayList;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    :cond_c
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    if-eqz v10, :cond_d

    .line 255
    .line 256
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    check-cast v10, Ls3/q;

    .line 261
    .line 262
    iget v11, v10, Ls3/q;->m:I

    .line 263
    .line 264
    if-gtz v11, :cond_c

    .line 265
    .line 266
    iget-wide v11, v10, Ls3/q;->l:D

    .line 267
    .line 268
    const-wide v13, 0x3fd3333333333333L    # 0.3

    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    cmpg-double v11, v11, v13

    .line 274
    .line 275
    if-gez v11, :cond_c

    .line 276
    .line 277
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    if-eqz v9, :cond_e

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_e
    new-instance v9, Lj/b;

    .line 289
    .line 290
    const-string v10, "stryker-ttl"

    .line 291
    .line 292
    invoke-direct {v9, v10}, Lj/b;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const/4 v10, 0x6

    .line 296
    invoke-static {v10, v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    .line 301
    .line 302
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 303
    .line 304
    .line 305
    move-result v11

    .line 306
    invoke-direct {v10, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v11

    .line 317
    if-eqz v11, :cond_f

    .line 318
    .line 319
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v11

    .line 323
    check-cast v11, Ls3/q;

    .line 324
    .line 325
    new-instance v12, Ls3/s;

    .line 326
    .line 327
    const/4 v13, 0x0

    .line 328
    invoke-direct {v12, v13, v11, p0, v10}, Ls3/s;-><init>(ILs3/q;Ls3/t;Ljava/util/concurrent/CountDownLatch;)V

    .line 329
    .line 330
    .line 331
    invoke-interface {v9, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 332
    .line 333
    .line 334
    goto :goto_5

    .line 335
    :cond_f
    invoke-static {v9, v10, v0, v1}, Ls3/t;->b(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/CountDownLatch;J)V

    .line 336
    .line 337
    .line 338
    :goto_6
    const/16 v0, 0x60

    .line 339
    .line 340
    invoke-virtual {p0, v0}, Ls3/t;->p(I)V

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Ls3/t;->b:Ll4/l;

    .line 344
    .line 345
    const/16 v1, 0x8

    .line 346
    .line 347
    const/4 v8, 0x1

    .line 348
    if-eqz v0, :cond_18

    .line 349
    .line 350
    iget-object v9, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 351
    .line 352
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 353
    .line 354
    .line 355
    move-result v9

    .line 356
    if-nez v9, :cond_18

    .line 357
    .line 358
    const-string v9, "autoScan"

    .line 359
    .line 360
    invoke-virtual {v0, v9}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 361
    .line 362
    .line 363
    move-result v9

    .line 364
    if-nez v9, :cond_10

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_10
    invoke-virtual {p0, v2, v3, v4, v5}, Ls3/t;->t(JJ)J

    .line 368
    .line 369
    .line 370
    move-result-wide v2

    .line 371
    cmp-long v9, v2, v6

    .line 372
    .line 373
    if-gtz v9, :cond_11

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_11
    invoke-virtual {p0}, Ls3/t;->s()Ljava/util/ArrayList;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 381
    .line 382
    .line 383
    move-result v10

    .line 384
    if-eqz v10, :cond_12

    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_12
    iget-object v0, v0, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 388
    .line 389
    const-string v10, "max_par"

    .line 390
    .line 391
    const/4 v11, 0x3

    .line 392
    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-ge v0, v8, :cond_13

    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_13
    move v11, v0

    .line 400
    :goto_7
    if-le v11, v1, :cond_14

    .line 401
    .line 402
    move v11, v1

    .line 403
    :cond_14
    const/16 v0, 0x80

    .line 404
    .line 405
    div-int/2addr v0, v11

    .line 406
    const/16 v10, 0x20

    .line 407
    .line 408
    if-ge v0, v10, :cond_15

    .line 409
    .line 410
    move v0, v10

    .line 411
    :cond_15
    if-ge v11, v8, :cond_16

    .line 412
    .line 413
    move v11, v8

    .line 414
    :cond_16
    new-instance v10, Lj/b;

    .line 415
    .line 416
    const-string v12, "stryker-deep"

    .line 417
    .line 418
    invoke-direct {v10, v12}, Lj/b;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-static {v11, v10}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 422
    .line 423
    .line 424
    move-result-object v10

    .line 425
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    .line 426
    .line 427
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 428
    .line 429
    .line 430
    move-result v12

    .line 431
    invoke-direct {v11, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v12

    .line 442
    if-eqz v12, :cond_17

    .line 443
    .line 444
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v12

    .line 448
    check-cast v12, Ls3/q;

    .line 449
    .line 450
    new-instance v13, Lcom/stryker/terminal/ui/other/l;

    .line 451
    .line 452
    invoke-direct {v13, v0, v12, p0, v11}, Lcom/stryker/terminal/ui/other/l;-><init>(ILs3/q;Ls3/t;Ljava/util/concurrent/CountDownLatch;)V

    .line 453
    .line 454
    .line 455
    invoke-interface {v10, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 456
    .line 457
    .line 458
    goto :goto_8

    .line 459
    :cond_17
    invoke-static {v10, v11, v2, v3}, Ls3/t;->b(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/CountDownLatch;J)V

    .line 460
    .line 461
    .line 462
    :cond_18
    :goto_9
    const/16 v0, 0x62

    .line 463
    .line 464
    invoke-virtual {p0, v0}, Ls3/t;->p(I)V

    .line 465
    .line 466
    .line 467
    iget-object v0, p0, Ls3/t;->b:Ll4/l;

    .line 468
    .line 469
    const-wide/16 v2, 0x1770

    .line 470
    .line 471
    if-eqz v0, :cond_19

    .line 472
    .line 473
    const-string v9, "autoBanner"

    .line 474
    .line 475
    iget-object v0, v0, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 476
    .line 477
    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-nez v0, :cond_19

    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_19
    iget-object v0, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-eqz v0, :cond_1a

    .line 491
    .line 492
    goto :goto_b

    .line 493
    :cond_1a
    const-wide/16 v9, 0x3a98

    .line 494
    .line 495
    invoke-virtual {p0, v9, v10, v2, v3}, Ls3/t;->t(JJ)J

    .line 496
    .line 497
    .line 498
    move-result-wide v9

    .line 499
    cmp-long v0, v9, v6

    .line 500
    .line 501
    if-gtz v0, :cond_1b

    .line 502
    .line 503
    goto :goto_b

    .line 504
    :cond_1b
    invoke-virtual {p0}, Ls3/t;->s()Ljava/util/ArrayList;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 509
    .line 510
    .line 511
    move-result v11

    .line 512
    if-eqz v11, :cond_1c

    .line 513
    .line 514
    goto :goto_b

    .line 515
    :cond_1c
    new-instance v11, Lj/b;

    .line 516
    .line 517
    const-string v12, "stryker-banner"

    .line 518
    .line 519
    invoke-direct {v11, v12}, Lj/b;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-static {v1, v11}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    .line 527
    .line 528
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 529
    .line 530
    .line 531
    move-result v12

    .line 532
    invoke-direct {v11, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 540
    .line 541
    .line 542
    move-result v12

    .line 543
    if-eqz v12, :cond_1d

    .line 544
    .line 545
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v12

    .line 549
    check-cast v12, Ls3/q;

    .line 550
    .line 551
    new-instance v13, Ls3/s;

    .line 552
    .line 553
    invoke-direct {v13, v8, v12, p0, v11}, Ls3/s;-><init>(ILs3/q;Ls3/t;Ljava/util/concurrent/CountDownLatch;)V

    .line 554
    .line 555
    .line 556
    invoke-interface {v1, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 557
    .line 558
    .line 559
    goto :goto_a

    .line 560
    :cond_1d
    invoke-static {v1, v11, v9, v10}, Ls3/t;->b(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/CountDownLatch;J)V

    .line 561
    .line 562
    .line 563
    :goto_b
    iget-object v0, p0, Ls3/t;->b:Ll4/l;

    .line 564
    .line 565
    if-eqz v0, :cond_22

    .line 566
    .line 567
    iget-object v1, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 568
    .line 569
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 570
    .line 571
    .line 572
    move-result v8

    .line 573
    if-eqz v8, :cond_1e

    .line 574
    .line 575
    goto :goto_d

    .line 576
    :cond_1e
    const-wide/16 v8, 0xbb8

    .line 577
    .line 578
    invoke-virtual {p0, v4, v5, v8, v9}, Ls3/t;->t(JJ)J

    .line 579
    .line 580
    .line 581
    move-result-wide v4

    .line 582
    cmp-long v8, v4, v6

    .line 583
    .line 584
    if-lez v8, :cond_22

    .line 585
    .line 586
    invoke-static {v0}, Ls3/e;->b(Ll4/l;)Z

    .line 587
    .line 588
    .line 589
    move-result v8

    .line 590
    if-nez v8, :cond_1f

    .line 591
    .line 592
    goto :goto_d

    .line 593
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 594
    .line 595
    .line 596
    move-result-wide v8

    .line 597
    add-long/2addr v8, v4

    .line 598
    const-string v4, "Guest tooling available, enriching hosts with nmap -sV"

    .line 599
    .line 600
    invoke-virtual {p0, v4}, Ls3/t;->j(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {p0}, Ls3/t;->s()Ljava/util/ArrayList;

    .line 604
    .line 605
    .line 606
    move-result-object v4

    .line 607
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 608
    .line 609
    .line 610
    move-result-object v4

    .line 611
    :catchall_0
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    if-eqz v5, :cond_22

    .line 616
    .line 617
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    check-cast v5, Ls3/q;

    .line 622
    .line 623
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 624
    .line 625
    .line 626
    move-result v10

    .line 627
    if-nez v10, :cond_22

    .line 628
    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 630
    .line 631
    .line 632
    move-result-wide v10

    .line 633
    cmp-long v10, v10, v8

    .line 634
    .line 635
    if-ltz v10, :cond_20

    .line 636
    .line 637
    goto :goto_d

    .line 638
    :cond_20
    iget-object v10, v5, Ls3/q;->u:Ljava/util/List;

    .line 639
    .line 640
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 641
    .line 642
    .line 643
    move-result v10

    .line 644
    if-eqz v10, :cond_21

    .line 645
    .line 646
    goto :goto_c

    .line 647
    :cond_21
    :try_start_1
    invoke-static {v0, v5}, Ls3/e;->c(Ll4/l;Ls3/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    .line 649
    .line 650
    goto :goto_c

    .line 651
    :cond_22
    :goto_d
    invoke-virtual {p0, v2, v3, v6, v7}, Ls3/t;->t(JJ)J

    .line 652
    .line 653
    .line 654
    move-result-wide v0

    .line 655
    iget-object v2, p0, Ls3/t;->z:Ls3/u;

    .line 656
    .line 657
    if-eqz v2, :cond_25

    .line 658
    .line 659
    cmp-long v2, v0, v6

    .line 660
    .line 661
    if-gtz v2, :cond_23

    .line 662
    .line 663
    goto :goto_f

    .line 664
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 665
    .line 666
    .line 667
    move-result-wide v2

    .line 668
    add-long/2addr v2, v0

    .line 669
    :goto_e
    iget-object v0, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 670
    .line 671
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    if-nez v0, :cond_25

    .line 676
    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 678
    .line 679
    .line 680
    move-result-wide v0

    .line 681
    cmp-long v0, v0, v2

    .line 682
    .line 683
    if-gez v0, :cond_25

    .line 684
    .line 685
    iget-object v0, p0, Ls3/t;->z:Ls3/u;

    .line 686
    .line 687
    iget-object v0, v0, Ls3/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 688
    .line 689
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-gtz v0, :cond_24

    .line 694
    .line 695
    goto :goto_f

    .line 696
    :cond_24
    const-wide/16 v0, 0xfa

    .line 697
    .line 698
    invoke-static {v0, v1}, Ls3/t;->m(J)V

    .line 699
    .line 700
    .line 701
    goto :goto_e

    .line 702
    :cond_25
    :goto_f
    invoke-virtual {p0}, Ls3/t;->k()V

    .line 703
    .line 704
    .line 705
    const/16 v0, 0x64

    .line 706
    .line 707
    invoke-virtual {p0, v0}, Ls3/t;->p(I)V

    .line 708
    .line 709
    .line 710
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Ls3/t;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Ls3/t;->l:Ljava/util/ArrayList;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v2, p0, Ls3/t;->l:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 23
    iget-object v2, p0, Ls3/t;->s:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    const/16 v0, 0x6e

    .line 27
    .line 28
    :try_start_1
    iput v0, p0, Ls3/t;->E:I

    .line 29
    .line 30
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    iget-object v2, p0, Ls3/t;->c:Lg3/b;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v2, v0}, Lg3/b;->j(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    :catchall_0
    :try_start_3
    iget-object v0, v2, Lg3/b;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lr3/v;

    .line 41
    .line 42
    iget-boolean v0, v0, Lr3/v;->g:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, v2, Lg3/b;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lr3/v;

    .line 50
    .line 51
    iput-object v1, v0, Lr3/v;->h:Ljava/util/ArrayList;

    .line 52
    .line 53
    sget-object v0, Lr3/v;->j:Landroid/app/Activity;

    .line 54
    .line 55
    new-instance v3, Landroidx/activity/b;

    .line 56
    .line 57
    const/16 v4, 0x1a

    .line 58
    .line 59
    invoke-direct {v3, v2, v4}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    .line 64
    .line 65
    :catchall_1
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "Scan finished, "

    .line 68
    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " hosts"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Ls3/t;->j(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catchall_2
    move-exception v0

    .line 93
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 94
    throw v0

    .line 95
    :catchall_3
    move-exception v1

    .line 96
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 97
    throw v1
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ls3/t;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls3/t;->d:Lu3/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lu3/g;->e(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ls3/t;->u:Ls3/g;

    .line 7
    .line 8
    invoke-static {v0, v1}, Ls3/t;->a(Ljava/util/LinkedHashSet;Ls3/b;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Ls3/t;->v:Ls3/j;

    .line 12
    .line 13
    invoke-static {v0, v1}, Ls3/t;->a(Ljava/util/LinkedHashSet;Ls3/b;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Ls3/t;->w:Ls3/i;

    .line 17
    .line 18
    invoke-static {v0, v1}, Ls3/t;->a(Ljava/util/LinkedHashSet;Ls3/b;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Ls3/t;->x:Ls3/z;

    .line 22
    .line 23
    invoke-static {v0, v1}, Ls3/t;->a(Ljava/util/LinkedHashSet;Ls3/b;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Ls3/t;->y:Ls3/x;

    .line 27
    .line 28
    invoke-static {v0, v1}, Ls3/t;->a(Ljava/util/LinkedHashSet;Ls3/b;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Ls3/t;->o:Ljava/util/Set;

    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Ls3/t;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p0, Ls3/t;->t:Ly0/p;

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ly0/p;->c(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Ls3/t;->j:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v2, p0, Ls3/t;->j:Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Le0/b;

    .line 89
    .line 90
    const/4 v2, 0x7

    .line 91
    invoke-direct {v0, v2}, Le0/b;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_a

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/lang/String;

    .line 112
    .line 113
    iget-object v2, p0, Ls3/t;->t:Ly0/p;

    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ly0/p;->c(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_2

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {p0, v1}, Ls3/t;->l(Ljava/lang/String;)Ls3/q;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {p0, v2}, Ls3/t;->e(Ls3/q;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Ls3/t;->w:Ls3/i;

    .line 130
    .line 131
    if-eqz v3, :cond_7

    .line 132
    .line 133
    iget-object v3, v2, Ls3/q;->h:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_7

    .line 140
    .line 141
    iget-object v3, v2, Ls3/q;->g:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    iget-object v3, p0, Ls3/t;->w:Ls3/i;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    :try_start_1
    invoke-static {v1}, Lf/u0;->c(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_3

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_3
    invoke-static {v1}, Li5/a;->N0(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {v4}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 172
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-nez v5, :cond_7

    .line 182
    .line 183
    const-string v5, ".in-addr.arpa"

    .line 184
    .line 185
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-nez v5, :cond_4

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_4
    iget-object v5, v3, Ls3/i;->g:Ljava/util/LinkedHashMap;

    .line 193
    .line 194
    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :try_start_2
    iget-object v6, v3, Ls3/i;->g:Ljava/util/LinkedHashMap;

    .line 196
    .line 197
    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_5

    .line 202
    .line 203
    :goto_2
    monitor-exit v5

    .line 204
    goto :goto_4

    .line 205
    :catchall_0
    move-exception v4

    .line 206
    goto :goto_3

    .line 207
    :cond_5
    iget-object v6, v3, Ls3/i;->g:Ljava/util/LinkedHashMap;

    .line 208
    .line 209
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    const/16 v7, 0x100

    .line 214
    .line 215
    if-lt v6, v7, :cond_6

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_6
    iget-object v6, v3, Ls3/i;->g:Ljava/util/LinkedHashMap;

    .line 219
    .line 220
    const/4 v7, 0x0

    .line 221
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :goto_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 231
    :catch_0
    move-exception v4

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v6, "reverse queue failed: "

    .line 235
    .line 236
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v3, v4}, Ls3/b;->g(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_7
    :goto_4
    iget-object v3, p0, Ls3/t;->z:Ls3/u;

    .line 250
    .line 251
    if-eqz v3, :cond_8

    .line 252
    .line 253
    invoke-virtual {v3, v1}, Ls3/u;->h(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_8
    iget-object v3, p0, Ls3/t;->y:Ls3/x;

    .line 257
    .line 258
    if-eqz v3, :cond_9

    .line 259
    .line 260
    iget-object v3, v2, Ls3/q;->r:Ls3/o;

    .line 261
    .line 262
    if-nez v3, :cond_9

    .line 263
    .line 264
    iget-object v3, p0, Ls3/t;->p:Ljava/util/Set;

    .line 265
    .line 266
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_9

    .line 271
    .line 272
    iget-object v3, p0, Ls3/t;->y:Ls3/x;

    .line 273
    .line 274
    invoke-virtual {v3, v1}, Ls3/x;->r(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :cond_9
    invoke-virtual {p0, v2}, Ls3/t;->d(Ls3/q;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :cond_a
    return-void

    .line 283
    :catchall_1
    move-exception v0

    .line 284
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 285
    throw v0
.end method

.method public final l(Ljava/lang/String;)Ls3/q;
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/t;->j:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ls3/t;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/q;

    if-nez v1, :cond_0

    new-instance v1, Ls3/q;

    invoke-direct {v1, p1}, Ls3/q;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ls3/t;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/t;->b:Ll4/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Ls3/t;->l:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ls3/t;->l:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ls3/t;->b:Ll4/l;

    invoke-virtual {v0, v1}, Ll4/l;->k0(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 8

    .line 1
    iget v0, p0, Ls3/t;->B:I

    const-wide/16 v1, 0x2d

    const/4 v3, 0x0

    if-gtz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget v0, p0, Ls3/t;->A:I

    int-to-long v4, v0

    mul-long/2addr v4, v1

    iget v0, p0, Ls3/t;->B:I

    int-to-long v6, v0

    div-long/2addr v4, v6

    long-to-int v0, v4

    :goto_0
    iget v4, p0, Ls3/t;->D:I

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Ls3/t;->C:I

    int-to-long v3, v3

    mul-long/2addr v3, v1

    iget v1, p0, Ls3/t;->D:I

    int-to-long v1, v1

    div-long/2addr v3, v1

    long-to-int v3, v3

    :goto_1
    add-int/2addr v0, v3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Ls3/t;->p(I)V

    return-void
.end method

.method public final p(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/t;->c:Lg3/b;

    iget-object v1, p0, Ls3/t;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Ls3/t;->E:I

    if-gt p1, v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput p1, p0, Ls3/t;->E:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ls3/t;->i()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Lg3/b;->j(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    monitor-exit v1

    return-void

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final q()V
    .locals 5

    .line 1
    const-string v0, "Neighbour table: +"

    .line 2
    .line 3
    iget-object v1, p0, Ls3/t;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sget-object v3, Ls3/f;->a:[I

    .line 10
    .line 11
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-static {}, Lcom/zalexdev/stryker/localnetwork/nonroot/Neighbours;->a()Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :catchall_0
    :try_start_2
    invoke-static {v3}, Ls3/f;->e(Ljava/util/LinkedHashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    .line 25
    .line 26
    :catchall_1
    :try_start_3
    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    :try_start_4
    invoke-static {v3}, Ls3/f;->d(Ljava/util/LinkedHashMap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 33
    .line 34
    .line 35
    :catchall_2
    :cond_0
    :try_start_5
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sub-int/2addr v3, v2

    .line 49
    if-lez v3, :cond_2

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, " MAC ("

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " total)"

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Ls3/t;->j(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 81
    .line 82
    .line 83
    :catchall_3
    :cond_2
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls3/t;->t:Ly0/p;

    iget-object v0, v0, Ly0/p;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ls3/t;->t:Ly0/p;

    iget-object v1, v0, Ly0/p;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly0/p;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls3/t;->t:Ly0/p;

    iget-object v0, v0, Ly0/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ls3/t;->l(Ljava/lang/String;)Ls3/q;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ls3/q;->c:Z

    const-string v1, "gateway"

    invoke-virtual {v0, v1}, Ls3/q;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ls3/t;->e(Ls3/q;)V

    invoke-virtual {p0, v0}, Ls3/t;->d(Ls3/q;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final s()Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/t;->j:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ls3/t;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final t(JJ)J
    .locals 4

    .line 1
    iget-wide v0, p0, Ls3/t;->F:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr v0, p3

    const-wide/16 p3, 0x0

    cmp-long v2, v0, p3

    if-gtz v2, :cond_0

    return-wide p3

    :cond_0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final u()V
    .locals 12

    .line 1
    new-instance v0, Ls3/g;

    .line 2
    .line 3
    iget-object v1, p0, Ls3/t;->t:Ly0/p;

    .line 4
    .line 5
    iget-object v2, p0, Ls3/t;->d:Lu3/g;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ls3/g;-><init>(Ly0/p;Lu3/g;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ls3/t;->u:Ls3/g;

    .line 11
    .line 12
    new-instance v0, Ls3/j;

    .line 13
    .line 14
    iget-object v1, p0, Ls3/t;->t:Ly0/p;

    .line 15
    .line 16
    iget-object v2, p0, Ls3/t;->d:Lu3/g;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Ls3/j;-><init>(Ly0/p;Lu3/g;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Ls3/t;->v:Ls3/j;

    .line 22
    .line 23
    new-instance v0, Ls3/i;

    .line 24
    .line 25
    iget-object v1, p0, Ls3/t;->t:Ly0/p;

    .line 26
    .line 27
    iget-object v2, p0, Ls3/t;->d:Lu3/g;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Ls3/i;-><init>(Ly0/p;Lu3/g;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Ls3/t;->w:Ls3/i;

    .line 33
    .line 34
    new-instance v0, Ls3/x;

    .line 35
    .line 36
    iget-object v1, p0, Ls3/t;->t:Ly0/p;

    .line 37
    .line 38
    iget-object v2, p0, Ls3/t;->d:Lu3/g;

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Ls3/x;-><init>(Ly0/p;Lu3/g;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Ls3/t;->y:Ls3/x;

    .line 44
    .line 45
    new-instance v0, Ls3/z;

    .line 46
    .line 47
    iget-object v1, p0, Ls3/t;->t:Ly0/p;

    .line 48
    .line 49
    iget-object v2, p0, Ls3/t;->d:Lu3/g;

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Ls3/z;-><init>(Ly0/p;Lu3/g;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Ls3/t;->x:Ls3/z;

    .line 55
    .line 56
    new-instance v0, Ls3/u;

    .line 57
    .line 58
    iget-object v1, p0, Ls3/t;->t:Ly0/p;

    .line 59
    .line 60
    iget-object v2, p0, Ls3/t;->d:Lu3/g;

    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Ls3/u;-><init>(Ly0/p;Lu3/g;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Ls3/t;->z:Ls3/u;

    .line 66
    .line 67
    iget-object v0, p0, Ls3/t;->u:Ls3/g;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    iput-boolean v1, v0, Ls3/b;->c:Z

    .line 71
    .line 72
    iget-object v0, p0, Ls3/t;->v:Ls3/j;

    .line 73
    .line 74
    iget-boolean v2, v0, Ls3/b;->c:Z

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    .line 84
    .line 85
    .line 86
    const/16 v5, 0xc8

    .line 87
    .line 88
    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v2

    .line 96
    goto :goto_1

    .line 97
    :catch_0
    :goto_0
    :try_start_2
    iput-object v2, v0, Ls3/j;->f:Ljava/net/DatagramSocket;

    .line 98
    .line 99
    iput-boolean v1, v0, Ls3/b;->c:Z

    .line 100
    .line 101
    new-instance v2, Ljava/lang/Thread;

    .line 102
    .line 103
    new-instance v5, Landroidx/activity/d;

    .line 104
    .line 105
    const/16 v6, 0x11

    .line 106
    .line 107
    invoke-direct {v5, v0, v6}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    const-string v6, "netbios-rx"

    .line 111
    .line 112
    invoke-direct {v2, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 116
    .line 117
    .line 118
    iput-object v2, v0, Ls3/j;->g:Ljava/lang/Thread;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :goto_1
    iput-boolean v4, v0, Ls3/b;->c:Z

    .line 125
    .line 126
    iget-object v5, v0, Ls3/j;->f:Ljava/net/DatagramSocket;

    .line 127
    .line 128
    iput-object v3, v0, Ls3/j;->f:Ljava/net/DatagramSocket;

    .line 129
    .line 130
    if-nez v5, :cond_1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    .line 135
    .line 136
    :catchall_1
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v6, "start failed: "

    .line 139
    .line 140
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Ls3/b;->g(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_3
    iget-object v0, p0, Ls3/t;->w:Ls3/i;

    .line 154
    .line 155
    const-string v2, "start failed: "

    .line 156
    .line 157
    const-string v5, "group unresolved: "

    .line 158
    .line 159
    const-string v6, "degraded mode, local port "

    .line 160
    .line 161
    iget-object v7, v0, Ls3/i;->i:Ljava/lang/Object;

    .line 162
    .line 163
    monitor-enter v7

    .line 164
    :try_start_4
    iget-boolean v8, v0, Ls3/b;->c:Z

    .line 165
    .line 166
    if-eqz v8, :cond_2

    .line 167
    .line 168
    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 169
    goto/16 :goto_7

    .line 170
    .line 171
    :catchall_2
    move-exception v0

    .line 172
    goto/16 :goto_17

    .line 173
    .line 174
    :cond_2
    :try_start_5
    const-string v8, "224.0.0.251"

    .line 175
    .line 176
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    iput-object v8, v0, Ls3/i;->k:Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 181
    .line 182
    :try_start_6
    invoke-virtual {v0}, Ls3/i;->r()Ljava/net/MulticastSocket;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    if-nez v5, :cond_3

    .line 187
    .line 188
    const-string v5, "no usable socket, resolver disabled"

    .line 189
    .line 190
    invoke-virtual {v0, v5}, Ls3/b;->g(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :catch_1
    move-exception v5

    .line 195
    goto :goto_6

    .line 196
    :cond_3
    iput-object v5, v0, Ls3/i;->j:Ljava/net/MulticastSocket;

    .line 197
    .line 198
    iput-boolean v4, v0, Ls3/i;->m:Z

    .line 199
    .line 200
    iput-boolean v1, v0, Ls3/b;->c:Z

    .line 201
    .line 202
    new-instance v8, Ljava/lang/Thread;

    .line 203
    .line 204
    new-instance v9, Ls3/h;

    .line 205
    .line 206
    invoke-direct {v9, v0, v4}, Ls3/h;-><init>(Ls3/i;I)V

    .line 207
    .line 208
    .line 209
    const-string v10, "mdns-rx"

    .line 210
    .line 211
    invoke-direct {v8, v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 215
    .line 216
    .line 217
    new-instance v9, Ljava/lang/Thread;

    .line 218
    .line 219
    new-instance v10, Ls3/h;

    .line 220
    .line 221
    invoke-direct {v10, v0, v1}, Ls3/h;-><init>(Ls3/i;I)V

    .line 222
    .line 223
    .line 224
    const-string v11, "mdns-tx"

    .line 225
    .line 226
    invoke-direct {v9, v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 230
    .line 231
    .line 232
    iput-object v8, v0, Ls3/i;->o:Ljava/lang/Thread;

    .line 233
    .line 234
    iput-object v9, v0, Ls3/i;->n:Ljava/lang/Thread;

    .line 235
    .line 236
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 240
    .line 241
    .line 242
    iget-boolean v8, v0, Ls3/i;->l:Z

    .line 243
    .line 244
    if-eqz v8, :cond_4

    .line 245
    .line 246
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->getLocalPort()I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    const/16 v9, 0x14e9

    .line 251
    .line 252
    if-ne v8, v9, :cond_4

    .line 253
    .line 254
    const-string v5, "listening on 224.0.0.251:5353"

    .line 255
    .line 256
    :goto_5
    invoke-virtual {v0, v5}, Ls3/b;->c(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->getLocalPort()I

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v5, ", joined="

    .line 273
    .line 274
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget-boolean v5, v0, Ls3/i;->l:Z

    .line 278
    .line 279
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    goto :goto_5

    .line 287
    :catch_2
    move-exception v6

    .line 288
    new-instance v8, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    invoke-virtual {v0, v5}, Ls3/b;->g(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 301
    .line 302
    .line 303
    goto/16 :goto_4

    .line 304
    .line 305
    :goto_6
    :try_start_7
    iput-boolean v4, v0, Ls3/b;->c:Z

    .line 306
    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {v0, v2}, Ls3/b;->g(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ls3/i;->s()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 323
    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :goto_7
    iget-object v0, p0, Ls3/t;->y:Ls3/x;

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    :try_start_8
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 333
    :try_start_9
    iget-object v2, v0, Ls3/x;->i:Ljava/util/concurrent/ExecutorService;

    .line 334
    .line 335
    if-eqz v2, :cond_5

    .line 336
    .line 337
    iget-object v2, v0, Ls3/x;->i:Ljava/util/concurrent/ExecutorService;

    .line 338
    .line 339
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-nez v2, :cond_5

    .line 344
    .line 345
    iput-boolean v1, v0, Ls3/b;->c:Z

    .line 346
    .line 347
    :goto_8
    monitor-exit v0

    .line 348
    goto :goto_a

    .line 349
    :catchall_3
    move-exception v2

    .line 350
    goto :goto_9

    .line 351
    :cond_5
    new-instance v2, Lj/b;

    .line 352
    .line 353
    invoke-direct {v2, v0}, Lj/b;-><init>(Ls3/x;)V

    .line 354
    .line 355
    .line 356
    const/16 v5, 0x8

    .line 357
    .line 358
    invoke-static {v5, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    iput-object v2, v0, Ls3/x;->i:Ljava/util/concurrent/ExecutorService;

    .line 363
    .line 364
    iput-boolean v1, v0, Ls3/b;->c:Z

    .line 365
    .line 366
    goto :goto_8

    .line 367
    :goto_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 368
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 369
    :catchall_4
    move-exception v2

    .line 370
    iput-boolean v4, v0, Ls3/b;->c:Z

    .line 371
    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v6, "start failed: "

    .line 375
    .line 376
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v0, v2}, Ls3/b;->g(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    :goto_a
    iget-object v0, p0, Ls3/t;->x:Ls3/z;

    .line 390
    .line 391
    const-string v2, "thread start failed: "

    .line 392
    .line 393
    const-string v5, "listening on 239.255.255.250:"

    .line 394
    .line 395
    monitor-enter v0

    .line 396
    :try_start_b
    iget-boolean v6, v0, Ls3/b;->c:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 397
    .line 398
    if-eqz v6, :cond_6

    .line 399
    .line 400
    :goto_b
    monitor-exit v0

    .line 401
    goto/16 :goto_f

    .line 402
    .line 403
    :cond_6
    :try_start_c
    const-string v6, "239.255.255.250"

    .line 404
    .line 405
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    iput-object v6, v0, Ls3/z;->h:Ljava/net/InetAddress;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 410
    .line 411
    goto :goto_c

    .line 412
    :catchall_5
    move-exception v1

    .line 413
    goto/16 :goto_16

    .line 414
    .line 415
    :catch_3
    :try_start_d
    iput-object v3, v0, Ls3/z;->h:Ljava/net/InetAddress;

    .line 416
    .line 417
    :goto_c
    iget-object v6, v0, Ls3/z;->h:Ljava/net/InetAddress;

    .line 418
    .line 419
    if-nez v6, :cond_7

    .line 420
    .line 421
    const-string v2, "group address unavailable"

    .line 422
    .line 423
    :goto_d
    invoke-virtual {v0, v2}, Ls3/b;->g(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    goto :goto_b

    .line 427
    :cond_7
    invoke-virtual {v0}, Ls3/z;->l()Ljava/net/MulticastSocket;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    if-nez v6, :cond_8

    .line 432
    .line 433
    const-string v2, "socket unavailable"

    .line 434
    .line 435
    goto :goto_d

    .line 436
    :cond_8
    iput-object v6, v0, Ls3/z;->g:Ljava/net/MulticastSocket;

    .line 437
    .line 438
    iput-boolean v1, v0, Ls3/b;->c:Z

    .line 439
    .line 440
    iput-boolean v4, v0, Ls3/z;->j:Z

    .line 441
    .line 442
    iput-boolean v4, v0, Ls3/z;->k:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 443
    .line 444
    :try_start_e
    new-instance v7, Lu2/e;

    .line 445
    .line 446
    const/4 v8, 0x3

    .line 447
    invoke-direct {v7, v8}, Lu2/e;-><init>(I)V

    .line 448
    .line 449
    .line 450
    const/4 v8, 0x4

    .line 451
    invoke-static {v8, v7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    iput-object v7, v0, Ls3/z;->n:Ljava/util/concurrent/ExecutorService;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 456
    .line 457
    goto :goto_e

    .line 458
    :catch_4
    :try_start_f
    iput-object v3, v0, Ls3/z;->n:Ljava/util/concurrent/ExecutorService;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 459
    .line 460
    :goto_e
    :try_start_10
    new-instance v7, Ljava/lang/Thread;

    .line 461
    .line 462
    new-instance v8, Ls3/y;

    .line 463
    .line 464
    invoke-direct {v8, v0, v4}, Ls3/y;-><init>(Ls3/z;I)V

    .line 465
    .line 466
    .line 467
    const-string v9, "ssdp-rx"

    .line 468
    .line 469
    invoke-direct {v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iput-object v7, v0, Ls3/z;->m:Ljava/lang/Thread;

    .line 473
    .line 474
    iget-object v7, v0, Ls3/z;->m:Ljava/lang/Thread;

    .line 475
    .line 476
    invoke-virtual {v7, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 477
    .line 478
    .line 479
    iget-object v7, v0, Ls3/z;->m:Ljava/lang/Thread;

    .line 480
    .line 481
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 482
    .line 483
    .line 484
    new-instance v7, Ljava/lang/Thread;

    .line 485
    .line 486
    new-instance v8, Ls3/y;

    .line 487
    .line 488
    invoke-direct {v8, v0, v1}, Ls3/y;-><init>(Ls3/z;I)V

    .line 489
    .line 490
    .line 491
    const-string v9, "ssdp-tx"

    .line 492
    .line 493
    invoke-direct {v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    iput-object v7, v0, Ls3/z;->l:Ljava/lang/Thread;

    .line 497
    .line 498
    iget-object v7, v0, Ls3/z;->l:Ljava/lang/Thread;

    .line 499
    .line 500
    invoke-virtual {v7, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 501
    .line 502
    .line 503
    iget-object v7, v0, Ls3/z;->l:Ljava/lang/Thread;

    .line 504
    .line 505
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 506
    .line 507
    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->getLocalPort()I

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    invoke-virtual {v0, v5}, Ls3/b;->c(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 525
    .line 526
    .line 527
    goto :goto_b

    .line 528
    :catch_5
    move-exception v5

    .line 529
    :try_start_11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-virtual {v0, v2}, Ls3/b;->g(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0}, Ls3/z;->e()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 545
    .line 546
    .line 547
    goto/16 :goto_b

    .line 548
    .line 549
    :goto_f
    iget-object v0, p0, Ls3/t;->z:Ls3/u;

    .line 550
    .line 551
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    const-string v2, "server "

    .line 555
    .line 556
    const-string v5, "raw socket unavailable: "

    .line 557
    .line 558
    :try_start_12
    iget-boolean v6, v0, Ls3/b;->c:Z

    .line 559
    .line 560
    if-eqz v6, :cond_9

    .line 561
    .line 562
    goto/16 :goto_15

    .line 563
    .line 564
    :cond_9
    iput-boolean v1, v0, Ls3/b;->c:Z

    .line 565
    .line 566
    const-string v6, ""

    .line 567
    .line 568
    iget-object v7, v0, Ls3/b;->a:Ly0/p;

    .line 569
    .line 570
    if-nez v7, :cond_a

    .line 571
    .line 572
    goto :goto_11

    .line 573
    :cond_a
    iget-object v8, v7, Ly0/p;->e:Ljava/lang/Object;

    .line 574
    .line 575
    move-object v9, v8

    .line 576
    check-cast v9, Ljava/lang/String;

    .line 577
    .line 578
    if-nez v9, :cond_b

    .line 579
    .line 580
    move-object v8, v6

    .line 581
    goto :goto_10

    .line 582
    :cond_b
    check-cast v8, Ljava/lang/String;

    .line 583
    .line 584
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v8

    .line 588
    :goto_10
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 589
    .line 590
    .line 591
    move-result v9

    .line 592
    if-nez v9, :cond_c

    .line 593
    .line 594
    move-object v6, v8

    .line 595
    goto :goto_11

    .line 596
    :cond_c
    iget-object v7, v7, Ly0/p;->d:Ljava/lang/Object;

    .line 597
    .line 598
    move-object v8, v7

    .line 599
    check-cast v8, Ljava/lang/String;

    .line 600
    .line 601
    if-nez v8, :cond_d

    .line 602
    .line 603
    goto :goto_11

    .line 604
    :cond_d
    check-cast v7, Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    :goto_11
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 611
    .line 612
    .line 613
    move-result v7
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 614
    if-nez v7, :cond_f

    .line 615
    .line 616
    :try_start_13
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 617
    .line 618
    .line 619
    move-result-object v7

    .line 620
    new-instance v8, Ljava/net/DatagramSocket;

    .line 621
    .line 622
    invoke-direct {v8}, Ljava/net/DatagramSocket;-><init>()V

    .line 623
    .line 624
    .line 625
    const/16 v9, 0x64

    .line 626
    .line 627
    invoke-virtual {v8, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 628
    .line 629
    .line 630
    iput-object v7, v0, Ls3/u;->k:Ljava/net/InetAddress;

    .line 631
    .line 632
    iput-object v8, v0, Ls3/u;->j:Ljava/net/DatagramSocket;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    .line 633
    .line 634
    goto :goto_12

    .line 635
    :catch_6
    move-exception v7

    .line 636
    :try_start_14
    iget-object v8, v0, Ls3/u;->j:Ljava/net/DatagramSocket;

    .line 637
    .line 638
    iput-object v3, v0, Ls3/u;->j:Ljava/net/DatagramSocket;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    .line 639
    .line 640
    if-eqz v8, :cond_e

    .line 641
    .line 642
    :try_start_15
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 643
    .line 644
    .line 645
    move-result v9

    .line 646
    if-nez v9, :cond_e

    .line 647
    .line 648
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    .line 649
    .line 650
    .line 651
    :catch_7
    :cond_e
    :try_start_16
    iput-object v3, v0, Ls3/u;->k:Ljava/net/InetAddress;

    .line 652
    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-virtual {v0, v3}, Ls3/b;->g(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    goto :goto_12

    .line 669
    :catch_8
    move-exception v1

    .line 670
    goto :goto_14

    .line 671
    :cond_f
    :goto_12
    iget-object v3, v0, Ls3/u;->j:Ljava/net/DatagramSocket;

    .line 672
    .line 673
    if-eqz v3, :cond_10

    .line 674
    .line 675
    iget-object v3, v0, Ls3/u;->k:Ljava/net/InetAddress;

    .line 676
    .line 677
    if-nez v3, :cond_11

    .line 678
    .line 679
    :cond_10
    move v4, v1

    .line 680
    :cond_11
    iput-boolean v4, v0, Ls3/u;->l:Z

    .line 681
    .line 682
    iget-boolean v3, v0, Ls3/u;->l:Z

    .line 683
    .line 684
    if-eqz v3, :cond_12

    .line 685
    .line 686
    const-string v2, "fallback mode, no dns server"

    .line 687
    .line 688
    goto :goto_13

    .line 689
    :cond_12
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    :goto_13
    invoke-virtual {v0, v2}, Ls3/b;->c(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    new-instance v2, Ljava/lang/Thread;

    .line 697
    .line 698
    new-instance v3, Landroidx/activity/d;

    .line 699
    .line 700
    const/16 v4, 0x12

    .line 701
    .line 702
    invoke-direct {v3, v0, v4}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 703
    .line 704
    .line 705
    const-string v4, "stryker-rdns"

    .line 706
    .line 707
    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 711
    .line 712
    .line 713
    iput-object v2, v0, Ls3/u;->m:Ljava/lang/Thread;

    .line 714
    .line 715
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    .line 716
    .line 717
    .line 718
    goto :goto_15

    .line 719
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 720
    .line 721
    const-string v3, "start failed: "

    .line 722
    .line 723
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    invoke-virtual {v0, v1}, Ls3/b;->g(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    :goto_15
    iget-object v0, p0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 737
    .line 738
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    if-eqz v0, :cond_13

    .line 743
    .line 744
    invoke-virtual {p0}, Ls3/t;->x()V

    .line 745
    .line 746
    .line 747
    return-void

    .line 748
    :cond_13
    iget-object v0, p0, Ls3/t;->t:Ly0/p;

    .line 749
    .line 750
    iget-object v0, v0, Ly0/p;->d:Ljava/lang/Object;

    .line 751
    .line 752
    check-cast v0, Ljava/lang/String;

    .line 753
    .line 754
    if-eqz v0, :cond_14

    .line 755
    .line 756
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 757
    .line 758
    .line 759
    move-result v0

    .line 760
    if-nez v0, :cond_14

    .line 761
    .line 762
    iget-object v0, p0, Ls3/t;->v:Ls3/j;

    .line 763
    .line 764
    iget-object v1, p0, Ls3/t;->t:Ly0/p;

    .line 765
    .line 766
    iget-object v1, v1, Ly0/p;->d:Ljava/lang/Object;

    .line 767
    .line 768
    check-cast v1, Ljava/lang/String;

    .line 769
    .line 770
    invoke-virtual {v0, v1}, Ls3/j;->i(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    iget-object v0, p0, Ls3/t;->y:Ls3/x;

    .line 774
    .line 775
    iget-object v1, p0, Ls3/t;->t:Ly0/p;

    .line 776
    .line 777
    iget-object v1, v1, Ly0/p;->d:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v1, Ljava/lang/String;

    .line 780
    .line 781
    invoke-virtual {v0, v1}, Ls3/x;->r(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    iget-object v0, p0, Ls3/t;->z:Ls3/u;

    .line 785
    .line 786
    iget-object v1, p0, Ls3/t;->t:Ly0/p;

    .line 787
    .line 788
    iget-object v1, v1, Ly0/p;->d:Ljava/lang/Object;

    .line 789
    .line 790
    check-cast v1, Ljava/lang/String;

    .line 791
    .line 792
    invoke-virtual {v0, v1}, Ls3/u;->h(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    :cond_14
    iget-object v0, p0, Ls3/t;->t:Ly0/p;

    .line 796
    .line 797
    iget-object v0, v0, Ly0/p;->a:Ljava/lang/String;

    .line 798
    .line 799
    if-eqz v0, :cond_15

    .line 800
    .line 801
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 802
    .line 803
    .line 804
    move-result v0

    .line 805
    if-nez v0, :cond_15

    .line 806
    .line 807
    iget-object v0, p0, Ls3/t;->z:Ls3/u;

    .line 808
    .line 809
    iget-object v1, p0, Ls3/t;->t:Ly0/p;

    .line 810
    .line 811
    iget-object v1, v1, Ly0/p;->a:Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {v0, v1}, Ls3/u;->h(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    :cond_15
    return-void

    .line 817
    :goto_16
    monitor-exit v0

    .line 818
    throw v1

    .line 819
    :goto_17
    :try_start_17
    monitor-exit v7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 820
    throw v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ls3/t;->j(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls3/t;->c:Lg3/b;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Ls3/t;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    iget-object v1, v0, Lg3/b;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lr3/v;

    .line 18
    .line 19
    iget-boolean v1, v1, Lr3/v;->g:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, v0, Lg3/b;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lr3/v;

    .line 27
    .line 28
    iget-object v0, v0, Lr3/v;->c:Lu3/g;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1, p1}, Lu3/g;->e(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/t;->u:Ls3/g;

    invoke-static {v0}, Ls3/t;->w(Ls3/b;)V

    iget-object v0, p0, Ls3/t;->v:Ls3/j;

    invoke-static {v0}, Ls3/t;->w(Ls3/b;)V

    iget-object v0, p0, Ls3/t;->w:Ls3/i;

    invoke-static {v0}, Ls3/t;->w(Ls3/b;)V

    iget-object v0, p0, Ls3/t;->x:Ls3/z;

    invoke-static {v0}, Ls3/t;->w(Ls3/b;)V

    iget-object v0, p0, Ls3/t;->y:Ls3/x;

    invoke-static {v0}, Ls3/t;->w(Ls3/b;)V

    iget-object v0, p0, Ls3/t;->z:Ls3/u;

    invoke-static {v0}, Ls3/t;->w(Ls3/b;)V

    return-void
.end method
