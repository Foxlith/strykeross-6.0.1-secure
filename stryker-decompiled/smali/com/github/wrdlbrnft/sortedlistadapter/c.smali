.class public final synthetic Lcom/github/wrdlbrnft/sortedlistadapter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/github/wrdlbrnft/sortedlistadapter/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/c;->b:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/github/wrdlbrnft/sortedlistadapter/c;->c:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/c;->a:I

    iget-object v1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/c;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/github/wrdlbrnft/sortedlistadapter/c;->b:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->e(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Ljava/util/List;)V

    return-void

    :pswitch_0
    invoke-static {v2, v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->b(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Ljava/util/List;)V

    return-void

    :pswitch_1
    invoke-static {v2, v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->a(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
