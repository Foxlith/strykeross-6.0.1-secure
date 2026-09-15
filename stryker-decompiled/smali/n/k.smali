.class public Ln/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:[Ljava/lang/Object;

.field public static e:I

.field public static f:[Ljava/lang/Object;

.field public static g:I


# instance fields
.field public a:[I

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ln/d;->a:[I

    iput-object v0, p0, Ln/k;->a:[I

    sget-object v0, Ln/d;->c:[Ljava/lang/Object;

    iput-object v0, p0, Ln/k;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Ln/k;->c:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Ln/d;->a:[I

    iput-object p1, p0, Ln/k;->a:[I

    sget-object p1, Ln/d;->c:[Ljava/lang/Object;

    iput-object p1, p0, Ln/k;->b:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ln/k;->a(I)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Ln/k;->c:I

    return-void
.end method

.method public static c([I[Ljava/lang/Object;I)V
    .locals 7

    .line 1
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v0, v1, :cond_2

    const-class v0, Ln/k;

    monitor-enter v0

    :try_start_0
    sget v1, Ln/k;->g:I

    if-ge v1, v5, :cond_1

    sget-object v1, Ln/k;->f:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_0
    if-lt p0, v3, :cond_0

    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sput-object p1, Ln/k;->f:[Ljava/lang/Object;

    sget p0, Ln/k;->g:I

    add-int/2addr p0, v6

    sput p0, Ln/k;->g:I

    :cond_1
    monitor-exit v0

    goto :goto_4

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    const-class v0, Ln/k;

    monitor-enter v0

    :try_start_1
    sget v1, Ln/k;->e:I

    if-ge v1, v5, :cond_4

    sget-object v1, Ln/k;->d:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_2
    if-lt p0, v3, :cond_3

    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    sput-object p1, Ln/k;->d:[Ljava/lang/Object;

    sget p0, Ln/k;->e:I

    add-int/2addr p0, v6

    sput p0, Ln/k;->e:I

    :cond_4
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    const-class v0, Ln/k;

    monitor-enter v0

    :try_start_0
    sget-object v4, Ln/k;->f:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    iput-object v4, p0, Ln/k;->b:[Ljava/lang/Object;

    aget-object p1, v4, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Ln/k;->f:[Ljava/lang/Object;

    aget-object p1, v4, v3

    check-cast p1, [I

    iput-object p1, p0, Ln/k;->a:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget p1, Ln/k;->g:I

    sub-int/2addr p1, v3

    sput p1, Ln/k;->g:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-class v0, Ln/k;

    monitor-enter v0

    :try_start_1
    sget-object v4, Ln/k;->d:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    iput-object v4, p0, Ln/k;->b:[Ljava/lang/Object;

    aget-object p1, v4, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Ln/k;->d:[Ljava/lang/Object;

    aget-object p1, v4, v3

    check-cast p1, [I

    iput-object p1, p0, Ln/k;->a:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget p1, Ln/k;->e:I

    sub-int/2addr p1, v3

    sput p1, Ln/k;->e:I

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    :goto_2
    new-array v0, p1, [I

    iput-object v0, p0, Ln/k;->a:[I

    shl-int/2addr p1, v3

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ln/k;->b:[Ljava/lang/Object;

    return-void
.end method

.method public final b(I)V
    .locals 5

    .line 1
    iget v0, p0, Ln/k;->c:I

    iget-object v1, p0, Ln/k;->a:[I

    array-length v2, v1

    if-ge v2, p1, :cond_1

    iget-object v2, p0, Ln/k;->b:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ln/k;->a(I)V

    iget p1, p0, Ln/k;->c:I

    if-lez p1, :cond_0

    iget-object p1, p0, Ln/k;->a:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Ln/k;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-static {v1, v2, v0}, Ln/k;->c([I[Ljava/lang/Object;I)V

    :cond_1
    iget p1, p0, Ln/k;->c:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .locals 4

    .line 1
    iget v0, p0, Ln/k;->c:I

    if-lez v0, :cond_0

    iget-object v1, p0, Ln/k;->a:[I

    iget-object v2, p0, Ln/k;->b:[Ljava/lang/Object;

    sget-object v3, Ln/d;->a:[I

    iput-object v3, p0, Ln/k;->a:[I

    sget-object v3, Ln/d;->c:[Ljava/lang/Object;

    iput-object v3, p0, Ln/k;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Ln/k;->c:I

    invoke-static {v1, v2, v0}, Ln/k;->c([I[Ljava/lang/Object;I)V

    :cond_0
    iget v0, p0, Ln/k;->c:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/k;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/k;->g(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(ILjava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, Ln/k;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v1, p0, Ln/k;->a:[I

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0, p1, v1}, Ln/d;->a(II[I)I

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-gez v1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object v2, p0, Ln/k;->b:[Ljava/lang/Object;

    .line 17
    .line 18
    shl-int/lit8 v3, v1, 0x1

    .line 19
    .line 20
    aget-object v2, v2, v3

    .line 21
    .line 22
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 30
    .line 31
    :goto_0
    if-ge v2, v0, :cond_4

    .line 32
    .line 33
    iget-object v3, p0, Ln/k;->a:[I

    .line 34
    .line 35
    aget v3, v3, v2

    .line 36
    .line 37
    if-ne v3, p1, :cond_4

    .line 38
    .line 39
    iget-object v3, p0, Ln/k;->b:[Ljava/lang/Object;

    .line 40
    .line 41
    shl-int/lit8 v4, v2, 0x1

    .line 42
    .line 43
    aget-object v3, v3, v4

    .line 44
    .line 45
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 56
    .line 57
    :goto_1
    if-ltz v1, :cond_6

    .line 58
    .line 59
    iget-object v0, p0, Ln/k;->a:[I

    .line 60
    .line 61
    aget v0, v0, v1

    .line 62
    .line 63
    if-ne v0, p1, :cond_6

    .line 64
    .line 65
    iget-object v0, p0, Ln/k;->b:[Ljava/lang/Object;

    .line 66
    .line 67
    shl-int/lit8 v3, v1, 0x1

    .line 68
    .line 69
    aget-object v0, v0, v3

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    return v1

    .line 78
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    not-int p1, v2

    .line 82
    return p1

    .line 83
    :catch_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ln/k;->f()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ln/k;->d(ILjava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ln/k;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    check-cast p1, Ln/k;

    .line 11
    .line 12
    iget v1, p0, Ln/k;->c:I

    .line 13
    .line 14
    iget v3, p1, Ln/k;->c:I

    .line 15
    .line 16
    if-eq v1, v3, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    move v1, v2

    .line 20
    :goto_0
    :try_start_0
    iget v3, p0, Ln/k;->c:I

    .line 21
    .line 22
    if-ge v1, v3, :cond_5

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ln/k;->h(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0, v1}, Ln/k;->j(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual {p1, v3, v5}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ln/k;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_4

    .line 46
    .line 47
    :cond_2
    return v2

    .line 48
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-nez v3, :cond_4

    .line 53
    .line 54
    return v2

    .line 55
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    return v0

    .line 59
    :catch_0
    return v2

    .line 60
    :cond_6
    instance-of v1, p1, Ljava/util/Map;

    .line 61
    .line 62
    if-eqz v1, :cond_c

    .line 63
    .line 64
    check-cast p1, Ljava/util/Map;

    .line 65
    .line 66
    iget v1, p0, Ln/k;->c:I

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eq v1, v3, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    move v1, v2

    .line 76
    :goto_1
    :try_start_1
    iget v3, p0, Ln/k;->c:I

    .line 77
    .line 78
    if-ge v1, v3, :cond_b

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ln/k;->h(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p0, v1}, Ln/k;->j(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-nez v4, :cond_9

    .line 93
    .line 94
    if-nez v5, :cond_8

    .line 95
    .line 96
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_a

    .line 101
    .line 102
    :cond_8
    return v2

    .line 103
    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    if-nez v3, :cond_a

    .line 108
    .line 109
    return v2

    .line 110
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_b
    return v0

    .line 114
    :catch_1
    :cond_c
    return v2
.end method

.method public final f()I
    .locals 5

    .line 1
    iget v0, p0, Ln/k;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Ln/k;->a:[I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-static {v0, v2, v1}, Ln/d;->a(II[I)I

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    if-gez v1, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget-object v2, p0, Ln/k;->b:[Ljava/lang/Object;

    .line 18
    .line 19
    shl-int/lit8 v3, v1, 0x1

    .line 20
    .line 21
    aget-object v2, v2, v3

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    :goto_0
    if-ge v2, v0, :cond_4

    .line 29
    .line 30
    iget-object v3, p0, Ln/k;->a:[I

    .line 31
    .line 32
    aget v3, v3, v2

    .line 33
    .line 34
    if-nez v3, :cond_4

    .line 35
    .line 36
    iget-object v3, p0, Ln/k;->b:[Ljava/lang/Object;

    .line 37
    .line 38
    shl-int/lit8 v4, v2, 0x1

    .line 39
    .line 40
    aget-object v3, v3, v4

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    return v2

    .line 45
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    :goto_1
    if-ltz v1, :cond_6

    .line 51
    .line 52
    iget-object v0, p0, Ln/k;->a:[I

    .line 53
    .line 54
    aget v0, v0, v1

    .line 55
    .line 56
    if-nez v0, :cond_6

    .line 57
    .line 58
    iget-object v0, p0, Ln/k;->b:[Ljava/lang/Object;

    .line 59
    .line 60
    shl-int/lit8 v3, v1, 0x1

    .line 61
    .line 62
    aget-object v0, v0, v3

    .line 63
    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    return v1

    .line 67
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    not-int v0, v2

    .line 71
    return v0

    .line 72
    :catch_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method public final g(Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, Ln/k;->c:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ln/k;->b:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_3

    aget-object v3, v1, p1

    if-nez v3, :cond_0

    shr-int/2addr p1, v2

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    shr-int/lit8 p1, v3, 0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/k;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Ln/k;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p2, p2, p1

    :cond_0
    return-object p2
.end method

.method public final h(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/k;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Ln/k;->a:[I

    iget-object v1, p0, Ln/k;->b:[Ljava/lang/Object;

    iget v2, p0, Ln/k;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v7, v1, v4

    aget v8, v0, v5

    if-nez v7, :cond_0

    move v7, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    return v6
.end method

.method public final i(I)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Ln/k;->b:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    iget v3, p0, Ln/k;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    iget-object p1, p0, Ln/k;->a:[I

    invoke-static {p1, v0, v3}, Ln/k;->c([I[Ljava/lang/Object;I)V

    sget-object p1, Ln/d;->a:[I

    iput-object p1, p0, Ln/k;->a:[I

    sget-object p1, Ln/d;->c:[Ljava/lang/Object;

    iput-object p1, p0, Ln/k;->b:[Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v3, -0x1

    iget-object v7, p0, Ln/k;->a:[I

    array-length v8, v7

    const/16 v9, 0x8

    if-le v8, v9, :cond_4

    array-length v8, v7

    div-int/lit8 v8, v8, 0x3

    if-ge v3, v8, :cond_4

    if-le v3, v9, :cond_1

    shr-int/lit8 v8, v3, 0x1

    add-int v9, v3, v8

    :cond_1
    invoke-virtual {p0, v9}, Ln/k;->a(I)V

    iget v8, p0, Ln/k;->c:I

    if-ne v3, v8, :cond_3

    if-lez p1, :cond_2

    iget-object v8, p0, Ln/k;->a:[I

    invoke-static {v7, v4, v8, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Ln/k;->b:[Ljava/lang/Object;

    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-ge p1, v6, :cond_6

    add-int/lit8 v4, p1, 0x1

    iget-object v8, p0, Ln/k;->a:[I

    sub-int v9, v6, p1

    invoke-static {v7, v4, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 p1, v4, 0x1

    iget-object v4, p0, Ln/k;->b:[Ljava/lang/Object;

    shl-int/lit8 v5, v9, 0x1

    invoke-static {v0, p1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_4
    if-ge p1, v6, :cond_5

    add-int/lit8 v0, p1, 0x1

    sub-int v4, v6, p1

    invoke-static {v7, v0, v7, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Ln/k;->b:[Ljava/lang/Object;

    shl-int/2addr v0, v5

    shl-int/2addr v4, v5

    invoke-static {p1, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object p1, p0, Ln/k;->b:[Ljava/lang/Object;

    shl-int/lit8 v0, v6, 0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/2addr v0, v5

    aput-object v1, p1, v0

    :cond_6
    :goto_0
    move v4, v6

    :goto_1
    iget p1, p0, Ln/k;->c:I

    if-ne v3, p1, :cond_7

    iput v4, p0, Ln/k;->c:I

    return-object v2

    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Ln/k;->c:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/k;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ln/k;->c:I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ln/k;->f()I

    move-result v2

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Ln/k;->d(ILjava/lang/Object;)I

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_0
    if-ltz v2, :cond_1

    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ln/k;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :cond_1
    not-int v2, v2

    iget-object v4, p0, Ln/k;->a:[I

    array-length v5, v4

    if-lt v0, v5, :cond_6

    const/16 v5, 0x8

    if-lt v0, v5, :cond_2

    shr-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v0

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    if-lt v0, v6, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    iget-object v6, p0, Ln/k;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v5}, Ln/k;->a(I)V

    iget v5, p0, Ln/k;->c:I

    if-ne v0, v5, :cond_5

    iget-object v5, p0, Ln/k;->a:[I

    array-length v7, v5

    if-lez v7, :cond_4

    array-length v7, v4

    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Ln/k;->b:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-static {v4, v6, v0}, Ln/k;->c([I[Ljava/lang/Object;I)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-ge v2, v0, :cond_7

    iget-object v1, p0, Ln/k;->a:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ln/k;->b:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, Ln/k;->c:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget v1, p0, Ln/k;->c:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Ln/k;->a:[I

    array-length v4, v0

    if-ge v2, v4, :cond_8

    aput v3, v0, v2

    iget-object v0, p0, Ln/k;->b:[Ljava/lang/Object;

    shl-int/lit8 v2, v2, 0x1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ln/k;->c:I

    const/4 p1, 0x0

    return-object p1

    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/k;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Ln/k;->i(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Ln/k;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Ln/k;->j(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ln/k;->i(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Ln/k;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ln/k;->b:[Ljava/lang/Object;

    .line 1
    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ln/k;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Ln/k;->j(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    shl-int/2addr p1, p2

    add-int/2addr p1, p2

    iget-object v0, p0, Ln/k;->b:[Ljava/lang/Object;

    .line 2
    aget-object v1, v0, p1

    aput-object p3, v0, p1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Ln/k;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln/k;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Ln/k;->c:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ln/k;->c:I

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Ln/k;->h(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-eq v2, p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ln/k;->j(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
