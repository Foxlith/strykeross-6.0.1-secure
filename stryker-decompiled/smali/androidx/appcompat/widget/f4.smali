.class public final Landroidx/appcompat/widget/f4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance p1, Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance p1, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Landroidx/appcompat/widget/f4;->a:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Landroidx/appcompat/widget/f4;->b:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/f4;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/f4;->c(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/util/SparseIntArray;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    move p1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/f4;->c(II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object v0, p0, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroid/util/SparseIntArray;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    .line 33
    .line 34
    move p1, p2

    .line 35
    :goto_0
    return p1
.end method

.method public final b(II)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/f4;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    rem-int/2addr p1, p2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/util/SparseIntArray;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    move p1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    rem-int p2, p1, p2

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroid/util/SparseIntArray;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    .line 28
    .line 29
    move p1, p2

    .line 30
    :goto_0
    return p1
.end method

.method public final c(II)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/f4;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sub-int/2addr v3, v1

    .line 16
    move v4, v2

    .line 17
    :goto_0
    if-gt v4, v3, :cond_1

    .line 18
    .line 19
    add-int v5, v4, v3

    .line 20
    .line 21
    ushr-int/2addr v5, v1

    .line 22
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-ge v6, p1, :cond_0

    .line 27
    .line 28
    add-int/lit8 v4, v5, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 32
    .line 33
    move v3, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sub-int/2addr v4, v1

    .line 36
    const/4 v3, -0x1

    .line 37
    if-ltz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ge v4, v5, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v3

    .line 51
    :goto_1
    if-eq v0, v3, :cond_3

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/appcompat/widget/f4;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Landroid/util/SparseIntArray;

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    add-int/lit8 v4, v0, 0x1

    .line 62
    .line 63
    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/widget/f4;->b(II)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v0, v1

    .line 68
    if-ne v0, p2, :cond_4

    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    move v0, v2

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v0, v2

    .line 75
    move v3, v0

    .line 76
    move v4, v3

    .line 77
    :cond_4
    :goto_2
    if-ge v4, p1, :cond_7

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    if-ne v0, p2, :cond_5

    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    move v0, v2

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    if-le v0, p2, :cond_6

    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    move v0, v1

    .line 92
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_7
    add-int/2addr v0, v1

    .line 96
    if-le v0, p2, :cond_8

    .line 97
    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    :cond_8
    return v3
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/util/SparseIntArray;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
