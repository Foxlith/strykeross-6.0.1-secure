.class public abstract Ls1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt1/f;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/lang/Object;

.field public e:Lr1/c;


# direct methods
.method public constructor <init>(Lt1/f;)V
    .locals 1

    .line 1
    const-string v0, "tracker"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/b;->a:Lt1/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls1/b;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls1/b;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract a(Lv1/p;)Z
.end method

.method public abstract b(Ljava/lang/Object;)Z
.end method

.method public final c(Ljava/util/Collection;)V
    .locals 3

    .line 1
    const-string v0, "workSpecs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls1/b;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ls1/b;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Ls1/b;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v2, v1

    .line 33
    check-cast v2, Lv1/p;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ls1/b;->a(Lv1/p;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Ls1/b;->b:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v0, p0, Ls1/b;->c:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lv1/p;

    .line 64
    .line 65
    iget-object v1, v1, Lv1/p;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object p1, p0, Ls1/b;->b:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Ls1/b;->a:Lt1/f;

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Lt1/f;->b(Ls1/b;)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    iget-object p1, p0, Ls1/b;->a:Lt1/f;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object v0, p1, Lt1/f;->c:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p1, Lt1/f;->d:Ljava/util/LinkedHashSet;

    .line 94
    .line 95
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    iget-object v1, p1, Lt1/f;->d:Ljava/util/LinkedHashSet;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    const/4 v2, 0x1

    .line 108
    if-ne v1, v2, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1}, Lt1/f;->a()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iput-object v1, p1, Lt1/f;->e:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    sget v2, Lt1/g;->a:I

    .line 121
    .line 122
    iget-object v2, p1, Lt1/f;->e:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lt1/f;->d()V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    goto :goto_4

    .line 136
    :cond_4
    :goto_2
    iget-object p1, p1, Lt1/f;->e:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object p1, p0, Ls1/b;->d:Ljava/lang/Object;

    .line 139
    .line 140
    iget-object v1, p0, Ls1/b;->e:Lr1/c;

    .line 141
    .line 142
    invoke-virtual {p0, v1, p1}, Ls1/b;->d(Lr1/c;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    .line 145
    :cond_5
    monitor-exit v0

    .line 146
    :goto_3
    iget-object p1, p0, Ls1/b;->e:Lr1/c;

    .line 147
    .line 148
    iget-object v0, p0, Ls1/b;->d:Ljava/lang/Object;

    .line 149
    .line 150
    invoke-virtual {p0, p1, v0}, Ls1/b;->d(Lr1/c;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_4
    monitor-exit v0

    .line 155
    throw p1
.end method

.method public final d(Lr1/c;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/b;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    if-eqz p2, :cond_6

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Ls1/b;->b(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_1
    iget-object p2, p0, Ls1/b;->b:Ljava/util/ArrayList;

    .line 23
    .line 24
    const-string v0, "workSpecs"

    .line 25
    .line 26
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Lr1/c;->c:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v3, v2

    .line 52
    check-cast v3, Lv1/p;

    .line 53
    .line 54
    iget-object v3, v3, Lv1/p;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Lr1/c;->a(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lv1/p;

    .line 83
    .line 84
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    sget v4, Lr1/d;->a:I

    .line 89
    .line 90
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    iget-object p1, p1, Lr1/c;->a:Lr1/b;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    invoke-interface {p1, v1}, Lr1/b;->d(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_5
    monitor-exit v0

    .line 105
    goto :goto_4

    .line 106
    :goto_2
    monitor-exit v0

    .line 107
    throw p1

    .line 108
    :cond_6
    :goto_3
    iget-object p2, p0, Ls1/b;->b:Ljava/util/ArrayList;

    .line 109
    .line 110
    const-string v0, "workSpecs"

    .line 111
    .line 112
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p1, Lr1/c;->c:Ljava/lang/Object;

    .line 116
    .line 117
    monitor-enter v0

    .line 118
    :try_start_1
    iget-object p1, p1, Lr1/c;->a:Lr1/b;

    .line 119
    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    invoke-interface {p1, p2}, Lr1/b;->c(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    .line 124
    .line 125
    :cond_7
    monitor-exit v0

    .line 126
    :goto_4
    return-void

    .line 127
    :catchall_1
    move-exception p1

    .line 128
    monitor-exit v0

    .line 129
    throw p1

    .line 130
    :cond_8
    :goto_5
    return-void
.end method
