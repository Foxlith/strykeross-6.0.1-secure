.class public abstract Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;,
        Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;,
        Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;,
        Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;,
        Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;,
        Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;",
        ">",
        "Landroidx/recyclerview/widget/k0;"
    }
.end annotation


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private final sortedList:Landroidx/recyclerview/widget/v1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/v1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->callbacks:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->inflater:Landroid/view/LayoutInflater;

    new-instance p1, Landroidx/recyclerview/widget/v1;

    new-instance v0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;

    invoke-direct {v0, p0, p3}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;-><init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;Ljava/util/Comparator;)V

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/v1;-><init>(Ljava/lang/Class;Landroidx/recyclerview/widget/u1;)V

    iput-object p1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->sortedList:Landroidx/recyclerview/widget/v1;

    return-void
.end method

.method public static synthetic access$100(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Landroidx/recyclerview/widget/v1;
    .locals 0

    iget-object p0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->sortedList:Landroidx/recyclerview/widget/v1;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->callbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final addCallback(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public edit()Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;-><init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;)V

    return-object v0
.end method

.method public getItem(I)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->sortedList:Landroidx/recyclerview/widget/v1;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/v1;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->sortedList:Landroidx/recyclerview/widget/v1;

    .line 2
    .line 3
    iget v0, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 4
    .line 5
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->onBindViewHolder(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder<",
            "+",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;",
            ">;I)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->sortedList:Landroidx/recyclerview/widget/v1;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/v1;->d(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    invoke-virtual {p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;->bind(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public abstract onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder<",
            "+TT;>;"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder<",
            "+",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0, p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final removeCallback(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
