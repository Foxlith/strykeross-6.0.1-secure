.class public final Landroidx/recyclerview/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/u0;


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I


# virtual methods
.method public final a(II)V
    .locals 5

    .line 1
    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/s;->d:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Landroidx/recyclerview/widget/s;->c:[I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    new-array v0, v3, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/s;->c:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    mul-int/2addr v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/s;->c:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/s;->c:[I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget p1, p0, Landroidx/recyclerview/widget/s;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/s;->d:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/s;->d:I

    iget-object v0, p0, Landroidx/recyclerview/widget/s;->c:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/w0;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->g()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/w0;->collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/recyclerview/widget/s;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/s;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/w0;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/u0;)V

    :cond_2
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/s;->d:I

    iget v2, v0, Landroidx/recyclerview/widget/w0;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_3

    iput v1, v0, Landroidx/recyclerview/widget/w0;->mPrefetchMaxCountObserved:I

    iput-boolean p2, v0, Landroidx/recyclerview/widget/w0;->mPrefetchMaxObservedInInitialPrefetch:Z

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/e1;->n()V

    :cond_3
    return-void
.end method
