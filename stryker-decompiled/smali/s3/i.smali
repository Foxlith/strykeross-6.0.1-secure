.class public final Ls3/i;
.super Ls3/b;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final f:Ljava/util/LinkedHashSet;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/lang/Object;

.field public volatile j:Ljava/net/MulticastSocket;

.field public volatile k:Ljava/net/InetAddress;

.field public volatile l:Z

.field public volatile m:Z

.field public volatile n:Ljava/lang/Thread;

.field public volatile o:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ly0/p;Lu3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ls3/b;-><init>(Ly0/p;Lu3/g;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Ls3/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Ls3/i;->f:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ls3/i;->g:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ls3/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/i;->i:Ljava/lang/Object;

    return-void
.end method

.method public static h(Ls3/k;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ls3/k;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ls3/k;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ls3/k;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iget-object p0, p0, Ls3/k;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static l(Ls3/k;Ljava/util/List;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/d;

    if-eqz v0, :cond_1

    iget v1, v0, Ls3/d;->b:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Ls3/d;->a:Ljava/lang/String;

    invoke-static {v1}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ls3/k;->d:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Ls3/k;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/16 v4, 0x40

    if-nez v3, :cond_5

    iget-object v3, p0, Ls3/k;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lt v3, v4, :cond_4

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_4
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v5, p0, Ls3/k;->d:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Ls3/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-gez v6, :cond_9

    const-string v5, ""

    goto :goto_3

    :cond_9
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_1

    :cond_a
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    if-lt v7, v4, :cond_b

    goto :goto_1

    :cond_b
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_c
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_device-info._tcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Ls3/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "model"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    iput-object v1, p0, Ls3/k;->b:Ljava/lang/String;

    :cond_e
    iget-object v1, p0, Ls3/k;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Ls3/d;->a:Ljava/lang/String;

    invoke-static {v0}, Li5/a;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Ls3/k;->a:Ljava/lang/String;

    goto/16 :goto_0

    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_f
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls3/i;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Ls3/b;->c:Z

    invoke-virtual {p0}, Ls3/i;->s()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "mdns"

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "_lg_dtv_wifirc._tcp.local."

    invoke-static {v1}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ls3/i;->f:Ljava/util/LinkedHashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ls3/i;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ls3/i;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iget-object v1, p0, Ls3/i;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j(Ljava/lang/String;Ls3/k;Ls3/d;)V
    .locals 2

    .line 1
    iget-object v0, p3, Ls3/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p2, Ls3/k;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p3, Ls3/d;->a:Ljava/lang/String;

    invoke-static {p1}, Li5/a;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iput-object p1, p2, Ls3/k;->a:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Ls3/b;->a:Ly0/p;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Ly0/p;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ls3/i;->m(Ljava/lang/String;)Ls3/k;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p2, p1, Ls3/k;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p3, Ls3/d;->a:Ljava/lang/String;

    invoke-static {p2}, Li5/a;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    iput-object p2, p1, Ls3/k;->a:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0, v0}, Ls3/b;->b(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final k(Ls3/k;Ls3/d;)V
    .locals 4

    .line 1
    iget-object v0, p2, Ls3/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string v2, "_services._dns-sd._udp.local."

    .line 21
    .line 22
    invoke-static {v2}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object p1, p2, Ls3/d;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ls3/i;->i(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const-string v1, ".in-addr.arpa"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, p0, Ls3/i;->g:Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v2, p0, Ls3/i;->g:Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    iget-wide v0, p2, Ls3/d;->c:J

    .line 67
    .line 68
    const-wide/16 v2, 0x0

    .line 69
    .line 70
    cmp-long v0, v0, v2

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p1, Ls3/k;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object p2, p2, Ls3/d;->d:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p2}, Li5/a;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    iput-object p2, p1, Ls3/k;->a:Ljava/lang/String;

    .line 95
    .line 96
    :cond_3
    return-void

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    throw p1

    .line 100
    :cond_4
    iget-object v1, p0, Ls3/i;->f:Ljava/util/LinkedHashSet;

    .line 101
    .line 102
    monitor-enter v1

    .line 103
    :try_start_2
    iget-object v2, p0, Ls3/i;->f:Ljava/util/LinkedHashSet;

    .line 104
    .line 105
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    if-nez v2, :cond_7

    .line 111
    .line 112
    const-string v1, "_"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    const-string v1, "._tcp"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_5

    .line 127
    .line 128
    const-string v1, "._udp"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    :cond_5
    invoke-virtual {p0, v0}, Ls3/i;->i(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    return-void

    .line 141
    :cond_7
    :goto_1
    invoke-static {p1, v0}, Ls3/i;->h(Ls3/k;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p2, Ls3/d;->d:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {p2}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_8

    .line 155
    .line 156
    iget-object v0, p1, Ls3/k;->a:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    invoke-static {p2}, Li5/a;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_8

    .line 173
    .line 174
    iput-object p2, p1, Ls3/k;->a:Ljava/lang/String;

    .line 175
    .line 176
    :cond_8
    return-void

    .line 177
    :catchall_1
    move-exception p1

    .line 178
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    throw p1
.end method

.method public final m(Ljava/lang/String;)Ls3/k;
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls3/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/k;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ls3/k;

    invoke-direct {v1}, Ls3/k;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls3/k;

    if-eqz p1, :cond_2

    move-object v1, p1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ls3/i;->j:Ljava/net/MulticastSocket;

    iget-object v1, p0, Ls3/i;->k:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-boolean v4, p0, Ls3/b;->c:Z

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    :try_start_0
    iget-object v5, p0, Ls3/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5, v2, v6}, Li5/a;->z0(IILjava/util/List;)[B

    move-result-object v3

    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v3

    const/16 v7, 0x14e9

    invoke-direct {v5, v3, v6, v1, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v0, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception p1

    iget-boolean v0, p0, Ls3/b;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ls3/i;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls3/i;->m:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "datagram dropped: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls3/b;->g(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final o()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ls3/i;->g:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ls3/i;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    const/16 v5, 0xa

    if-lt v4, v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final p(Ljava/net/DatagramPacket;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/16 v1, 0x25

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_2

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_2
    :goto_0
    iget-object v1, p0, Ls3/b;->a:Ly0/p;

    .line 33
    .line 34
    if-eqz v1, :cond_e

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ly0/p;->c(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_3
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-gtz v1, :cond_4

    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p1, v1}, Li5/a;->t0(I[B)Landroidx/emoji2/text/q;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_e

    .line 64
    .line 65
    iget-boolean v1, p1, Landroidx/emoji2/text/q;->c:Z

    .line 66
    .line 67
    if-nez v1, :cond_5

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_5
    invoke-virtual {p0, v0}, Ls3/b;->b(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ls3/i;->m(Ljava/lang/String;)Ls3/k;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-nez v1, :cond_6

    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    invoke-virtual {p1}, Landroidx/emoji2/text/q;->b()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_d

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Ls3/d;

    .line 100
    .line 101
    if-nez v3, :cond_8

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_8
    iget v4, v3, Ls3/d;->b:I

    .line 105
    .line 106
    const/16 v5, 0xc

    .line 107
    .line 108
    if-ne v4, v5, :cond_9

    .line 109
    .line 110
    invoke-virtual {p0, v1, v3}, Ls3/i;->k(Ls3/k;Ls3/d;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_9
    const/16 v5, 0x21

    .line 115
    .line 116
    if-ne v4, v5, :cond_c

    .line 117
    .line 118
    iget-object v4, v3, Ls3/d;->a:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v4}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const/16 v5, 0x2e

    .line 125
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-lez v5, :cond_b

    .line 131
    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-lt v5, v6, :cond_a

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_a
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    goto :goto_3

    .line 146
    :cond_b
    :goto_2
    const-string v4, ""

    .line 147
    .line 148
    :goto_3
    invoke-static {v1, v4}, Ls3/i;->h(Ls3/k;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v4, v1, Ls3/k;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_7

    .line 158
    .line 159
    iget-object v3, v3, Ls3/d;->a:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v3}, Li5/a;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_7

    .line 170
    .line 171
    iput-object v3, v1, Ls3/k;->a:Ljava/lang/String;

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_c
    const/4 v5, 0x1

    .line 175
    if-ne v4, v5, :cond_7

    .line 176
    .line 177
    invoke-virtual {p0, v0, v1, v3}, Ls3/i;->j(Ljava/lang/String;Ls3/k;Ls3/d;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_d
    iget-object v0, p1, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v0, Ljava/util/List;

    .line 184
    .line 185
    invoke-static {v1, v0}, Ls3/i;->l(Ls3/k;Ljava/util/List;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p1, Landroidx/emoji2/text/q;->g:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, Ljava/util/List;

    .line 191
    .line 192
    invoke-static {v1, v0}, Ls3/i;->l(Ls3/k;Ljava/util/List;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p1, Landroidx/emoji2/text/q;->h:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p1, Ljava/util/List;

    .line 198
    .line 199
    invoke-static {v1, p1}, Ls3/i;->l(Ls3/k;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_e
    :goto_4
    return-void

    .line 204
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v1, "datagram ignored: "

    .line 207
    .line 208
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p0, p1}, Ls3/b;->g(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :goto_6
    return-void
.end method

.method public final q()Ljava/util/LinkedHashSet;
    .locals 5

    .line 1
    const-string v0, "_googlecast"

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_0
    invoke-static {v0}, Li5/a;->a1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Ls3/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls3/k;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Ls3/k;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service lookup failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls3/b;->g(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public final r()Ljava/net/MulticastSocket;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-instance v3, Ljava/net/MulticastSocket;

    .line 5
    .line 6
    invoke-direct {v3, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 13
    .line 14
    const/16 v5, 0x14e9

    .line 15
    .line 16
    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v4

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception v4

    .line 26
    move-object v3, v2

    .line 27
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v6, "bind 5353 failed ("

    .line 30
    .line 31
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, "), retrying send-only"

    .line 38
    .line 39
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p0, v4}, Ls3/b;->g(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    .line 53
    .line 54
    :catch_2
    :cond_0
    :try_start_3
    new-instance v3, Ljava/net/MulticastSocket;

    .line 55
    .line 56
    invoke-direct {v3, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 57
    .line 58
    .line 59
    :try_start_4
    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 63
    .line 64
    invoke-direct {v4, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 68
    .line 69
    .line 70
    :goto_1
    const/16 v2, 0xff

    .line 71
    .line 72
    :try_start_5
    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_3
    move-exception v2

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v5, "ttl not applied: "

    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0, v2}, Ls3/b;->g(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_2
    const/16 v2, 0x190

    .line 95
    .line 96
    :try_start_6
    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catch_4
    move-exception v2

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v5, "timeout not applied: "

    .line 104
    .line 105
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p0, v2}, Ls3/b;->g(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_3
    :try_start_7
    iget-object v2, p0, Ls3/b;->a:Ly0/p;

    .line 119
    .line 120
    if-eqz v2, :cond_1

    .line 121
    .line 122
    iget-object v2, v2, Ly0/p;->k:Ljava/lang/Object;

    .line 123
    .line 124
    move-object v4, v2

    .line 125
    check-cast v4, Ljava/net/NetworkInterface;

    .line 126
    .line 127
    if-eqz v4, :cond_1

    .line 128
    .line 129
    check-cast v2, Ljava/net/NetworkInterface;

    .line 130
    .line 131
    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catch_5
    move-exception v2

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v5, "interface not bound: "

    .line 139
    .line 140
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {p0, v2}, Ls3/b;->g(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_1
    :goto_4
    :try_start_8
    iget-object v2, p0, Ls3/i;->k:Ljava/net/InetAddress;

    .line 154
    .line 155
    if-eqz v2, :cond_2

    .line 156
    .line 157
    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 158
    .line 159
    .line 160
    iput-boolean v1, p0, Ls3/i;->l:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :catch_6
    move-exception v1

    .line 164
    iput-boolean v0, p0, Ls3/i;->l:Z

    .line 165
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v2, "join failed, unicast answers only: "

    .line 169
    .line 170
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p0, v0}, Ls3/b;->g(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_2
    :goto_5
    return-object v3

    .line 184
    :catch_7
    move-exception v0

    .line 185
    goto :goto_6

    .line 186
    :catch_8
    move-exception v0

    .line 187
    move-object v3, v2

    .line 188
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v4, "ephemeral bind failed: "

    .line 191
    .line 192
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Ls3/b;->g(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    if-eqz v3, :cond_3

    .line 206
    .line 207
    :try_start_9
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 208
    .line 209
    .line 210
    :catch_9
    :cond_3
    return-object v2
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/i;->j:Ljava/net/MulticastSocket;

    const/4 v1, 0x0

    iput-object v1, p0, Ls3/i;->j:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Ls3/i;->l:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Ls3/i;->k:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls3/i;->l:Z

    iget-object v0, p0, Ls3/i;->n:Ljava/lang/Thread;

    iget-object v2, p0, Ls3/i;->o:Ljava/lang/Thread;

    iput-object v1, p0, Ls3/i;->n:Ljava/lang/Thread;

    iput-object v1, p0, Ls3/i;->o:Ljava/lang/Thread;

    invoke-static {v0}, Ls3/b;->a(Ljava/lang/Thread;)V

    invoke-static {v2}, Ls3/b;->a(Ljava/lang/Thread;)V

    return-void
.end method
