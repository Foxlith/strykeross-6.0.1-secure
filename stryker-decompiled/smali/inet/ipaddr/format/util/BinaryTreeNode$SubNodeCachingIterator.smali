.class abstract Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;
.super Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubNodeCachingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator<",
        "TE;>;",
        "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
        "Linet/ipaddr/format/util/BinaryTreeNode<",
        "TE;>;TE;TC;>;"
    }
.end annotation


# static fields
.field private static final STACK_SIZE:I = 0x82


# instance fields
.field final addedOnly:Z

.field final bounds:Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;"
        }
    .end annotation
.end field

.field private cacheItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final isForward:Z

.field private nextCached:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private nextKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private stack:[Ljava/lang/Object;

.field private stackIndex:I


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

    invoke-direct {p0, p4, p5, p6}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    const/4 p6, -0x1

    iput p6, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stackIndex:I

    iput-boolean p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->isForward:Z

    iput-boolean p3, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->addedOnly:Z

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->bounds:Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    invoke-virtual {p0, p4, p5, p1, p3}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->getStart(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;Z)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next:Linet/ipaddr/format/util/BinaryTreeNode;

    return-void
.end method

.method private cacheWithFirstSubNode(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->checkCaching()V

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->isForward:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->addedOnly:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->bounds:Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->getToNextOperation()Ljava/util/function/BinaryOperator;

    move-result-object v1

    iget-object v2, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/BinaryTreeNode;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->nextKey:Ljava/lang/Object;

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->nextCached:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private cacheWithSecondSubNode(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->checkCaching()V

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->isForward:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_7

    iget-boolean v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->addedOnly:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->bounds:Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->getToNextOperation()Ljava/util/function/BinaryOperator;

    move-result-object v1

    iget-object v2, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/BinaryTreeNode;

    :cond_3
    if-eqz v0, :cond_7

    iget-boolean v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->isForward:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    :goto_1
    const/4 v2, 0x1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->nextKey:Ljava/lang/Object;

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->nextCached:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stack:[Ljava/lang/Object;

    if-nez v1, :cond_6

    const/16 v1, 0x104

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stack:[Ljava/lang/Object;

    :cond_6
    iget v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stackIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stackIndex:I

    iget-object v3, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stack:[Ljava/lang/Object;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stack:[Ljava/lang/Object;

    iget v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stackIndex:I

    add-int/lit16 v1, v1, 0x82

    aput-object p1, v0, v1

    :goto_2
    return v2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public cacheWithLowerSubNode(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->isForward:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->cacheWithFirstSubNode(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->cacheWithSecondSubNode(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public cacheWithUpperSubNode(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->isForward:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->cacheWithSecondSubNode(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->cacheWithFirstSubNode(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public abstract checkCaching()V
.end method

.method public doNext()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->doNext()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->populateCacheItem()V

    return-object v0
.end method

.method public getCached()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->checkCaching()V

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->cacheItem:Ljava/lang/Object;

    return-object v0
.end method

.method public populateCacheItem()V
    .locals 5

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->nextKey:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->nextCached:Ljava/lang/Object;

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->cacheItem:Ljava/lang/Object;

    iput-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->nextCached:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stack:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v2, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stackIndex:I

    if-ltz v2, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v4}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    add-int/lit16 v3, v2, 0x82

    aget-object v4, v0, v3

    iput-object v4, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->cacheItem:Ljava/lang/Object;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    iget v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stackIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->stackIndex:I

    goto :goto_0

    :cond_1
    iput-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;->cacheItem:Ljava/lang/Object;

    :goto_0
    return-void
.end method
