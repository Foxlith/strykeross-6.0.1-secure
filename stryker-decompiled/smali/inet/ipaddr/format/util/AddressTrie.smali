.class public abstract Linet/ipaddr/format/util/AddressTrie;
.super Linet/ipaddr/format/util/AbstractTree;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/AddressTrie$TrieNode;,
        Linet/ipaddr/format/util/AddressTrie$TrieComparator;,
        Linet/ipaddr/format/util/AddressTrie$AddressComparator;,
        Linet/ipaddr/format/util/AddressTrie$OpResult;,
        Linet/ipaddr/format/util/AddressTrie$Operation;,
        Linet/ipaddr/format/util/AddressTrie$AddressBounds;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Linet/ipaddr/format/util/AbstractTree<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final comparator:Linet/ipaddr/format/util/AddressTrie$TrieComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieComparator<",
            "*>;"
        }
    .end annotation
.end field

.field static final reverseComparator:Linet/ipaddr/format/util/AddressTrie$TrieComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieComparator<",
            "*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;"
        }
    .end annotation
.end field

.field set:Linet/ipaddr/format/util/AddressTrieSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private subRoot:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private subRootChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/format/util/AddressTrie$TrieComparator;

    new-instance v1, Linet/ipaddr/format/util/AddressTrie$AddressComparator;

    invoke-direct {v1}, Linet/ipaddr/format/util/AddressTrie$AddressComparator;-><init>()V

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Linet/ipaddr/format/util/AddressTrie;->comparator:Linet/ipaddr/format/util/AddressTrie$TrieComparator;

    new-instance v0, Linet/ipaddr/format/util/AddressTrie$TrieComparator;

    new-instance v1, Linet/ipaddr/format/util/AddressTrie$AddressComparator;

    invoke-direct {v1}, Linet/ipaddr/format/util/AddressTrie$AddressComparator;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Linet/ipaddr/format/util/AddressTrie;->reverseComparator:Linet/ipaddr/format/util/AddressTrie$TrieComparator;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/AddressTrie$TrieNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AbstractTree;-><init>(Linet/ipaddr/format/util/BinaryTreeNode;)V

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-direct {v0}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;-><init>()V

    iput-object v0, p1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/AddressTrie$TrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AbstractTree;-><init>(Linet/ipaddr/format/util/BinaryTreeNode;)V

    iget-object v0, p1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-direct {v0}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;-><init>()V

    iput-object v0, p1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    :cond_0
    iput-object p2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    return-void
.end method

