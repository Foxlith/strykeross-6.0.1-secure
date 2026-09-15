.class public final Landroidx/viewpager2/adapter/c;
.super Landroidx/recyclerview/widget/m0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/adapter/c;->a:I

    iput-object p1, p0, Landroidx/viewpager2/adapter/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/viewpager2/adapter/c;->a:I

    iput-object p1, p0, Landroidx/viewpager2/adapter/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;I)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Landroidx/viewpager2/adapter/c;->a:I

    .line 3
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/c;-><init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->f:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onChanged()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager2/adapter/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/c;->a()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Landroidx/viewpager2/adapter/c;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/viewpager2/adapter/d;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/viewpager2/adapter/d;->b(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/viewpager2/adapter/c;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/c;->a()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/c;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/viewpager2/adapter/c;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/c;->a()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/c;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/viewpager2/adapter/c;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/c;->a()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/c;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/viewpager2/adapter/c;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/c;->a()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/c;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
