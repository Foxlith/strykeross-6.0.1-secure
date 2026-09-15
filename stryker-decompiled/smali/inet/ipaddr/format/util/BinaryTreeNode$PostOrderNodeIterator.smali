.class Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;
.super Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostOrderNodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator<",
        "TE;TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;ZZ",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-void
.end method

.method public constructor <init>(ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            ")V"
        }
    .end annotation

    .line 2
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-void
.end method

.method public static synthetic a(Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;->lambda$getToNextOperation$1(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;->lambda$getToNextOperation$0(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getToNextOperation$0(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    invoke-static {p1, p2, p0}, Linet/ipaddr/format/util/BinaryTreeNode;->access$100(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getToNextOperation$1(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->bounds:Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    invoke-static {p2, p3, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->access$000(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkCaching()V
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->isForward:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public getToNextOperation()Ljava/util/function/BinaryOperator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->operator:Ljava/util/function/BinaryOperator;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->isForward:Z

    if-eqz v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/i;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/i;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/format/util/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/i;-><init>(I)V

    :goto_0
    iget-boolean v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->addedOnly:Z

    if-eqz v1, :cond_1

    new-instance v1, Linet/ipaddr/format/util/k;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Linet/ipaddr/format/util/k;-><init>(Ljava/util/function/BinaryOperator;I)V

    move-object v0, v1

    :cond_1
    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->bounds:Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    if-eqz v1, :cond_2

    new-instance v1, Linet/ipaddr/format/util/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Linet/ipaddr/format/util/l;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;Ljava/util/function/BinaryOperator;I)V

    move-object v0, v1

    :cond_2
    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->operator:Ljava/util/function/BinaryOperator;

    :cond_3
    return-object v0
.end method

.method public populateCacheItem()V
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->isForward:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->populateCacheItem()V

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->isForward:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->addedOnly:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->remove()V

    return-void
.end method