.method public static synthetic access$000(Linet/ipaddr/AddressSegmentSeries;ILinet/ipaddr/AddressSegment;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie;->getSegmentPrefLen(Linet/ipaddr/AddressSegmentSeries;ILinet/ipaddr/AddressSegment;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/format/util/AddressTrie;->getMatchingBits(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I

    move-result p0

    return p0
.end method

.method private ceilingNodeBounded(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->ceilingNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAboveUpperBound(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">()",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Linet/ipaddr/format/util/AddressTrie;->comparator:Linet/ipaddr/format/util/AddressTrie$TrieComparator;

    iget-object v0, v0, Linet/ipaddr/format/util/AddressTrie$TrieComparator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private containedFirstBoundedIterator(ZZ)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->firstPostOrderNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v4

    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    iget-object v6, v0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->lastPreOrderNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v4

    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    iget-object v6, v0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    :goto_0
    return-object p1
.end method

.method private createNewSameBoundsFromList(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie;->createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, v0, Linet/ipaddr/format/util/AbstractTree;->root:Linet/ipaddr/format/util/BinaryTreeNode;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->init(Linet/ipaddr/format/util/AddressTrie$TrieNode;)V

    :goto_0
    iget-object v1, v1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    :cond_1
    :goto_1
    iput-object v1, p1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, v0, Linet/ipaddr/format/util/AbstractTree;->root:Linet/ipaddr/format/util/BinaryTreeNode;

    const/4 v1, -0x1

    iput v1, p1, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->size()I

    return-object v0

    :cond_2
    move-object p1, v2

    goto :goto_1
.end method

.method public static decrement(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/Address;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Linet/ipaddr/IPAddress;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Linet/ipaddr/IPAddress;

    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object p0

    invoke-virtual {v0}, Linet/ipaddr/Address;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddress;->setPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toMaxHost()Linet/ipaddr/IPAddress;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/Address;->getBitCount()I

    move-result p0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddress;->getTrailingBitCount(Z)I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Linet/ipaddr/IPAddress;->toPrefixBlock(I)Linet/ipaddr/IPAddress;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/Address;->getLower()Linet/ipaddr/Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/Address;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Linet/ipaddr/Address;->setPrefixLength(I)Linet/ipaddr/Address;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/Address;->toPrefixBlock()Linet/ipaddr/Address;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/Address;->getUpper()Linet/ipaddr/Address;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSegmentCount()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_5

    invoke-interface {p0, v0}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->isZero()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/Address;->getBitCount()I

    move-result v0

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Linet/ipaddr/Address;->setPrefixLength(I)Linet/ipaddr/Address;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/Address;->toPrefixBlock()Linet/ipaddr/Address;

    move-result-object p0

    return-object p0
.end method

.method private floorNodeBounded(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAboveUpperBound(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->floorNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getIteratingLowerBoundary()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isLowerBounded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    iget-boolean v2, v1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerInclusive:Z

    iget-object v1, v1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    check-cast v1, Linet/ipaddr/Address;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lowerNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->floorNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method private getIteratingUpperBoundary()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isUpperBounded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    iget-boolean v2, v1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperInclusive:Z

    iget-object v1, v1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    check-cast v1, Linet/ipaddr/Address;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->higherNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->ceilingNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method private static getMatchingBits(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p0

    invoke-interface {p1}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p1

    xor-int/2addr p0, p1

    const/16 p1, 0x10

    if-ne p3, p1, :cond_1

    invoke-static {p0}, Linet/ipaddr/format/util/AddressTrie;->numberOfLeadingZerosShort(I)I

    move-result p0

    return p0

    :cond_1
    const/16 p1, 0x18

    if-ne p3, p1, :cond_2

    invoke-static {p0}, Linet/ipaddr/format/util/AddressTrie;->numberOfLeadingZerosByte(I)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    sub-int/2addr p0, p3

    return p0
.end method

.method private static getSegmentPrefLen(Linet/ipaddr/AddressSegmentSeries;ILinet/ipaddr/AddressSegment;)Ljava/lang/Integer;
    .locals 1

    instance-of v0, p2, Linet/ipaddr/IPAddressSegment;

    if-eqz v0, :cond_0

    check-cast p2, Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p2}, Linet/ipaddr/IPAddressSegment;->getSegmentPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result p0

    add-int/2addr p0, p1

    if-gt p2, p0, :cond_2

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private higherNodeBounded(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->higherNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAboveUpperBound(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static increment(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/Address;->isMax()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Linet/ipaddr/IPAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Linet/ipaddr/IPAddress;

    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object p0

    invoke-virtual {v0}, Linet/ipaddr/Address;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddress;->setPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->toZeroHost()Linet/ipaddr/IPAddress;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/Address;->getBitCount()I

    move-result p0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddress;->getTrailingBitCount(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Linet/ipaddr/IPAddress;->toPrefixBlock(I)Linet/ipaddr/IPAddress;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/Address;->getUpper()Linet/ipaddr/Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/Address;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Linet/ipaddr/Address;->setPrefixLength(I)Linet/ipaddr/Address;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/Address;->toPrefixBlock()Linet/ipaddr/Address;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/Address;->getLower()Linet/ipaddr/Address;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSegmentCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    invoke-interface {p0, v0}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v2

    invoke-interface {v2}, Linet/ipaddr/format/AddressItem;->isMax()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result v0

    not-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/Address;->getBitCount()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Linet/ipaddr/Address;->setPrefixLength(I)Linet/ipaddr/Address;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/Address;->toPrefixBlock()Linet/ipaddr/Address;

    move-result-object p0

    return-object p0
.end method

.method private lowerNodeBounded(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAboveUpperBound(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lowerNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static nodeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">()",
            "Ljava/util/Comparator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    sget-object v0, Linet/ipaddr/format/util/AddressTrie;->comparator:Linet/ipaddr/format/util/AddressTrie$TrieComparator;

    return-object v0
.end method

.method private static numberOfLeadingZerosByte(I)I
    .locals 2

    if-nez p0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    ushr-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    shl-int/lit8 p0, p0, 0x4

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    ushr-int/lit8 v1, p0, 0x6

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 p0, p0, 0x2

    :cond_2
    ushr-int/lit8 p0, p0, 0x7

    sub-int/2addr v0, p0

    return v0
.end method

.method private static numberOfLeadingZerosShort(I)I
    .locals 2

    if-nez p0, :cond_0

    const/16 p0, 0x10

    return p0

    :cond_0
    ushr-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_1

    shl-int/lit8 p0, p0, 0x8

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    ushr-int/lit8 v1, p0, 0xc

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 p0, p0, 0x4

    :cond_2
    ushr-int/lit8 v1, p0, 0xe

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 p0, p0, 0x2

    :cond_3
    ushr-int/lit8 p0, p0, 0xf

    sub-int/2addr v0, p0

    return v0
.end method

.method public static reverseComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">()",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Linet/ipaddr/format/util/AddressTrie;->reverseComparator:Linet/ipaddr/format/util/AddressTrie$TrieComparator;

    iget-object v0, v0, Linet/ipaddr/format/util/AddressTrie$TrieComparator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static reverseNodeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">()",
            "Ljava/util/Comparator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    sget-object v0, Linet/ipaddr/format/util/AddressTrie;->reverseComparator:Linet/ipaddr/format/util/AddressTrie$TrieComparator;

    return-object v0
.end method

.method public static throwOutOfBounds()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ipaddress.error.address.out.of.range"

    invoke-static {v1}, Linet/ipaddr/format/util/AbstractTree;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs toString(Z[Linet/ipaddr/format/util/AddressTrie;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Linet/ipaddr/format/util/AddressTrie<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n\u25cb"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/16 v5, 0xa

    if-nez v4, :cond_a

    array-length v4, p1

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_2

    aget-object v6, p1, v4

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    if-nez v3, :cond_9

    invoke-virtual {v6}, Linet/ipaddr/format/util/AddressTrie;->size()I

    move-result v7

    move v8, v2

    :goto_4
    if-ge v8, v4, :cond_5

    aget-object v9, p1, v8

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Linet/ipaddr/format/util/AddressTrie;->size()I

    move-result v9

    add-int/2addr v9, v7

    move v7, v9

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    if-ge v2, v4, :cond_8

    aget-object v7, p1, v2

    if-eqz v7, :cond_7

    new-instance v8, Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    const-string v9, "\u251c\u2500"

    const-string v10, "\u2502 "

    invoke-direct {v8, v9, v10}, Linet/ipaddr/format/util/BinaryTreeNode$Indents;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v8, p0}, Linet/ipaddr/format/util/AddressTrie;->printTree(Ljava/lang/StringBuilder;Linet/ipaddr/format/util/BinaryTreeNode$Indents;Z)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    const-string v2, "\u2514\u2500"

    const-string v4, "  "

    invoke-direct {p1, v2, v4}, Linet/ipaddr/format/util/BinaryTreeNode$Indents;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0, p1, p0}, Linet/ipaddr/format/util/AddressTrie;->printTree(Ljava/lang/StringBuilder;Linet/ipaddr/format/util/BinaryTreeNode$Indents;Z)V

    :cond_9
    move v4, v3

    :cond_a
    if-eqz v4, :cond_c

    if-eqz p0, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (0)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AbstractTree;->root:Linet/ipaddr/format/util/BinaryTreeNode;

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public add(Linet/ipaddr/Address;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->throwOutOfBounds()V

    :cond_0
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->adjustRoot(Linet/ipaddr/Address;)V

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    new-instance v2, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v3, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v2, p1, v3}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    invoke-virtual {v1, v2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-boolean p1, v2, Linet/ipaddr/format/util/AddressTrie$OpResult;->exists:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method public addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->throwOutOfBounds()V

    :cond_0
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->adjustRoot(Linet/ipaddr/Address;)V

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    new-instance v1, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v2, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v1, p1, v2}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-object p1, v1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    if-nez p1, :cond_1

    iget-object p1, v1, Linet/ipaddr/format/util/AddressTrie$OpResult;->inserted:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    :cond_1
    return-object p1
.end method

.method public addNode(Linet/ipaddr/format/util/AddressTrie$OpResult;Linet/ipaddr/format/util/AddressTrie$TrieNode;Linet/ipaddr/format/util/AddressTrie$TrieNode;Z)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;Z)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linet/ipaddr/Address;

    invoke-virtual {p3}, Linet/ipaddr/Address;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(ILinet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-object p2, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    if-nez p2, :cond_0

    iget-object p2, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->inserted:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    :cond_0
    return-object p2
.end method

.method public addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie;->addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;Z)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;Z)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;Z)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    new-instance v3, Linet/ipaddr/format/util/AddressTrie$OpResult;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linet/ipaddr/Address;

    sget-object v5, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v3, v4, v5}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v4

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linet/ipaddr/Address;

    invoke-virtual {p0, v6}, Linet/ipaddr/format/util/AddressTrie;->adjustRoot(Linet/ipaddr/Address;)V

    invoke-virtual {p0, v3, v4, v2, p2}, Linet/ipaddr/format/util/AddressTrie;->addNode(Linet/ipaddr/format/util/AddressTrie$OpResult;Linet/ipaddr/format/util/AddressTrie$TrieNode;Linet/ipaddr/format/util/AddressTrie$TrieNode;Z)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v4

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v6, v4

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1, v6}, Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;->cacheWithLowerSubNode(Ljava/lang/Object;)Z

    invoke-interface {v1, v6}, Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;->cacheWithUpperSubNode(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-interface {v1}, Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;->getCached()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-virtual {v6}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linet/ipaddr/Address;

    if-nez v2, :cond_1

    invoke-virtual {p0, v8}, Linet/ipaddr/format/util/AddressTrie;->adjustRoot(Linet/ipaddr/Address;)V

    move v2, v0

    :cond_1
    iput-object v8, v3, Linet/ipaddr/format/util/AddressTrie$OpResult;->addr:Linet/ipaddr/Address;

    const/4 v8, 0x0

    iput-object v8, v3, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    iput-object v8, v3, Linet/ipaddr/format/util/AddressTrie$OpResult;->inserted:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-virtual {p0, v3, v7, v6, p2}, Linet/ipaddr/format/util/AddressTrie;->addNode(Linet/ipaddr/format/util/AddressTrie$OpResult;Linet/ipaddr/format/util/AddressTrie$TrieNode;Linet/ipaddr/format/util/AddressTrie$TrieNode;Z)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v4

    :cond_4
    return-object v4
.end method

.method public adjustRoot(Linet/ipaddr/Address;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method public allNodeIterator(Z)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->allNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public allNodeSpliterator(Z)Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public asSet()Linet/ipaddr/format/util/AddressTrieSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->set:Linet/ipaddr/format/util/AddressTrieSet;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/AddressTrieSet;

    invoke-direct {v0, p0}, Linet/ipaddr/format/util/AddressTrieSet;-><init>(Linet/ipaddr/format/util/AddressTrie;)V

    :cond_0
    return-object v0
.end method

.method public blockSizeAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->blockSizeAllNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v7, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;

    const/4 v1, 0x0

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    const/4 v3, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v4

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    iget-object v6, p1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;-><init>(ILinet/ipaddr/format/util/BinaryTreeNode$Bounds;ZLinet/ipaddr/format/util/BinaryTreeNode;ZLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    move-object p1, v7

    :goto_0
    return-object p1
.end method

.method public blockSizeCachingAllNodeIterator()Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->blockSizeCachingAllNodeIterator()Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public blockSizeNodeIterator(Z)Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->blockSizeNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v7, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->size()I

    move-result v1

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    const/4 v3, 0x1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v4

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    iget-object v6, p1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;-><init>(ILinet/ipaddr/format/util/BinaryTreeNode$Bounds;ZLinet/ipaddr/format/util/BinaryTreeNode;ZLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    move-object p1, v7

    :goto_0
    return-object p1
.end method

.method public ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->ceilingNodeBounded(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-super {p0}, Linet/ipaddr/format/util/AbstractTree;->clear()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/format/util/BinaryTreeNode;

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/Address;

    invoke-virtual {v2, v1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AbstractTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->clone()Linet/ipaddr/format/util/AddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/format/util/AddressTrie;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AbstractTree;->clone()Linet/ipaddr/format/util/AbstractTree;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie;

    const/4 v1, 0x0

    iput-object v1, v0, Linet/ipaddr/format/util/AddressTrie;->set:Linet/ipaddr/format/util/AddressTrieSet;

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->cloneTree()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/util/AbstractTree;->root:Linet/ipaddr/format/util/BinaryTreeNode;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v2

    iget-object v3, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linet/ipaddr/Address;

    invoke-virtual {v3, v4}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2, v3}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->cloneTree(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v2

    iput-object v2, v0, Linet/ipaddr/format/util/AbstractTree;->root:Linet/ipaddr/format/util/BinaryTreeNode;

    goto :goto_0

    :cond_1
    new-instance v3, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-direct {v3}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;-><init>()V

    invoke-virtual {v2, v3}, Linet/ipaddr/format/util/BinaryTreeNode;->cloneTreeNode(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v2

    iput-object v2, v0, Linet/ipaddr/format/util/AbstractTree;->root:Linet/ipaddr/format/util/BinaryTreeNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Linet/ipaddr/format/util/BinaryTreeNode;->setAdded(Z)V

    invoke-virtual {v2, v1}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    invoke-virtual {v2, v1}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v3, v4}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->cloneTree(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v2

    invoke-virtual {v2, v3}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->init(Linet/ipaddr/format/util/AddressTrie$TrieNode;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v3

    iput v3, v2, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    :goto_0
    iput-object v1, v0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    :goto_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->clone()Linet/ipaddr/format/util/AddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public abstract constructAddedNodesTree()Linet/ipaddr/format/util/AssociativeAddressTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TE;+",
            "Ljava/util/List<",
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TE;*>;>;>;"
        }
    .end annotation
.end method

.method public containedFirstAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->containedFirstAllNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie;->containedFirstBoundedIterator(ZZ)Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public containedFirstIterator(Z)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->containedFirstIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie;->containedFirstBoundedIterator(ZZ)Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;TE;TC;>;"
        }
    .end annotation

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    iget-object v6, v0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    goto :goto_0

    :cond_1
    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    iget-object v6, v0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    :goto_0
    return-object p1
.end method

.method public containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;TE;TC;>;"
        }
    .end annotation

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    iget-object v6, v0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    goto :goto_0

    :cond_1
    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    iget-object v6, v0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    :goto_0
    return-object p1
.end method

.method public contains(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->contains(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public contructAddedTree(Linet/ipaddr/format/util/AssociativeAddressTrie;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TE;+",
            "Ljava/util/List<",
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TE;*>;>;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Linet/ipaddr/format/util/AddressTrie;->addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    invoke-interface {v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;->cacheWithLowerSubNode(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;->cacheWithUpperSubNode(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;->getCached()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v3}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getParent()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v4

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v3}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v4}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->allNodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    :goto_3
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_6
    return-void
.end method

.method public abstract createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/util/AbstractTree;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSpliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Linet/ipaddr/format/util/AddressTrie;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object v1

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->reverseComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public elementContains(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->elementContains(Linet/ipaddr/Address;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public elementContainsBounds(Linet/ipaddr/Address;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementContains(Linet/ipaddr/Address;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->createNewSameBoundsFromList(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public elementsContainedByToSubTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p1}, Linet/ipaddr/Address;->getLower()Linet/ipaddr/Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->withoutPrefixLength()Linet/ipaddr/Address;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/Address;->getUpper()Linet/ipaddr/Address;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/Address;->withoutPrefixLength()Linet/ipaddr/Address;

    move-result-object p1

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v2, p1, v2, v1}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->createNewBounds(Linet/ipaddr/Address;ZLinet/ipaddr/Address;ZLjava/util/Comparator;)Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, v2, p1, v2}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->intersect(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;

    move-result-object p1

    return-object p1
.end method

.method public elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public elementsContainingToTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    iget-object p1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->size()I

    move-result v0

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    return-object p0

    :cond_3
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->createNewSameBoundsFromList(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/util/AddressTrie;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AbstractTree;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isLowerBounded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    iget-boolean v3, v2, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerInclusive:Z

    iget-object v2, v2, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    check-cast v2, Linet/ipaddr/Address;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->ceilingNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->higherNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/Address;

    invoke-virtual {v2, v3}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAboveUpperBound(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->floorNodeBounded(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :cond_2
    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->subRootChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->subRootChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->isChangedSince(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->subRoot:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/Address;

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isLowerBounded()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2, v1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isUpperBounded()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2, v1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAboveUpperBound(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    :cond_4
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    iget-object v1, v1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->getCurrent()Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    move-result-object v1

    iput-object v1, p0, Linet/ipaddr/format/util/AddressTrie;->subRootChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->subRoot:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic getRoot()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/util/AbstractTree;->hashCode()I

    move-result v0

    return v0
.end method

.method public higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->higherNodeBounded(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-super {p0}, Linet/ipaddr/format/util/AbstractTree;->isEmpty()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/util/AbstractTree;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isUpperBounded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    iget-boolean v3, v2, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperInclusive:Z

    iget-object v2, v2, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    check-cast v2, Linet/ipaddr/Address;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->floorNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lowerNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/Address;

    invoke-virtual {v2, v3}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public longestPrefixMatch(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->longestPrefixMatch(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public longestPrefixMatchBounds(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->smallestElementContainingBounds(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/Address;

    :goto_0
    return-object p1
.end method

.method public longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->lowerNodeBounded(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public noBoundsString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Linet/ipaddr/format/util/BinaryTreeNode;->toTreeString(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeIterator(Z)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_4

    :cond_0
    new-instance v6, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Linet/ipaddr/format/util/AddressTrie;->getIteratingUpperBoundary()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Linet/ipaddr/format/util/AddressTrie;->getIteratingLowerBoundary()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    iget-object v5, v0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;-><init>(ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    move-object p1, v6

    :goto_4
    return-object p1
.end method

.method public nodeSize()I
    .locals 3

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-super {p0}, Linet/ipaddr/format/util/AbstractTree;->nodeSize()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie;->allNodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return v1
.end method

.method public nodeSpliterator(Z)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public nodeSpliterator(ZZ)Ljava/util/Spliterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Spliterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object p1

    goto :goto_6

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->nodeComparator()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->reverseNodeComparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v4

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    goto :goto_2

    :goto_3
    if-eqz p1, :cond_3

    invoke-direct {p0}, Linet/ipaddr/format/util/AddressTrie;->getIteratingUpperBoundary()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    :goto_4
    move-object v6, v1

    goto :goto_5

    :cond_3
    invoke-direct {p0}, Linet/ipaddr/format/util/AddressTrie;->getIteratingLowerBoundary()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    goto :goto_4

    :goto_5
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->size()I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    iget-object v9, v1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v1, v0

    move v2, p1

    move v10, p2

    invoke-direct/range {v1 .. v10}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;-><init>(ZLjava/util/Comparator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;JLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;Z)V

    move-object p1, v0

    :goto_6
    return-object p1
.end method

.method public printTree(Ljava/lang/StringBuilder;Linet/ipaddr/format/util/BinaryTreeNode$Indents;Z)V
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linet/ipaddr/format/util/AddressTrie;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode;->printTree(Ljava/lang/StringBuilder;Linet/ipaddr/format/util/BinaryTreeNode$Indents;ZZLinet/ipaddr/format/util/BinaryTreeNode$CachingIterator;)V

    return-void
.end method

.method public remove(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remove(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 4

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-super {p0}, Linet/ipaddr/format/util/AbstractTree;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {v3, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public smallestElementContainingBounds(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    iget-object v3, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linet/ipaddr/Address;

    invoke-virtual {v3, v4}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p1

    :cond_3
    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {p1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    move-object p1, v0

    move-object v1, p1

    goto :goto_1

    :cond_4
    move-object p1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {p1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_6
    :goto_1
    if-nez v0, :cond_3

    move-object v2, v1

    :cond_7
    return-object v2
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Linet/ipaddr/format/util/AddressTrie;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object v1

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public toAddedNodesTreeString()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->constructAddedNodesTree()Linet/ipaddr/format/util/AssociativeAddressTrie;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "\n"

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, ""

    .line 18
    .line 19
    move-object v5, v4

    .line 20
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    const-string v4, "\u25cf"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const-string v4, "\u25cb"

    .line 33
    .line 34
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 v4, 0x20

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v4, 0xa

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/util/List;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-lez v4, :cond_2

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    add-int/lit8 v6, v4, -0x1

    .line 73
    .line 74
    new-instance v7, Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    .line 75
    .line 76
    const-string v8, "\u2514\u2500"

    .line 77
    .line 78
    invoke-static {v5, v8}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const-string v9, "  "

    .line 83
    .line 84
    invoke-static {v5, v9}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-direct {v7, v8, v9}, Linet/ipaddr/format/util/BinaryTreeNode$Indents;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    .line 96
    .line 97
    if-nez v3, :cond_1

    .line 98
    .line 99
    new-instance v3, Ljava/util/ArrayDeque;

    .line 100
    .line 101
    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->size()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-direct {v3, v8}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 106
    .line 107
    .line 108
    :cond_1
    new-instance v8, Linet/ipaddr/format/util/AddressTrie$1IndentsNode;

    .line 109
    .line 110
    invoke-direct {v8, p0, v7, v6}, Linet/ipaddr/format/util/AddressTrie$1IndentsNode;-><init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/BinaryTreeNode$Indents;Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v3, v8}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    const/4 v7, 0x1

    .line 121
    if-le v6, v7, :cond_2

    .line 122
    .line 123
    new-instance v6, Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    .line 124
    .line 125
    const-string v7, "\u251c\u2500"

    .line 126
    .line 127
    invoke-static {v5, v7}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const-string v8, "\u2502 "

    .line 132
    .line 133
    invoke-static {v5, v8}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-direct {v6, v7, v5}, Linet/ipaddr/format/util/BinaryTreeNode$Indents;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    add-int/lit8 v4, v4, -0x2

    .line 141
    .line 142
    :goto_2
    if-ltz v4, :cond_2

    .line 143
    .line 144
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    .line 149
    .line 150
    new-instance v7, Linet/ipaddr/format/util/AddressTrie$1IndentsNode;

    .line 151
    .line 152
    invoke-direct {v7, p0, v6, v5}, Linet/ipaddr/format/util/AddressTrie$1IndentsNode;-><init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/BinaryTreeNode$Indents;Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v3, v7}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v4, v4, -0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_2
    if-nez v3, :cond_3

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_3
    invoke-interface {v3}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Linet/ipaddr/format/util/AddressTrie$1IndentsNode;

    .line 169
    .line 170
    if-nez v1, :cond_4

    .line 171
    .line 172
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    return-object v0

    .line 177
    :cond_4
    iget-object v4, v1, Linet/ipaddr/format/util/AddressTrie$1IndentsNode;->node:Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    .line 178
    .line 179
    iget-object v1, v1, Linet/ipaddr/format/util/AddressTrie$1IndentsNode;->indents:Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    .line 180
    .line 181
    iget-object v5, v1, Linet/ipaddr/format/util/BinaryTreeNode$Indents;->nodeIndent:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v1, v1, Linet/ipaddr/format/util/BinaryTreeNode$Indents;->subNodeInd:Ljava/lang/String;

    .line 184
    .line 185
    move-object v10, v5

    .line 186
    move-object v5, v1

    .line 187
    move-object v1, v4

    .line 188
    move-object v4, v10

    .line 189
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-super {p0}, Linet/ipaddr/format/util/AbstractTree;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AbstractTree;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    invoke-direct {v1}, Linet/ipaddr/format/util/BinaryTreeNode$Indents;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Linet/ipaddr/format/util/AddressTrie;->printTree(Ljava/lang/StringBuilder;Linet/ipaddr/format/util/BinaryTreeNode$Indents;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
