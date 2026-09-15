.class public final Landroidx/emoji2/text/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:I

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/q;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/q;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/u;Z[I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/q;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/emoji2/text/q;->c:Z

    iput-object p3, p0, Landroidx/emoji2/text/q;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/emoji2/text/u;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/emoji2/text/u;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/emoji2/text/u;

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Landroidx/emoji2/text/q;->a:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x2

    .line 21
    if-eq v1, v3, :cond_3

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/emoji2/text/q;->c()V

    .line 26
    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_2
    iput v3, p0, Landroidx/emoji2/text/q;->a:I

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 32
    .line 33
    iput v2, p0, Landroidx/emoji2/text/q;->d:I

    .line 34
    .line 35
    :goto_2
    move v2, v3

    .line 36
    goto :goto_3

    .line 37
    :cond_3
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 40
    .line 41
    iget v0, p0, Landroidx/emoji2/text/q;->d:I

    .line 42
    .line 43
    add-int/2addr v0, v2

    .line 44
    iput v0, p0, Landroidx/emoji2/text/q;->d:I

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const v0, 0xfe0e

    .line 48
    .line 49
    .line 50
    if-ne p1, v0, :cond_5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    const v0, 0xfe0f

    .line 54
    .line 55
    .line 56
    if-ne p1, v0, :cond_6

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_6
    iget-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Landroidx/emoji2/text/u;

    .line 62
    .line 63
    iget-object v1, v0, Landroidx/emoji2/text/u;->b:Landroidx/emoji2/text/p;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget v1, p0, Landroidx/emoji2/text/q;->d:I

    .line 68
    .line 69
    const/4 v3, 0x3

    .line 70
    if-ne v1, v2, :cond_7

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/emoji2/text/q;->d()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Landroidx/emoji2/text/u;

    .line 81
    .line 82
    :cond_7
    iput-object v0, p0, Landroidx/emoji2/text/q;->g:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/emoji2/text/q;->c()V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :goto_3
    iput p1, p0, Landroidx/emoji2/text/q;->b:I

    .line 89
    .line 90
    return v2
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/emoji2/text/q;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Landroidx/emoji2/text/q;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/emoji2/text/q;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/q;->a:I

    iget-object v0, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/u;

    iput-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/q;->d:I

    return-void
.end method

.method public final d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/emoji2/text/u;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/emoji2/text/u;->b:Landroidx/emoji2/text/p;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/emoji2/text/p;->c()Lq0/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-virtual {v0, v1}, Lq0/c;->a(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v3, v0, Lq0/c;->b:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    iget v0, v0, Lq0/c;->a:I

    .line 22
    .line 23
    add-int/2addr v1, v0

    .line 24
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return v2

    .line 31
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/q;->b:I

    .line 32
    .line 33
    const v1, 0xfe0f

    .line 34
    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    iget-boolean v0, p0, Landroidx/emoji2/text/q;->c:Z

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/emoji2/text/q;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, [I

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    return v2

    .line 51
    :cond_2
    iget-object v3, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Landroidx/emoji2/text/u;

    .line 54
    .line 55
    iget-object v3, v3, Landroidx/emoji2/text/u;->b:Landroidx/emoji2/text/p;

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Landroidx/emoji2/text/p;->a(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-gez v0, :cond_3

    .line 66
    .line 67
    return v2

    .line 68
    :cond_3
    return v1
.end method
