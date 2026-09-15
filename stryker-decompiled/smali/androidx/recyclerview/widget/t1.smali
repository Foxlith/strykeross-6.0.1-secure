.class public final Landroidx/recyclerview/widget/t1;
.super Landroidx/recyclerview/widget/u1;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/u1;

.field public final b:Landroidx/recyclerview/widget/c;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/u1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/t1;->a:Landroidx/recyclerview/widget/u1;

    new-instance v0, Landroidx/recyclerview/widget/c;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/c;-><init>(Landroidx/recyclerview/widget/c0;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/t1;->b:Landroidx/recyclerview/widget/c;

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/t1;->a:Landroidx/recyclerview/widget/u1;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/u1;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/t1;->a:Landroidx/recyclerview/widget/u1;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/u1;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/t1;->a:Landroidx/recyclerview/widget/u1;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/u1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/t1;->a:Landroidx/recyclerview/widget/u1;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/u1;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/t1;->b:Landroidx/recyclerview/widget/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/c;->onChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final onChanged(IILjava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/t1;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/c;->onChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final onInserted(II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/t1;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/c;->onInserted(II)V

    return-void
.end method

.method public final onRemoved(II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/t1;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/c;->onRemoved(II)V

    return-void
.end method
