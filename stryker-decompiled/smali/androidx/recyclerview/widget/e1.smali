.class public final Landroidx/recyclerview/widget/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/d1;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/e1;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/e1;->e:I

    iput p1, p0, Landroidx/recyclerview/widget/e1;->f:I

    return-void
.end method

.method public static d(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Landroidx/recyclerview/widget/e1;->d(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/p1;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/p1;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/r1;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/recyclerview/widget/r1;->getItemDelegate()Landroidx/core/view/c;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v4, v2, Landroidx/recyclerview/widget/q1;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    check-cast v2, Landroidx/recyclerview/widget/q1;

    .line 22
    .line 23
    iget-object v2, v2, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/core/view/c;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v2, v3

    .line 33
    :goto_0
    invoke-static {v0, v2}, Landroidx/core/view/c1;->o(Landroid/view/View;Landroidx/core/view/c;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    if-eqz p2, :cond_4

    .line 37
    .line 38
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-gtz p2, :cond_3

    .line 45
    .line 46
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/k0;->onViewRecycled(Landroidx/recyclerview/widget/p1;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 54
    .line 55
    if-eqz p2, :cond_4

    .line 56
    .line 57
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/g2;->d(Landroidx/recyclerview/widget/p1;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    throw v3

    .line 74
    :cond_4
    :goto_1
    iput-object v3, p1, Landroidx/recyclerview/widget/p1;->mBindingAdapter:Landroidx/recyclerview/widget/k0;

    .line 75
    .line 76
    iput-object v3, p1, Landroidx/recyclerview/widget/p1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e1;->c()Landroidx/recyclerview/widget/d1;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/d1;->a(I)Landroidx/recyclerview/widget/c1;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v1, v1, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    .line 94
    .line 95
    iget-object p2, p2, Landroidx/recyclerview/widget/d1;->a:Landroid/util/SparseArray;

    .line 96
    .line 97
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Landroidx/recyclerview/widget/c1;

    .line 102
    .line 103
    iget p2, p2, Landroidx/recyclerview/widget/c1;->b:I

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-gt p2, v0, :cond_5

    .line 110
    .line 111
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 112
    .line 113
    invoke-static {p1}, Li5/a;->j(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->resetInternal()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :goto_2
    return-void
.end method

.method public final b(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/l1;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 14
    .line 15
    iget-boolean v1, v1, Landroidx/recyclerview/widget/l1;->g:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string v2, "invalid position "

    .line 31
    .line 32
    const-string v3, ". State item count is "

    .line 33
    .line 34
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public final c()Landroidx/recyclerview/widget/d1;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/d1;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Landroidx/recyclerview/widget/d1;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, Landroidx/recyclerview/widget/d1;->b:I

    .line 19
    .line 20
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Landroidx/recyclerview/widget/d1;->c:Ljava/util/Set;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e1;->e()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 37
    .line 38
    return-object v0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/recyclerview/widget/d1;->c:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/k0;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/d1;->c:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    move p2, p1

    .line 20
    :goto_0
    iget-object v1, v0, Landroidx/recyclerview/widget/d1;->a:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge p2, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/recyclerview/widget/c1;

    .line 37
    .line 38
    iget-object v1, v1, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    move v2, p1

    .line 41
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v2, v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/recyclerview/widget/p1;

    .line 52
    .line 53
    iget-object v3, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 54
    .line 55
    invoke-static {v3}, Li5/a;->j(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/e1;->h(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/s;

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/recyclerview/widget/s;->c:[I

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    iput v1, v0, Landroidx/recyclerview/widget/s;->d:I

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/p1;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/e1;->a(Landroidx/recyclerview/widget/p1;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isTmpDetached()Z

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->unScrap()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->clearReturnedFromScrapFlag()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/e1;->j(Landroidx/recyclerview/widget/p1;)V

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isRecyclable()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/r0;->d(Landroidx/recyclerview/widget/p1;)V

    :cond_3
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/p1;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isScrap()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-nez v0, :cond_e

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isTmpDetached()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_d

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_c

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->doesTransientStatePreventRecycling()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/k0;->onFailedToRecycleView(Landroidx/recyclerview/widget/p1;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isRecyclable()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_a

    .line 55
    .line 56
    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/e1;->f:I

    .line 57
    .line 58
    if-lez v4, :cond_8

    .line 59
    .line 60
    const/16 v4, 0x20e

    .line 61
    .line 62
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/p1;->hasAnyOfTheFlags(I)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_8

    .line 67
    .line 68
    iget-object v4, p0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    iget v6, p0, Landroidx/recyclerview/widget/e1;->f:I

    .line 75
    .line 76
    if-lt v5, v6, :cond_2

    .line 77
    .line 78
    if-lez v5, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/e1;->h(I)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v5, v5, -0x1

    .line 84
    .line 85
    :cond_2
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 86
    .line 87
    if-eqz v6, :cond_7

    .line 88
    .line 89
    if-lez v5, :cond_7

    .line 90
    .line 91
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/s;

    .line 92
    .line 93
    iget v7, p1, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 94
    .line 95
    iget-object v8, v6, Landroidx/recyclerview/widget/s;->c:[I

    .line 96
    .line 97
    if-eqz v8, :cond_4

    .line 98
    .line 99
    iget v8, v6, Landroidx/recyclerview/widget/s;->d:I

    .line 100
    .line 101
    mul-int/lit8 v8, v8, 0x2

    .line 102
    .line 103
    move v9, v1

    .line 104
    :goto_1
    if-ge v9, v8, :cond_4

    .line 105
    .line 106
    iget-object v10, v6, Landroidx/recyclerview/widget/s;->c:[I

    .line 107
    .line 108
    aget v10, v10, v9

    .line 109
    .line 110
    if-ne v10, v7, :cond_3

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_3
    add-int/lit8 v9, v9, 0x2

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 117
    .line 118
    :goto_2
    if-ltz v5, :cond_6

    .line 119
    .line 120
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Landroidx/recyclerview/widget/p1;

    .line 125
    .line 126
    iget v6, v6, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 127
    .line 128
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/s;

    .line 129
    .line 130
    iget-object v8, v7, Landroidx/recyclerview/widget/s;->c:[I

    .line 131
    .line 132
    if-eqz v8, :cond_6

    .line 133
    .line 134
    iget v8, v7, Landroidx/recyclerview/widget/s;->d:I

    .line 135
    .line 136
    mul-int/lit8 v8, v8, 0x2

    .line 137
    .line 138
    move v9, v1

    .line 139
    :goto_3
    if-ge v9, v8, :cond_6

    .line 140
    .line 141
    iget-object v10, v7, Landroidx/recyclerview/widget/s;->c:[I

    .line 142
    .line 143
    aget v10, v10, v9

    .line 144
    .line 145
    if-ne v10, v6, :cond_5

    .line 146
    .line 147
    add-int/lit8 v5, v5, -0x1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    add-int/lit8 v9, v9, 0x2

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    add-int/2addr v5, v2

    .line 154
    :cond_7
    :goto_4
    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    move v4, v2

    .line 158
    goto :goto_5

    .line 159
    :cond_8
    move v4, v1

    .line 160
    :goto_5
    if-nez v4, :cond_9

    .line 161
    .line 162
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/e1;->a(Landroidx/recyclerview/widget/p1;Z)V

    .line 163
    .line 164
    .line 165
    :goto_6
    move v1, v4

    .line 166
    goto :goto_7

    .line 167
    :cond_9
    move v2, v1

    .line 168
    goto :goto_6

    .line 169
    :cond_a
    move v2, v1

    .line 170
    :goto_7
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/g2;

    .line 171
    .line 172
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/g2;->d(Landroidx/recyclerview/widget/p1;)V

    .line 173
    .line 174
    .line 175
    if-nez v1, :cond_b

    .line 176
    .line 177
    if-nez v2, :cond_b

    .line 178
    .line 179
    if-eqz v0, :cond_b

    .line 180
    .line 181
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 182
    .line 183
    invoke-static {v0}, Li5/a;->j(Landroid/view/View;)V

    .line 184
    .line 185
    .line 186
    const/4 v0, 0x0

    .line 187
    iput-object v0, p1, Landroidx/recyclerview/widget/p1;->mBindingAdapter:Landroidx/recyclerview/widget/k0;

    .line 188
    .line 189
    iput-object v0, p1, Landroidx/recyclerview/widget/p1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 190
    .line 191
    :cond_b
    return-void

    .line 192
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 193
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v3, v0}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1

    .line 209
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 214
    .line 215
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-static {v3, v1}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_e
    :goto_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v5, "Scrapped or attached views may not be recycled. isScrap:"

    .line 234
    .line 235
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isScrap()Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v5, " isAttached:"

    .line 246
    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 251
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    if-eqz p1, :cond_f

    .line 257
    .line 258
    move v1, v2

    .line 259
    :cond_f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v0
.end method

.method public final k(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p1;->hasAnyOfTheFlags(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/p1;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 38
    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/p1;->setScrapContainer(Landroidx/recyclerview/widget/e1;Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 75
    .line 76
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/p1;->setScrapContainer(Landroidx/recyclerview/widget/e1;Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :goto_2
    return-void
.end method

.method public final l(JI)Landroidx/recyclerview/widget/p1;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-ltz v1, :cond_3d

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/recyclerview/widget/l1;->b()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_3d

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 18
    .line 19
    iget-boolean v3, v3, Landroidx/recyclerview/widget/l1;->g:Z

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v6, 0x1

    .line 23
    const/16 v7, 0x20

    .line 24
    .line 25
    if-eqz v3, :cond_6

    .line 26
    .line 27
    iget-object v3, v0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    move v8, v4

    .line 39
    :goto_0
    if-ge v8, v3, :cond_2

    .line 40
    .line 41
    iget-object v9, v0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    check-cast v9, Landroidx/recyclerview/widget/p1;

    .line 48
    .line 49
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-nez v10, :cond_1

    .line 54
    .line 55
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-ne v10, v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 69
    .line 70
    invoke-virtual {v8}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_4

    .line 75
    .line 76
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 77
    .line 78
    invoke-virtual {v8, v1, v4}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-lez v8, :cond_4

    .line 83
    .line 84
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 85
    .line 86
    invoke-virtual {v9}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-ge v8, v9, :cond_4

    .line 91
    .line 92
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 93
    .line 94
    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/k0;->getItemId(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    move v10, v4

    .line 99
    :goto_1
    if-ge v10, v3, :cond_4

    .line 100
    .line 101
    iget-object v11, v0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    check-cast v11, Landroidx/recyclerview/widget/p1;

    .line 108
    .line 109
    invoke-virtual {v11}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-nez v12, :cond_3

    .line 114
    .line 115
    invoke-virtual {v11}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 116
    .line 117
    .line 118
    move-result-wide v12

    .line 119
    cmp-long v12, v12, v8

    .line 120
    .line 121
    if-nez v12, :cond_3

    .line 122
    .line 123
    invoke-virtual {v11, v7}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 124
    .line 125
    .line 126
    move-object v9, v11

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    :goto_2
    const/4 v9, 0x0

    .line 132
    :goto_3
    if-eqz v9, :cond_5

    .line 133
    .line 134
    move v3, v6

    .line 135
    goto :goto_4

    .line 136
    :cond_5
    move v3, v4

    .line 137
    goto :goto_4

    .line 138
    :cond_6
    move v3, v4

    .line 139
    const/4 v9, 0x0

    .line 140
    :goto_4
    iget-object v8, v0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 141
    .line 142
    iget-object v10, v0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 143
    .line 144
    if-nez v9, :cond_19

    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    move v11, v4

    .line 151
    :goto_5
    if-ge v11, v9, :cond_9

    .line 152
    .line 153
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    check-cast v12, Landroidx/recyclerview/widget/p1;

    .line 158
    .line 159
    invoke-virtual {v12}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    if-nez v13, :cond_8

    .line 164
    .line 165
    invoke-virtual {v12}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    if-ne v13, v1, :cond_8

    .line 170
    .line 171
    invoke-virtual {v12}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    if-nez v13, :cond_8

    .line 176
    .line 177
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 178
    .line 179
    iget-boolean v13, v13, Landroidx/recyclerview/widget/l1;->g:Z

    .line 180
    .line 181
    if-nez v13, :cond_7

    .line 182
    .line 183
    invoke-virtual {v12}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-nez v13, :cond_8

    .line 188
    .line 189
    :cond_7
    invoke-virtual {v12, v7}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 190
    .line 191
    .line 192
    move-object v9, v12

    .line 193
    goto/16 :goto_9

    .line 194
    .line 195
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_9
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 199
    .line 200
    iget-object v11, v9, Landroidx/recyclerview/widget/e;->c:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    move v13, v4

    .line 207
    :goto_6
    if-ge v13, v12, :cond_b

    .line 208
    .line 209
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    check-cast v14, Landroid/view/View;

    .line 214
    .line 215
    iget-object v15, v9, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/i0;

    .line 216
    .line 217
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    invoke-virtual {v15}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-ne v5, v1, :cond_a

    .line 229
    .line 230
    invoke-virtual {v15}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-nez v5, :cond_a

    .line 235
    .line 236
    invoke-virtual {v15}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-nez v5, :cond_a

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_b
    const/4 v14, 0x0

    .line 247
    :goto_7
    if-eqz v14, :cond_f

    .line 248
    .line 249
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 254
    .line 255
    iget-object v11, v9, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/i0;

    .line 256
    .line 257
    iget-object v11, v11, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 258
    .line 259
    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    if-ltz v11, :cond_e

    .line 264
    .line 265
    iget-object v12, v9, Landroidx/recyclerview/widget/e;->b:Landroidx/recyclerview/widget/d;

    .line 266
    .line 267
    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/d;->d(I)Z

    .line 268
    .line 269
    .line 270
    move-result v13

    .line 271
    if-eqz v13, :cond_d

    .line 272
    .line 273
    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/d;->a(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/e;->l(Landroid/view/View;)V

    .line 277
    .line 278
    .line 279
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 280
    .line 281
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/e;->j(Landroid/view/View;)I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    const/4 v11, -0x1

    .line 286
    if-eq v9, v11, :cond_c

    .line 287
    .line 288
    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/e;

    .line 289
    .line 290
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/e;->c(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/e1;->k(Landroid/view/View;)V

    .line 294
    .line 295
    .line 296
    const/16 v9, 0x2020

    .line 297
    .line 298
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 299
    .line 300
    .line 301
    move-object v9, v5

    .line 302
    goto :goto_9

    .line 303
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 304
    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v4, "layout index should not be -1 after unhiding a view:"

    .line 308
    .line 309
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-static {v2, v3}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v1

    .line 323
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 324
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v3, "trying to unhide a view that was not hidden"

    .line 328
    .line 329
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v1

    .line 343
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 344
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v3, "view is not a child, cannot hide "

    .line 348
    .line 349
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v1

    .line 363
    :cond_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    move v9, v4

    .line 368
    :goto_8
    if-ge v9, v5, :cond_11

    .line 369
    .line 370
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v11

    .line 374
    check-cast v11, Landroidx/recyclerview/widget/p1;

    .line 375
    .line 376
    invoke-virtual {v11}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 377
    .line 378
    .line 379
    move-result v12

    .line 380
    if-nez v12, :cond_10

    .line 381
    .line 382
    invoke-virtual {v11}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    if-ne v12, v1, :cond_10

    .line 387
    .line 388
    invoke-virtual {v11}, Landroidx/recyclerview/widget/p1;->isAttachedToTransitionOverlay()Z

    .line 389
    .line 390
    .line 391
    move-result v12

    .line 392
    if-nez v12, :cond_10

    .line 393
    .line 394
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-object v9, v11

    .line 398
    goto :goto_9

    .line 399
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_11
    const/4 v9, 0x0

    .line 403
    :goto_9
    if-eqz v9, :cond_19

    .line 404
    .line 405
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-eqz v5, :cond_12

    .line 410
    .line 411
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 412
    .line 413
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 414
    .line 415
    if-nez v5, :cond_17

    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_12
    iget v5, v9, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 419
    .line 420
    if-ltz v5, :cond_18

    .line 421
    .line 422
    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 423
    .line 424
    invoke-virtual {v11}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 425
    .line 426
    .line 427
    move-result v11

    .line 428
    if-ge v5, v11, :cond_18

    .line 429
    .line 430
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 431
    .line 432
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 433
    .line 434
    if-nez v5, :cond_13

    .line 435
    .line 436
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 437
    .line 438
    iget v11, v9, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 439
    .line 440
    invoke-virtual {v5, v11}, Landroidx/recyclerview/widget/k0;->getItemViewType(I)I

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 445
    .line 446
    .line 447
    move-result v11

    .line 448
    if-eq v5, v11, :cond_13

    .line 449
    .line 450
    goto :goto_a

    .line 451
    :cond_13
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 452
    .line 453
    invoke-virtual {v5}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    if-eqz v5, :cond_17

    .line 458
    .line 459
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 460
    .line 461
    .line 462
    move-result-wide v11

    .line 463
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 464
    .line 465
    iget v13, v9, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 466
    .line 467
    invoke-virtual {v5, v13}, Landroidx/recyclerview/widget/k0;->getItemId(I)J

    .line 468
    .line 469
    .line 470
    move-result-wide v13

    .line 471
    cmp-long v5, v11, v13

    .line 472
    .line 473
    if-nez v5, :cond_14

    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_14
    :goto_a
    const/4 v5, 0x4

    .line 477
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isScrap()Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-eqz v5, :cond_15

    .line 485
    .line 486
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 487
    .line 488
    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->unScrap()V

    .line 492
    .line 493
    .line 494
    goto :goto_b

    .line 495
    :cond_15
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    if-eqz v5, :cond_16

    .line 500
    .line 501
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->clearReturnedFromScrapFlag()V

    .line 502
    .line 503
    .line 504
    :cond_16
    :goto_b
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/e1;->j(Landroidx/recyclerview/widget/p1;)V

    .line 505
    .line 506
    .line 507
    const/4 v9, 0x0

    .line 508
    goto :goto_d

    .line 509
    :cond_17
    :goto_c
    move v3, v6

    .line 510
    goto :goto_d

    .line 511
    :cond_18
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 512
    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    .line 516
    .line 517
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-static {v2, v3}, Landroid/support/v4/media/session/a;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    throw v1

    .line 531
    :cond_19
    :goto_d
    const-wide/16 v17, 0x0

    .line 532
    .line 533
    const-wide v19, 0x7fffffffffffffffL

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    if-nez v9, :cond_2c

    .line 539
    .line 540
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 541
    .line 542
    invoke-virtual {v5, v1, v4}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    if-ltz v5, :cond_2b

    .line 547
    .line 548
    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 549
    .line 550
    invoke-virtual {v15}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 551
    .line 552
    .line 553
    move-result v15

    .line 554
    if-ge v5, v15, :cond_2b

    .line 555
    .line 556
    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 557
    .line 558
    invoke-virtual {v15, v5}, Landroidx/recyclerview/widget/k0;->getItemViewType(I)I

    .line 559
    .line 560
    .line 561
    move-result v15

    .line 562
    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 563
    .line 564
    invoke-virtual {v11}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 565
    .line 566
    .line 567
    move-result v11

    .line 568
    if-eqz v11, :cond_22

    .line 569
    .line 570
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 571
    .line 572
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/k0;->getItemId(I)J

    .line 573
    .line 574
    .line 575
    move-result-wide v11

    .line 576
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 577
    .line 578
    .line 579
    move-result v9

    .line 580
    sub-int/2addr v9, v6

    .line 581
    :goto_e
    if-ltz v9, :cond_1c

    .line 582
    .line 583
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v21

    .line 587
    move-object/from16 v13, v21

    .line 588
    .line 589
    check-cast v13, Landroidx/recyclerview/widget/p1;

    .line 590
    .line 591
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 592
    .line 593
    .line 594
    move-result-wide v22

    .line 595
    cmp-long v14, v22, v11

    .line 596
    .line 597
    if-nez v14, :cond_1b

    .line 598
    .line 599
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 600
    .line 601
    .line 602
    move-result v14

    .line 603
    if-nez v14, :cond_1b

    .line 604
    .line 605
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 606
    .line 607
    .line 608
    move-result v14

    .line 609
    if-ne v15, v14, :cond_1a

    .line 610
    .line 611
    invoke-virtual {v13, v7}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 615
    .line 616
    .line 617
    move-result v7

    .line 618
    if-eqz v7, :cond_20

    .line 619
    .line 620
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 621
    .line 622
    iget-boolean v7, v7, Landroidx/recyclerview/widget/l1;->g:Z

    .line 623
    .line 624
    if-nez v7, :cond_20

    .line 625
    .line 626
    const/4 v7, 0x2

    .line 627
    const/16 v8, 0xe

    .line 628
    .line 629
    invoke-virtual {v13, v7, v8}, Landroidx/recyclerview/widget/p1;->setFlags(II)V

    .line 630
    .line 631
    .line 632
    goto :goto_10

    .line 633
    :cond_1a
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    iget-object v14, v13, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 637
    .line 638
    invoke-virtual {v2, v14, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 639
    .line 640
    .line 641
    iget-object v13, v13, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 642
    .line 643
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 644
    .line 645
    .line 646
    move-result-object v13

    .line 647
    const/4 v14, 0x0

    .line 648
    iput-object v14, v13, Landroidx/recyclerview/widget/p1;->mScrapContainer:Landroidx/recyclerview/widget/e1;

    .line 649
    .line 650
    iput-boolean v4, v13, Landroidx/recyclerview/widget/p1;->mInChangeScrap:Z

    .line 651
    .line 652
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->clearReturnedFromScrapFlag()V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/e1;->j(Landroidx/recyclerview/widget/p1;)V

    .line 656
    .line 657
    .line 658
    :cond_1b
    add-int/lit8 v9, v9, -0x1

    .line 659
    .line 660
    goto :goto_e

    .line 661
    :cond_1c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 662
    .line 663
    .line 664
    move-result v7

    .line 665
    sub-int/2addr v7, v6

    .line 666
    :goto_f
    if-ltz v7, :cond_1e

    .line 667
    .line 668
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v9

    .line 672
    check-cast v9, Landroidx/recyclerview/widget/p1;

    .line 673
    .line 674
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 675
    .line 676
    .line 677
    move-result-wide v13

    .line 678
    cmp-long v10, v13, v11

    .line 679
    .line 680
    if-nez v10, :cond_1f

    .line 681
    .line 682
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isAttachedToTransitionOverlay()Z

    .line 683
    .line 684
    .line 685
    move-result v10

    .line 686
    if-nez v10, :cond_1f

    .line 687
    .line 688
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 689
    .line 690
    .line 691
    move-result v10

    .line 692
    if-ne v15, v10, :cond_1d

    .line 693
    .line 694
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-object v13, v9

    .line 698
    goto :goto_10

    .line 699
    :cond_1d
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/e1;->h(I)V

    .line 700
    .line 701
    .line 702
    :cond_1e
    const/4 v13, 0x0

    .line 703
    goto :goto_10

    .line 704
    :cond_1f
    add-int/lit8 v7, v7, -0x1

    .line 705
    .line 706
    goto :goto_f

    .line 707
    :cond_20
    :goto_10
    if-eqz v13, :cond_21

    .line 708
    .line 709
    iput v5, v13, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 710
    .line 711
    move v3, v6

    .line 712
    :cond_21
    move-object v9, v13

    .line 713
    :cond_22
    if-nez v9, :cond_26

    .line 714
    .line 715
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/e1;->c()Landroidx/recyclerview/widget/d1;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    iget-object v5, v5, Landroidx/recyclerview/widget/d1;->a:Landroid/util/SparseArray;

    .line 720
    .line 721
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v5

    .line 725
    check-cast v5, Landroidx/recyclerview/widget/c1;

    .line 726
    .line 727
    if-eqz v5, :cond_24

    .line 728
    .line 729
    iget-object v5, v5, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    .line 730
    .line 731
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 732
    .line 733
    .line 734
    move-result v7

    .line 735
    if-nez v7, :cond_24

    .line 736
    .line 737
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 738
    .line 739
    .line 740
    move-result v7

    .line 741
    sub-int/2addr v7, v6

    .line 742
    :goto_11
    if-ltz v7, :cond_24

    .line 743
    .line 744
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v8

    .line 748
    check-cast v8, Landroidx/recyclerview/widget/p1;

    .line 749
    .line 750
    invoke-virtual {v8}, Landroidx/recyclerview/widget/p1;->isAttachedToTransitionOverlay()Z

    .line 751
    .line 752
    .line 753
    move-result v8

    .line 754
    if-nez v8, :cond_23

    .line 755
    .line 756
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v5

    .line 760
    check-cast v5, Landroidx/recyclerview/widget/p1;

    .line 761
    .line 762
    goto :goto_12

    .line 763
    :cond_23
    add-int/lit8 v7, v7, -0x1

    .line 764
    .line 765
    goto :goto_11

    .line 766
    :cond_24
    const/4 v5, 0x0

    .line 767
    :goto_12
    if-eqz v5, :cond_25

    .line 768
    .line 769
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p1;->resetInternal()V

    .line 770
    .line 771
    .line 772
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 773
    .line 774
    if-eqz v7, :cond_25

    .line 775
    .line 776
    iget-object v7, v5, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 777
    .line 778
    instance-of v8, v7, Landroid/view/ViewGroup;

    .line 779
    .line 780
    if-eqz v8, :cond_25

    .line 781
    .line 782
    check-cast v7, Landroid/view/ViewGroup;

    .line 783
    .line 784
    invoke-static {v7, v4}, Landroidx/recyclerview/widget/e1;->d(Landroid/view/ViewGroup;Z)V

    .line 785
    .line 786
    .line 787
    :cond_25
    move-object v9, v5

    .line 788
    :cond_26
    if-nez v9, :cond_2c

    .line 789
    .line 790
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 791
    .line 792
    .line 793
    move-result-wide v7

    .line 794
    cmp-long v5, p1, v19

    .line 795
    .line 796
    if-eqz v5, :cond_28

    .line 797
    .line 798
    iget-object v5, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 799
    .line 800
    invoke-virtual {v5, v15}, Landroidx/recyclerview/widget/d1;->a(I)Landroidx/recyclerview/widget/c1;

    .line 801
    .line 802
    .line 803
    move-result-object v5

    .line 804
    iget-wide v9, v5, Landroidx/recyclerview/widget/c1;->c:J

    .line 805
    .line 806
    cmp-long v5, v9, v17

    .line 807
    .line 808
    if-eqz v5, :cond_28

    .line 809
    .line 810
    add-long/2addr v9, v7

    .line 811
    cmp-long v5, v9, p1

    .line 812
    .line 813
    if-gez v5, :cond_27

    .line 814
    .line 815
    goto :goto_13

    .line 816
    :cond_27
    const/4 v5, 0x0

    .line 817
    return-object v5

    .line 818
    :cond_28
    :goto_13
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 819
    .line 820
    invoke-virtual {v5, v2, v15}, Landroidx/recyclerview/widget/k0;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;

    .line 821
    .line 822
    .line 823
    move-result-object v9

    .line 824
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 825
    .line 826
    if-eqz v5, :cond_29

    .line 827
    .line 828
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 829
    .line 830
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    if-eqz v5, :cond_29

    .line 835
    .line 836
    new-instance v10, Ljava/lang/ref/WeakReference;

    .line 837
    .line 838
    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 839
    .line 840
    .line 841
    iput-object v10, v9, Landroidx/recyclerview/widget/p1;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 842
    .line 843
    :cond_29
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 844
    .line 845
    .line 846
    move-result-wide v10

    .line 847
    iget-object v5, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 848
    .line 849
    sub-long/2addr v10, v7

    .line 850
    invoke-virtual {v5, v15}, Landroidx/recyclerview/widget/d1;->a(I)Landroidx/recyclerview/widget/c1;

    .line 851
    .line 852
    .line 853
    move-result-object v5

    .line 854
    iget-wide v7, v5, Landroidx/recyclerview/widget/c1;->c:J

    .line 855
    .line 856
    cmp-long v12, v7, v17

    .line 857
    .line 858
    if-nez v12, :cond_2a

    .line 859
    .line 860
    goto :goto_14

    .line 861
    :cond_2a
    const-wide/16 v12, 0x4

    .line 862
    .line 863
    div-long/2addr v7, v12

    .line 864
    const-wide/16 v14, 0x3

    .line 865
    .line 866
    mul-long/2addr v7, v14

    .line 867
    div-long/2addr v10, v12

    .line 868
    add-long/2addr v10, v7

    .line 869
    :goto_14
    iput-wide v10, v5, Landroidx/recyclerview/widget/c1;->c:J

    .line 870
    .line 871
    goto :goto_15

    .line 872
    :cond_2b
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 873
    .line 874
    new-instance v4, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    const-string v6, "Inconsistency detected. Invalid item position "

    .line 877
    .line 878
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    const-string v1, "(offset:"

    .line 885
    .line 886
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    const-string v1, ").state:"

    .line 893
    .line 894
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 898
    .line 899
    invoke-virtual {v1}, Landroidx/recyclerview/widget/l1;->b()I

    .line 900
    .line 901
    .line 902
    move-result v1

    .line 903
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    throw v3

    .line 921
    :cond_2c
    :goto_15
    if-eqz v3, :cond_2d

    .line 922
    .line 923
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 924
    .line 925
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 926
    .line 927
    if-nez v5, :cond_2d

    .line 928
    .line 929
    const/16 v5, 0x2000

    .line 930
    .line 931
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/p1;->hasAnyOfTheFlags(I)Z

    .line 932
    .line 933
    .line 934
    move-result v7

    .line 935
    if-eqz v7, :cond_2d

    .line 936
    .line 937
    invoke-virtual {v9, v4, v5}, Landroidx/recyclerview/widget/p1;->setFlags(II)V

    .line 938
    .line 939
    .line 940
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 941
    .line 942
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->j:Z

    .line 943
    .line 944
    if-eqz v5, :cond_2d

    .line 945
    .line 946
    invoke-static {v9}, Landroidx/recyclerview/widget/r0;->b(Landroidx/recyclerview/widget/p1;)V

    .line 947
    .line 948
    .line 949
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/r0;

    .line 950
    .line 951
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getUnmodifiedPayloads()Ljava/util/List;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 955
    .line 956
    .line 957
    new-instance v5, Landroidx/recyclerview/widget/q0;

    .line 958
    .line 959
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/q0;->a(Landroidx/recyclerview/widget/p1;)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v2, v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/q0;)V

    .line 966
    .line 967
    .line 968
    :cond_2d
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 969
    .line 970
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 971
    .line 972
    if-eqz v5, :cond_2e

    .line 973
    .line 974
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isBound()Z

    .line 975
    .line 976
    .line 977
    move-result v5

    .line 978
    if-eqz v5, :cond_2e

    .line 979
    .line 980
    iput v1, v9, Landroidx/recyclerview/widget/p1;->mPreLayoutPosition:I

    .line 981
    .line 982
    goto :goto_16

    .line 983
    :cond_2e
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isBound()Z

    .line 984
    .line 985
    .line 986
    move-result v5

    .line 987
    if-eqz v5, :cond_30

    .line 988
    .line 989
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->needsUpdate()Z

    .line 990
    .line 991
    .line 992
    move-result v5

    .line 993
    if-nez v5, :cond_30

    .line 994
    .line 995
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 996
    .line 997
    .line 998
    move-result v5

    .line 999
    if-eqz v5, :cond_2f

    .line 1000
    .line 1001
    goto :goto_17

    .line 1002
    :cond_2f
    :goto_16
    move v1, v4

    .line 1003
    goto/16 :goto_1b

    .line 1004
    .line 1005
    :cond_30
    :goto_17
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 1006
    .line 1007
    invoke-virtual {v5, v1, v4}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 1008
    .line 1009
    .line 1010
    move-result v5

    .line 1011
    const/4 v7, 0x0

    .line 1012
    iput-object v7, v9, Landroidx/recyclerview/widget/p1;->mBindingAdapter:Landroidx/recyclerview/widget/k0;

    .line 1013
    .line 1014
    iput-object v2, v9, Landroidx/recyclerview/widget/p1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1015
    .line 1016
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 1017
    .line 1018
    .line 1019
    move-result v8

    .line 1020
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1021
    .line 1022
    .line 1023
    move-result-wide v10

    .line 1024
    cmp-long v12, p1, v19

    .line 1025
    .line 1026
    if-eqz v12, :cond_31

    .line 1027
    .line 1028
    iget-object v12, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 1029
    .line 1030
    invoke-virtual {v12, v8}, Landroidx/recyclerview/widget/d1;->a(I)Landroidx/recyclerview/widget/c1;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v8

    .line 1034
    iget-wide v12, v8, Landroidx/recyclerview/widget/c1;->d:J

    .line 1035
    .line 1036
    cmp-long v8, v12, v17

    .line 1037
    .line 1038
    if-eqz v8, :cond_31

    .line 1039
    .line 1040
    add-long/2addr v12, v10

    .line 1041
    cmp-long v8, v12, p1

    .line 1042
    .line 1043
    if-gez v8, :cond_2f

    .line 1044
    .line 1045
    :cond_31
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 1046
    .line 1047
    invoke-virtual {v8, v9, v5}, Landroidx/recyclerview/widget/k0;->bindViewHolder(Landroidx/recyclerview/widget/p1;I)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1051
    .line 1052
    .line 1053
    move-result-wide v12

    .line 1054
    iget-object v5, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 1055
    .line 1056
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 1057
    .line 1058
    .line 1059
    move-result v8

    .line 1060
    sub-long/2addr v12, v10

    .line 1061
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/d1;->a(I)Landroidx/recyclerview/widget/c1;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v5

    .line 1065
    iget-wide v10, v5, Landroidx/recyclerview/widget/c1;->d:J

    .line 1066
    .line 1067
    cmp-long v8, v10, v17

    .line 1068
    .line 1069
    if-nez v8, :cond_32

    .line 1070
    .line 1071
    goto :goto_18

    .line 1072
    :cond_32
    const-wide/16 v14, 0x4

    .line 1073
    .line 1074
    div-long/2addr v10, v14

    .line 1075
    const-wide/16 v16, 0x3

    .line 1076
    .line 1077
    mul-long v10, v10, v16

    .line 1078
    .line 1079
    div-long/2addr v12, v14

    .line 1080
    add-long/2addr v12, v10

    .line 1081
    :goto_18
    iput-wide v12, v5, Landroidx/recyclerview/widget/c1;->d:J

    .line 1082
    .line 1083
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v5

    .line 1087
    if-eqz v5, :cond_38

    .line 1088
    .line 1089
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1090
    .line 1091
    sget-object v8, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 1092
    .line 1093
    invoke-static {v5}, Landroidx/core/view/k0;->c(Landroid/view/View;)I

    .line 1094
    .line 1095
    .line 1096
    move-result v8

    .line 1097
    if-nez v8, :cond_33

    .line 1098
    .line 1099
    invoke-static {v5, v6}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 1100
    .line 1101
    .line 1102
    :cond_33
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/r1;

    .line 1103
    .line 1104
    if-nez v8, :cond_34

    .line 1105
    .line 1106
    goto :goto_1a

    .line 1107
    :cond_34
    invoke-virtual {v8}, Landroidx/recyclerview/widget/r1;->getItemDelegate()Landroidx/core/view/c;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v8

    .line 1111
    instance-of v10, v8, Landroidx/recyclerview/widget/q1;

    .line 1112
    .line 1113
    if-eqz v10, :cond_37

    .line 1114
    .line 1115
    move-object v10, v8

    .line 1116
    check-cast v10, Landroidx/recyclerview/widget/q1;

    .line 1117
    .line 1118
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1119
    .line 1120
    .line 1121
    invoke-static {v5}, Landroidx/core/view/c1;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v11

    .line 1125
    if-nez v11, :cond_35

    .line 1126
    .line 1127
    goto :goto_19

    .line 1128
    :cond_35
    instance-of v7, v11, Landroidx/core/view/a;

    .line 1129
    .line 1130
    if-eqz v7, :cond_36

    .line 1131
    .line 1132
    check-cast v11, Landroidx/core/view/a;

    .line 1133
    .line 1134
    iget-object v7, v11, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    .line 1135
    .line 1136
    goto :goto_19

    .line 1137
    :cond_36
    new-instance v7, Landroidx/core/view/c;

    .line 1138
    .line 1139
    invoke-direct {v7, v11}, Landroidx/core/view/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 1140
    .line 1141
    .line 1142
    :goto_19
    if-eqz v7, :cond_37

    .line 1143
    .line 1144
    if-eq v7, v10, :cond_37

    .line 1145
    .line 1146
    iget-object v10, v10, Landroidx/recyclerview/widget/q1;->b:Ljava/util/WeakHashMap;

    .line 1147
    .line 1148
    invoke-virtual {v10, v5, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    :cond_37
    invoke-static {v5, v8}, Landroidx/core/view/c1;->o(Landroid/view/View;Landroidx/core/view/c;)V

    .line 1152
    .line 1153
    .line 1154
    :cond_38
    :goto_1a
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 1155
    .line 1156
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 1157
    .line 1158
    if-eqz v5, :cond_39

    .line 1159
    .line 1160
    iput v1, v9, Landroidx/recyclerview/widget/p1;->mPreLayoutPosition:I

    .line 1161
    .line 1162
    :cond_39
    move v1, v6

    .line 1163
    :goto_1b
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1164
    .line 1165
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v5

    .line 1169
    if-nez v5, :cond_3a

    .line 1170
    .line 1171
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v2

    .line 1175
    :goto_1c
    check-cast v2, Landroidx/recyclerview/widget/x0;

    .line 1176
    .line 1177
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1178
    .line 1179
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1180
    .line 1181
    .line 1182
    goto :goto_1d

    .line 1183
    :cond_3a
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v7

    .line 1187
    if-nez v7, :cond_3b

    .line 1188
    .line 1189
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v2

    .line 1193
    goto :goto_1c

    .line 1194
    :cond_3b
    move-object v2, v5

    .line 1195
    check-cast v2, Landroidx/recyclerview/widget/x0;

    .line 1196
    .line 1197
    :goto_1d
    iput-object v9, v2, Landroidx/recyclerview/widget/x0;->a:Landroidx/recyclerview/widget/p1;

    .line 1198
    .line 1199
    if-eqz v3, :cond_3c

    .line 1200
    .line 1201
    if-eqz v1, :cond_3c

    .line 1202
    .line 1203
    move v4, v6

    .line 1204
    :cond_3c
    iput-boolean v4, v2, Landroidx/recyclerview/widget/x0;->d:Z

    .line 1205
    .line 1206
    return-object v9

    .line 1207
    :cond_3d
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 1208
    .line 1209
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    const-string v5, "Invalid item position "

    .line 1212
    .line 1213
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    const-string v5, "("

    .line 1220
    .line 1221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    const-string v1, "). Item count:"

    .line 1228
    .line 1229
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    .line 1232
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 1233
    .line 1234
    invoke-virtual {v1}, Landroidx/recyclerview/widget/l1;->b()I

    .line 1235
    .line 1236
    .line 1237
    move-result v1

    .line 1238
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v1

    .line 1245
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v1

    .line 1252
    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    throw v3
.end method

.method public final m(Landroidx/recyclerview/widget/p1;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/p1;->mInChangeScrap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/p1;->mScrapContainer:Landroidx/recyclerview/widget/e1;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/recyclerview/widget/p1;->mInChangeScrap:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/w0;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/e1;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/e1;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/e1;->f:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/e1;->h(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
