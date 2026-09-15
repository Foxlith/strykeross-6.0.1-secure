.class public final Landroidx/recyclerview/widget/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/util/SparseArray;

.field public b:I

.field public c:Ljava/util/Set;


# virtual methods
.method public final a(I)Landroidx/recyclerview/widget/c1;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d1;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/c1;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/c1;

    invoke-direct {v1}, Landroidx/recyclerview/widget/c1;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method
