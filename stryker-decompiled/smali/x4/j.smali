.class public final Lx4/j;
.super Lx4/g;
.source "SourceFile"


# static fields
.field public static final d:[Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lx4/j;->d:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lx4/g;-><init>()V

    sget-object v0, Lx4/j;->d:[Ljava/lang/Object;

    iput-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lx4/j;->c:I

    return v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 7

    sget-object v0, Lx4/f;->Companion:Lx4/c;

    iget v1, p0, Lx4/j;->c:I

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lx4/c;->b(II)V

    iget v0, p0, Lx4/j;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lx4/j;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "<this>"

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-nez p1, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Lx4/j;->g(I)V

    iget p1, p0, Lx4/j;->a:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 3
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    :cond_1
    sub-int/2addr p1, v2

    iput p1, p0, Lx4/j;->a:I

    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 4
    aput-object p2, v0, p1

    iget p1, p0, Lx4/j;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lx4/j;->c:I

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0, v0}, Lx4/j;->g(I)V

    iget v0, p0, Lx4/j;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lx4/j;->i(I)I

    move-result v0

    iget v3, p0, Lx4/j;->c:I

    add-int/lit8 v4, v3, 0x1

    shr-int/2addr v4, v2

    const/4 v5, 0x0

    if-ge p1, v4, :cond_6

    if-nez v0, :cond_3

    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 6
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 p1, v0, -0x1

    :goto_0
    iget v0, p0, Lx4/j;->a:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    :cond_4
    sub-int/2addr v0, v2

    iget v1, p0, Lx4/j;->a:I

    iget-object v3, p0, Lx4/j;->b:[Ljava/lang/Object;

    if-lt p1, v1, :cond_5

    .line 7
    aget-object v4, v3, v1

    aput-object v4, v3, v0

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, p1, 0x1

    invoke-static {v3, v3, v1, v4, v5}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v1, -0x1

    array-length v6, v3

    invoke-static {v3, v3, v4, v1, v6}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v1, p0, Lx4/j;->b:[Ljava/lang/Object;

    array-length v3, v1

    sub-int/2addr v3, v2

    aget-object v4, v1, v5

    aput-object v4, v1, v3

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, v1, v5, v2, v3}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_1
    iget-object v1, p0, Lx4/j;->b:[Ljava/lang/Object;

    aput-object p2, v1, p1

    iput v0, p0, Lx4/j;->a:I

    goto :goto_3

    :cond_6
    iget p1, p0, Lx4/j;->a:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lx4/j;->i(I)I

    move-result p1

    iget-object v1, p0, Lx4/j;->b:[Ljava/lang/Object;

    if-ge v0, p1, :cond_7

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v1, v3, v0, p1}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_2

    :cond_7
    invoke-static {v1, v1, v2, v5, p1}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    array-length v1, p1

    sub-int/2addr v1, v2

    aget-object v1, p1, v1

    aput-object v1, p1, v5

    add-int/lit8 v1, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {p1, p1, v1, v0, v3}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_2
    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    aput-object p2, p1, v0

    :goto_3
    iget p1, p0, Lx4/j;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lx4/j;->c:I

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lx4/j;->e(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 8

    const-string v0, "elements"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx4/f;->Companion:Lx4/c;

    iget v1, p0, Lx4/j;->c:I

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lx4/c;->b(II)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lx4/j;->c:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lx4/j;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lx4/j;->g(I)V

    iget v0, p0, Lx4/j;->a:I

    iget v2, p0, Lx4/j;->c:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lx4/j;->i(I)I

    move-result v0

    iget v2, p0, Lx4/j;->a:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lx4/j;->i(I)I

    move-result v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    iget v4, p0, Lx4/j;->c:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_7

    iget p1, p0, Lx4/j;->a:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_4

    if-ltz v0, :cond_2

    iget-object v1, p0, Lx4/j;->b:[Ljava/lang/Object;

    invoke-static {v1, v1, v0, p1, v2}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lx4/j;->b:[Ljava/lang/Object;

    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_3

    invoke-static {v4, v4, v0, p1, v2}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    add-int v6, p1, v7

    invoke-static {v4, v4, v0, p1, v6}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    iget v4, p0, Lx4/j;->a:I

    add-int/2addr v4, v7

    invoke-static {p1, p1, v1, v4, v2}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lx4/j;->b:[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v4, v4, v0, p1, v6}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    if-lt v3, v2, :cond_5

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v2}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_5
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v3}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    invoke-static {p1, p1, v1, v3, v2}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    iput v0, p0, Lx4/j;->a:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_6

    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 2
    array-length p1, p1

    add-int/2addr v2, p1

    .line 3
    :cond_6
    :goto_1
    invoke-virtual {p0, v2, p2}, Lx4/j;->f(ILjava/util/Collection;)V

    goto :goto_3

    :cond_7
    add-int p1, v2, v3

    if-ge v2, v0, :cond_a

    add-int/2addr v3, v0

    iget-object v4, p0, Lx4/j;->b:[Ljava/lang/Object;

    array-length v6, v4

    if-gt v3, v6, :cond_8

    :goto_2
    invoke-static {v4, v4, p1, v2, v0}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_8
    array-length v6, v4

    if-lt p1, v6, :cond_9

    array-length v1, v4

    sub-int/2addr p1, v1

    goto :goto_2

    :cond_9
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    invoke-static {v4, v4, v1, v3, v0}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    invoke-static {v0, v0, p1, v2, v3}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_a
    iget-object v4, p0, Lx4/j;->b:[Ljava/lang/Object;

    invoke-static {v4, v4, v3, v1, v0}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    array-length v4, v0

    if-lt p1, v4, :cond_b

    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    invoke-static {v0, v0, p1, v2, v1}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_b
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    invoke-static {v0, v0, v1, v4, v6}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v0, p1, v2, v1}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :goto_3
    return v5
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "elements"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lx4/j;->a()I

    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lx4/j;->g(I)V

    iget v0, p0, Lx4/j;->a:I

    .line 6
    invoke-virtual {p0}, Lx4/j;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, v1}, Lx4/j;->i(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lx4/j;->f(ILjava/util/Collection;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final clear()V
    .locals 7

    .line 1
    iget v0, p0, Lx4/j;->a:I

    .line 2
    .line 3
    iget v1, p0, Lx4/j;->c:I

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    invoke-virtual {p0, v1}, Lx4/j;->i(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lx4/j;->a:I

    .line 11
    .line 12
    const-string v2, "<this>"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    iget-object v5, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v5, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v5, v1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lx4/j;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    xor-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 36
    .line 37
    iget v5, p0, Lx4/j;->a:I

    .line 38
    .line 39
    array-length v6, v1

    .line 40
    invoke-static {v1, v5, v6, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {v1, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v4, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    iput v4, p0, Lx4/j;->a:I

    .line 52
    .line 53
    iput v4, p0, Lx4/j;->c:I

    .line 54
    .line 55
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lx4/j;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lx4/f;->Companion:Lx4/c;

    .line 2
    .line 3
    iget v1, p0, Lx4/j;->c:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v1}, Lx4/c;->a(II)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lv1/f;->v(Ljava/util/List;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lx4/j;->j()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lx4/j;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 33
    .line 34
    iget v2, p0, Lx4/j;->a:I

    .line 35
    .line 36
    aget-object v3, p1, v2

    .line 37
    .line 38
    aput-object v1, p1, v2

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lx4/j;->h(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lx4/j;->a:I

    .line 45
    .line 46
    iget p1, p0, Lx4/j;->c:I

    .line 47
    .line 48
    sub-int/2addr p1, v0

    .line 49
    iput p1, p0, Lx4/j;->c:I

    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 53
    .line 54
    const-string v0, "ArrayDeque is empty."

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    iget v2, p0, Lx4/j;->a:I

    .line 61
    .line 62
    add-int/2addr v2, p1

    .line 63
    invoke-virtual {p0, v2}, Lx4/j;->i(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget-object v3, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 68
    .line 69
    aget-object v4, v3, v2

    .line 70
    .line 71
    iget v5, p0, Lx4/j;->c:I

    .line 72
    .line 73
    shr-int/2addr v5, v0

    .line 74
    const/4 v6, 0x0

    .line 75
    if-ge p1, v5, :cond_4

    .line 76
    .line 77
    iget p1, p0, Lx4/j;->a:I

    .line 78
    .line 79
    if-lt v2, p1, :cond_3

    .line 80
    .line 81
    add-int/lit8 v5, p1, 0x1

    .line 82
    .line 83
    invoke-static {v3, v3, v5, p1, v2}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-static {v3, v3, v0, v6, v2}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 91
    .line 92
    array-length v2, p1

    .line 93
    sub-int/2addr v2, v0

    .line 94
    aget-object v2, p1, v2

    .line 95
    .line 96
    aput-object v2, p1, v6

    .line 97
    .line 98
    iget v2, p0, Lx4/j;->a:I

    .line 99
    .line 100
    add-int/lit8 v3, v2, 0x1

    .line 101
    .line 102
    array-length v5, p1

    .line 103
    sub-int/2addr v5, v0

    .line 104
    invoke-static {p1, p1, v3, v2, v5}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 108
    .line 109
    iget v2, p0, Lx4/j;->a:I

    .line 110
    .line 111
    aput-object v1, p1, v2

    .line 112
    .line 113
    invoke-virtual {p0, v2}, Lx4/j;->h(I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iput p1, p0, Lx4/j;->a:I

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    iget p1, p0, Lx4/j;->a:I

    .line 121
    .line 122
    invoke-static {p0}, Lv1/f;->v(Ljava/util/List;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    add-int/2addr v3, p1

    .line 127
    invoke-virtual {p0, v3}, Lx4/j;->i(I)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iget-object v3, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 132
    .line 133
    add-int/lit8 v5, v2, 0x1

    .line 134
    .line 135
    if-gt v2, p1, :cond_5

    .line 136
    .line 137
    add-int/lit8 v6, p1, 0x1

    .line 138
    .line 139
    invoke-static {v3, v3, v2, v5, v6}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    array-length v7, v3

    .line 144
    invoke-static {v3, v3, v2, v5, v7}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 148
    .line 149
    array-length v3, v2

    .line 150
    sub-int/2addr v3, v0

    .line 151
    aget-object v5, v2, v6

    .line 152
    .line 153
    aput-object v5, v2, v3

    .line 154
    .line 155
    add-int/lit8 v3, p1, 0x1

    .line 156
    .line 157
    invoke-static {v2, v2, v6, v0, v3}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 158
    .line 159
    .line 160
    :goto_1
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 161
    .line 162
    aput-object v1, v2, p1

    .line 163
    .line 164
    :goto_2
    iget p1, p0, Lx4/j;->c:I

    .line 165
    .line 166
    sub-int/2addr p1, v0

    .line 167
    iput p1, p0, Lx4/j;->c:I

    .line 168
    .line 169
    return-object v4
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lx4/j;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lx4/j;->g(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 11
    .line 12
    iget v1, p0, Lx4/j;->a:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lx4/j;->a()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v1

    .line 19
    invoke-virtual {p0, v2}, Lx4/j;->i(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    aput-object p1, v0, v1

    .line 24
    .line 25
    invoke-virtual {p0}, Lx4/j;->a()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    iput p1, p0, Lx4/j;->c:I

    .line 32
    .line 33
    return-void
.end method

.method public final f(ILjava/util/Collection;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    :goto_0
    if-ge p1, v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v2, p1

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p1, p0, Lx4/j;->a:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1
    if-ge v1, p1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    aput-object v3, v2, v1

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lx4/j;->a()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    add-int/2addr p2, p1

    .line 58
    iput p2, p0, Lx4/j;->c:I

    .line 59
    .line 60
    return-void
.end method

.method public final g(I)V
    .locals 4

    .line 1
    if-ltz p1, :cond_6

    .line 2
    .line 3
    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-gt p1, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v1, Lx4/j;->d:[Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    move p1, v0

    .line 18
    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    array-length v1, v0

    .line 24
    shr-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    add-int/2addr v1, v2

    .line 27
    sub-int v2, v1, p1

    .line 28
    .line 29
    if-gez v2, :cond_3

    .line 30
    .line 31
    move v1, p1

    .line 32
    :cond_3
    const v2, 0x7ffffff7

    .line 33
    .line 34
    .line 35
    sub-int v3, v1, v2

    .line 36
    .line 37
    if-lez v3, :cond_5

    .line 38
    .line 39
    if-le p1, v2, :cond_4

    .line 40
    .line 41
    const p1, 0x7fffffff

    .line 42
    .line 43
    .line 44
    move v1, p1

    .line 45
    goto :goto_0

    .line 46
    :cond_4
    move v1, v2

    .line 47
    :cond_5
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    iget v1, p0, Lx4/j;->a:I

    .line 50
    .line 51
    array-length v2, v0

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {v0, p1, v3, v1, v2}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 57
    .line 58
    array-length v1, v0

    .line 59
    iget v2, p0, Lx4/j;->a:I

    .line 60
    .line 61
    sub-int/2addr v1, v2

    .line 62
    invoke-static {v0, p1, v1, v3, v2}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 63
    .line 64
    .line 65
    iput v3, p0, Lx4/j;->a:I

    .line 66
    .line 67
    iput-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v0, "Deque is too big."

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lx4/f;->Companion:Lx4/c;

    .line 2
    .line 3
    iget v1, p0, Lx4/j;->c:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v1}, Lx4/c;->a(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 12
    .line 13
    iget v1, p0, Lx4/j;->a:I

    .line 14
    .line 15
    add-int/2addr v1, p1

    .line 16
    invoke-virtual {p0, v1}, Lx4/j;->i(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    aget-object p1, v0, p1

    .line 21
    .line 22
    return-object p1
.end method

.method public final h(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    array-length v0, v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    :goto_0
    return p1
.end method

.method public final i(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v0, v0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lx4/j;->a:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lx4/j;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lx4/j;->i(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lx4/j;->a:I

    .line 13
    .line 14
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    :goto_0
    if-ge v1, v0, :cond_5

    .line 17
    .line 18
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v2, v2, v1

    .line 21
    .line 22
    invoke-static {p1, v2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    :goto_1
    iget p1, p0, Lx4/j;->a:I

    .line 29
    .line 30
    sub-int/2addr v1, p1

    .line 31
    return v1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-lt v1, v0, :cond_5

    .line 36
    .line 37
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 38
    .line 39
    array-length v2, v2

    .line 40
    :goto_2
    if-ge v1, v2, :cond_3

    .line 41
    .line 42
    iget-object v3, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 43
    .line 44
    aget-object v3, v3, v1

    .line 45
    .line 46
    invoke-static {p1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/4 v1, 0x0

    .line 57
    :goto_3
    if-ge v1, v0, :cond_5

    .line 58
    .line 59
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 60
    .line 61
    aget-object v2, v2, v1

    .line 62
    .line 63
    invoke-static {p1, v2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 70
    .line 71
    array-length p1, p1

    .line 72
    add-int/2addr v1, p1

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_5
    const/4 p1, -0x1

    .line 78
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx4/j;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final j()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lx4/j;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lx4/j;->a:I

    .line 8
    .line 9
    invoke-static {p0}, Lv1/f;->v(Ljava/util/List;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0, v1}, Lx4/j;->i(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v2, v1, v0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v3, v1, v0

    .line 24
    .line 25
    invoke-virtual {p0}, Lx4/j;->a()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    iput v0, p0, Lx4/j;->c:I

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 35
    .line 36
    const-string v1, "ArrayDeque is empty."

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lx4/j;->a:I

    .line 2
    .line 3
    iget v1, p0, Lx4/j;->c:I

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    invoke-virtual {p0, v1}, Lx4/j;->i(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lx4/j;->a:I

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    if-gt v1, v0, :cond_5

    .line 18
    .line 19
    :goto_0
    iget-object v3, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v3, v3, v0

    .line 22
    .line 23
    invoke-static {p1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    :goto_1
    iget p1, p0, Lx4/j;->a:I

    .line 30
    .line 31
    sub-int/2addr v0, p1

    .line 32
    return v0

    .line 33
    :cond_0
    if-eq v0, v1, :cond_5

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-le v1, v0, :cond_5

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    :goto_2
    if-ge v2, v0, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 45
    .line 46
    aget-object v1, v1, v0

    .line 47
    .line 48
    invoke-static {p1, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 55
    .line 56
    array-length p1, p1

    .line 57
    add-int/2addr v0, p1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 63
    .line 64
    const-string v1, "<this>"

    .line 65
    .line 66
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    array-length v0, v0

    .line 70
    add-int/lit8 v0, v0, -0x1

    .line 71
    .line 72
    iget v1, p0, Lx4/j;->a:I

    .line 73
    .line 74
    if-gt v1, v0, :cond_5

    .line 75
    .line 76
    :goto_3
    iget-object v3, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 77
    .line 78
    aget-object v3, v3, v0

    .line 79
    .line 80
    invoke-static {p1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    if-eq v0, v1, :cond_5

    .line 88
    .line 89
    add-int/lit8 v0, v0, -0x1

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    return v2
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lx4/j;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lx4/j;->d(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 11

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lx4/j;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_9

    .line 12
    .line 13
    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lx4/j;->a:I

    .line 21
    .line 22
    iget v2, p0, Lx4/j;->c:I

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    invoke-virtual {p0, v2}, Lx4/j;->i(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Lx4/j;->a:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-ge v2, v0, :cond_3

    .line 34
    .line 35
    move v5, v2

    .line 36
    :goto_0
    if-ge v2, v0, :cond_2

    .line 37
    .line 38
    iget-object v6, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 39
    .line 40
    aget-object v6, v6, v2

    .line 41
    .line 42
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    xor-int/2addr v7, v4

    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    iget-object v7, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 50
    .line 51
    add-int/lit8 v8, v5, 0x1

    .line 52
    .line 53
    aput-object v6, v7, v5

    .line 54
    .line 55
    move v5, v8

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v1, v4

    .line 58
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 62
    .line 63
    const-string v2, "<this>"

    .line 64
    .line 65
    invoke-static {p1, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v5, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_6

    .line 72
    :cond_3
    iget-object v5, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 73
    .line 74
    array-length v5, v5

    .line 75
    move v7, v1

    .line 76
    move v6, v2

    .line 77
    :goto_2
    if-ge v2, v5, :cond_5

    .line 78
    .line 79
    iget-object v8, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 80
    .line 81
    aget-object v9, v8, v2

    .line 82
    .line 83
    aput-object v3, v8, v2

    .line 84
    .line 85
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    xor-int/2addr v8, v4

    .line 90
    if-eqz v8, :cond_4

    .line 91
    .line 92
    iget-object v8, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 93
    .line 94
    add-int/lit8 v10, v6, 0x1

    .line 95
    .line 96
    aput-object v9, v8, v6

    .line 97
    .line 98
    move v6, v10

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    move v7, v4

    .line 101
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    invoke-virtual {p0, v6}, Lx4/j;->i(I)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    move v5, v2

    .line 109
    :goto_4
    if-ge v1, v0, :cond_7

    .line 110
    .line 111
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 112
    .line 113
    aget-object v6, v2, v1

    .line 114
    .line 115
    aput-object v3, v2, v1

    .line 116
    .line 117
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    xor-int/2addr v2, v4

    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 125
    .line 126
    aput-object v6, v2, v5

    .line 127
    .line 128
    invoke-virtual {p0, v5}, Lx4/j;->h(I)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    goto :goto_5

    .line 133
    :cond_6
    move v7, v4

    .line 134
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_7
    move v1, v7

    .line 138
    :goto_6
    if-eqz v1, :cond_9

    .line 139
    .line 140
    iget p1, p0, Lx4/j;->a:I

    .line 141
    .line 142
    sub-int/2addr v5, p1

    .line 143
    if-gez v5, :cond_8

    .line 144
    .line 145
    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 146
    .line 147
    array-length p1, p1

    .line 148
    add-int/2addr v5, p1

    .line 149
    :cond_8
    iput v5, p0, Lx4/j;->c:I

    .line 150
    .line 151
    :cond_9
    :goto_7
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 11

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lx4/j;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_9

    .line 12
    .line 13
    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lx4/j;->a:I

    .line 21
    .line 22
    iget v2, p0, Lx4/j;->c:I

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    invoke-virtual {p0, v2}, Lx4/j;->i(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Lx4/j;->a:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-ge v2, v0, :cond_3

    .line 34
    .line 35
    move v5, v2

    .line 36
    :goto_0
    if-ge v2, v0, :cond_2

    .line 37
    .line 38
    iget-object v6, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 39
    .line 40
    aget-object v6, v6, v2

    .line 41
    .line 42
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_1

    .line 47
    .line 48
    iget-object v7, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 49
    .line 50
    add-int/lit8 v8, v5, 0x1

    .line 51
    .line 52
    aput-object v6, v7, v5

    .line 53
    .line 54
    move v5, v8

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v1, v4

    .line 57
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 61
    .line 62
    const-string v2, "<this>"

    .line 63
    .line 64
    invoke-static {p1, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v5, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_6

    .line 71
    :cond_3
    iget-object v5, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 72
    .line 73
    array-length v5, v5

    .line 74
    move v7, v1

    .line 75
    move v6, v2

    .line 76
    :goto_2
    if-ge v2, v5, :cond_5

    .line 77
    .line 78
    iget-object v8, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 79
    .line 80
    aget-object v9, v8, v2

    .line 81
    .line 82
    aput-object v3, v8, v2

    .line 83
    .line 84
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_4

    .line 89
    .line 90
    iget-object v8, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 91
    .line 92
    add-int/lit8 v10, v6, 0x1

    .line 93
    .line 94
    aput-object v9, v8, v6

    .line 95
    .line 96
    move v6, v10

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move v7, v4

    .line 99
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {p0, v6}, Lx4/j;->i(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    move v5, v2

    .line 107
    :goto_4
    if-ge v1, v0, :cond_7

    .line 108
    .line 109
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 110
    .line 111
    aget-object v6, v2, v1

    .line 112
    .line 113
    aput-object v3, v2, v1

    .line 114
    .line 115
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    iget-object v2, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 122
    .line 123
    aput-object v6, v2, v5

    .line 124
    .line 125
    invoke-virtual {p0, v5}, Lx4/j;->h(I)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    goto :goto_5

    .line 130
    :cond_6
    move v7, v4

    .line 131
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_7
    move v1, v7

    .line 135
    :goto_6
    if-eqz v1, :cond_9

    .line 136
    .line 137
    iget p1, p0, Lx4/j;->a:I

    .line 138
    .line 139
    sub-int/2addr v5, p1

    .line 140
    if-gez v5, :cond_8

    .line 141
    .line 142
    iget-object p1, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 143
    .line 144
    array-length p1, p1

    .line 145
    add-int/2addr v5, p1

    .line 146
    :cond_8
    iput v5, p0, Lx4/j;->c:I

    .line 147
    .line 148
    :cond_9
    :goto_7
    return v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lx4/f;->Companion:Lx4/c;

    .line 2
    .line 3
    iget v1, p0, Lx4/j;->c:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v1}, Lx4/c;->a(II)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lx4/j;->a:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    invoke-virtual {p0, v0}, Lx4/j;->i(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v1, v0, p1

    .line 21
    .line 22
    aput-object p2, v0, p1

    .line 23
    .line 24
    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx4/j;->a()I

    move-result v0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lx4/j;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    const-string v0, "array"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    iget v1, p0, Lx4/j;->c:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>"

    invoke-static {p1, v0}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    iget v0, p0, Lx4/j;->a:I

    iget v1, p0, Lx4/j;->c:I

    add-int/2addr v1, v0

    .line 4
    invoke-virtual {p0, v1}, Lx4/j;->i(I)I

    move-result v4

    iget v3, p0, Lx4/j;->a:I

    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lg5/i;->e0([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lx4/j;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    iget v1, p0, Lx4/j;->a:I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lx4/j;->b:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lx4/j;->a:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v4}, Lg5/i;->d0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_2
    :goto_1
    array-length v0, p1

    iget v1, p0, Lx4/j;->c:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_3
    return-object p1
.end method
