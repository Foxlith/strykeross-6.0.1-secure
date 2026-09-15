.class public abstract Lx4/l;
.super Lx4/k;
.source "SourceFile"


# direct methods
.method public static final t0(ILjava/util/List;)I
    .locals 5

    .line 1
    new-instance v0, Ln5/c;

    .line 2
    .line 3
    invoke-static {p1}, Lv1/f;->v(Ljava/util/List;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-direct {v0, v2, v1, v3}, Ln5/a;-><init>(III)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ln5/c;->a(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lv1/f;->v(Ljava/util/List;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    sub-int/2addr p1, p0

    .line 23
    return p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 25
    .line 26
    const-string v1, "Element index "

    .line 27
    .line 28
    const-string v4, " must be in range ["

    .line 29
    .line 30
    invoke-static {v1, p0, v4}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v1, Ln5/c;

    .line 35
    .line 36
    invoke-static {p1}, Lv1/f;->v(Ljava/util/List;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-direct {v1, v2, p1, v3}, Ln5/a;-><init>(III)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "]."

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public static final u0(ILjava/util/List;)I
    .locals 5

    .line 1
    new-instance v0, Ln5/c;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-direct {v0, v2, v1, v3}, Ln5/a;-><init>(III)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ln5/c;->a(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    sub-int/2addr p1, p0

    .line 23
    return p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 25
    .line 26
    const-string v1, "Position index "

    .line 27
    .line 28
    const-string v4, " must be in range ["

    .line 29
    .line 30
    invoke-static {v1, p0, v4}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v1, Ln5/c;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-direct {v1, v2, p1, v3}, Ln5/a;-><init>(III)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "]."

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public static v0(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
