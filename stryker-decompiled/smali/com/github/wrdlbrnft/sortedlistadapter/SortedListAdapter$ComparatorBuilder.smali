.class public Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComparatorBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final comparators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Comparator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->comparators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->order:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->lambda$build$0(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$build$0(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->comparators:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->order:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->order:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public build()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/wrdlbrnft/sortedlistadapter/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/wrdlbrnft/sortedlistadapter/a;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public setOrderForModel(Ljava/lang/Class;Ljava/util/Comparator;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:TT;>(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/util/Comparator<",
            "TM;>;)",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->comparators:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->order:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
