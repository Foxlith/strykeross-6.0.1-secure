.class public abstract Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;",
        ">",
        "Landroidx/recyclerview/widget/p1;"
    }
.end annotation


# instance fields
.field private currentItem:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;->currentItem:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    invoke-virtual {p0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;->performBind(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V

    return-void
.end method

.method public final getCurrentItem()Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;->currentItem:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    return-object v0
.end method

.method public abstract performBind(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
