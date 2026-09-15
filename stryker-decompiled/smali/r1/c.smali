.class public final Lr1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr1/b;

.field public final b:[Ls1/b;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv1/m;Lr1/b;)V
    .locals 5

    .line 1
    const-string v0, "trackers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    new-array v0, v0, [Ls1/b;

    .line 8
    .line 9
    new-instance v1, Ls1/a;

    .line 10
    .line 11
    iget-object v2, p1, Lv1/m;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lt1/f;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v1, v2, v3}, Ls1/a;-><init>(Lt1/f;I)V

    .line 17
    .line 18
    .line 19
    aput-object v1, v0, v3

    .line 20
    .line 21
    new-instance v1, Ls1/a;

    .line 22
    .line 23
    iget-object v2, p1, Lv1/m;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lt1/a;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ls1/a;-><init>(Lt1/a;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    new-instance v1, Ls1/a;

    .line 34
    .line 35
    iget-object v2, p1, Lv1/m;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lt1/f;

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    invoke-direct {v1, v2, v3}, Ls1/a;-><init>(Lt1/f;I)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    aput-object v1, v0, v2

    .line 45
    .line 46
    new-instance v1, Ls1/a;

    .line 47
    .line 48
    iget-object p1, p1, Lv1/m;->c:Ljava/lang/Object;

    .line 49
    .line 50
    move-object v4, p1

    .line 51
    check-cast v4, Lt1/f;

    .line 52
    .line 53
    invoke-direct {v1, v4, v2}, Ls1/a;-><init>(Lt1/f;I)V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    aput-object v1, v0, v2

    .line 58
    .line 59
    new-instance v1, Ls1/a;

    .line 60
    .line 61
    move-object v4, p1

    .line 62
    check-cast v4, Lt1/f;

    .line 63
    .line 64
    invoke-direct {v1, v4, v2}, Ls1/a;-><init>(Lt1/f;I)V

    .line 65
    .line 66
    .line 67
    aput-object v1, v0, v3

    .line 68
    .line 69
    new-instance v1, Ls1/d;

    .line 70
    .line 71
    move-object v2, p1

    .line 72
    check-cast v2, Lt1/f;

    .line 73
    .line 74
    const-string v3, "tracker"

    .line 75
    .line 76
    invoke-static {v2, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v2}, Ls1/b;-><init>(Lt1/f;)V

    .line 80
    .line 81
    .line 82
    const/4 v2, 0x5

    .line 83
    aput-object v1, v0, v2

    .line 84
    .line 85
    new-instance v1, Ls1/c;

    .line 86
    .line 87
    check-cast p1, Lt1/f;

    .line 88
    .line 89
    invoke-static {p1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, p1}, Ls1/b;-><init>(Lt1/f;)V

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x6

    .line 96
    aput-object v1, v0, p1

    .line 97
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object p2, p0, Lr1/c;->a:Lr1/b;

    .line 102
    .line 103
    iput-object v0, p0, Lr1/c;->b:[Ls1/b;

    .line 104
    .line 105
    new-instance p1, Ljava/lang/Object;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Lr1/c;->c:Ljava/lang/Object;

    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "workSpecId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr1/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lr1/c;->b:[Ls1/b;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v4, v2, :cond_1

    .line 15
    .line 16
    aget-object v5, v1, v4

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v6, v5, Ls1/b;->d:Ljava/lang/Object;

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ls1/b;->b(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    iget-object v6, v5, Ls1/b;->c:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const/4 v5, 0x0

    .line 46
    :goto_1
    if-eqz v5, :cond_2

    .line 47
    .line 48
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget v1, Lr1/d;->a:I

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_2
    if-nez v5, :cond_3

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    :cond_3
    monitor-exit v0

    .line 61
    return v3

    .line 62
    :goto_2
    monitor-exit v0

    .line 63
    throw p1
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 8

    .line 1
    const-string v0, "workSpecs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr1/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lr1/c;->b:[Ls1/b;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v4, v2, :cond_1

    .line 15
    .line 16
    aget-object v5, v1, v4

    .line 17
    .line 18
    iget-object v6, v5, Ls1/b;->e:Lr1/c;

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    iput-object v6, v5, Ls1/b;->e:Lr1/c;

    .line 24
    .line 25
    iget-object v7, v5, Ls1/b;->d:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v5, v6, v7}, Ls1/b;->d(Lr1/c;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_3

    .line 35
    :cond_1
    iget-object v1, p0, Lr1/c;->b:[Ls1/b;

    .line 36
    .line 37
    array-length v2, v1

    .line 38
    move v4, v3

    .line 39
    :goto_1
    if-ge v4, v2, :cond_2

    .line 40
    .line 41
    aget-object v5, v1, v4

    .line 42
    .line 43
    invoke-virtual {v5, p1}, Ls1/b;->c(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object p1, p0, Lr1/c;->b:[Ls1/b;

    .line 50
    .line 51
    array-length v1, p1

    .line 52
    :goto_2
    if-ge v3, v1, :cond_4

    .line 53
    .line 54
    aget-object v2, p1, v3

    .line 55
    .line 56
    iget-object v4, v2, Ls1/b;->e:Lr1/c;

    .line 57
    .line 58
    if-eq v4, p0, :cond_3

    .line 59
    .line 60
    iput-object p0, v2, Ls1/b;->e:Lr1/c;

    .line 61
    .line 62
    iget-object v4, v2, Ls1/b;->d:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {v2, p0, v4}, Ls1/b;->d(Lr1/c;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_3
    monitor-exit v0

    .line 73
    throw p1
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lr1/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lr1/c;->b:[Ls1/b;

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v2, :cond_1

    .line 9
    .line 10
    aget-object v4, v1, v3

    .line 11
    .line 12
    iget-object v5, v4, Ls1/b;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    xor-int/lit8 v6, v6, 0x1

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v5, v4, Ls1/b;->a:Lt1/f;

    .line 26
    .line 27
    invoke-virtual {v5, v4}, Lt1/f;->b(Ls1/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    throw v1
.end method
