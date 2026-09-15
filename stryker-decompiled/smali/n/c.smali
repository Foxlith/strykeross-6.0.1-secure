.class public final Ln/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# static fields
.field public static final e:[I

.field public static final f:[Ljava/lang/Object;

.field public static g:[Ljava/lang/Object;

.field public static h:I

.field public static i:[Ljava/lang/Object;

.field public static j:I


# instance fields
.field public a:[I

.field public b:[Ljava/lang/Object;

.field public c:I

.field public d:Ln/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Ln/c;->e:[I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ln/c;->f:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Ln/c;->e:[I

    iput-object p1, p0, Ln/c;->a:[I

    sget-object p1, Ln/c;->f:[Ljava/lang/Object;

    iput-object p1, p0, Ln/c;->b:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ln/c;->a(I)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Ln/c;->c:I

    return-void
.end method

.method public static b([I[Ljava/lang/Object;I)V
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

    const-class v0, Ln/c;

    monitor-enter v0

    :try_start_0
    sget v1, Ln/c;->j:I

    if-ge v1, v5, :cond_1

    sget-object v1, Ln/c;->i:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    sub-int/2addr p2, v6

    :goto_0
    if-lt p2, v3, :cond_0

    aput-object v2, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sput-object p1, Ln/c;->i:[Ljava/lang/Object;

    sget p0, Ln/c;->j:I

    add-int/2addr p0, v6

    sput p0, Ln/c;->j:I

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

    const-class v0, Ln/c;

    monitor-enter v0

    :try_start_1
    sget v1, Ln/c;->h:I

    if-ge v1, v5, :cond_4

    sget-object v1, Ln/c;->g:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    sub-int/2addr p2, v6

    :goto_2
    if-lt p2, v3, :cond_3

    aput-object v2, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    sput-object p1, Ln/c;->g:[Ljava/lang/Object;

    sget p0, Ln/c;->h:I

    add-int/2addr p0, v6

    sput p0, Ln/c;->h:I

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

    const-class v0, Ln/c;

    monitor-enter v0

    :try_start_0
    sget-object v4, Ln/c;->i:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    iput-object v4, p0, Ln/c;->b:[Ljava/lang/Object;

    aget-object p1, v4, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Ln/c;->i:[Ljava/lang/Object;

    aget-object p1, v4, v3

    check-cast p1, [I

    iput-object p1, p0, Ln/c;->a:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget p1, Ln/c;->j:I

    sub-int/2addr p1, v3

    sput p1, Ln/c;->j:I

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

    const-class v0, Ln/c;

    monitor-enter v0

    :try_start_1
    sget-object v4, Ln/c;->g:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    iput-object v4, p0, Ln/c;->b:[Ljava/lang/Object;

    aget-object p1, v4, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Ln/c;->g:[Ljava/lang/Object;

    aget-object p1, v4, v3

    check-cast p1, [I

    iput-object p1, p0, Ln/c;->a:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget p1, Ln/c;->h:I

    sub-int/2addr p1, v3

    sput p1, Ln/c;->h:I

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

    iput-object v0, p0, Ln/c;->a:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ln/c;->b:[Ljava/lang/Object;

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ln/c;->d()I

    move-result v1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Ln/c;->c(ILjava/lang/Object;)I

    move-result v2

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_0
    if-ltz v1, :cond_1

    return v0

    :cond_1
    not-int v1, v1

    iget v3, p0, Ln/c;->c:I

    iget-object v4, p0, Ln/c;->a:[I

    array-length v5, v4

    if-lt v3, v5, :cond_5

    const/16 v5, 0x8

    if-lt v3, v5, :cond_2

    shr-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v3

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    if-lt v3, v6, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    iget-object v3, p0, Ln/c;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v5}, Ln/c;->a(I)V

    iget-object v5, p0, Ln/c;->a:[I

    array-length v6, v5

    if-lez v6, :cond_4

    array-length v6, v4

    invoke-static {v4, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Ln/c;->b:[Ljava/lang/Object;

    array-length v6, v3

    invoke-static {v3, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget v0, p0, Ln/c;->c:I

    invoke-static {v4, v3, v0}, Ln/c;->b([I[Ljava/lang/Object;I)V

    :cond_5
    iget v0, p0, Ln/c;->c:I

    if-ge v1, v0, :cond_6

    iget-object v3, p0, Ln/c;->a:[I

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v3, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ln/c;->b:[Ljava/lang/Object;

    iget v3, p0, Ln/c;->c:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v0, p0, Ln/c;->a:[I

    aput v2, v0, v1

    iget-object v0, p0, Ln/c;->b:[Ljava/lang/Object;

    aput-object p1, v0, v1

    iget p1, p0, Ln/c;->c:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ln/c;->c:I

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    .line 1
    iget v0, p0, Ln/c;->c:I

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    iget-object v0, p0, Ln/c;->a:[I

    .line 9
    .line 10
    array-length v2, v0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Ln/c;->b:[Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ln/c;->a(I)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Ln/c;->c:I

    .line 20
    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Ln/c;->a:[I

    .line 24
    .line 25
    invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ln/c;->b:[Ljava/lang/Object;

    .line 29
    .line 30
    iget v4, p0, Ln/c;->c:I

    .line 31
    .line 32
    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget v1, p0, Ln/c;->c:I

    .line 36
    .line 37
    invoke-static {v0, v2, v1}, Ln/c;->b([I[Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Ln/c;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    or-int/2addr v3, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return v3
.end method

.method public final c(ILjava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Ln/c;->c:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v1, p0, Ln/c;->a:[I

    invoke-static {v0, p1, v1}, Ln/d;->a(II[I)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Ln/c;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Ln/c;->a:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Ln/c;->b:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Ln/c;->a:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_6

    iget-object v0, p0, Ln/c;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p1, v2

    return p1
.end method

.method public final clear()V
    .locals 3

    .line 1
    iget v0, p0, Ln/c;->c:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Ln/c;->a:[I

    iget-object v2, p0, Ln/c;->b:[Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ln/c;->b([I[Ljava/lang/Object;I)V

    sget-object v0, Ln/c;->e:[I

    iput-object v0, p0, Ln/c;->a:[I

    sget-object v0, Ln/c;->f:[Ljava/lang/Object;

    iput-object v0, p0, Ln/c;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Ln/c;->c:I

    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln/c;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final d()I
    .locals 4

    .line 1
    iget v0, p0, Ln/c;->c:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v1, p0, Ln/c;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ln/d;->a(II[I)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Ln/c;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Ln/c;->a:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p0, Ln/c;->b:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Ln/c;->a:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Ln/c;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int v0, v2

    return v0
.end method

.method public final e(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Ln/c;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget v1, p0, Ln/c;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    iget-object p1, p0, Ln/c;->a:[I

    invoke-static {p1, v0, v1}, Ln/c;->b([I[Ljava/lang/Object;I)V

    sget-object p1, Ln/c;->e:[I

    iput-object p1, p0, Ln/c;->a:[I

    sget-object p1, Ln/c;->f:[Ljava/lang/Object;

    iput-object p1, p0, Ln/c;->b:[Ljava/lang/Object;

    iput v2, p0, Ln/c;->c:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Ln/c;->a:[I

    array-length v5, v4

    const/16 v6, 0x8

    if-le v5, v6, :cond_3

    array-length v5, v4

    div-int/lit8 v5, v5, 0x3

    if-ge v1, v5, :cond_3

    if-le v1, v6, :cond_1

    shr-int/lit8 v5, v1, 0x1

    add-int v6, v1, v5

    :cond_1
    invoke-virtual {p0, v6}, Ln/c;->a(I)V

    iget v1, p0, Ln/c;->c:I

    sub-int/2addr v1, v3

    iput v1, p0, Ln/c;->c:I

    if-lez p1, :cond_2

    iget-object v1, p0, Ln/c;->a:[I

    invoke-static {v4, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ln/c;->b:[Ljava/lang/Object;

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v1, p0, Ln/c;->c:I

    if-ge p1, v1, :cond_5

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ln/c;->a:[I

    sub-int/2addr v1, p1

    invoke-static {v4, v2, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ln/c;->b:[Ljava/lang/Object;

    iget v3, p0, Ln/c;->c:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    sub-int/2addr v1, v3

    iput v1, p0, Ln/c;->c:I

    if-ge p1, v1, :cond_4

    add-int/lit8 v0, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {v4, v0, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ln/c;->b:[Ljava/lang/Object;

    iget v2, p0, Ln/c;->c:I

    sub-int/2addr v2, p1

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object p1, p0, Ln/c;->b:[Ljava/lang/Object;

    iget v0, p0, Ln/c;->c:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_5
    :goto_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    check-cast p1, Ljava/util/Set;

    .line 11
    .line 12
    iget v1, p0, Ln/c;->c:I

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    move v1, v2

    .line 22
    :goto_0
    :try_start_0
    iget v3, p0, Ln/c;->c:I

    .line 23
    .line 24
    if-ge v1, v3, :cond_3

    .line 25
    .line 26
    iget-object v3, p0, Ln/c;->b:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v3, v3, v1

    .line 29
    .line 30
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    return v0

    .line 41
    :catch_0
    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Ln/c;->a:[I

    iget v1, p0, Ln/c;->c:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ln/c;->d()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ln/c;->c(ILjava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Ln/c;->c:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget-object v0, p0, Ln/c;->d:Ln/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ln/a;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Ln/a;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ln/c;->d:Ln/a;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ln/c;->d:Ln/a;

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ln/h;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    new-instance v2, Ln/h;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, Ln/h;-><init>(Landroidx/appcompat/view/menu/d;I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, v0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 27
    .line 28
    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ln/h;

    .line 31
    .line 32
    invoke-virtual {v0}, Ln/h;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Ln/c;->e(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ln/c;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4

    .line 1
    iget v0, p0, Ln/c;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Ln/c;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Ln/c;->e(I)V

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Ln/c;->c:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Ln/c;->c:I

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Ln/c;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 2
    array-length v0, p1

    iget v1, p0, Ln/c;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Ln/c;->c:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Ln/c;->b:[Ljava/lang/Object;

    iget v1, p0, Ln/c;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    iget v1, p0, Ln/c;->c:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln/c;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "{}"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Ln/c;->c:I

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0xe

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x7b

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget v2, p0, Ln/c;->c:I

    .line 26
    .line 27
    if-ge v1, v2, :cond_3

    .line 28
    .line 29
    if-lez v1, :cond_1

    .line 30
    .line 31
    const-string v2, ", "

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v2, p0, Ln/c;->b:[Ljava/lang/Object;

    .line 37
    .line 38
    aget-object v2, v2, v1

    .line 39
    .line 40
    if-eq v2, p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string v2, "(this Set)"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/16 v1, 0x7d

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
