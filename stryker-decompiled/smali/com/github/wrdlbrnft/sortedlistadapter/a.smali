.class public final synthetic Lcom/github/wrdlbrnft/sortedlistadapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/github/wrdlbrnft/sortedlistadapter/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/a;->a:I

    iget-object v1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lj5/p;

    invoke-static {v1, p1, p2}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->f(Lj5/p;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_0
    check-cast v1, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;

    check-cast p1, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    check-cast p2, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    invoke-static {v1, p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->a(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
