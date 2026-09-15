.class public final Lg5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk5/a;


# instance fields
.field public a:Lx4/u;

.field public b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayDeque;

.field public final synthetic d:Lg5/g;


# direct methods
.method public constructor <init>(Lg5/g;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg5/e;->d:Lg5/g;

    .line 5
    .line 6
    sget-object v0, Lx4/u;->b:Lx4/u;

    .line 7
    .line 8
    iput-object v0, p0, Lg5/e;->a:Lx4/u;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lg5/e;->c:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    iget-object v1, p1, Lg5/g;->a:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object p1, p1, Lg5/g;->a:Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lg5/e;->a(Ljava/io/File;)Lg5/a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p1, Lg5/g;->a:Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    new-instance v1, Lg5/c;

    .line 44
    .line 45
    iget-object p1, p1, Lg5/g;->a:Ljava/io/File;

    .line 46
    .line 47
    const-string v2, "rootFile"

    .line 48
    .line 49
    invoke-static {p1, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p1}, Lg5/f;-><init>(Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object p1, Lx4/u;->c:Lx4/u;

    .line 60
    .line 61
    iput-object p1, p0, Lg5/e;->a:Lx4/u;

    .line 62
    .line 63
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lg5/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lg5/e;->d:Lg5/g;

    .line 2
    .line 3
    iget-object v0, v0, Lg5/g;->b:Lg5/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lg5/b;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lg5/b;-><init>(Lg5/e;Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Landroidx/fragment/app/u;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    new-instance v0, Lg5/d;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1}, Lg5/d;-><init>(Lg5/e;Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object v0
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lg5/e;->a:Lx4/u;

    .line 2
    .line 3
    sget-object v1, Lx4/u;->d:Lx4/u;

    .line 4
    .line 5
    if-eq v0, v1, :cond_7

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eq v0, v3, :cond_5

    .line 17
    .line 18
    iput-object v1, p0, Lg5/e;->a:Lx4/u;

    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lg5/e;->c:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lg5/f;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    invoke-virtual {v1}, Lg5/f;->a()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, v1, Lg5/f;->a:Ljava/io/File;

    .line 43
    .line 44
    invoke-static {v3, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v5, p0, Lg5/e;->d:Lg5/g;

    .line 61
    .line 62
    iget v5, v5, Lg5/g;->c:I

    .line 63
    .line 64
    if-lt v1, v5, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p0, v3}, Lg5/e;->a(Ljava/io/File;)Lg5/a;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    :goto_1
    move-object v0, v3

    .line 76
    :goto_2
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iput-object v0, p0, Lg5/e;->b:Ljava/lang/Object;

    .line 79
    .line 80
    sget-object v0, Lx4/u;->a:Lx4/u;

    .line 81
    .line 82
    iput-object v0, p0, Lg5/e;->a:Lx4/u;

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    sget-object v0, Lx4/u;->c:Lx4/u;

    .line 86
    .line 87
    iput-object v0, p0, Lg5/e;->a:Lx4/u;

    .line 88
    .line 89
    :goto_3
    iget-object v0, p0, Lg5/e;->a:Lx4/u;

    .line 90
    .line 91
    sget-object v1, Lx4/u;->a:Lx4/u;

    .line 92
    .line 93
    if-ne v0, v1, :cond_5

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    move v2, v4

    .line 97
    :cond_6
    :goto_4
    return v2

    .line 98
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string v1, "Failed requirement."

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg5/e;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lx4/u;->b:Lx4/u;

    .line 8
    .line 9
    iput-object v0, p0, Lg5/e;->a:Lx4/u;

    .line 10
    .line 11
    iget-object v0, p0, Lg5/e;->b:Ljava/lang/Object;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final d()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic hasNext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg5/e;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg5/e;->c()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic remove()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg5/e;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    throw v0
.end method
