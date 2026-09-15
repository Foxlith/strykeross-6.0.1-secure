.class public final Lw1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln1/a0;

.field public final b:Ln1/t;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "StopWorkRunnable"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ln1/a0;Ln1/t;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/p;->a:Ln1/a0;

    iput-object p2, p0, Lw1/p;->b:Ln1/t;

    iput-boolean p3, p0, Lw1/p;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lw1/p;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lw1/p;->a:Ln1/a0;

    .line 6
    .line 7
    iget-object v0, v0, Ln1/a0;->h:Ln1/p;

    .line 8
    .line 9
    iget-object v1, p0, Lw1/p;->b:Ln1/t;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, v1, Ln1/t;->a:Lv1/i;

    .line 15
    .line 16
    iget-object v1, v1, Lv1/i;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, v0, Ln1/p;->l:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v3, v0, Ln1/p;->f:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ln1/f0;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    iget-object v0, v0, Ln1/p;->h:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {v3}, Ln1/p;->c(Ln1/f0;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw v0

    .line 53
    :cond_1
    iget-object v0, p0, Lw1/p;->a:Ln1/a0;

    .line 54
    .line 55
    iget-object v0, v0, Ln1/a0;->h:Ln1/p;

    .line 56
    .line 57
    iget-object v1, p0, Lw1/p;->b:Ln1/t;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v2, v1, Ln1/t;->a:Lv1/i;

    .line 63
    .line 64
    iget-object v2, v2, Lv1/i;->a:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, v0, Ln1/p;->l:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v3

    .line 69
    :try_start_2
    iget-object v4, v0, Ln1/p;->g:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ln1/f0;

    .line 76
    .line 77
    if-nez v4, :cond_3

    .line 78
    .line 79
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_2
    monitor-exit v3

    .line 87
    goto :goto_3

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    goto :goto_4

    .line 90
    :cond_3
    iget-object v5, v0, Ln1/p;->h:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Ljava/util/Set;

    .line 97
    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_4

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, Ln1/p;->h:Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    invoke-static {v4}, Ln1/p;->c(Ln1/f0;)Z

    .line 121
    .line 122
    .line 123
    :goto_3
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, p0, Lw1/p;->b:Ln1/t;

    .line 128
    .line 129
    iget-object v1, v1, Ln1/t;->a:Lv1/i;

    .line 130
    .line 131
    iget-object v1, v1, Lv1/i;->a:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    throw v0
.end method
