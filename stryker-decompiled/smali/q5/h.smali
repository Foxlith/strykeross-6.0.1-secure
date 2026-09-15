.class public abstract Lq5/h;
.super Lq5/f;
.source "SourceFile"


# direct methods
.method public static final A1(IIILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    const-string v0, "<this>"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p4, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p5, :cond_0

    invoke-virtual {p3, p0, p4, p1, p2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_0
    move-object v0, p3

    move v1, p5

    move v2, p0

    move-object v3, p4

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final B1(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 4

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p4, :cond_3

    if-ltz p2, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p5

    if-gt p2, v1, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p5

    if-le p4, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_2

    add-int v2, p2, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p4, v1

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p1}, Li5/a;->K(CCZ)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static C1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lq5/h;->M1(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static D1(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "this as java.lang.String\u2026replace(oldChar, newChar)"

    .line 11
    .line 12
    invoke-static {p0, p1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static E1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0, p0, p1, v0}, Lq5/h;->r1(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v3, v2

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    sub-int/2addr v4, v2

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    add-int/2addr v5, v4

    .line 33
    if-ltz v5, :cond_4

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 38
    .line 39
    .line 40
    move v5, v0

    .line 41
    :cond_2
    invoke-virtual {v4, p0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int v5, v1, v2

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-ge v1, v6, :cond_3

    .line 54
    .line 55
    add-int/2addr v1, v3

    .line 56
    invoke-static {v1, p0, p1, v0}, Lq5/h;->r1(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-gtz v1, :cond_2

    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {v4, p0, v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string p1, "stringBuilder.append(this, i, length).toString()"

    .line 74
    .line 75
    invoke-static {p0, p1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-object p0

    .line 79
    :cond_4
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 80
    .line 81
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public static final F1(I)V
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "Limit must be non-negative, but was "

    .line 5
    .line 6
    invoke-static {v0, p0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static final G1(ILjava/lang/CharSequence;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7

    .line 1
    invoke-static {p0}, Lq5/h;->F1(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p1, p2, p3}, Lq5/h;->r1(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_7

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne p0, v3, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    if-lez p0, :cond_1

    .line 17
    .line 18
    move v4, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v4, v0

    .line 21
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/16 v6, 0xa

    .line 24
    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    if-le p0, v6, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v6, p0

    .line 31
    :cond_3
    :goto_1
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    :cond_4
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v0, v1

    .line 50
    if-eqz v4, :cond_5

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/lit8 v6, p0, -0x1

    .line 57
    .line 58
    if-eq v1, v6, :cond_6

    .line 59
    .line 60
    :cond_5
    invoke-static {v0, p1, p2, p3}, Lq5/h;->r1(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v1, v2, :cond_4

    .line 65
    .line 66
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return-object v5

    .line 82
    :cond_7
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lv1/f;->F(Ljava/lang/Object;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method

.method public static H1(Ljava/lang/CharSequence;[C)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    aget-char p1, p1, v2

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v2, p0, p1, v2}, Lq5/h;->G1(ILjava/lang/CharSequence;Ljava/lang/String;Z)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-static {v2}, Lq5/h;->F1(I)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lq5/c;

    .line 26
    .line 27
    new-instance v1, Lq5/g;

    .line 28
    .line 29
    invoke-direct {v1, p1, v2, v2}, Lq5/g;-><init>(Ljava/lang/Object;ZI)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0, v2, v2, v1}, Lq5/c;-><init>(Ljava/lang/CharSequence;IILq5/g;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lp5/l;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lp5/l;-><init>(Lq5/c;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {p1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Lp5/g;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ln5/c;

    .line 64
    .line 65
    invoke-static {p0, v0}, Lq5/h;->N1(Ljava/lang/CharSequence;Ln5/c;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object p0, v1

    .line 74
    :goto_1
    return-object p0
.end method

.method public static I1(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    aget-object v0, p1, v2

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v2, p0, v0, v2}, Lq5/h;->G1(ILjava/lang/CharSequence;Ljava/lang/String;Z)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    :goto_0
    invoke-static {p0, p1, v2, v2}, Lq5/h;->z1(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lq5/c;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lp5/l;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lp5/l;-><init>(Lq5/c;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-static {v0}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lp5/g;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ln5/c;

    .line 58
    .line 59
    invoke-static {p0, v0}, Lq5/h;->N1(Ljava/lang/CharSequence;Ln5/c;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-object p0, v1

    .line 68
    :goto_2
    return-object p0
.end method

.method public static J1(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 6

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, p2

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lq5/h;->A1(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static K1(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lq5/h;->A1(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static L1(Ljava/lang/CharSequence;C)Z
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0, p1, v1}, Li5/a;->K(CCZ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_0
    return v1
.end method

.method public static M1(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "prefix"

    .line 8
    .line 9
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    instance-of v0, p0, Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p0, p1, v0}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    move-object v0, p0

    .line 31
    move-object v3, p1

    .line 32
    invoke-static/range {v0 .. v5}, Lq5/h;->B1(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    :goto_0
    return p0
.end method

.method public static final N1(Ljava/lang/CharSequence;Ln5/c;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "range"

    .line 7
    .line 8
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Ln5/a;->a:I

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget p1, p1, Ln5/a;->b:I

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static O1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "delimiter"

    .line 7
    .line 8
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "missingDelimiterValue"

    .line 12
    .line 13
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x6

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p0, p1, v1, v1, v0}, Lq5/h;->u1(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    add-int/2addr p1, v0

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 40
    .line 41
    invoke-static {p0, p1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object p0
.end method

.method public static P1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/16 v2, 0x2e

    invoke-static {p0, v2, v0, v1}, Lq5/h;->x1(Ljava/lang/CharSequence;CII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v2, v0, :cond_4

    if-nez v3, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Li5/a;->m0(C)Z

    move-result v4

    if-nez v3, :cond_2

    if-nez v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    add-int/2addr v0, v1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static R1(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Li5/a;->m0(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    :cond_0
    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public static l1([CII)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lx4/f;->Companion:Lx4/c;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "startIndex: "

    .line 8
    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    if-gt p2, v1, :cond_1

    .line 12
    .line 13
    if-gt p1, p2, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/String;

    .line 16
    .line 17
    sub-int/2addr p2, p1

    .line 18
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, " > endIndex: "

    .line 25
    .line 26
    invoke-static {v0, p1, v1, p2}, Landroid/support/v4/media/session/a;->n(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ", endIndex: "

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ", size: "

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public static m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 9

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {p0, p1, v1, p2, v0}, Lq5/h;->u1(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-ltz p0, :cond_1

    .line 25
    .line 26
    :goto_0
    move v1, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v5, 0x0

    .line 29
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/4 v8, 0x0

    .line 34
    move-object v3, p0

    .line 35
    move-object v4, p1

    .line 36
    move v7, p2

    .line 37
    invoke-static/range {v3 .. v8}, Lq5/h;->s1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-ltz p0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    return v1
.end method

.method public static n1(Ljava/lang/CharSequence;C)Z
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v1, v1, v0}, Lq5/h;->t1(Ljava/lang/CharSequence;CIZI)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-ltz p0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method

.method public static o1(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p2, v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lq5/h;->A1(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static p1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final q1(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final r1(ILjava/lang/CharSequence;Ljava/lang/String;Z)I
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "string"

    .line 7
    .line 8
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p3, :cond_1

    .line 12
    .line 13
    instance-of v0, p1, Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v0, p1

    .line 31
    move-object v1, p2

    .line 32
    move v2, p0

    .line 33
    move v4, p3

    .line 34
    invoke-static/range {v0 .. v5}, Lq5/h;->s1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :goto_1
    return p0
.end method

.method public static final s1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p5, :cond_2

    .line 4
    .line 5
    new-instance p5, Ln5/c;

    .line 6
    .line 7
    if-gez p2, :cond_0

    .line 8
    .line 9
    move p2, v1

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-le p3, v1, :cond_1

    .line 15
    .line 16
    move p3, v1

    .line 17
    :cond_1
    const/4 v1, 0x1

    .line 18
    invoke-direct {p5, p2, p3, v1}, Ln5/a;-><init>(III)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-static {p0}, Lq5/h;->q1(Ljava/lang/CharSequence;)I

    .line 23
    .line 24
    .line 25
    move-result p5

    .line 26
    if-le p2, p5, :cond_3

    .line 27
    .line 28
    move p2, p5

    .line 29
    :cond_3
    if-gez p3, :cond_4

    .line 30
    .line 31
    move p3, v1

    .line 32
    :cond_4
    new-instance p5, Ln5/a;

    .line 33
    .line 34
    invoke-direct {p5, p2, p3, v0}, Ln5/a;-><init>(III)V

    .line 35
    .line 36
    .line 37
    :goto_0
    instance-of p2, p0, Ljava/lang/String;

    .line 38
    .line 39
    iget p3, p5, Ln5/a;->c:I

    .line 40
    .line 41
    iget v1, p5, Ln5/a;->b:I

    .line 42
    .line 43
    iget p5, p5, Ln5/a;->a:I

    .line 44
    .line 45
    if-eqz p2, :cond_8

    .line 46
    .line 47
    instance-of p2, p1, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz p2, :cond_8

    .line 50
    .line 51
    if-lez p3, :cond_5

    .line 52
    .line 53
    if-le p5, v1, :cond_6

    .line 54
    .line 55
    :cond_5
    if-gez p3, :cond_c

    .line 56
    .line 57
    if-gt v1, p5, :cond_c

    .line 58
    .line 59
    :cond_6
    :goto_1
    move-object v5, p1

    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    move-object v6, p0

    .line 64
    check-cast v6, Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    move v3, p5

    .line 71
    move v7, p4

    .line 72
    invoke-static/range {v2 .. v7}, Lq5/h;->A1(IIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_7

    .line 77
    .line 78
    return p5

    .line 79
    :cond_7
    if-eq p5, v1, :cond_c

    .line 80
    .line 81
    add-int/2addr p5, p3

    .line 82
    goto :goto_1

    .line 83
    :cond_8
    if-lez p3, :cond_9

    .line 84
    .line 85
    if-le p5, v1, :cond_a

    .line 86
    .line 87
    :cond_9
    if-gez p3, :cond_c

    .line 88
    .line 89
    if-gt v1, p5, :cond_c

    .line 90
    .line 91
    :cond_a
    :goto_2
    const/4 v4, 0x0

    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    move-object v2, p1

    .line 97
    move v3, p4

    .line 98
    move-object v5, p0

    .line 99
    move v6, p5

    .line 100
    invoke-static/range {v2 .. v7}, Lq5/h;->B1(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_b

    .line 105
    .line 106
    return p5

    .line 107
    :cond_b
    if-eq p5, v1, :cond_c

    .line 108
    .line 109
    add-int/2addr p5, p3

    .line 110
    goto :goto_2

    .line 111
    :cond_c
    return v0
.end method

.method public static t1(Ljava/lang/CharSequence;CIZI)I
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p2, v1

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move p3, v1

    .line 12
    :cond_1
    const-string p4, "<this>"

    .line 13
    .line 14
    invoke-static {p0, p4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-nez p3, :cond_3

    .line 18
    .line 19
    instance-of p4, p0, Ljava/lang/String;

    .line 20
    .line 21
    if-nez p4, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    goto :goto_1

    .line 31
    :cond_3
    :goto_0
    const/4 p4, 0x1

    .line 32
    new-array p4, p4, [C

    .line 33
    .line 34
    aput-char p1, p4, v1

    .line 35
    .line 36
    invoke-static {p2, p0, p3, p4}, Lq5/h;->v1(ILjava/lang/CharSequence;Z[C)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    :goto_1
    return p0
.end method

.method public static synthetic u1(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v1

    :cond_1
    invoke-static {p2, p0, p1, p3}, Lq5/h;->r1(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static final v1(ILjava/lang/CharSequence;Z[C)I
    .locals 9

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "chars"

    .line 7
    .line 8
    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    array-length v1, p3

    .line 15
    if-ne v1, v0, :cond_0

    .line 16
    .line 17
    instance-of v1, p1, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {p3}, Lg5/i;->n0([C)C

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_0
    new-instance v1, Ln5/c;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-gez p0, :cond_1

    .line 36
    .line 37
    move p0, v2

    .line 38
    :cond_1
    invoke-static {p1}, Lq5/h;->q1(Ljava/lang/CharSequence;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-direct {v1, p0, v3, v0}, Ln5/a;-><init>(III)V

    .line 43
    .line 44
    .line 45
    iget v3, v1, Ln5/a;->b:I

    .line 46
    .line 47
    iget v1, v1, Ln5/a;->c:I

    .line 48
    .line 49
    if-lez v1, :cond_3

    .line 50
    .line 51
    if-gt p0, v3, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v0, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    if-lt p0, v3, :cond_2

    .line 57
    .line 58
    :goto_0
    if-eqz v0, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    move p0, v3

    .line 62
    :goto_1
    if-eqz v0, :cond_9

    .line 63
    .line 64
    if-ne p0, v3, :cond_6

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    move v4, p0

    .line 69
    move v0, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 72
    .line 73
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_6
    add-int v4, p0, v1

    .line 78
    .line 79
    :goto_2
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    array-length v6, p3

    .line 84
    move v7, v2

    .line 85
    :goto_3
    if-ge v7, v6, :cond_8

    .line 86
    .line 87
    aget-char v8, p3, v7

    .line 88
    .line 89
    invoke-static {v8, v5, p2}, Li5/a;->K(CCZ)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-eqz v8, :cond_7

    .line 94
    .line 95
    return p0

    .line 96
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_8
    move p0, v4

    .line 100
    goto :goto_1

    .line 101
    :cond_9
    const/4 p0, -0x1

    .line 102
    return p0
.end method

.method public static w1(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    new-instance v0, Ln5/c;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sub-int/2addr v2, v1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v0, v3, v2, v1}, Ln5/a;-><init>(III)V

    .line 22
    .line 23
    .line 24
    instance-of v2, v0, Ljava/util/Collection;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ln5/a;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    move-object v2, v0

    .line 43
    check-cast v2, Ln5/b;

    .line 44
    .line 45
    iget-boolean v2, v2, Ln5/b;->c:Z

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    move-object v2, v0

    .line 50
    check-cast v2, Ln5/b;

    .line 51
    .line 52
    invoke-virtual {v2}, Ln5/b;->b()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Li5/a;->m0(C)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    move v1, v3

    .line 67
    :cond_2
    :goto_0
    return v1
.end method

.method public static x1(Ljava/lang/CharSequence;CII)I
    .locals 2

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lq5/h;->q1(Ljava/lang/CharSequence;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    :cond_0
    const-string p3, "<this>"

    .line 10
    .line 11
    invoke-static {p0, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    instance-of p3, p0, Ljava/lang/String;

    .line 15
    .line 16
    if-nez p3, :cond_5

    .line 17
    .line 18
    const/4 p3, 0x1

    .line 19
    new-array p3, p3, [C

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    aput-char p1, p3, v0

    .line 23
    .line 24
    instance-of p1, p0, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-static {p3}, Lg5/i;->n0([C)C

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    check-cast p0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {p0}, Lq5/h;->q1(Ljava/lang/CharSequence;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-le p2, p1, :cond_2

    .line 44
    .line 45
    move p2, p1

    .line 46
    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 47
    if-ge p1, p2, :cond_4

    .line 48
    .line 49
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    aget-char v1, p3, v0

    .line 54
    .line 55
    invoke-static {v1, p1, v0}, Li5/a;->K(CCZ)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    move p0, p2

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    move p0, p1

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    check-cast p0, Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    :goto_1
    return p0
.end method

.method public static y1(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lq5/h;->q1(Ljava/lang/CharSequence;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    const-string v0, "string"

    .line 12
    .line 13
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static z1(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lq5/c;
    .locals 3

    .line 1
    invoke-static {p3}, Lq5/h;->F1(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lg5/i;->a0([Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lq5/c;

    .line 9
    .line 10
    new-instance v1, Lq5/g;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p1, p2, v2}, Lq5/g;-><init>(Ljava/lang/Object;ZI)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-direct {v0, p0, p1, p3, v1}, Lq5/c;-><init>(Ljava/lang/CharSequence;IILq5/g;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
