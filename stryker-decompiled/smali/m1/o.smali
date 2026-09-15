.class public final Lm1/o;
.super Lm1/w;
.source "SourceFile"


# virtual methods
.method public final b()Lm1/x;
    .locals 4

    .line 1
    new-instance v0, Lm1/p;

    .line 2
    .line 3
    iget-object v1, p0, Lm1/w;->a:Ljava/util/UUID;

    .line 4
    .line 5
    iget-object v2, p0, Lm1/w;->b:Lv1/p;

    .line 6
    .line 7
    iget-object v3, p0, Lm1/w;->c:Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lm1/x;-><init>(Ljava/util/UUID;Lv1/p;Ljava/util/LinkedHashSet;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final c()Lm1/w;
    .locals 0

    .line 1
    return-object p0
.end method
