.class Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;
.super Landroidx/recyclerview/widget/u1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

.field final synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    iput-object p2, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;->isContentTheSameAs(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    check-cast p2, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    invoke-virtual {p0, p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;->areContentsTheSame(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;->isSameModelAs(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    check-cast p2, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    invoke-virtual {p0, p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;->areItemsTheSame(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)Z

    move-result p1

    return p1
.end method

.method public compare(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;->val$comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    check-cast p2, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    invoke-virtual {p0, p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;->compare(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)I

    move-result p1

    return p1
.end method

.method public onChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemRangeRemoved(II)V

    return-void
.end method
