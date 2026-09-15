.class public final Ly4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lk5/a;


# static fields
.field public static final m:Ly4/f;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:[Ljava/lang/Object;

.field public c:[I

.field public d:[I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ly4/g;

.field public j:Ly4/h;

.field public k:Ly4/g;

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly4/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly4/f;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ly4/f;->l:Z

    sput-object v0, Ly4/f;->m:Ly4/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ly4/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    if-ltz p1, :cond_1

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 3
    new-array v1, p1, [I

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    move p1, v2

    :cond_0
    mul-int/lit8 p1, p1, 0x3

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    .line 5
    new-array v3, p1, [I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ly4/f;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ly4/f;->b:[Ljava/lang/Object;

    iput-object v1, p0, Ly4/f;->c:[I

    iput-object v3, p0, Ly4/f;->d:[I

    const/4 v0, 0x2

    iput v0, p0, Ly4/f;->e:I

    const/4 v0, 0x0

    iput v0, p0, Ly4/f;->f:I

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Ly4/f;->g:I

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be non-negative."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ly4/f;->d()V

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Ly4/f;->j(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Ly4/f;->e:I

    .line 9
    .line 10
    mul-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    iget-object v2, p0, Ly4/f;->d:[I

    .line 13
    .line 14
    array-length v2, v2

    .line 15
    div-int/lit8 v2, v2, 0x2

    .line 16
    .line 17
    if-le v1, v2, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_1
    iget-object v3, p0, Ly4/f;->d:[I

    .line 22
    .line 23
    aget v4, v3, v0

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-gtz v4, :cond_3

    .line 27
    .line 28
    iget v1, p0, Ly4/f;->f:I

    .line 29
    .line 30
    iget-object v4, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 31
    .line 32
    array-length v6, v4

    .line 33
    if-lt v1, v6, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v5}, Ly4/f;->g(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/lit8 v6, v1, 0x1

    .line 40
    .line 41
    iput v6, p0, Ly4/f;->f:I

    .line 42
    .line 43
    aput-object p1, v4, v1

    .line 44
    .line 45
    iget-object p1, p0, Ly4/f;->c:[I

    .line 46
    .line 47
    aput v0, p1, v1

    .line 48
    .line 49
    aput v6, v3, v0

    .line 50
    .line 51
    iget p1, p0, Ly4/f;->h:I

    .line 52
    .line 53
    add-int/2addr p1, v5

    .line 54
    iput p1, p0, Ly4/f;->h:I

    .line 55
    .line 56
    iget p1, p0, Ly4/f;->e:I

    .line 57
    .line 58
    if-le v2, p1, :cond_2

    .line 59
    .line 60
    iput v2, p0, Ly4/f;->e:I

    .line 61
    .line 62
    :cond_2
    return v1

    .line 63
    :cond_3
    iget-object v3, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 64
    .line 65
    add-int/lit8 v6, v4, -0x1

    .line 66
    .line 67
    aget-object v3, v3, v6

    .line 68
    .line 69
    invoke-static {v3, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    neg-int p1, v4

    .line 76
    return p1

    .line 77
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    if-le v2, v1, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Ly4/f;->d:[I

    .line 82
    .line 83
    array-length v0, v0

    .line 84
    mul-int/lit8 v0, v0, 0x2

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ly4/f;->k(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    add-int/lit8 v3, v0, -0x1

    .line 91
    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    iget-object v0, p0, Ly4/f;->d:[I

    .line 95
    .line 96
    array-length v0, v0

    .line 97
    sub-int/2addr v0, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_6
    move v0, v3

    .line 100
    goto :goto_1
.end method

.method public final clear()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ly4/f;->d()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln5/c;

    .line 5
    .line 6
    iget v1, p0, Ly4/f;->f:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    sub-int/2addr v1, v2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v3, v1, v2}, Ln5/a;-><init>(III)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Ln5/a;->b:I

    .line 15
    .line 16
    iget v0, v0, Ln5/a;->c:I

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    if-ltz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-gtz v1, :cond_0

    .line 26
    .line 27
    :goto_0
    if-eqz v2, :cond_2

    .line 28
    .line 29
    move v4, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v4, v1

    .line 32
    :goto_1
    if-eqz v2, :cond_6

    .line 33
    .line 34
    if-ne v4, v1, :cond_4

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    move v2, v3

    .line 39
    move v5, v4

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_4
    add-int v5, v4, v0

    .line 48
    .line 49
    :goto_2
    iget-object v6, p0, Ly4/f;->c:[I

    .line 50
    .line 51
    aget v7, v6, v4

    .line 52
    .line 53
    if-ltz v7, :cond_5

    .line 54
    .line 55
    iget-object v8, p0, Ly4/f;->d:[I

    .line 56
    .line 57
    aput v3, v8, v7

    .line 58
    .line 59
    const/4 v7, -0x1

    .line 60
    aput v7, v6, v4

    .line 61
    .line 62
    :cond_5
    move v4, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_6
    iget-object v0, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 65
    .line 66
    iget v1, p0, Ly4/f;->f:I

    .line 67
    .line 68
    invoke-static {v3, v1, v0}, Lv1/f;->Q(II[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Ly4/f;->b:[Ljava/lang/Object;

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    iget v1, p0, Ly4/f;->f:I

    .line 76
    .line 77
    invoke-static {v3, v1, v0}, Lv1/f;->Q(II[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_7
    iput v3, p0, Ly4/f;->h:I

    .line 81
    .line 82
    iput v3, p0, Ly4/f;->f:I

    .line 83
    .line 84
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly4/f;->h(Ljava/lang/Object;)I

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
    invoke-virtual {p0, p1}, Ly4/f;->i(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly4/f;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final e(Ljava/util/Collection;)Z
    .locals 2

    .line 1
    const-string v0, "m"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Ly4/f;->f(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    nop

    :catch_0
    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Ly4/f;->k:Ly4/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ly4/g;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Ly4/g;-><init>(Ly4/f;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ly4/f;->k:Ly4/g;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eq p1, p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Ljava/util/Map;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Ljava/util/Map;

    .line 8
    .line 9
    iget v0, p0, Ly4/f;->h:I

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ly4/f;->e(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 31
    :goto_1
    return p1
.end method

.method public final f(Ljava/util/Map$Entry;)Z
    .locals 2

    .line 1
    const-string v0, "entry"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly4/f;->h(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Ly4/f;->b:[Ljava/lang/Object;

    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    aget-object v0, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Ly4/f;->f:I

    .line 5
    .line 6
    sub-int/2addr v1, v2

    .line 7
    iget v3, p0, Ly4/f;->h:I

    .line 8
    .line 9
    sub-int v3, v2, v3

    .line 10
    .line 11
    if-ge v1, p1, :cond_0

    .line 12
    .line 13
    add-int/2addr v1, v3

    .line 14
    if-lt v1, p1, :cond_0

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    div-int/lit8 v1, v1, 0x4

    .line 18
    .line 19
    if-lt v3, v1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Ly4/f;->d:[I

    .line 22
    .line 23
    array-length p1, p1

    .line 24
    invoke-virtual {p0, p1}, Ly4/f;->k(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    add-int/2addr v2, p1

    .line 29
    if-ltz v2, :cond_5

    .line 30
    .line 31
    array-length p1, v0

    .line 32
    if-le v2, p1, :cond_4

    .line 33
    .line 34
    array-length p1, v0

    .line 35
    mul-int/lit8 p1, p1, 0x3

    .line 36
    .line 37
    div-int/lit8 p1, p1, 0x2

    .line 38
    .line 39
    if-le v2, p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v2, p1

    .line 43
    :goto_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "copyOf(this, newSize)"

    .line 48
    .line 49
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 53
    .line 54
    iget-object p1, p0, Ly4/f;->b:[Ljava/lang/Object;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 p1, 0x0

    .line 67
    :goto_1
    iput-object p1, p0, Ly4/f;->b:[Ljava/lang/Object;

    .line 68
    .line 69
    iget-object p1, p0, Ly4/f;->c:[I

    .line 70
    .line 71
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Ly4/f;->c:[I

    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    if-ge v2, p1, :cond_3

    .line 82
    .line 83
    move v2, p1

    .line 84
    :cond_3
    mul-int/lit8 v2, v2, 0x3

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iget-object v0, p0, Ly4/f;->d:[I

    .line 91
    .line 92
    array-length v0, v0

    .line 93
    if-le p1, v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ly4/f;->k(I)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_2
    return-void

    .line 99
    :cond_5
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 102
    .line 103
    .line 104
    throw p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ly4/f;->h(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Ly4/f;->b:[Ljava/lang/Object;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Ly4/f;->j(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Ly4/f;->e:I

    .line 6
    .line 7
    :goto_0
    iget-object v2, p0, Ly4/f;->d:[I

    .line 8
    .line 9
    aget v2, v2, v0

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    if-lez v2, :cond_1

    .line 16
    .line 17
    iget-object v4, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 18
    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    aget-object v4, v4, v2

    .line 22
    .line 23
    invoke-static {v4, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    add-int/2addr v1, v3

    .line 31
    if-gez v1, :cond_2

    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    add-int/lit8 v2, v0, -0x1

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Ly4/f;->d:[I

    .line 39
    .line 40
    array-length v0, v0

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    move v0, v2

    .line 45
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    new-instance v0, Ly4/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Ly4/c;-><init>(Ly4/f;I)V

    .line 5
    .line 6
    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-virtual {v0}, Ly4/e;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_3

    .line 13
    .line 14
    iget v3, v0, Ly4/e;->b:I

    .line 15
    .line 16
    iget-object v4, v0, Ly4/e;->a:Ly4/f;

    .line 17
    .line 18
    iget v5, v4, Ly4/f;->f:I

    .line 19
    .line 20
    if-ge v3, v5, :cond_2

    .line 21
    .line 22
    add-int/lit8 v5, v3, 0x1

    .line 23
    .line 24
    iput v5, v0, Ly4/e;->b:I

    .line 25
    .line 26
    iput v3, v0, Ly4/e;->c:I

    .line 27
    .line 28
    iget-object v5, v4, Ly4/f;->a:[Ljava/lang/Object;

    .line 29
    .line 30
    aget-object v3, v5, v3

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move v3, v1

    .line 40
    :goto_1
    iget-object v4, v4, Ly4/f;->b:[Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v4}, Li5/a;->m(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget v5, v0, Ly4/e;->c:I

    .line 46
    .line 47
    aget-object v4, v4, v5

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    move v4, v1

    .line 57
    :goto_2
    xor-int/2addr v3, v4

    .line 58
    invoke-virtual {v0}, Ly4/e;->a()V

    .line 59
    .line 60
    .line 61
    add-int/2addr v2, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_3
    return v2
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Ly4/f;->f:I

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v1, p0, Ly4/f;->c:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Ly4/f;->b:[Ljava/lang/Object;

    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Ly4/f;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0x61c88647

    mul-int/2addr p1, v0

    iget v0, p0, Ly4/f;->g:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method public final k(I)V
    .locals 6

    .line 1
    iget v0, p0, Ly4/f;->f:I

    .line 2
    .line 3
    iget v1, p0, Ly4/f;->h:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-le v0, v1, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Ly4/f;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    move v1, v2

    .line 11
    move v3, v1

    .line 12
    :goto_0
    iget v4, p0, Ly4/f;->f:I

    .line 13
    .line 14
    if-ge v1, v4, :cond_2

    .line 15
    .line 16
    iget-object v4, p0, Ly4/f;->c:[I

    .line 17
    .line 18
    aget v4, v4, v1

    .line 19
    .line 20
    if-ltz v4, :cond_1

    .line 21
    .line 22
    iget-object v4, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v5, v4, v1

    .line 25
    .line 26
    aput-object v5, v4, v3

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    aget-object v4, v0, v1

    .line 31
    .line 32
    aput-object v4, v0, v3

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v3, v4, v1}, Lv1/f;->Q(II[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget v1, p0, Ly4/f;->f:I

    .line 47
    .line 48
    invoke-static {v3, v1, v0}, Lv1/f;->Q(II[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iput v3, p0, Ly4/f;->f:I

    .line 52
    .line 53
    :cond_4
    iget-object v0, p0, Ly4/f;->d:[I

    .line 54
    .line 55
    array-length v1, v0

    .line 56
    if-eq p1, v1, :cond_5

    .line 57
    .line 58
    new-array v0, p1, [I

    .line 59
    .line 60
    iput-object v0, p0, Ly4/f;->d:[I

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    add-int/lit8 p1, p1, 0x1

    .line 67
    .line 68
    iput p1, p0, Ly4/f;->g:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    array-length p1, v0

    .line 72
    invoke-static {v0, v2, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 73
    .line 74
    .line 75
    :goto_1
    iget p1, p0, Ly4/f;->f:I

    .line 76
    .line 77
    if-ge v2, p1, :cond_9

    .line 78
    .line 79
    add-int/lit8 p1, v2, 0x1

    .line 80
    .line 81
    iget-object v0, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 82
    .line 83
    aget-object v0, v0, v2

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ly4/f;->j(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget v1, p0, Ly4/f;->e:I

    .line 90
    .line 91
    :goto_2
    iget-object v3, p0, Ly4/f;->d:[I

    .line 92
    .line 93
    aget v4, v3, v0

    .line 94
    .line 95
    if-nez v4, :cond_6

    .line 96
    .line 97
    aput p1, v3, v0

    .line 98
    .line 99
    iget-object v1, p0, Ly4/f;->c:[I

    .line 100
    .line 101
    aput v0, v1, v2

    .line 102
    .line 103
    move v2, p1

    .line 104
    goto :goto_1

    .line 105
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 106
    .line 107
    if-ltz v1, :cond_8

    .line 108
    .line 109
    add-int/lit8 v4, v0, -0x1

    .line 110
    .line 111
    if-nez v0, :cond_7

    .line 112
    .line 113
    array-length v0, v3

    .line 114
    add-int/lit8 v0, v0, -0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    move v0, v4

    .line 118
    goto :goto_2

    .line 119
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    const-string v0, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    .line 122
    .line 123
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_9
    return-void
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Ly4/f;->i:Ly4/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ly4/g;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Ly4/g;-><init>(Ly4/f;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ly4/f;->i:Ly4/g;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final l(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object v1, v0, p1

    .line 10
    .line 11
    iget-object v0, p0, Ly4/f;->c:[I

    .line 12
    .line 13
    aget v0, v0, p1

    .line 14
    .line 15
    iget v1, p0, Ly4/f;->e:I

    .line 16
    .line 17
    mul-int/lit8 v1, v1, 0x2

    .line 18
    .line 19
    iget-object v2, p0, Ly4/f;->d:[I

    .line 20
    .line 21
    array-length v2, v2

    .line 22
    div-int/lit8 v2, v2, 0x2

    .line 23
    .line 24
    if-le v1, v2, :cond_0

    .line 25
    .line 26
    move v1, v2

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    move v3, v1

    .line 29
    move v4, v2

    .line 30
    move v1, v0

    .line 31
    :cond_1
    add-int/lit8 v5, v0, -0x1

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Ly4/f;->d:[I

    .line 36
    .line 37
    array-length v0, v0

    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v0, v5

    .line 42
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    iget v5, p0, Ly4/f;->e:I

    .line 45
    .line 46
    const/4 v6, -0x1

    .line 47
    if-le v4, v5, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Ly4/f;->d:[I

    .line 50
    .line 51
    aput v2, v0, v1

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    iget-object v5, p0, Ly4/f;->d:[I

    .line 55
    .line 56
    aget v7, v5, v0

    .line 57
    .line 58
    if-nez v7, :cond_4

    .line 59
    .line 60
    aput v2, v5, v1

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    if-gez v7, :cond_5

    .line 64
    .line 65
    aput v6, v5, v1

    .line 66
    .line 67
    :goto_1
    move v1, v0

    .line 68
    move v4, v2

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    iget-object v5, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 71
    .line 72
    add-int/lit8 v8, v7, -0x1

    .line 73
    .line 74
    aget-object v5, v5, v8

    .line 75
    .line 76
    invoke-virtual {p0, v5}, Ly4/f;->j(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    sub-int/2addr v5, v0

    .line 81
    iget-object v9, p0, Ly4/f;->d:[I

    .line 82
    .line 83
    array-length v10, v9

    .line 84
    add-int/lit8 v10, v10, -0x1

    .line 85
    .line 86
    and-int/2addr v5, v10

    .line 87
    if-lt v5, v4, :cond_6

    .line 88
    .line 89
    aput v7, v9, v1

    .line 90
    .line 91
    iget-object v4, p0, Ly4/f;->c:[I

    .line 92
    .line 93
    aput v1, v4, v8

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    :goto_2
    add-int/2addr v3, v6

    .line 97
    if-gez v3, :cond_1

    .line 98
    .line 99
    iget-object v0, p0, Ly4/f;->d:[I

    .line 100
    .line 101
    aput v6, v0, v1

    .line 102
    .line 103
    :goto_3
    iget-object v0, p0, Ly4/f;->c:[I

    .line 104
    .line 105
    aput v6, v0, p1

    .line 106
    .line 107
    iget p1, p0, Ly4/f;->h:I

    .line 108
    .line 109
    add-int/2addr p1, v6

    .line 110
    iput p1, p0, Ly4/f;->h:I

    .line 111
    .line 112
    return-void
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly4/f;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ly4/f;->a(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Ly4/f;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    if-ltz v0, :cond_2

    .line 17
    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v0, p0, Ly4/f;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    :goto_0
    if-gez p1, :cond_1

    .line 23
    .line 24
    neg-int p1, p1

    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 26
    .line 27
    aget-object v1, v0, p1

    .line 28
    .line 29
    aput-object p2, v0, p1

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    aput-object p2, v0, p1

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string p2, "capacity must be non-negative."

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 5

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly4/f;->d()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Ly4/f;->g(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Ly4/f;->a(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object v2, p0, Ly4/f;->b:[Ljava/lang/Object;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v2, p0, Ly4/f;->a:[Ljava/lang/Object;

    .line 57
    .line 58
    array-length v2, v2

    .line 59
    if-ltz v2, :cond_4

    .line 60
    .line 61
    new-array v2, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    iput-object v2, p0, Ly4/f;->b:[Ljava/lang/Object;

    .line 64
    .line 65
    :goto_1
    if-ltz v1, :cond_3

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    aput-object v0, v2, v1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    neg-int v1, v1

    .line 75
    add-int/lit8 v1, v1, -0x1

    .line 76
    .line 77
    aget-object v3, v2, v1

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v4, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_1

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    aput-object v0, v2, v1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    const-string v0, "capacity must be non-negative."

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_5
    :goto_2
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ly4/f;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ly4/f;->h(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Ly4/f;->l(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 v0, 0x0

    .line 16
    if-gez p1, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object v1, p0, Ly4/f;->b:[Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    aget-object v2, v1, p1

    .line 25
    .line 26
    aput-object v0, v1, p1

    .line 27
    .line 28
    return-object v2
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Ly4/f;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget v1, p0, Ly4/f;->h:I

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x3

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v1, "{"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    new-instance v1, Ly4/c;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p0, v2}, Ly4/c;-><init>(Ly4/f;I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v1}, Ly4/e;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_4

    .line 28
    .line 29
    if-lez v2, :cond_0

    .line 30
    .line 31
    const-string v3, ", "

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget v3, v1, Ly4/e;->b:I

    .line 37
    .line 38
    iget-object v4, v1, Ly4/e;->a:Ly4/f;

    .line 39
    .line 40
    iget v5, v4, Ly4/f;->f:I

    .line 41
    .line 42
    if-ge v3, v5, :cond_3

    .line 43
    .line 44
    add-int/lit8 v5, v3, 0x1

    .line 45
    .line 46
    iput v5, v1, Ly4/e;->b:I

    .line 47
    .line 48
    iput v3, v1, Ly4/e;->c:I

    .line 49
    .line 50
    iget-object v5, v4, Ly4/f;->a:[Ljava/lang/Object;

    .line 51
    .line 52
    aget-object v3, v5, v3

    .line 53
    .line 54
    invoke-static {v3, v4}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const-string v6, "(this Map)"

    .line 59
    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :goto_1
    const/16 v3, 0x3d

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v3, v4, Ly4/f;->b:[Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {v3}, Li5/a;->m(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget v5, v1, Ly4/e;->c:I

    .line 80
    .line 81
    aget-object v3, v3, v5

    .line 82
    .line 83
    invoke-static {v3, v4}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-virtual {v1}, Ly4/e;->a()V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_4
    const-string v1, "}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "sb.toString()"

    .line 118
    .line 119
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/f;->j:Ly4/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ly4/h;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ly4/h;-><init>(Ly4/f;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ly4/f;->j:Ly4/h;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method
