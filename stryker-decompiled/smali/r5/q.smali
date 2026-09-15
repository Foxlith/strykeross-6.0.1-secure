.class public abstract Lr5/q;
.super Lr5/e;
.source "SourceFile"


# instance fields
.field public b:J

.field public c:Z

.field public d:Lr0/b;


# virtual methods
.method public abstract shutdown()V
.end method

.method public final t()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lr5/q;->b:J

    .line 2
    .line 3
    const-wide v2, 0x100000000L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    sub-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lr5/q;->b:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, p0, Lr5/q;->c:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lr5/q;->shutdown()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public abstract u()Ljava/lang/Thread;
.end method

.method public final v()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lr5/q;->d:Lr0/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget v2, v0, Lr0/b;->a:I

    .line 8
    .line 9
    iget v3, v0, Lr0/b;->b:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-ne v2, v3, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v3, v0, Lr0/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, [Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v6, v3, v2

    .line 21
    .line 22
    aput-object v5, v3, v2

    .line 23
    .line 24
    add-int/2addr v2, v4

    .line 25
    array-length v3, v3

    .line 26
    sub-int/2addr v3, v4

    .line 27
    and-int/2addr v2, v3

    .line 28
    iput v2, v0, Lr0/b;->a:I

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    move-object v5, v6

    .line 33
    :goto_0
    check-cast v5, Lr5/m;

    .line 34
    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v5}, Lr5/m;->run()V

    .line 39
    .line 40
    .line 41
    move v1, v4

    .line 42
    :goto_1
    return v1

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 44
    .line 45
    const-string v1, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method
