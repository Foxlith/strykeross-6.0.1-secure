.class public abstract Lw1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln1/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln1/m;

    invoke-direct {v0}, Ln1/m;-><init>()V

    iput-object v0, p0, Lw1/d;->a:Ln1/m;

    return-void
.end method

.method public static a(Ln1/a0;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Lv1/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Lv1/r;->f(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x3

    .line 36
    if-eq v4, v5, :cond_0

    .line 37
    .line 38
    const/4 v5, 0x4

    .line 39
    if-eq v4, v5, :cond_0

    .line 40
    .line 41
    const/4 v4, 0x6

    .line 42
    invoke-virtual {v1, v4, v3}, Lv1/r;->m(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v0, v3}, Lv1/c;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Ln1/a0;->h:Ln1/p;

    .line 54
    .line 55
    iget-object v1, v0, Ln1/p;->l:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Ln1/p;->j:Ljava/util/HashSet;

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object v2, v0, Ln1/p;->f:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ln1/f0;

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v3, 0x0

    .line 83
    :goto_1
    if-nez v2, :cond_3

    .line 84
    .line 85
    iget-object v2, v0, Ln1/p;->g:Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ln1/f0;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_4

    .line 96
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 97
    .line 98
    iget-object v4, v0, Ln1/p;->h:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {v2}, Ln1/p;->c(Ln1/f0;)Z

    .line 105
    .line 106
    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0}, Ln1/p;->h()V

    .line 110
    .line 111
    .line 112
    :cond_5
    iget-object p0, p0, Ln1/a0;->g:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ln1/r;

    .line 129
    .line 130
    invoke-interface {v0, p1}, Ln1/r;->a(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    return-void

    .line 135
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    throw p0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw1/d;->a:Ln1/m;

    :try_start_0
    invoke-virtual {p0}, Lw1/d;->b()V

    sget-object v1, Lm1/t;->a:Lm1/s;

    invoke-virtual {v0, v1}, Ln1/m;->a(Lv1/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lm1/q;

    invoke-direct {v2, v1}, Lm1/q;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Ln1/m;->a(Lv1/f;)V

    :goto_0
    return-void
.end method
