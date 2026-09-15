.class public final Lt4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lu4/d;

.field public b:Lu4/d;


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;)Lu4/b;
    .locals 4

    .line 1
    const-string v0, "contextPath"

    .line 2
    .line 3
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lt4/a;->b([Ljava/lang/String;)Lu4/d;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Lu4/d;->c(Ljava/lang/String;)Lu4/d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "context"

    .line 15
    .line 16
    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lu4/d;->b:Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    new-instance v3, Lu4/a;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lu4/e;

    .line 63
    .line 64
    invoke-direct {v3, v1}, Lu4/a;-><init>(Lu4/e;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p1, Lu4/d;->c:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lu4/d;

    .line 88
    .line 89
    iget-object v1, v0, Lu4/d;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    new-instance v2, Lu4/a;

    .line 96
    .line 97
    invoke-direct {v2, v0}, Lu4/a;-><init>(Lu4/d;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    new-instance p1, Lu4/b;

    .line 105
    .line 106
    invoke-direct {p1, p2}, Lu4/b;-><init>(Ljava/util/ArrayList;)V

    .line 107
    .line 108
    .line 109
    return-object p1
.end method

.method public final b([Ljava/lang/String;)Lu4/d;
    .locals 4

    .line 1
    const-string v0, "contextPath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt4/a;->b:Lu4/d;

    .line 7
    .line 8
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lu4/d;->c(Ljava/lang/String;)Lu4/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lt4/a;->b([Ljava/lang/String;)Lu4/d;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Lu4/d;->b(Ljava/lang/String;)Lu4/e;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object p2, Lu4/e;->b:Lu4/e;

    .line 23
    .line 24
    invoke-static {p1, p2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    xor-int/lit8 p2, p2, 0x1

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object p1, p1, Lu4/e;->a:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return-object p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "contextName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lu4/d;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lu4/d;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lt4/a;->b:Lu4/d;

    .line 12
    .line 13
    iput-object p1, v0, Lu4/d;->d:Lu4/d;

    .line 14
    .line 15
    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Lu4/d;->c:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lt4/a;->b:Lu4/d;

    .line 24
    .line 25
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt4/a;->b:Lu4/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lu4/d;->d:Lu4/d;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lu4/d;->d:Lu4/d;

    .line 12
    .line 13
    iput-object v0, p0, Lt4/a;->b:Lu4/d;

    .line 14
    .line 15
    :cond_1
    return-void
.end method
