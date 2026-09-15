.class Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;
.super Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockSizeCachingNodeIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;,
        Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Comp;
    }
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
.field private static final COMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "*>;"
        }
    .end annotation
.end field

.field private static final REVERSE_COMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private cacheItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private lowerCacheObj:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached<",
            "TE;TC;>;"
        }
    .end annotation
.end field

.field private nextCachedItem:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached<",
            "TE;TC;>;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached<",
            "TE;TC;>;>;"
        }
    .end annotation
.end field

.field private upperCacheObj:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached<",
            "TE;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Comp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Comp;-><init>(Z)V

    sput-object v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->COMP:Ljava/util/Comparator;

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Comp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Comp;-><init>(Z)V

    sput-object v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->REVERSE_COMP:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ILinet/ipaddr/format/util/BinaryTreeNode;ZLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;Z",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    if-eqz p3, :cond_0

    sget-object p3, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->REVERSE_COMP:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    sget-object p3, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->COMP:Ljava/util/Comparator;

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1, p3}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->queue:Ljava/util/PriorityQueue;

    goto :goto_1

    :cond_1
    new-instance p4, Ljava/util/PriorityQueue;

    shr-int/lit8 p1, p1, 0x1

    invoke-direct {p4, p1, p3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p4, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->queue:Ljava/util/PriorityQueue;

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p2, v0, v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->getStart(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;Z)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next:Linet/ipaddr/format/util/BinaryTreeNode;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/BinaryTreeNode;ZLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;Z",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            ")V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;-><init>(ILinet/ipaddr/format/util/BinaryTreeNode;ZLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-void
.end method

.method public static synthetic a(Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->lambda$getToNextOperation$0(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getToNextOperation$0(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 3

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    invoke-direct {v2}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;-><init>()V

    iput-object v0, v2, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;->node:Linet/ipaddr/format/util/BinaryTreeNode;

    iput-object v2, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->lowerCacheObj:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->lowerCacheObj:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    :goto_0
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    invoke-direct {v0}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;-><init>()V

    iput-object p1, v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;->node:Linet/ipaddr/format/util/BinaryTreeNode;

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->upperCacheObj:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    iget-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->upperCacheObj:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    :goto_1
    iget-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->nextCachedItem:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    if-eqz p1, :cond_2

    iget-object p1, p1, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;->cached:Ljava/lang/Object;

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->cacheItem:Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    if-eqz p1, :cond_3

    iget-object v0, p1, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;->node:Linet/ipaddr/format/util/BinaryTreeNode;

    if-eq v0, p2, :cond_3

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->nextCachedItem:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    return-object v0

    :cond_3
    iput-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->nextCachedItem:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    return-object v1
.end method


# virtual methods
.method public cacheWithLowerSubNode(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->lowerCacheObj:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    if-eqz v0, :cond_0

    iput-object p1, v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;->cached:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cacheWithUpperSubNode(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->upperCacheObj:Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    if-eqz v0, :cond_0

    iput-object p1, v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;->cached:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCached()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->cacheItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getToNextOperation()Ljava/util/function/BinaryOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->operator:Ljava/util/function/BinaryOperator;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linet/ipaddr/format/util/j;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;I)V

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->operator:Ljava/util/function/BinaryOperator;

    :cond_0
    return-object v0
.end method
