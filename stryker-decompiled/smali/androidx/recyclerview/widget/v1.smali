.class public final Landroidx/recyclerview/widget/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:[Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroidx/recyclerview/widget/u1;

.field public g:Landroidx/recyclerview/widget/t1;

.field public h:I

.field public final i:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/u1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/v1;->i:Ljava/lang/Class;

    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, [Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Landroidx/recyclerview/widget/v1;->h:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/v1;->g()V

    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    instance-of v1, v0, Landroidx/recyclerview/widget/t1;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/v1;->g:Landroidx/recyclerview/widget/t1;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/recyclerview/widget/t1;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/t1;-><init>(Landroidx/recyclerview/widget/u1;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/v1;->g:Landroidx/recyclerview/widget/t1;

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->g:Landroidx/recyclerview/widget/t1;

    iput-object v0, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/v1;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 5
    .line 6
    instance-of v1, v0, Landroidx/recyclerview/widget/t1;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroidx/recyclerview/widget/t1;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/recyclerview/widget/t1;->b:Landroidx/recyclerview/widget/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/c;->a()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/v1;->g:Landroidx/recyclerview/widget/t1;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, v1, Landroidx/recyclerview/widget/t1;->a:Landroidx/recyclerview/widget/u1;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ge v0, p3, :cond_b

    .line 5
    .line 6
    add-int v3, v0, p3

    .line 7
    .line 8
    div-int/lit8 v3, v3, 0x2

    .line 9
    .line 10
    aget-object v4, p2, v3

    .line 11
    .line 12
    iget-object v5, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 13
    .line 14
    invoke-virtual {v5, v4, p1}, Landroidx/recyclerview/widget/u1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-gez v5, :cond_0

    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    move v0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-nez v5, :cond_a

    .line 25
    .line 26
    iget-object p2, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 27
    .line 28
    invoke-virtual {p2, v4, p1}, Landroidx/recyclerview/widget/u1;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    return v3

    .line 35
    :cond_1
    add-int/lit8 p2, v3, -0x1

    .line 36
    .line 37
    :goto_1
    if-lt p2, v0, :cond_4

    .line 38
    .line 39
    iget-object v4, p0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 40
    .line 41
    aget-object v4, v4, p2

    .line 42
    .line 43
    iget-object v5, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 44
    .line 45
    invoke-virtual {v5, v4, p1}, Landroidx/recyclerview/widget/u1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 53
    .line 54
    invoke-virtual {v5, v4, p1}, Landroidx/recyclerview/widget/u1;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    :goto_2
    add-int/lit8 p2, v3, 0x1

    .line 65
    .line 66
    :goto_3
    if-ge p2, p3, :cond_7

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 69
    .line 70
    aget-object v0, v0, p2

    .line 71
    .line 72
    iget-object v4, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 73
    .line 74
    invoke-virtual {v4, v0, p1}, Landroidx/recyclerview/widget/u1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_5

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_5
    iget-object v4, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 82
    .line 83
    invoke-virtual {v4, v0, p1}, Landroidx/recyclerview/widget/u1;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_7
    :goto_4
    move p2, v1

    .line 94
    :goto_5
    if-ne p4, v2, :cond_9

    .line 95
    .line 96
    if-ne p2, v1, :cond_8

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :cond_8
    move v3, p2

    .line 100
    :goto_6
    return v3

    .line 101
    :cond_9
    return p2

    .line 102
    :cond_a
    move p3, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_b
    if-ne p4, v2, :cond_c

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_c
    move v0, v1

    .line 108
    :goto_7
    return v0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/v1;->h:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v1, p0, Landroidx/recyclerview/widget/v1;->e:I

    .line 12
    .line 13
    if-lt p1, v1, :cond_0

    .line 14
    .line 15
    sub-int/2addr p1, v1

    .line 16
    iget v1, p0, Landroidx/recyclerview/widget/v1;->c:I

    .line 17
    .line 18
    add-int/2addr p1, v1

    .line 19
    aget-object p1, v0, p1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object p1, v0, p1

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 28
    .line 29
    const-string v1, "Asked to get item at "

    .line 30
    .line 31
    const-string v2, " but size is "

    .line 32
    .line 33
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget v1, p0, Landroidx/recyclerview/widget/v1;->h:I

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/v1;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, Landroidx/recyclerview/widget/v1;->h:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/recyclerview/widget/v1;->c(Ljava/lang/Object;[Ljava/lang/Object;II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, -0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 18
    .line 19
    add-int/lit8 v1, p1, 0x1

    .line 20
    .line 21
    iget v2, p0, Landroidx/recyclerview/widget/v1;->h:I

    .line 22
    .line 23
    sub-int/2addr v2, p1

    .line 24
    const/4 v3, 0x1

    .line 25
    sub-int/2addr v2, v3

    .line 26
    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Landroidx/recyclerview/widget/v1;->h:I

    .line 30
    .line 31
    sub-int/2addr v0, v3

    .line 32
    iput v0, p0, Landroidx/recyclerview/widget/v1;->h:I

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object v2, v1, v0

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 40
    .line 41
    invoke-interface {v0, p1, v3}, Landroidx/recyclerview/widget/c0;->onRemoved(II)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final f([Ljava/lang/Object;)I
    .locals 9

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    move v2, v1

    .line 13
    move v1, v0

    .line 14
    :goto_0
    array-length v3, p1

    .line 15
    if-ge v0, v3, :cond_7

    .line 16
    .line 17
    aget-object v3, p1, v0

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 20
    .line 21
    aget-object v5, p1, v2

    .line 22
    .line 23
    invoke-virtual {v4, v5, v3}, Landroidx/recyclerview/widget/u1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_5

    .line 28
    .line 29
    move v4, v2

    .line 30
    :goto_1
    const/4 v5, -0x1

    .line 31
    if-ge v4, v1, :cond_2

    .line 32
    .line 33
    iget-object v6, p0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 34
    .line 35
    aget-object v7, p1, v4

    .line 36
    .line 37
    invoke-virtual {v6, v7, v3}, Landroidx/recyclerview/widget/u1;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v4, v5

    .line 48
    :goto_2
    if-eq v4, v5, :cond_3

    .line 49
    .line 50
    aput-object v3, p1, v4

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    if-eq v1, v0, :cond_4

    .line 54
    .line 55
    aput-object v3, p1, v1

    .line 56
    .line 57
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    if-eq v1, v0, :cond_6

    .line 61
    .line 62
    aput-object v3, p1, v1

    .line 63
    .line 64
    :cond_6
    add-int/lit8 v2, v1, 0x1

    .line 65
    .line 66
    move v8, v2

    .line 67
    move v2, v1

    .line 68
    move v1, v8

    .line 69
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_7
    return v1
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/v1;->b:[Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
